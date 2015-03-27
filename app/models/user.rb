# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  provider               :string(255)
#  uid                    :string(255)
#  name                   :string(255)
#  username               :string(255)
#  is_employer            :boolean
#  profile_created        :boolean
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]

  has_one :employer
  has_one :employee

  include Rails.application.routes.url_helpers

  def profile_creation_path
    if is_employer
      new_employer_path
    else
      new_employee_path
    end
  end

  def profile_path
    if is_employer
      if self.employer
        employer_path(self.employer)
      else
        new_employer_path
      end
    else
      if self.employee
        employee_path(self.employee)
      else
        new_employee_path
      end
    end
  end

  #->Prelang (user_login/devise)
  has_many :reviews
  # def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
  #   user = User.where(provider: auth.provider, uid: auth.uid).first

  #   # The User was found in our database
  #   return user if user

  #   # The User was not found and we need to create them
  #   User.create(name:     auth.extra.raw_info.name,
  #               provider: auth.provider,
  #               uid:      auth.uid,
  #               email:    auth.info.email,
  #               password: Devise.friendly_token[0,20])
  # end


  attr_accessor :login

  #->Prelang (user_login:devise/username_login_support)
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", {value: login.downcase}]).first
    else
      where(conditions).first
    end
  end


  devise authentication_keys: [:login]
end
