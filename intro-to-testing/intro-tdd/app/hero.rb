class Hero
    attr_accessor :abilities

    # Accepts an array of abilities
    # Each ability will be represented by a hash with a name and "coolness" rating
    def initialize(abilities)
        @abilities = abilities
    end

    # Returns the heros coolest ability
    def coolest_ability
        coolest_ability = nil

        # refactor later
        abilities.each do |current_ability|  
            if coolest_ability == nil || current_ability[:coolness] > coolest_ability[:coolness]
                coolest_ability = current_ability
            end
        end
        coolest_ability
    end

    def ability_names 
        # get ability names
        @abilities.map do |ability|
            ability[:name]
        end
    end

    def ordered_abilities
        # sorting a - z
        ability_names.sort
    end

    def add_ability(new_ability)
        if new_ability.class == Hash
            @abilities << new_ability
        end
    end
end