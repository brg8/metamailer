Gem::Specification.new do |s|
	s.name = "metamailer"
	s.version = "1.0.4"
	s.date = "2014-03-31"
	s.summary = "Send email through various ESPs."
	s.description = "Integrates several ESPs into a single mailing interface, so you can manage your email campaigns through multiple providers."
	s.authors = ["Benjamin Godlove"]
	s.email = "bgodlove88@gmail.com"
	s.files = ["lib/metamailer.rb", "lib/core.rb", "lib/mailgun.rb", "lib/elasticemail.rb", "lib/postageappm.rb"]
	s.homepage = "http://github.com/brg8/metamailer"
	s.license = "GNU"
end