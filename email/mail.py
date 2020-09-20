import smtplib 
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
	
me = "phpbatch34@gmail.com"
you = "phpbatch34@gmail.com"

# Create message container - the correct MIME type is multipart/alternative.
msg = MIMEMultipart('alternative')
msg['Subject'] = "Verification Mail"
msg['From'] = me
msg['To'] = you

# Create the body of the message (a plain-text and an HTML version).
text = "Hi!\nHow are you?\nHere is the link you wanted:\nhttp://www.python.org"
html = """<html>
  <head></head>
  <body>
    <p>Hi!<br>
       How are you?<br>
       Here is the <a href="http://www.python.org">link</a> you wanted.
    </p>
  </body>
</html>
	"""
	
s = smtplib.SMTP('smtp.gmail.com', 587) 
s.starttls() 
s.login("phpbatch34@gmail.com", "123@@123") 
	
# Record the MIME types of both parts - text/plain and text/html.
part1 = MIMEText(text, 'plain')
part2 = MIMEText(html, 'html')

# Attach parts into message container.
# According to RFC 2046, the last part of a multipart message, in this case
# the HTML message, is best and preferred.
msg.attach(part1)	
msg.attach(part2)
	
s.sendmail(me,you, str(msg)) 
s.quit() 
print("mail send successfully....")
