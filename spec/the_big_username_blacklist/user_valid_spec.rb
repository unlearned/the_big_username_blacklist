require 'spec_helper'
describe TheBigUsernameBlacklist do
  describe '#user_valid?' do
    let(:test_class) { Struct.new(:hoge) { include TheBigUsernameBlacklist } }
    subject { test_class.new.username_valid?(username) }

    context 'matched username' do
      let(:username) { 'administrator' }
      it { should be false }
    end

    context 'unmatched username' do
      let(:username) { 'ababa' }
      it { should be true }
    end
  end
end
