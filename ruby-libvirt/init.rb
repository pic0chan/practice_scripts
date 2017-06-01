require 'libvirt'

conn = Libvirt::open("qemu+ssh://pico@192.168.1.100:22/system")
puts conn.capabilities
puts '---'
puts conn.list_defined_domains
puts '---'
puts conn.max_vcpus
puts '---'
puts conn.node_get_info
puts '---'
puts conn.cpu_model_names('x86_64')
puts '---'
puts conn.hostname
puts '---'
puts conn.libversion
puts '---'
interfaces = conn.list_all_interfaces
interfaces.each do |i|
  puts i.name + "\t: " + i.mac
end
puts '---'
puts conn.list_nodedevices



