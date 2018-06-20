require 'faraday'
server="http://192.168.1.8"
conn = Faraday::Connection.new(:url => "#{server}") do |builder|
  builder.use Faraday::Request::UrlEncoded
  builder.use Faraday::Adapter::NetHttp
end
paths = %w{a b c}
(1..100).each do |i|
  paths << i
end
contents = {}
paths.map do |url|
  p "#{url}"
end
threads = paths.map do |path|
  Thread.new {
    contents["#{path}"] = conn.get "/#{path}"
  }
end
threads.each do |thread|
  thread.join
end
contents.each do |key, value|
  p key
  p value
  p '-------------'
end
