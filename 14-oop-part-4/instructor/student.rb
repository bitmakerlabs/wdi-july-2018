require_relative "person"


class Student < Person

    Level = 0
    def initialize(f,l)
        super(f,l)
        @knowledge_level = Level
    end

    def learn
        @knowledge_level = @knowledge_level + 10
        if @knowledge_level > 20
            bonus
        end

    end

    def slack
        @knowledge_level = @knowledge_level - 5 if @knowledge_level > 0
    end

    private

    def bonus
        @knowledge_level = @knowledge_level + 100
    end

end