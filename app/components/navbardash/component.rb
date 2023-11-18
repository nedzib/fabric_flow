# frozen_string_literal: true

class Navbardash::Component < ViewComponent::Base
  def initialize(show: nil, processes: nil, selected_process: nil, company: nil, view: nil)
    @show = show
    @processes = processes
    @selected_process = selected_process
    @company = company
    @view = view
  end

end
