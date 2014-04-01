require 'postageapp'

PostageApp.configure do |config|
  config.api_key = # api key goes here
end

class PostageAppMailer < MetaMailer
  def send(from, to, subject, html, text)
    request = PostageApp::Request.new(:send_message, {
      'headers' => {
        'from' => from,
        'subject' => subject,
      }, 
      'recipients' => to,
      'content' => {
        'text/plain'  => text
      }
    })
    response = request.send
    response.ok?
  end
end