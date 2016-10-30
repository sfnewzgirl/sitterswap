class WelcomeController < ApplicationController

  def home
		if current_user
			@person = current_user
		end
		@person = Person.new
	end
  
end
