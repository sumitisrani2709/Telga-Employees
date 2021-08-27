json.extract! employee, :id, :name, :email, :salary, :dob, :created_at, :updated_at
json.url employee_url(employee, format: :json)
