user 'daryl susilo' do
  uid 1234
  home '/home/dsusilo'
  password '$1$5o8FPo4C$5kFNhdltQ84.gKBkPir/l/'
  username 'dsusilo'
  shell '/bin/bash'
  action :create
  manage_home true
  gid 'sudo'
end

execute 'sudo gpasswd' do
  command 'sudo gpasswd -a dsusilo sudo'
end

reboot 'reboot' do
  delay_mins 1
  action :request_reboot
end
