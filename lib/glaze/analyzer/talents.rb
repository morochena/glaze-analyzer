module GlazeAnalyzer

  class Talents
    attr_accessor :talent_data

    def initialize(spec_id)
      @talent_data = Hash.new

      case spec_id
      when 65
        @talent_data = paladin_holy_talents
      when 66
        @talent_data = paladin_protection_talents
      when 70
        @talent_data = paladin_retribution_talents
      when 256
        @talent_data = priest_discipline_talents
      when 257
        @talent_data = priest_holy_talents
      when 258
        @talent_data = priest_shadow_talents
      when 250
        @talent_data = deathknight_blood_talents
      when 251
        @talent_data = deathknight_blood_talents
      when 252
        @talent_data = deathknight_unholy_talents
      when 102
        @talent_data = druid_balance_talents
      when 103
        @talent_data = druid_feral_talents
      when 104
        @talent_data = druid_guardian_talents
      when 105
        @talent_data = druid_restoration_talents
      when 253
        @talent_data = hunter_beastmastery_talents
      when 254
        @talent_data = hunter_marksmanship_talents
      when 255
        @talent_data = hunter_survival_talents
      when 62
        @talent_data = mage_arcane_talents
      when 63
        @talent_data = mage_fire_talents
      when 64
        @talent_data = mage_frost_talents
      when 268
        @talent_data = monk_brewmaster_talents
      when 269
        @talent_data = monk_windwalker_talents
      when 270
        @talent_data = monk_mistweaver_talents
      when 259
        @talent_data = rogue_assassination_talents
      when 260
        @talent_data = rogue_combat_talents
      when 261
        @talent_data = rogue_subtletly_talents
      when 262
        @talent_data = shaman_elemental_talents
      when 263
        @talent_data = shaman_enhancement_talents
      when 264
        @talent_data = shaman_restoration_talents
      when 265
        @talent_data = warlock_affliction_talents
      when 266
        @talent_data = warlock_demonology_talents
      when 267
        @talent_data = warlock_destruction_talents
      when 71
        @talent_data = warrior_arms_talents
      when 72
        @talent_data = warrior_fury_talents
      when 73
        @talent_data = warrior_protection_talents
      end

    end

    def paladin_retribution_talents
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
      }
    end

    def paladin_holy_talents
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
        "Beacon of Faith" => 0,
        "Beacon of Insight" => 0,
        "Saved by the Light" => 0,
      }
    end

    def paladin_protection_talents
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
        "Holy Shield" => 0,
      }
    end

    def deathknight_blood_talents
      {
       "Plaguebearer" => 0,
       "Plague Leech" => 0,
       "Unholy Blight" => 0,
       "Lichborne" => 0,
       "Anti-Magic Zone" => 0,
       "Purgatory" => 0,
       "Death's Advance" => 0,
       "Chilblains" => 0,
       "Asphyxiate" => 0,
       "Blood Tap" => 0,
       "Runic Empowerment" => 0,
       "Runic Corruption" => 0,
       "Death Pact" => 0,
       "Death Siphon" => 0,
       "Conversion" => 0,
       "Gorefiend's Grasp" => 0,
       "Remorseless Winter" => 0,
       "Desecrated Ground" => 0,
       "Necrotic Plague" => 0,
       "Defile" => 0,
       "Breath of Sindragosa" => 0,
      }
    end

    def deathknight_frost_talents
      {
       "Plaguebearer" => 0,
       "Plague Leech" => 0,
       "Unholy Blight" => 0,
       "Lichborne" => 0,
       "Anti-Magic Zone" => 0,
       "Purgatory" => 0,
       "Death's Advance" => 0,
       "Chilblains" => 0,
       "Asphyxiate" => 0,
       "Blood Tap" => 0,
       "Runic Empowerment" => 0,
       "Runic Corruption" => 0,
       "Death Pact" => 0,
       "Death Siphon" => 0,
       "Conversion" => 0,
       "Gorefiend's Grasp" => 0,
       "Remorseless Winter" => 0,
       "Desecrated Ground" => 0,
       "Necrotic Plague" => 0,
       "Defile" => 0,
       "Breath of Sindragosa" => 0,
      }
    end

    def deathknight_unholy_talents
      {
       "Plaguebearer" => 0,
       "Plague Leech" => 0,
       "Unholy Blight" => 0,
       "Lichborne" => 0,
       "Anti-Magic Zone" => 0,
       "Purgatory" => 0,
       "Death's Advance" => 0,
       "Chilblains" => 0,
       "Asphyxiate" => 0,
       "Blood Tap" => 0,
       "Runic Empowerment" => 0,
       "Runic Corruption" => 0,
       "Death Pact" => 0,
       "Death Siphon" => 0,
       "Conversion" => 0,
       "Gorefiend's Grasp" => 0,
       "Remorseless Winter" => 0,
       "Desecrated Ground" => 0,
       "Necrotic Plague" => 0,
       "Defile" => 0,
       "Breath of Sindragosa" => 0,
      }
    end

    def druid_balance_talents
      {
       "Feline Swiftness" => 0,
       "Displacer Beast" => 0,
       "Wild Charge" => 0,
       "Ysera's Gift" => 0,
       "Renewal" => 0,
       "Cenarion Ward" => 0,
       "Faerie Swarm" => 0,
       "Mass Entanglement" => 0,
       "Typhoon" => 0,
       "Soul of the Forest" => 0,
       "Incarnation: Chosen of Elune" => 0,
       "Force of Nature" => 0,
       "Incapacitating Roar" => 0,
       "Ursol's Vortex" => 0,
       "Mighty Bash" => 0,
       "Heart of the Wild" => 0,
       "Dream of Cenarius" => 0,
       "Nature's Vigil" => 0,
       "Euphoria" => 0,
       "Stellar Flare" => 0,
       "Balance of Power" => 0,
      }
    end

    def druid_feral_talents
      {
       "Feline Swiftness" => 0,
       "Displacer Beast" => 0,
       "Wild Charge" => 0,
       "Ysera's Gift" => 0,
       "Renewal" => 0,
       "Cenarion Ward" => 0,
       "Faerie Swarm" => 0,
       "Mass Entanglement" => 0,
       "Typhoon" => 0,
       "Soul of the Forest" => 0,
       "Incarnation: King of the Jungle" => 0,
       "Force of Nature" => 0,
       "Incapacitating Roar" => 0,
       "Ursol's Vortex" => 0,
       "Mighty Bash" => 0,
       "Heart of the Wild" => 0,
       "Dream of Cenarius" => 0,
       "Nature's Vigil" => 0,
       "Lunar Inspiration" => 0,
       "Bloodtalons" => 0,
       "Claws of Shirvallah" => 0,
      }
    end

    def druid_guardian_talents
      {
       "Feline Swiftness" => 0,
       "Displacer Beast" => 0,
       "Wild Charge" => 0,
       "Ysera's Gift" => 0,
       "Renewal" => 0,
       "Cenarion Ward" => 0,
       "Faerie Swarm" => 0,
       "Mass Entanglement" => 0,
       "Typhoon" => 0,
       "Soul of the Forest" => 0,
       "Incarnation: Son of Ursoc" => 0,
       "Force of Nature" => 0,
       "Incapacitating Roar" => 0,
       "Ursol's Vortex" => 0,
       "Mighty Bash" => 0,
       "Heart of the Wild" => 0,
       "Dream of Cenarius" => 0,
       "Nature's Vigil" => 0,
       "Guardian of Elune" => 0,
       "Pulverize" => 0,
       "Bristling Fur" => 0,
      }
    end

    def druid_restoration_talents
      {       "Feline Swiftness" => 0,
       "Displacer Beast" => 0,
       "Wild Charge" => 0,
       "Ysera's Gift" => 0,
       "Renewal" => 0,
       "Cenarion Ward" => 0,
       "Faerie Swarm" => 0,
       "Mass Entanglement" => 0,
       "Typhoon" => 0,
       "Soul of the Forest" => 0,
       "Incarnation: Tree of Life" => 0,
       "Force of Nature" => 0,
       "Incapacitating Roar" => 0,
       "Ursol's Vortex" => 0,
       "Mighty Bash" => 0,
       "Heart of the Wild" => 0,
       "Dream of Cenarius" => 0,
       "Nature's Vigil" => 0,
       "Moment of Clarity" => 0,
       "Germination" => 0,
       "Rampant Growth" => 0,
      }
    end
    def hunter_beastmastery_talents
      {
       "Posthaste" => 0,
       "Narrow Escape" => 0,
       "Crouching Tiger, Hidden Chimaera" => 0,
       "Binding Shot" => 0,
       "Wyvern Sting" => 0,
       "Intimidation" => 0,
       "Exhilaration" => 0,
       "Iron Hawk" => 0,
       "Spirit Bond" => 0,
       "Steady Focus" => 0,
       "Dire Beast" => 0,
       "Thrill of the Hunt" => 0,
       "A Murder of Crows" => 0,
       "Blink Strikes" => 0,
       "Stampede" => 0,
       "Glaive Toss" => 0,
       "Powershot" => 0,
       "Barrage" => 0,
       "Exotic Munitions" => 0,
       "Focusing Shot" => 0,
       "Adaptation" => 0,
      }
    end

    def hunter_marksmanship_talents
      {
       "Posthaste" => 0,
       "Narrow Escape" => 0,
       "Crouching Tiger, Hidden Chimaera" => 0,
       "Binding Shot" => 0,
       "Wyvern Sting" => 0,
       "Intimidation" => 0,
       "Exhilaration" => 0,
       "Iron Hawk" => 0,
       "Spirit Bond" => 0,
       "Steady Focus" => 0,
       "Dire Beast" => 0,
       "Thrill of the Hunt" => 0,
       "A Murder of Crows" => 0,
       "Blink Strikes" => 0,
       "Stampede" => 0,
       "Glaive Toss" => 0,
       "Powershot" => 0,
       "Barrage" => 0,
       "Exotic Munitions" => 0,
       "Focusing Shot" => 0,
       "Lone Wolf" => 0,
      }
    end

    def hunter_survival_talents
      {
       "Posthaste" => 0,
       "Narrow Escape" => 0,
       "Crouching Tiger, Hidden Chimaera" => 0,
       "Binding Shot" => 0,
       "Wyvern Sting" => 0,
       "Intimidation" => 0,
       "Exhilaration" => 0,
       "Iron Hawk" => 0,
       "Spirit Bond" => 0,
       "Steady Focus" => 0,
       "Dire Beast" => 0,
       "Thrill of the Hunt" => 0,
       "A Murder of Crows" => 0,
       "Blink Strikes" => 0,
       "Stampede" => 0,
       "Glaive Toss" => 0,
       "Powershot" => 0,
       "Barrage" => 0,
       "Exotic Munitions" => 0,
       "Focusing Shot" => 0,
       "Lone Wolf" => 0,
      }
    end

    def mage_arcane_talents
      {
       "Evanesce" => 0,
       "Blazing Speed" => 0,
       "Ice Floes" => 0,
       "Alter Time" => 0,
       "Flameglow" => 0,
       "Ice Barrier" => 0,
       "Ring of Frost" => 0,
       "Ice Ward" => 0,
       "Frostjaw" => 0,
       "Greater Invisibility" => 0,
       "Cauterize" => 0,
       "Cold Snap" => 0,
       "Nether Tempest" => 0,
       "Unstable Magic" => 0,
       "Supernova" => 0,
       "Mirror Image" => 0,
       "Rune of Power" => 0,
       "Incanter's Flow" => 0,
       "Overpowered" => 0,
       "Prismatic Crystal" => 0,
       "Arcane Orb" => 0,
      }
    end

    def mage_fire_talents
      {
        "Evanesce" => 0,
       "Blazing Speed" => 0,
       "Ice Floes" => 0,
       "Alter Time" => 0,
       "Flameglow" => 0,
       "Ice Barrier" => 0,
       "Ring of Frost" => 0,
       "Ice Ward" => 0,
       "Frostjaw" => 0,
       "Greater Invisibility" => 0,
       "Cauterize" => 0,
       "Cold Snap" => 0,
       "Living Bomb" => 0,
       "Unstable Magic" => 0,
       "Blast Wave" => 0,
       "Mirror Image" => 0,
       "Rune of Power" => 0,
       "Incanter's Flow" => 0,
       "Kindling" => 0,
       "Prismatic Crystal" => 0,
       "Meteor" => 0,
      }
    end

    def mage_frost_talents
      {
        "Evanesce" => 0,
       "Blazing Speed" => 0,
       "Ice Floes" => 0,
       "Alter Time" => 0,
       "Flameglow" => 0,
       "Ice Barrier" => 0,
       "Ring of Frost" => 0,
       "Ice Ward" => 0,
       "Frostjaw" => 0,
       "Greater Invisibility" => 0,
       "Cauterize" => 0,
       "Cold Snap" => 0,
       "Frost Bomb" => 0,
       "Unstable Magic" => 0,
       "Ice Nova" => 0,
       "Mirror Image" => 0,
       "Rune of Power" => 0,
       "Incanter's Flow" => 0,
       "Thermal Void" => 0,
       "Prismatic Crystal" => 0,
       "Comet Storm" => 0,
      }
    end

    def monk_brewmaster_talents
      {
        "Celerity" => 0,
       "Tiger's Lust" => 0,
       "Momentum" => 0,
       "Chi Wave" => 0,
       "Zen Sphere" => 0,
       "Chi Burst" => 0,
       "Power Strikes" => 0,
       "Ascension" => 0,
       "Chi Brew" => 0,
       "Ring of Peace" => 0,
       "Charging Ox Wave" => 0,
       "Leg Sweep" => 0,
       "Healing Elixirs" => 0,
       "Dampen Harm" => 0,
       "Diffuse Magic" => 0,
       "Rushing Jade Wind" => 0,
       "Invoke Xuen, the White Tiger" => 0,
       "Chi Torpedo" => 0,
       "Soul Dance" => 0,
       "Chi Explosion" => 0,
       "Serenity" => 0,
      }
    end

    def monk_mistweaver_talents
      {
        "Celerity" => 0,
       "Tiger's Lust" => 0,
       "Momentum" => 0,
       "Chi Wave" => 0,
       "Zen Sphere" => 0,
       "Chi Burst" => 0,
       "Power Strikes" => 0,
       "Ascension" => 0,
       "Chi Brew" => 0,
       "Ring of Peace" => 0,
       "Charging Ox Wave" => 0,
       "Leg Sweep" => 0,
       "Healing Elixirs" => 0,
       "Dampen Harm" => 0,
       "Diffuse Magic" => 0,
       "Rushing Jade Wind" => 0,
       "Invoke Xuen, the White Tiger" => 0,
       "Chi Torpedo" => 0,
       "Breath of the Serpent" => 0,
       "Chi Explosion" => 0,
       "Pool of Mists" => 0,
      }
    end

    def monk_windwalker_talents
      {
        "Celerity" => 0,
       "Tiger's Lust" => 0,
       "Momentum" => 0,
       "Chi Wave" => 0,
       "Zen Sphere" => 0,
       "Chi Burst" => 0,
       "Power Strikes" => 0,
       "Ascension" => 0,
       "Chi Brew" => 0,
       "Ring of Peace" => 0,
       "Charging Ox Wave" => 0,
       "Leg Sweep" => 0,
       "Healing Elixirs" => 0,
       "Dampen Harm" => 0,
       "Diffuse Magic" => 0,
       "Rushing Jade Wind" => 0,
       "Invoke Xuen, the White Tiger" => 0,
       "Chi Torpedo" => 0,
       "Hurricane Strike" => 0,
       "Chi Explosion" => 0,
       "Serenity" => 0,
      }
    end

    def priest_discipline_talents
      {
       "Desperate Prayer" => 0,
       "Spectral Guise" => 0,
       "Angelic Bulwark" => 0,
       "Body and Soul" => 0,
       "Angelic Feather" => 0,
       "Phantasm" => 0,
       "Surge of Light" => 0,
       "Mindbender" => 0,
       "Power Word: Solace" => 0,
       "Void Tendrils" => 0,
       "Psychic Scream" => 0,
       "Dominate Mind" => 0,
       "Twist of Fate" => 0,
       "Power Infusion" => 0,
       "Spirit Shell" => 0,
       "Cascade" => 0,
       "Divine Star" => 0,
       "Halo" => 0,
       "Clarity of Will" => 0,
       "Words of Mending" => 0,
       "Saving Grace" => 0,
      }
    end

    def priest_holy_talents
      {
       "Desperate Prayer" => 0,
       "Spectral Guise" => 0,
       "Angelic Bulwark" => 0,
       "Body and Soul" => 0,
       "Angelic Feather" => 0,
       "Phantasm" => 0,
       "Surge of Light" => 0,
       "Mindbender" => 0,
       "Power Word: Solace" => 0,
       "Void Tendrils" => 0,
       "Psychic Scream" => 0,
       "Dominate Mind" => 0,
       "Twist of Fate" => 0,
       "Power Infusion" => 0,
       "Divine Insight" => 0,
       "Cascade" => 0,
       "Divine Star" => 0,
       "Halo" => 0,
       "Clarity of Purpose" => 0,
       "Words of Mending" => 0,
       "Saving Grace" => 0,
      }
    end

    def priest_shadow_talents
     {
       "Desperate Prayer" => 0,
       "Spectral Guise" => 0,
       "Angelic Bulwark" => 0,
       "Body and Soul" => 0,
       "Angelic Feather" => 0,
       "Phantasm" => 0,
       "Surge of Darkness" => 0,
       "Mindbender" => 0,
       "Insanity" => 0,
       "Void Tendrils" => 0,
       "Psychic Scream" => 0,
       "Dominate Mind" => 0,
       "Twist of Fate" => 0,
       "Power Infusion" => 0,
       "Shadowy Insight" => 0,
       "Cascade" => 0,
       "Divine Star" => 0,
       "Halo" => 0,
       "Clarity of Power" => 0,
       "Void Entropy" => 0,
       "Auspicious Spirits" => 0,
     }
    end

    def rogue_assassination_talents
      {
        "Nightstalker" => 0,
       "Subterfuge" => 0,
       "Shadow Focus" => 0,
       "Deadly Throw" => 0,
       "Nerve Strike" => 0,
       "Combat Readiness" => 0,
       "Cheat Death" => 0,
       "Leeching Poison" => 0,
       "Elusiveness" => 0,
       "Cloak and Dagger" => 0,
       "Shadowstep" => 0,
       "Burst of Speed" => 0,
       "Prey on the Weak" => 0,
       "Internal Bleeding" => 0,
       "Dirty Tricks" => 0,
       "Shuriken Toss" => 0,
       "Marked for Death" => 0,
       "Anticipation" => 0,
       "Venom Rush" => 0,
       "Shadow Reflection" => 0,
       "Death from Above" => 0,
      }
    end

    def rogue_combat_talents
      {
        "Nightstalker" => 0,
       "Subterfuge" => 0,
       "Shadow Focus" => 0,
       "Deadly Throw" => 0,
       "Nerve Strike" => 0,
       "Combat Readiness" => 0,
       "Cheat Death" => 0,
       "Leeching Poison" => 0,
       "Elusiveness" => 0,
       "Cloak and Dagger" => 0,
       "Shadowstep" => 0,
       "Burst of Speed" => 0,
       "Prey on the Weak" => 0,
       "Internal Bleeding" => 0,
       "Dirty Tricks" => 0,
       "Shuriken Toss" => 0,
       "Marked for Death" => 0,
       "Anticipation" => 0,
       "Venom Rush" => 0,
       "Shadow Reflection" => 0,
       "Death from Above" => 0,
      }
    end

    def rogue_subtletly_talents
      {
        "Nightstalker" => 0,
       "Subterfuge" => 0,
       "Shadow Focus" => 0,
       "Deadly Throw" => 0,
       "Nerve Strike" => 0,
       "Combat Readiness" => 0,
       "Cheat Death" => 0,
       "Leeching Poison" => 0,
       "Elusiveness" => 0,
       "Cloak and Dagger" => 0,
       "Shadowstep" => 0,
       "Burst of Speed" => 0,
       "Prey on the Weak" => 0,
       "Internal Bleeding" => 0,
       "Dirty Tricks" => 0,
       "Shuriken Toss" => 0,
       "Marked for Death" => 0,
       "Anticipation" => 0,
       "Venom Rush" => 0,
       "Shadow Reflection" => 0,
       "Death from Above" => 0,
      }
    end

    def shaman_elemental_talents
     {
      "Nature's Guardian" => 0,
      "Stone Bulwark Totem" => 0,
      "Astral Shift" => 0,
      "Frozen Power" => 0,
      "Earthgrab Totem" => 0,
      "Windwalk Totem" => 0,
      "Call of the Elements" => 0,
      "Totemic Persistence" => 0,
      "Totemic Projection" => 0,
      "Elemental Mastery" => 0,
      "Ancestral Swiftness" => 0,
      "Echo of the Elements" => 0,
      "Rushing Streams" => 0,
      "Ancestral Guidance" => 0,
      "Conductivity" => 0,
      "Unleashed Fury" => 0,
      "Primal Elementalist" => 0,
      "Elemental Blast" => 0,
      "Elemental Fusion" => 0,
      "Storm Elemental Totem" => 0,
      "Liquid Magma" => 0,
     }
    end

    def shaman_enhancement_talents
     {
      "Nature's Guardian" => 0,
      "Stone Bulwark Totem" => 0,
      "Astral Shift" => 0,
      "Frozen Power" => 0,
      "Earthgrab Totem" => 0,
      "Windwalk Totem" => 0,
      "Call of the Elements" => 0,
      "Totemic Persistence" => 0,
      "Totemic Projection" => 0,
      "Elemental Mastery" => 0,
      "Ancestral Swiftness" => 0,
      "Echo of the Elements" => 0,
      "Rushing Streams" => 0,
      "Ancestral Guidance" => 0,
      "Conductivity" => 0,
      "Unleashed Fury" => 0,
      "Primal Elementalist" => 0,
      "Elemental Blast" => 0,
      "Elemental Fusion" => 0,
      "Storm Elemental Totem" => 0,
      "Liquid Magma" => 0,
     }
    end

    def shaman_restoration_talents
     {
      "Nature's Guardian" => 0,
      "Stone Bulwark Totem" => 0,
      "Astral Shift" => 0,
      "Frozen Power" => 0,
      "Earthgrab Totem" => 0,
      "Windwalk Totem" => 0,
      "Call of the Elements" => 0,
      "Totemic Persistence" => 0,
      "Totemic Projection" => 0,
      "Elemental Mastery" => 0,
      "Ancestral Swiftness" => 0,
      "Echo of the Elements" => 0,
      "Rushing Streams" => 0,
      "Ancestral Guidance" => 0,
      "Conductivity" => 0,
      "Unleashed Fury" => 0,
      "Primal Elementalist" => 0,
      "Elemental Blast" => 0,
      "Cloudburst Totem" => 0,
      "Storm Elemental Totem" => 0,
      "High Tide" => 0,
     }
    end

    def warlock_affliction_talents
     {
      "Dark Regeneration" => 0,
      "Soul Leech" => 0,
      "Harvest Life" => 0,
      "Howl of Terror" => 0,
      "Mortal Coil" => 0,
      "Shadowfury" => 0,
      "Soul Link" => 0,
      "Sacrificial Pact" => 0,
      "Dark Bargain" => 0,
      "Blood Horror" => 0,
      "Burning Rush" => 0,
      "Unbound Will" => 0,
      "Grimoire of Supremacy" => 0,
      "Grimoire of Service" => 0,
      "Grimoire of Sacrifice" => 0,
      "Archimonde's Darkness" => 0,
      "Kil'jaeden's Cunning" => 0,
      "Mannoroth's Fury" => 0,
      "Soulburn: Haunt" => 0,
      "Cataclysm" => 0,
      "Demonic Servitude" => 0,
     }
    end

    def warlock_demonology_talents
     {
      "Dark Regeneration" => 0,
      "Soul Leech" => 0,
      "Harvest Life" => 0,
      "Howl of Terror" => 0,
      "Mortal Coil" => 0,
      "Shadowfury" => 0,
      "Soul Link" => 0,
      "Sacrificial Pact" => 0,
      "Dark Bargain" => 0,
      "Blood Horror" => 0,
      "Burning Rush" => 0,
      "Unbound Will" => 0,
      "Grimoire of Supremacy" => 0,
      "Grimoire of Service" => 0,
      "Grimoire of Synergy" => 0,
      "Archimonde's Darkness" => 0,
      "Kil'jaeden's Cunning" => 0,
      "Mannoroth's Fury" => 0,
      "Demonbolt" => 0,
      "Cataclysm" => 0,
      "Demonic Servitude" => 0,
     }
    end

    def warlock_destruction_talents
     {
      "Dark Regeneration" => 0,
      "Soul Leech" => 0,
      "Searing Flames" => 0,
      "Howl of Terror" => 0,
      "Mortal Coil" => 0,
      "Shadowfury" => 0,
      "Soul Link" => 0,
      "Sacrificial Pact" => 0,
      "Dark Bargain" => 0,
      "Blood Horror" => 0,
      "Burning Rush" => 0,
      "Unbound Will" => 0,
      "Grimoire of Supremacy" => 0,
      "Grimoire of Service" => 0,
      "Grimoire of Sacrifice" => 0,
      "Archimonde's Darkness" => 0,
      "Kil'jaeden's Cunning" => 0,
      "Mannoroth's Fury" => 0,
      "Charred Remains" => 0,
      "Cataclysm" => 0,
      "Demonic Servitude" => 0,
     }
    end

    def warrior_arms_talents
     {
      "Juggernaut" => 0,
      "Double Time" => 0,
      "Warbringer" => 0,
      "Enraged Regeneration" => 0,
      "Second Wind" => 0,
      "Impending Victory" => 0,
      "Taste for Blood" => 0,
      "Sudden Death" => 0,
      "Slam" => 0,
      "Storm Bolt" => 0,
      "Shockwave" => 0,
      "Dragon Roar" => 0,
      "Mass Spell Reflection" => 0,
      "Safeguard" => 0,
      "Vigilance" => 0,
      "Avatar" => 0,
      "Bloodbath" => 0,
      "Bladestorm" => 0,
      "Anger Management" => 0,
      "Ravager" => 0,
      "Siegebreaker" => 0,
     }
    end

    def warrior_fury_talents
         {
      "Juggernaut" => 0,
      "Double Time" => 0,
      "Warbringer" => 0,
      "Enraged Regeneration" => 0,
      "Second Wind" => 0,
      "Impending Victory" => 0,
      "Furious Strikes" => 0,
      "Sudden Death" => 0,
      "Unquenchable Thrist" => 0,
      "Storm Bolt" => 0,
      "Shockwave" => 0,
      "Dragon Roar" => 0,
      "Mass Spell Reflection" => 0,
      "Safeguard" => 0,
      "Vigilance" => 0,
      "Avatar" => 0,
      "Bloodbath" => 0,
      "Bladestorm" => 0,
      "Anger Management" => 0,
      "Ravager" => 0,
      "Siegebreaker" => 0,
     }
    end

    def warrior_protection_talents
     {
      "Juggernaut" => 0,
      "Double Time" => 0,
      "Warbringer" => 0,
      "Enraged Regeneration" => 0,
      "Second Wind" => 0,
      "Impending Victory" => 0,
      "Heavy Repercussions" => 0,
      "Sudden Death" => 0,
      "Unyielding Strikes" => 0,
      "Storm Bolt" => 0,
      "Shockwave" => 0,
      "Dragon Roar" => 0,
      "Mass Spell Reflection" => 0,
      "Safeguard" => 0,
      "Vigilance" => 0,
      "Avatar" => 0,
      "Bloodbath" => 0,
      "Bladestorm" => 0,
      "Anger Management" => 0,
      "Ravager" => 0,
      "Gladiator's Resolve" => 0,
     }
    end
  end
end
