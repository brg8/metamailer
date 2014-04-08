require "sendgrid_toolkit"

class Sendgrid < MetaMailer
  attr_accessor :api_user
  attr_accessor :api_key

  def initialize(api_user, api_key)
    @username = @api_user
    @password = @api_key
  end

  def send(from, to, subject, html, text)
    from_address = from.split("<")[1].split(">")[0]
    from_name = from.split(" <")[0]
    SendgridToolkit::Mail.new(@api_user, @api_key).send_mail :to => to, :from => from_address, :subject => subject, :text => text
  end
end
