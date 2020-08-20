module CurrentUserConcern
  extend ActiveSupport::Concern

  # Overriding current_user method
  def current_user
    super || guest_user
  end

  # Creating the guest_user
  def guest_user
    OpenStruct.new(name: "Guest User",
                  first_name: "Guest",
                  last_name: "User",
                  email: "guest@emailexample.com"
                )
  end
end
