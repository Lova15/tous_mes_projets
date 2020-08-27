class CommentaireBi < ApplicationRecord
	belongs_to :commbis, polymorphic: true
end
