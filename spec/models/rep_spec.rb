# == Schema Information
#
# Table name: reps
#
#  id              :integer          not null, primary key
#  rep_name        :string(255)
#  rep_type        :string(255)
#  rep_description :text
#  user_id         :integer
#  rep_email       :string(255)
#  rep_phone       :string(255)
#  rep_url         :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#
# Indexes
#
#  index_reps_on_user_id  (user_id)
#

require 'rails_helper'

RSpec.describe Rep, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
