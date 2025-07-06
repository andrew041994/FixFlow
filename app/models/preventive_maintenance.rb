class PreventiveMaintenance < ApplicationRecord
  belongs_to :asset
  belongs_to :user

  validates :pm_number, presence: true, uniqueness: true
end
