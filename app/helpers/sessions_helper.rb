helpers do
  def login(admin)
    session[:admin_id] = admin.id
  end

  def logout
    session.delete(:admin_id)
  end

  def logged_in?
    session[:admin_id] != nil
  end
end