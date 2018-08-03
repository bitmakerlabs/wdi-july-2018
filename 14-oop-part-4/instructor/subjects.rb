module Magic

    def initialize(f,l)
        super(f,l)
    end

    def herbology
        "go green"
    end

    def spell
        "abrakadabra"
    end

end

module Science
    def light?(arg)
        if arg == "wave"
            return "light is particle"
        elsif arg == "photon"
            return "light is wave"
        end 
    end
end