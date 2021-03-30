class ApplicationController < ActionController::Base

  include DeviseWhitelistConcern
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
end
