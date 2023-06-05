class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@planner.com"
  layout "mailer"
end
