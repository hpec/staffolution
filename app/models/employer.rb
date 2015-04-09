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
#  office_type    :string(255)
#  address_line_1 :string(255)
#  address_line_2 :string(255)
#  city           :string(255)
#  state          :string(255)
#  zipcode        :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#
# Indexes
#
#  index_employers_on_user_id  (user_id)
#

class Employer < ActiveRecord::Base
  belongs_to :user
  has_many :jobs
  has_many :reviews

  validates_presence_of :name, :phone, :address_line_1, :city, :state, :zipcode

  validates_formatting_of :zipcode, using: :us_zip, :allow_blank => true
  validates_formatting_of :phone, using: :us_phone, :allow_blank => true
  validates_formatting_of :website, using: :url, :allow_blank => true
  validates_formatting_of :email, using: :email, :allow_blank => true

  before_validation :smart_add_url_protocol

  protected

  def smart_add_url_protocol
    unless self.website.empty? || self.website[/\Ahttp:\/\//] || self.website[/\Ahttps:\/\//]
      self.website = "http://#{self.website}"
    end
  end

  acts_as_votable
end
