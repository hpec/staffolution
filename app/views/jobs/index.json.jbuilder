json.array!(@jobs) do |job|
  json.extract! job, :id, :name, :description, :employer_id, :employee_id, :address_line_1, :address_line_2, :city, :state, :zipcode, :compensation, :position
  json.url job_url(job, format: :json)
end
