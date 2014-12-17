module Glaze
  module Analyzer

class CharacterData
  attr_accessor :data

  def initialize(realm, character_name, pvp_spec_id)
    puts "retrieving character data for #{character_name} - #{realm}"
    uri = URI.parse("http://us.battle.net/api/wow/character/#{realm}/#{URI.encode(character_name)}?fields=talents")
    response = Net::HTTP.get_response(uri)
    character_data = JSON.parse(response.body)

    tries = 0
    while character_data['talents'] == nil
      if tries > 3
        raise 'Error retrieving character data'
      end

      puts "error.. retrying #{character_name} - #{realm} retrying in 5 seconds"
      response = Net::HTTP.get_response(uri)
      character_data = JSON.parse(response.body)
      tries += 1
      sleep 5
    end

    puts "successfully retrieved character data!"

    @data = character_data
    @pvp_spec_id = pvp_spec_id
  end

  def pvp_spec
    pvp_spec_name = spec_name(@pvp_spec_id) # eg. Retribution
    spec1_name, spec2_name = get_character_spec_names # eg. Retribution, Holy
    puts "spec 0: #{spec1_name}"
    puts "spec 1: #{spec2_name}"
    puts "determining pvp spec..."


    if pvp_spec_name == spec1_name && pvp_spec_name == spec2_name
      if @data['talents'].first['selected'] == true
        puts "same spec: chose active: 0"
        return 0
      else
        puts "same spec: chose active: 1"
        return 1
      end
    elsif pvp_spec_name == spec1_name
      puts "different specs, chose the one listed in 3v3 data: 0"
      return 0
    elsif pvp_spec_name == spec2_name
      puts "different specs, chose the one listed in 3v3 data: 1"
      return 1
    else
      puts "errored out, selected: 0"
      return 0
    end
  end

  def get_character_spec_names
    puts @data['name']
    begin
      spec1_name = @data['talents'][0]['spec']['name']
    rescue
      spec1_name = 'nil'
    end

    begin
      spec2_name = @data['talents'][1]['spec']['name']
    rescue
      spec2_name = 'nil'
    end

    return spec1_name, spec2_name
  end

  def major_glyph_names
    puts "listing glyphs..."
    @data['talents'][pvp_spec]['glyphs']['major'].map do |glyph|
      puts glyph['name']
      glyph['name']
    end
  end

  def spec_name(spec_id)
    spec_names = {
      102 => 'Balance',
      103 => 'Feral Combat',
      104 => 'Guardian',
      105 => 'Restoration',
      250 => 'Blood',
      251 => 'Frost',
      252 => 'Unholy',
      253 => 'Beast Mastery',
      254 => 'Marksmanship',
      255 => 'Survival',
      256 => 'Discipline',
      257 => 'Holy',
      258 => 'Shadow',
      259 => 'Assassination',
      260 => 'Combat',
      261 => 'Subtlety',
      262 => 'Elemental',
      263 => 'Enhancement',
      264 => 'Restoration',
      265 => 'Affliction',
      266 => 'Demonology',
      267 => 'Destruction',
      268 => 'Brewmaster',
      269 => 'Windwalker',
      270 => 'Mistweaver',
      62 => 'Arcane',
      63 => 'Fire',
      64 => 'Frost',
      65 => 'Holy',
      66 => 'Protection',
      70 => 'Retribution',
      71 => 'Arms',
      72 => 'Fury',
      73 => 'Protection'
    }

    return spec_names[spec_id]
  end

end
end
end