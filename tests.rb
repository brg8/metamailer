require "rspec"
require "json"
require_relative "lib/metamailer.rb"
require_relative "config.rb" # this file contains all api keys etc. that are required in order to use the mailing APIs

$from = "MetaMailer <metamailer@test.com>"
$to = "bgodlove88@gmail.com"
$subject = "Test Message From MetaMailer"
$html = "<html><head></head><body><p>Hello from MetaMailer! If you are seeing this message, the test worked!</p></body></html>"
$text = "Hello from Metamailer! If you are seeing this message, the test worked!"

describe "Metamailer" do
	before :all do
	end

	before :each do
	end

	it "sends through mailgun" do
		mailgun = MetaMailer::Mailgun.new($mailgun_username, $mailgun_api_key)
		response = mailgun.send($from, $to, $subject, $html, $text)
		JSON.parse(response)["message"].include?("Queued. Thank you.").should eq true
	end

	it "sends through postageapp" do
		#postageapp = MetaMailer::Postageapp.new($postageapp_api_key)
		#response = postageapp.send($from, $to, $subject, $html, $text)
		#response.should eq true
	end

	it "sends through elasticemail" do
		elasticemail = MetaMailer::Elasticemail.new($elasticemail_username, $elasticemail_api_key)
		response = elasticemail.send($from, $to, $subject, $html, $text)
		response.body.size.should eq 36
	end

	it "sends through sendgrid" do
		#sendgrid = MetaMailer::Sendgrid.new($sendgrid_api_user, $sendgrid_api_key)
		#response = sendgrid.send($from, $to, $subject, $html, $text)
	end

	it "sends through jangomail" do
		jangomail = MetaMailer::Jangomail.new($jangomail_username, $jangomail_password)
		response = jangomail.send($from, $to, $subject, $html, $text)
		response.body.to_s.include?("SUCCESS").should eq true
	end
end
