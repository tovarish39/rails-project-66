# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'gorrus100@gmail.com'
  layout 'mailer'
end
