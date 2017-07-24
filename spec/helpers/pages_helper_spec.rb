require 'rails_helper'

# Your username cannot be longer than 15 characters. Your real name can be longer (20 characters), but usernames are kept shorter for the sake of ease.
# A username can only contain alphanumeric characters (letters A-Z, numbers 0-9) with the exception of underscores, as noted above. Check to make sure your desired username doesn't contain any symbols, dashes, or spaces.

describe PagesHelper do
  describe 'parse_mentions' do
    it 'should parse and link mentioned tweeter handle' do
      txt = "@"
      expect(helper.parse_mentions(txt)).to eq "@"
      txt = "@12345678901234567890"
      expect(helper.parse_mentions(txt)).to eq "<a href=\"/?handle=%40123456789012345\">@123456789012345</a>67890"
      txt = "@brian lu365"
      expect(helper.parse_mentions(txt)).to eq "<a href=\"/?handle=%40brian\">@brian</a> lu365"
      txt = "@brianlu365"
      expect(helper.parse_mentions(txt)).to eq "<a href=\"/?handle=%40brianlu365\">@brianlu365</a>"
    end
  end
end