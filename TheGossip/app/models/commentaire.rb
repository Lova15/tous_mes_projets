class Commentaire < ApplicationRecord
	has_many :likes, as: :jaime
	has_many :commentaire_bis, as: :combis
	belongs_to :user
	belongs_to :gossip
end
