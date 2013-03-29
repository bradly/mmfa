require "mmfa/version"
require "base32"
require "google_authenticator_auth"

module Mmfa
  def self.current_key(keychain_item_name)
    secret = `security find-generic-password -ga #{keychain_item_name} 2>&1 | perl -e 'if (<STDIN> =~ m/password: "(.*)"$/ ) { print $1; }'`
    ga = GoogleAuthenticator.new(secret)
    current_key = ga.get_keys[1]
    `printf '#{current_key}' | pbcopy`
    puts current_key
  end
end
