# This project is no longer maintained

Metamailer is a wrapper for sending email through a couple providers. Right now we have Mailgun, Elasticemail, and Postageapp.

## Example Usage

#### Mailgun

The code assumes you are using a mailgun subdomain. If you are not using a subdomain, you should change the code in mailgun.rb. At some point I will make this easier.
```
mailgun = Mailgun.new("username", "api_key")
# be sure to format your from address correctly
from = "Benjamin Godlove <benjamin.godlove@test.com>"
to = "test@test.com"
subject = html = text = "test"
mailgun.send(from, to, subject, html, text)
```

#### PostageApp

You can only have one postageapp account, unfortunately.
```
postageapp = PostageAppMailer.new("api_key")
# be sure to format your from address correctly
from = "Benjamin Godlove <benjamin.godlove@test.com>"
to = "test@test.com"
subject = html = text = "test"
postageapp.send(from, to, subject, html, text)
```

#### ElasticEmail
```
elasticemail = ElasticemailMailer.new("username", "api_key")
# be sure to format your from address correctly
from = "Benjamin Godlove <benjamin.godlove@test.com>"
to = "test@test.com"
subject = html = text = "test"
elasticemail.send(from, to, subject, html, text)
```

#### Jangomail
```
jangomail = Jangomail.new("username", "password")
# be sure to format your from address correctly
from = "Benjamin Godlove <benjamin.godlove@test.com>"
to = "test@test.com"
subject = html = text = "test"
jangomail.send(from, to, subject, html, text)
```

#### Sendgrid

Only supports text emails right now.
```
sendgrid = Sendgrid.new("api_user", "api_key")
# be sure to format your from address correctly
from = "Benjamin Godlove <benjamin.godlove@test.com>"
to = "test@test.com"
subject = html = text = "test"
sendgrid.send(from, to, subject, html, text)
```
