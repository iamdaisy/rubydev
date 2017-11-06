# 파일명 바꾸기

# 1. 해당 폴더로 들어간다.
Dir.chdir("src")

# 2. 폴더 안에 모든 파일을 돌면서 파일들의 이름을 가져온다.

Dir.foreach(Dir.pwd) do |name|
    puts name
end

# 3. files 배열 안에 바꾸고자 하는 모든 파일이름을 넣는다.
files = Dir.entries(Dir.pwd).reject do |name|
    name[0] == '.' # ., .. 제외하려고
end


# 4. 각각의 이름을 "1.txt" => "samsung1.txt"로 바꾼다.
files.each do |f|
    File.rename(f, "samsung" + f)
end