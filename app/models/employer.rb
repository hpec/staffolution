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

class Employer < ActiveRecord::Base
  belongs_to :user
  has_many :jobs
  has_many :reviews

  acts_as_votable

  validates_presence_of :name, :industry, :contact_person, :phone, :address_line_1, :city, :state, :zipcode

  validates_formatting_of :zipcode, using: :us_zip, :allow_blank => true
  validates_formatting_of :phone, using: :us_phone, :allow_blank => true
  validates_formatting_of :website, using: :url, :allow_blank => true
  validates_formatting_of :email, using: :email, :allow_blank => true

  before_validation :smart_add_url_protocol

  protected

  def smart_add_url_protocol
    unless !self.website || self.website[/\Ahttp:\/\//] || self.website[/\Ahttps:\/\//]
      self.website = "http://#{self.website}" unless self.website=~/^https?:\/\//
    end
  end

  def remove_http_from_website
    self.website.sub!(/https?\:\/\//, '')
  end
end
