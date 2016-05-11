require 'spec_helper'


describe "checking tweak_cloudinit" do

  context file('/etc/cloud/cloud.cfg.d/99-local-mirror-only.cfg') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode '644' }
  end

end
