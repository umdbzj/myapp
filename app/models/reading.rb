class Reading < ApplicationRecord
	validates :author, presence: true
	validates :title, presence: true
end
