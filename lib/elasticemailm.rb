class ElasticemailMailer < MetaMailer
  attr_accessor :username
  attr_accessor :api_key

  def initialize(username, api_key)
    @username = username
    @api_key = api_key
  end

  def send(from, to, subject, html, text)
    from_address = from.split("<")[1].split(">")[0]
    from_name = from.split(" <")[0]
    uri = URI("https://api.elasticemail.com/mailer/send")
    p = {:username => self.username, :api_key => self.api_key, :from => from_address, :from_name => from_name, :to => to, :subject => subject, :body_html => html, :body_text => text}
    response = send_secure(uri, p)
  end
end