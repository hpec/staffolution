# == Schema Information
#
# Table name: education_classes
#
#  id               :integer          not null, primary key
#  class_name       :string(255)
#  class_type       :string(255)
#  class_keywords   :text
#  class_date_start :date
#  class_date_end   :date
#  class_time_start :time
#  class_time_end   :time
#  class_worth      :integer
#  reps_id          :integer
#  class_category   :string(255)
#  class_url        :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#
# Indexes
#
#  index_education_classes_on_reps_id  (reps_id)
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :education_class do
    class_name "MyString"
    class_type "MyString"
    class_keywords "MyText"
    class_date_start "2014-06-06"
    class_date_end "2014-06-06"
    class_time_start "2014-06-06 07:43:25"
    class_time_end "2014-06-06 07:43:25"
    class_worth 1
    reps nil
    class_category "MyString"
    class_url "MyString"
  end
end
