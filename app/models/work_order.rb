class WorkOrder < ApplicationRecord
  belongs_to :asset
  belongs_to :user

  before_create :generate_work_order_number

  private

  def generate_work_order_number
    self.work_order_number = "WO-#{(WorkOrder.maximum(:id).to_i + 1).to_s.rjust(5, '0')}"
