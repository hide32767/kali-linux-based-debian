require 'spec_helper'


describe "checking Kali-Linux" do

  context file('/etc/apt/sources.list') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode '644' }
  end

  context command(%q{apt-key list | grep -i kali}) do
    its(:stdout) { should match /Kali Linux Repository \<devel@kali.org\>/ }
  end

  property['kali']['assumed_packages'].each do |pkg|
    context package(pkg), :if => os[:family] == 'debian' do
      it { should be_installed }
    end
  end

  property['kali']['packages'].each do |pkg|
    context package(pkg), :if => os[:family] == 'debian' do
      it { should be_installed }
    end
  end

end
