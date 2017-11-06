# 1. 특정 폴더로 들어간다.
# 2. 파일을 생성한다.
# 3. 내용을 작성한다.

Dir.chdir("src")

# 30개의 파일을 만든다.
# 1.txt ~ 30.txt
# 1.txt => "1번째 내용" 

#강사님꺼
30.times do |i|
  i += 1
  File.open(i.to_s + ".txt", "w") do |f|     
      f.write(i.to_s + "번째 내용")
  end
end

# 내꺼
for filename in (1..30)
    file = File.open(filename.to_s + ".txt", "w") #파일을 읽고 쓰고 지우고 등등 할떄 모두 File.open
    file.puts(filename.to_s + "번째 내용")
    file.close
end





