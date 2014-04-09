require "rspec"
require_relative "lib/metamailer.rb"

describe "Metamailer" do
	before :all do
	end

	before :each do
	end

	it "sends through mailgun" do
		mailgun = Mailgun.new("", "")
	end

	it "sends through postageapp" do
	end

	it "sends through elasticemail" do
	end

	it "sends through sendgrid" do
	end

	it "sends through jangomail" do
	end
end
