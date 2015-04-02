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

require 'rails_helper'

RSpec.describe User, :type => :model do
  	describe Employer do

		before(:each) { @user = User.new(email: 'user@example.com', username: 'user1', name:'F_L', id:1, password:'12345678',is_employer: true) }

		subject { @user }

		it { should respond_to(:email) }
		it { should respond_to(:username) }
		it { should respond_to(:name) }
		it { should respond_to(:is_employer) }
		it "#email returns a string" do
			expect(@user.email).to match 'user@example.com'
		end
		it "#username returns a string" do
			expect(@user.username).to match 'user1'
		end
		it "#id returns a int" do
			expect(@user.id).to match 1
		end
		it "#name returns a string" do
			expect(@user.name).to match 'F_L'
		end
		it "#is_employer returns a boolean" do
			expect(@user.is_employer).to match true
		end
		it "#should raise" do
			@user1=User.new(email: 'user1@example.com', username: 'user2' ,password:'12345678')
			@user1.save!
			@user2=User.create(email: 'user1@example.com', username: 'user3', password:'12345678')
			expect{@user2.save!}.to raise_error()
		end
	end
	describe Employee do
		before(:each) { @user = User.new(email: 'user@example.com', username: 'user1', name:'F_L', id:1, password:'12345678',is_employer: false) }

		subject { @user }

		it { should respond_to(:email) }
		it { should respond_to(:username) }
		it { should respond_to(:name) }
		it { should respond_to(:is_employer) }
		it "#email returns a string" do
			expect(@user.email).to match 'user@example.com'
		end
		it "#username returns a string" do
			expect(@user.username).to match 'user1'
		end
		it "#id returns a int" do
			expect(@user.id).to match 1
		end
		it "#name returns a string" do
			expect(@user.name).to match 'F_L'
		end
		it "#is_employer returns a boolean" do
			expect(@user.is_employer).to match false
		end		
	end
end
