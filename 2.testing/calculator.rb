class Calculator
    
    attr_accessor :name
    attr_reader
    
    #getter method
    def name
        @name
    end
    
    #setter method
    def name= (name)
        @name = name
    end
    
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end
    
    def add
    end
    
    def substract
    end

    def divide
    end

end



add = Calculator.new("add")
substract = Calculator.new("substract")
divide = Calculator.new("divide")

p add.name
p substract.name
p divide.name

p add.name = 'addition'