Metamailer is a wrapper for sending email through a couple providers. Right now we have Mailgun, Elasticemail, and Postageapp.

## Example Usage
```
mailgun = Mailgun.new("username", "api_key")
mailgun.send(from, to, subject, html, text)
```
