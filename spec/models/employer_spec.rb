# == Schema Information
#
# Table name: employers
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  name           :string(255)
#  phone          :string(255)
#  website        :string(255)
#  email          :string(255)
#  address_line_1 :string(255)
#  address_line_2 :string(255)
#  city           :string(255)
#  state          :string(255)
#  zipcode        :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  contact_person :string(255)
#  industry       :string(255)
#  hours          :string(255)
#  description    :string(255)
#
# Indexes
#
#  index_employers_on_user_id  (user_id)
#

# # == Schema Information
# #
# # Table name: employers
# #
# #  id                     :integer          not null, primary key
# #  employer_name          :string(255)
# #  employer_zipcode       :string(255)
# #  employer_phone         :string(255)
# #  employer_url           :string(255)
# #  employer_email         :string(255)
# #  user_id                :integer
# #  employer_street_number :string(255)
# #  employer_street        :string(255)
# #  employer_unit_number   :string(255)
# #  employer_city          :string(255)
# #  employer_state         :string(255)
# #  employer_office_type   :text
# #  created_at             :datetime
# #  updated_at             :datetime
# #
# # Indexes
# #
# #  index_employers_on_user_id  (user_id)
# #

# require 'rails_helper'

# RSpec.describe Employer, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
