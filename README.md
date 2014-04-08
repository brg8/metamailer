Metamailer is a wrapper for sending email through a couple providers. Right now we have Mailgun, Elasticemail, and Postageapp.

## Example Usage
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
