require 'net/http'
require 'uri'
require 'json'
require "glaze/analyzer/version"
require "glaze/analyzer/character_data"
require "glaze/analyzer/glyphs"

module GlazeAnalyzer
  # Analyzer should retrive broad summarized data based
  # on the leaderboard json file. Information about specifics specs
  # should go in specs class.
  class Analyzer

    attr_reader :ranking_data

    def initialize(file_name = '')
      if file_name == ''
        @ranking_data = retrieve_ranking_data
      else
        @ranking_data = retrieve_ranking_data(IO.read(Dir.pwd + "/" + file_name))
      end
    end

    # Returns total number of characters in the leaderboard, given a spec id
    def num_of_spec(spec_id)
      @ranking_data.select { |row| row['specId'] == spec_id }.size
    end

    def average_rating_of_spec(spec_id, limit=1000)
      return 0 unless num_of_spec(spec_id) > 0 # dividing by 0 is bad, so we avoid it =)

      ratings = @ranking_data.map do |row|
        row['rating'].to_i if row['specId'] == spec_id
      end.compact.first(limit)

      return ratings.reduce(:+) / ratings.size
    end

    def glyph_hash_of_spec(spec_id, number_to_retrieve)
      create_glyph_hash(glyph_list_for_spec(spec_id, number_to_retrieve), spec_id)
    end

    private

    def retrieve_ranking_data(file_name = '')
      if file_name == ''
        uri = URI.parse('http://us.battle.net/api/wow/leaderboard/3v3')
        response = Net::HTTP.get_response(uri)
        results = JSON.parse(response.body)
      else
        results = JSON.parse(file_name)
      end

      results['rows']
    end

    def create_glyph_hash(glyph_array, spec_id)
      glyph_count = Glyphs.new(spec_id)
      glyph_array.each do |g|
        glyph_count.glyph_data[g] +=1
      end
      glyph_count.glyph_data
    end

    # retrives armory information for each character specified by spec
    # returns an array
    def character_data(spec_id, number_to_retrieve)
      top_characters(spec_id, number_to_retrieve).map do |character|
        begin
          CharacterData.new(
            character['realmSlug'],
            character['name'],
            character['specId'])
        rescue
          puts "error.. skipped character"
          nil
        end
      end.compact
    end

    def glyph_list_for_spec(spec_id, number_to_retrieve)
      glyph_list = []

      character_data(spec_id, number_to_retrieve).each do |character|
        character.major_glyph_names.each do |g|
          glyph_list << g
        end
      end

      glyph_list
    end

    # Returns leaderboard data of n top rated characters given a spec id
    def top_characters(spec_id, number_to_retrieve)
      @ranking_data.map do |character|
        character if spec_id == character['specId']
      end.compact.first(number_to_retrieve)
    end

  end
end
