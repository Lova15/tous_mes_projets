class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
  	create_table :gossip_tag, id: false do |t|
  		t.belongs_to :gossip
  		t.belongs_to :tag
  	end
  end
end
