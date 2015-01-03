module GlazeAnalyzer

  class Talents
    attr_accessor :talent_data

    def initialize(spec_id)
      @talent_data = Hash.new

      case spec_id
      when 65..70
        @talent_data = paladin_talents
      when 256..258
        @talent_data = priest_talents
      when 250..252
        @talent_data = deathknight_talents
      when 102..105
        @talent_data = druid_talents
      when 253..255
        @talent_data = hunter_talents
      when 62..64
        @talent_data = mage_talents
      when 268..270
        @talent_data = monk_talents
      when 259..261
        @talent_data = rogue_talents
      when 262..264
        @talent_data = shaman_talents
      when 265..267
        @talent_data = warlock_talents
      when 71..73
        @talent_data = warrior_talents
      end

    end

    def paladin_talents
      {
        "Speed of Light" => 0,
        "Long Arm of the Law" => 0,
        "Pursuit of Justice" => 0,
        "Fist of Justice" => 0,
        "Repentance" => 0,
        "Blinding Light" => 0,
        "Selfless Healer" => 0,
        "Eternal Flame" => 0,
        "Sacred Shield" => 0,
        "Hand of Purity" => 0,
        "Unbreakable Spirit" => 0,
        "Clemency" => 0,
        "Holy Avenger" => 0,
        "Sanctified Wrath" => 0,
        "Divine Purpose" => 0,
        "Holy Prism" => 0,
        "Light's Hammer" => 0,
        "Execution Sentence" => 0,
        "Empowered Seals" => 0,
        "Seraphim" => 0,
        "Final Verdict" => 0,
        "Holy Shield" => 0,
        "Beacon of Faith" => 0,
        "Beacon of Insight" => 0,
        "Saved by the Light" => 0,
      }
    end
  end
end
