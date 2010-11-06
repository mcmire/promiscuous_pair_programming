class PairingSessionMailer < ActionMailer::Base
  default :from => "prakblr@yahoo.com"
  
  # Mail sent to the owner of the pairing session, informing him/her about the confirmation.
  def owner_confirm_email(pairing_session)
    @recipient = pairing_session.owner
    mail(:to => @recipient.email,
         :subject => "You have a new pair.")    
  end
  
  # # Mail sent to the person who signs up to a pairing session. 
  # def pair_confirm_email(pairing_session)
  #   @recipient = pairing_session.pair
  #   mail(:to => @recipient.email,
  #        :subject => "Thanks for signing up to pair.")    
  #   
  # end
  
end
