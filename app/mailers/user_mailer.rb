class UserMailer < ActionMailer::Base
  default :from => "info@promiscuouspairprogramming.com"

  def pair_found_for_session_email(session)
    mail(:to      => session.owner.email,
         :subject => "You have someone to pair with on #{session.description}")
  end

  def pair_cancelled_for_session_email(session)
    mail(:to      => session.owner.email,
         :subject => "Your pair for #{session.description} has canceled")
  end
end
