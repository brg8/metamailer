require "net/http"

class Jangomail < MetaMailer
  attr_accessor :username
  attr_accessor :api_key

  def initialize(username, password)
    @username = username
    @password = password
  end

  def send(from, to, subject, html, text)
    uri = URI("http://api.jangomail.com/api.asmx/SendTransactionalEmail")
    from_address = from.split("<")[1].split(">")[0]
    from_name = from.split(" <")[0]
    p = {:Username => @username, :Password => @password, :FromEmail => from_address, :FromName => from_name, :ToEmailAddress => to, :Subject => subject, :MessagePlain => text, :MessageHTML => html, :Options => ""}
  end
end
