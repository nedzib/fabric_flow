class ResourcesController < ApplicationController
  def directory
    @providers = current_user.companies.last.providers
  end
end
