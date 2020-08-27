class CreateCommentaires < ActiveRecord::Migration[6.0]
  def change
    create_table :commentaires do |t|
    	t.belongs_to :user
    	t.text :content

      t.timestamps
    end
  end
end
