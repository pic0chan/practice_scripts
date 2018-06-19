require 'net/ssh'
require 'parallel'

servers = ['192.168.1.14', '192.168.1.28', '192.168.1.31', '192.168.1.32']
output = {}

Parallel.each(servers, in_threads: 2) do |server|
#Parallel.each(servers, in_processes: 2) do |server|
  Net::SSH.start(server, 'sakai-yasu') do |ssh|
    output[server] = ssh.exec!('uname -n')
  end
end

output.each do |server, ret|
  puts server + '-'*30
  puts ret
end
