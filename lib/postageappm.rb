gem 'postageapp', '=1.0.23'
require 'postageapp'

#PostageApp.configure do |config|
#  config.api_key = ""# api key goes here
#end

class MetaMailer::Postageapp < MetaMailer
  def initialize(api_key)
    PostageApp.configure do |config|
      config.api_key = ""
    end
  end

  def send(from, to, subject, html, text)
    request = PostageApp::Request.new(:send_message, {
      'headers' => {
        'from' => from,
        'subject' => subject,
      }, 
      'recipients' => to,
      'content' => {
        'text/plain'  => text,
        'text/html'  => html
      }
    })
    response = request.send
    response.ok?
  end
end