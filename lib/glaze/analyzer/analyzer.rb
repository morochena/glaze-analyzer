require_relative 'character_data'
require_relative 'glyphs'
require_relative 'talents'

module GlazeAnalyzer

  class Analyzer

    # Ranking data stored as an array
    attr_reader :ranking_data

    # Initialized with optional file name.
    # If no file name specified, will grab data from
    # http://us.battle.net/api/wow/leaderboard/3v3
    def initialize(file_name = '')
      if file_name == ''
        @ranking_data = retrieve_ranking_data
      else
        @ranking_data = retrieve_ranking_data(IO.read(Dir.pwd + "/" + file_name))
      end
    end

    # Returns total number of characters in the leaderboard
    # given a spec id
    def num_of_spec(spec_id)
      @ranking_data.select { |row| row['specId'] == spec_id }.size
    end

    # Returns total number of characters in limited leaderboard given a spec id
    def num_of_spec_within(spec_id, limit)
      @ranking_data[0..limit].select { |row| row['specId'] == spec_id }.size
    end

    def average_rating_of_spec(spec_id, limit=1000)
      return 0 unless num_of_spec(spec_id) > 0

      ratings = @ranking_data.map do |row|
        row['rating'].to_i if row['specId'] == spec_id
      end.compact.first(limit)

      return ratings.reduce(:+) / ratings.size
    end

    def glyphs_of_spec(spec_id, number_to_retrieve)
      glyph_list_for_spec(spec_id, number_to_retrieve)
    end

    def talents_of_spec(spec_id, number_to_retrieve)
      talent_list_for_spec(spec_id, number_to_retrieve)
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

      # retrives armory information for each character specified by spec
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

      def talent_list_for_spec(spec_id, number_to_retrieve)
        talent_list = []

        character_data(spec_id, number_to_retrieve).each do |character|
          character.selected_talent_names.each do |t|
            talent_list << t
          end
        end

        talent_list
      end

      # Returns leaderboard data of n top rated characters given a spec id
      def top_characters(spec_id, number_to_retrieve)
        @ranking_data.map do |character|
          character if spec_id == character['specId']
        end.compact.first(number_to_retrieve)
      end

  end
end
