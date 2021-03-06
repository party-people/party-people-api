Doorkeeper.configure do
  # Change the ORM that doorkeeper will use (needs plugins)
  orm :active_record

  # This block will be called to check whether the resource owner is authenticated or not.
  resource_owner_authenticator do
    User.find_by_id(session[:current_user_id]) || redirect_to(login_url)
  end

  resource_owner_from_credentials do
    User.authenticate(params[:email], params[:password])
  end
end

Doorkeeper.configuration.token_grant_types << 'password'
