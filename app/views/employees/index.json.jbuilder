json.array!(@employees) do |employee|
  json.extract! employee, :id, :employee_email, :employee_phone, :employee_zipcode, :employee_first_name, :employee_last_name, :user_id, :employee_bages, :employee_description, :employee_experience_years, :employee_experience_months, :employee_lic_number, :employee_type, :employee_rating, :employee_punctuality, :employee_dependability, :employee_reliable_transportation, :employee_accurate_calendar, :employee_transportation, :employee_school, :employee_languages, :employee_qualifications, :employee_credentials, :employee_experience, :employee_phone_verified, :employee_email_verified, :employee_lic_verified
  json.url employee_url(employee, format: :json)
end
