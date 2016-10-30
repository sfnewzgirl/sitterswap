class SessionsController < ApplicationController

  def new
    @person = Person.new
  end

  def create
    user_params = params.require(:person).permit(:email, :password)

    @person = Person.confirm(user_params)
    if @person
      login(@person)
      flash[:notice] = "Successfully logged in as #{@person.first_name}!"
      redirect_to '/people/' + @person.person_id
    else
      puts 'error'
      flash[:error] = "User Name and Password do not match"
      redirect_to login_path
    end
  end

  def destroy
    logout
    flash[:notice]= "Successfully logged out."
    redirect_to root_path
  end

end
