json.array!(@applications) do |application|
  json.extract! application, :id, :employee_id, :job_id, :accepted
  json.url application_url(application, format: :json)
end
