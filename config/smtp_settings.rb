SMTP_SETTINGS = {
  address:        'smtp.sendgrid.net',
  port:           '587',
  authentication: :plain,
  user_name:      ENV['SENDGRID_USERNAME'],
  password:       ENV['SENDGRID_PASSWORD'],
  domain:         'heroku.com'
}
