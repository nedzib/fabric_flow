# frozen_string_literal: true

class Navbar::NavbarComponent < ViewComponent::Base
  def initialize(show:)
    @show = show
  end

end
