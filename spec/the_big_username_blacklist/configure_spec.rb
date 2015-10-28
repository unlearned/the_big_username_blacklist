require 'spec_helper'
describe TheBigUsernameBlacklist do
  describe '.configure' do
    before do
      TheBigUsernameBlacklist.configure { |c| c.optional_usernames = %w(james) }
    end

    context 'class method' do
      subject { TheBigUsernameBlacklist.valid?(username) }
      context 'matched username' do
        let(:username) { 'administrator' }
        it { should be false }
      end

      context 'matched optional username' do
        let(:username) { 'james' }
        it { should be false }
      end

      context 'unmatched username' do
        let(:username) { 'ababa' }
        it { should be true }
      end
    end

    context 'instance method' do
      let(:test_class) { Struct.new(:hoge) { include TheBigUsernameBlacklist } }
      subject { test_class.new.username_valid?(username) }

      context 'matched username' do
        let(:username) { 'administrator' }
        it { should be false }
      end

      context 'matched optional username' do
        let(:username) { 'james' }
        it { should be false }
      end

      context 'unmatched username' do
        let(:username) { 'ababa' }
        it { should be true }
      end
    end
  end
end
