class Employee < ApplicationRecord
  validates :name, :email, :dob, :salary, presence: true
  validates :salary, numericality: true

  scope :search_by_name, ->(name) { where("name LIKE ?", "%#{name}%") }
  scope :filter_by_options, ->(key, value) { where("#{key} ?",value) }

  before_save :set_age

  def calculate_age
    today = Date.current
    today.year - dob.year - ((today.month > dob.month || (today.month == dob.month && today.day >= dob.day)) ? 0 : 1)
  end

  private

  def set_age
    self.age = calculate_age
  end  
end
