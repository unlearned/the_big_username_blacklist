module TheBigUsernameBlacklist
  class Data
    def initialize
      file_path = File.expand_path('../../../data/list.txt', __FILE__)
      usernames = File.open(file_path, 'r').read.split("\n")
      @usernames = usernames.each_with_object({}) do |username, hash|
        hash[username] = true
      end
    end

    def match?(username)
      @usernames[username] || false
    end
  end
end
