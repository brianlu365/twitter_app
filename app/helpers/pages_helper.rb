module PagesHelper
  def parse_mentions(txt)
    txt.gsub(/@(\w{1,15})/) {|m| "<a href=\"#{root_path(handle: m)}\">#{m}</a>"}.html_safe
  end
end
