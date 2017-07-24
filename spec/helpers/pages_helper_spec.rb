require 'rails_helper'

# Your username cannot be longer than 15 characters. Your real name can be longer (20 characters), but usernames are kept shorter for the sake of ease.
# A username can only contain alphanumeric characters (letters A-Z, numbers 0-9) with the exception of underscores, as noted above. Check to make sure your desired username doesn't contain any symbols, dashes, or spaces.

describe PagesHelper do
  describe 'parse_mentions' do
    it 'should parse and link mentioned tweeter handle' do
      txt1 = "@brianlu365"
      expect(helper.parse_mentions(txt1)).to eq "<a href=\"/?handle=%40brianlu365\">@brianlu365</a>"
      txt2 = "@brian lu365"
      expect(helper.parse_mentions(txt2)).to eq "<a href=\"/?handle=%40brian\">@brian</a> lu365"
    end
  end
end