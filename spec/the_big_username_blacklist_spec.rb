require 'spec_helper'
module TheBigUsernameBlacklist
  describe '.valid?' do
    subject { TheBigUsernameBlacklist.valid?(username) }

    context 'matched username' do
      let(:username) { 'administrator' }
      it { should be true }
    end

    context 'unmatched username' do
      let(:username) { 'ababa' }
      it { should be false }
    end
  end

  describe '#user_valid?' do
    let(:test_class) { Struct.new(:hoge) { include TheBigUsernameBlacklist } }
    subject { test_class.new.username_valid?(username) }

    context 'matched username' do
      let(:username) { 'administrator' }
      it { should be true }
    end

    context 'unmatched username' do
      let(:username) { 'ababa' }
      it { should be false }
    end
  end
end
