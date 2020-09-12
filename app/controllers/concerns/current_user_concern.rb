module CurrentUserConcern
  extend ActiveSupport::Concern

  # Overriding current_user method
  def current_user
    super || guest_user
  end

  # Creating the guest_user
  def guest_user
      guest = GuestUser.new
      guest.name = "Guest User"
      guest.first_name = "Guest"
      guest.last_name = "User"
      guest.email = "guest@example.com"
      guest
  end
end
