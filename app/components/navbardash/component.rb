# frozen_string_literal: true

class Navbardash::Component < ViewComponent::Base
  def initialize(show:, processes:, selected_process:, company:)
    @show = show
    @processes = processes
    @selected_process = selected_process
    @company = company
  end

end
