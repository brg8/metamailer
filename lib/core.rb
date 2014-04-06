class MetaMailer
  def send_secure uri, p
    http = Net::HTTP.new(uri.host, uri.port)
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    http.use_ssl = true
    request = Net::HTTP::Post.new(uri.request_uri)
    request.set_form_data(p)
    response = http.request(request)
  end
  
  def send(from, to, subject, html, text)
    false
  end
end