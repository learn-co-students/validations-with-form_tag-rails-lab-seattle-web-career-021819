class Author < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :email, uniqueness: true
	validates :phone_number {is: 10}
end
