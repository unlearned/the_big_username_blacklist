require 'spec_helper'
module TheBigUsernameBlacklist
  describe 'Data' do
    describe '#match?' do
      subject { TheBigUsernameBlacklist::Data.new.match?(username) }

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
end
