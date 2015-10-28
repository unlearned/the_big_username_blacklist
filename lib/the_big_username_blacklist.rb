require 'the_big_username_blacklist/version'
require 'the_big_username_blacklist/data'
require 'the_big_username_blacklist/configuration'

begin
  require 'pry'
rescue LoadError
end

module TheBigUsernameBlacklist
  def username_valid?(username)
    TheBigUsernameBlacklist.valid?(username)
  end

  def self.valid?(username)
    !(data.match?(username) || optional_data.match?(username))
  end

  def self.configure
    yield(config)
  end

  class << self
    private

    def data
      @data ||= Data.default
    end

    def optional_data
      return @optional_data if defined? @optional_data
      if config.optional_usernames && config.optional_usernames.is_a?(Array)
        return @optional_data = Data.new(config.optional_usernames)
      end
      @optional_data = Data.new([])
    end

    def config
      @config ||= Configuration.new
    end
  end
end
