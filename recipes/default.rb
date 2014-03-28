template "/etc/network/interfaces" do
  source "interfaces.erb"
  # Need to find out how to dynamically add IP Address for each host
  variables( :INTERFACE => "eth0", :IP => "static", :ADDR => ip, :NETMASK => "255.255.255.0", :GATEWAY => "192.168.1.1")
end

service "networking" do
  action [:restart]
end
