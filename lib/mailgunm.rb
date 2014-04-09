require "multimap"
require "rest-client"

class Mailgun < MetaMailer
  attr_accessor :username
  attr_accessor :api_key

  def initialize(username, api_key)
    @username = username
    @api_key = api_key
  end

  def send(from, to, subject, html, text)
    data = Multimap.new
	data[:from] = from
	data[:to] = to
	data[:subject] = subject
	data[:text] = text
	data[:html] = html
	RestClient.post "https://api:#{@api_key}"\
	"@api.mailgun.net/v2/#{@username}.mailgun.org/messages", data
  end
end
