package 'httpd' do
	action :install
end

service 'httpd' do
	action  [ :start , :enable ]
end
 
file '/var/www/html/index.html' do
	content "
	IPADDRESS: #{node['ipaddress']}
	HOSTNAME: #{node['hostname']}
"
end
