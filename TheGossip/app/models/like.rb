class Like < ApplicationRecord
	belongs_to :user
	belongs_to :jaime, polymorphic: true
end
