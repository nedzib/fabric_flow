class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @company = current_user.companies.last
    @processes = @company.company_processes
    @selected_process = params[:process_id] || @processes.first&.id
    @steps = @selected_process ? CompanyProcess.find(@selected_process).process_steps : []
    @item_flows_by_step = load_item_flows_by_step(@selected_process)
  end

  def warehouses
    @company = current_user.companies.last
    @warehouses = @company.warehouses
  end

  private

  def load_item_flows_by_step(process_id)
    return {} unless process_id

    process = CompanyProcess.find(process_id)
    item_flows_by_step = {}

    process.process_steps.each do |step|
      item_flows_by_step[step.id] = step.item_flows.includes(:item).where(status: :in_process)
    end

    item_flows_by_step
  end
end
