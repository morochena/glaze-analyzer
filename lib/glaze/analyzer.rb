require 'net/http'
require 'uri'
require 'json'
require "glaze/analyzer/version"
require "glaze/analyzer/characterdata"
require "glaze/analyzer/glyphs"

module GlazeAnalyzer
  class Analyzer

    attr_reader :ranking_data

    def initialize(file_name = '')
      if file_name == ''
        @ranking_data = retrieve_ranking_data
      else
        @ranking_data = retrieve_ranking_data(IO.read(Dir.pwd + "/" + file_name))
      end
    end

    def retrieve_ranking_data(file_name = '')
      if file_name == ''
        puts 'retrieving 3v3 ranking data...'
        uri = URI.parse('http://us.battle.net/api/wow/leaderboard/3v3')
        response = Net::HTTP.get_response(uri)
        puts 'retrieved ranking data, parsing json....'
        results = JSON.parse(response.body)
      else
        results = JSON.parse(file_name)
      end

      results['rows']
    end

    def total_spec_count(spec_id)
      count = 0
      @ranking_data.each do |row|
        if row['specId'] == spec_id
          count += 1
        end
      end

      count
    end

    def average_rating(spec_id)
      total = total_spec_count(spec_id)

      ratings = @ranking_data.map do |row|
        if row['specId'] == spec_id
          row['rating'].to_i
        end
      end.compact
      average_rating = ratings.inject(&:+) / total

    end

    def get_top_characters(spec_id, number_to_retrieve)
      character_list = []
      retrieved = 0

      @ranking_data.each do |character|
        if spec_id == character['specId']
          character_list << character
          retrieved += 1
        end
        if retrieved >= number_to_retrieve
          break
        end
      end

      character_list
    end

    def create_glyph_hash(glyph_array, spec_id)
      glyph_count = Glyphs.new(spec_id)
      glyph_array.each do |g|
        glyph_count.glyph_data[g] +=1
      end
      glyph_count.glyph_data
    end

    def get_glyph_data_for_spec(spec_id, number_to_retrieve)
      character_list = get_top_characters(spec_id, number_to_retrieve)
      glyph_list = []
      character_data_list = character_list.map do |x|
        begin
          CharacterData.new(x['realmSlug'], x['name'], x['specId'])
        rescue
          puts "error.. skipped character"
          nil
        end
      end
      character_data_list.compact!
      character_data_list.each do |character|
        character.major_glyph_names.each do |g|
          glyph_list << g
        end
      end

      glyph_hash = create_glyph_hash(glyph_list, spec_id)

      return glyph_hash, character_data_list.count
    end

  end
end
