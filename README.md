# Mmfa

A little gem to get the current multi-factor authentication key on a Mac

## Installation

Add this line to your application's Gemfile:

    gem 'mmfa'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mmfa

## Usage

1. Setup an Apple Keychain entry with a name and your multi-factor authentication secret
2. run mmfa KEYCHAIN_ITEM_NAME
3. The current mfa key is printed and copied to your system clipboard


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
