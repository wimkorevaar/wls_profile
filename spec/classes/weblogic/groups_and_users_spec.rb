require 'spec_helper'

describe 'wls_profile::weblogic::groups_and_users' do
  include_context 'specify passwords'
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
    end
  end
end
