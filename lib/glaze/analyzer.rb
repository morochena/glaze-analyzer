require "glaze/analyzer/version"
require "glaze/analyzer/characterdata"
require "glaze/analyzer/glyphs"

module Glaze
    class Analyzer

  def initialize
    @ranking_data = ranking_data
  end

  def ranking_data
    puts 'retrieving 3v3 ranking data...'
    uri = URI.parse('http://us.battle.net/api/wow/leaderboard/3v3')
    response = Net::HTTP.get_response(uri)
    puts 'retrieved ranking data, parsing json....'
    results = JSON.parse(response.body)

    results['rows']
  end

  def character_list_by_spec(spec_id, number_to_retrieve)
    puts "retrieving #{number_to_retrieve} characters by spec id: #{spec_id}"
    character_list = []
    retrieved = 0

    @ranking_data.each do |character|
      if spec_id == character['specId']
        character_list << character
        retrieved += 1
        puts "##{retrieved} - retrieved #{character['name']}! added to character list"
      end
      if retrieved >= number_to_retrieve
        break
      end
    end

    character_list
  end

  def get_glyph_data_for_spec(spec_id, number_to_retrieve)
    character_list = character_list_by_spec(spec_id, number_to_retrieve)
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
    puts "done retrieving glyphs, this is what we got: #{glyph_list}"

    puts "creating glyph_count hash based on spec_id: #{spec_id}"
    glyph_count = Glyphs.new(spec_id)
    puts "created! this is what we have #{glyph_count.glyph_data}"

    puts "iterating through array to add counts..."

    glyph_list.each do |x|
      puts "adding #{x}!"
      glyph_count.glyph_data[x] += 1
    end

    puts "done!"
    return glyph_count.glyph_data, character_data_list.count

  end

end
end
