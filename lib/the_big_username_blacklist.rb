require 'the_big_username_blacklist/version'
require 'the_big_username_blacklist/data'

begin
  require 'pry'
rescue LoadError
end

module TheBigUsernameBlacklist
  def username_valid?(username)
    TheBigUsernameBlacklist.valid?(username)
  end

  def self.valid?(username)
    data.match?(username)
  end

  class << self
    private

    def data
      @data ||= Data.new
    end
  end
end
