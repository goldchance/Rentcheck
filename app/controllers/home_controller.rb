class HomeController < ApplicationController
  before_action :authenticate_user!
  def index  
  	#Gmail.connect("dennis.panin2@gmail.com", "wjsrlgkrdnjs2") do |gmail|
    #@emails=gmail.inbox.find(:unread)
    
=begin 
    Gmail.new("dennis.panin2@gmail.com", "wjsrlgkrdnjs2") do |gmail|    	
    	if gmail.logged_in?
    		@check = "logged in"
    		@emails_inbox_count = gmail.inbox.count
    		@rec = gmail.inbox.emails()     
    	end
     end
=end
	Gmail.connect("dennis.panin2@gmail.com", "wjsrlgkrdnjs2") do |gmail|
	  @emails_inbox_count = gmail.inbox.count
=begin	  
	  #@rec = gmail.inbox.emails(:read)
	  #@rec =gmail.inbox.find(:read)

	  gmail.inbox.find(:after => Date.parse("2014-04-20")).each do |email|
		  email.read!
	  end	  
=end
	end	

	
  end
end
