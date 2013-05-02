require "mmfa/version"
require "base32"
require "google_authenticator_auth"

module Mmfa
  def self.current_key(keychain_item_name)
    secret_output = `security find-generic-password -ga #{keychain_item_name} 2>&1`

    /password: "(?<password>.*)"$/.match(secret_output) do |m|
      ga = GoogleAuthenticator.new(m['password'])
      current_key = ga.get_keys[1]
      `printf '#{current_key}' | pbcopy`
      puts current_key
      exit
    end

    puts "Unable to get the password for '#{keychain_item_name}'"
    exit 1
  end
end
