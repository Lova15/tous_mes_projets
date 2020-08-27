class Tweet < ApplicationRecord
	has_many :likes, as: :jaime
	belongs_to :user
end
