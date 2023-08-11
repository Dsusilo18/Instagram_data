packages = %w(ubuntu-desktop wget gdm3)

control 'gui_install' do

  packages.each do |pack|
    describe package(pack) do
      it { should be_installed }
    end
  end
end
