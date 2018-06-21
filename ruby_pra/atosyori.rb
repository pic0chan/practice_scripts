def copy(from, to)
  src = File.open(from)
  begin
    dst = File.open(to, "w")
    data = src.read
    dst.write(data)
    dst.close
  ensure
    src.close
  end
end

org = ARGV[0]
bk = ARGV[1]

copy(org,bk)
