module SessionsHelper

  def login(person)
    session[:person_id] = person.id
    @current_user = person
  end

  def current_user
    @current_user ||= Person.find_by_id(session[:person_id])
  end

  def logout
    @current_user = session[:person_id] = nil
  end

end
