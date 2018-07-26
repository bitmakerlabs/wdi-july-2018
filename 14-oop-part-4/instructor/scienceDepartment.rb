require_relative "professor"
require_relative "subjects"

class ScienceDepartment < Professor

    include Science

    def initialize(f,l)
        super(f,l)
    end
    
end