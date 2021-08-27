class Employee < ApplicationRecord
  validates :name, :email, :dob, :salary, presence: true
  validates :salary, numericality: true

  def age
    today = Date.current
    today.year - dob.year - ((today.month > dob.month || (today.month == dob.month && today.day >= dob.day)) ? 0 : 1)
  end
end
