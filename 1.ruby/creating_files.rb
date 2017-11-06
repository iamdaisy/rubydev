# 1. 특정 폴더로 들어간다.
# 2. 파일을 생성한다.
# 3. 내용을 작성한다.

Dir.chdir("src")

# 30개의 파일을 만든다.
# 1.txt ~ 30.txt
# 1.txt => "1번째 내용" 

#File.open("out.txt", "w") do |f|     
#  f.write(data_you_want_to_write)   
#end


for filename in (1..30)
    file = File.open(filename.to_s + ".txt", "w")
    file.puts(filename.to_s + "번째 내용")
    file.close
end





