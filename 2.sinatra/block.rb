# block
# 1. {}
# 2. do ~ end

arr = ["john", "mino", "tak"]
arr.each do |name| 
    puts name
end



phone_book = {
    "John" => "28294833",
    "mino" => "11234664",
    "tak"  => "22457855"
}

phone_book.each {|key| puts key}