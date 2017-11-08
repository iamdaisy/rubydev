require 'test/unit' # 테스트를 하기 위한 코드
require_relative 'calculator' # 상대경로로 include

class CalculatorTest < Test::Unit::TestCase   #상속
  
    def test_calculator
        @calc = Calculator.new("test")
        assert_equal(@calc.add(2,5), 7)
        assert_equal(@calc.substract(5,2), 3)
    end
    
    
end
