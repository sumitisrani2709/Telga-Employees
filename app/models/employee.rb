class Employee < ApplicationRecord
  validates :name, :email, :dob, :salary, presence: true
  validates :salary, numericality: true
end
