from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email.mime.multipart import MIMEMultipart
from email import encoders
import smtplib
import mimetypes
import email.mime.application
import os
import schedule
import time

def mailsend():
    email_user = 'userid'
    email_pass = 'password'
    from_email = 'from_email'
    to_email = 'to_email'

    smtp_ssl_host = 'smtp.gmail.com'  # smtp.mail.yahoo.com
    smtp_ssl_port = 465
    s = smtplib.SMTP_SSL(smtp_ssl_host, smtp_ssl_port)
    s.login(email_user, email_pass)

    #msg = MIMEMultipart()
    msg = MIMEBase('multipart','mixed')

    msg['Subject'] = 'I have a picture'
    msg['From'] = from_email
    msg['To'] = to_email

    txt = MIMEText('백업 파일','plain','utf-8')
    msg.attach(txt)

    path = r'D:\dbbackup\1234.sql'
    part = MIMEBase("application","octet-stream")
    part.set_payload(open(path,'rb').read())
    encoders.encode_base64(part)
    part.add_header('Content-Disposition',
                'attachment;filename="%s"'% os.path.basename(path))

    msg.attach(part)

    s.send_message(msg)
    s.quit()

    print("complete....")

def job():
    print("I'm working...")

# 10초에 한번씩 실행
#schedule.every(5).second.do(job)
# 1분에 한번씩 실행
schedule.every(1).minutes.do(mailsend)
# 매 시간 실행
#    schedule.every().hour.do(job) # 매일 10:30 에 실행
#    schedule.every().day.at("10:30").do(job) # 매주 월요일 실행
#    schedule.every().monday.do(job) # 매주 수요일 13:15 에 실행
#    schedule.every().wednesday.at("13:15").do(job)

while True:
    schedule.run_pending()
    time.sleep(1)

