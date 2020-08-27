class CreateCommentaireBis < ActiveRecord::Migration[6.0]
  def change
    create_table :commentaire_bis do |t|
    	t.belongs_to :user
    	t.text :content
    	t.references :combis, polymorphic: true
      t.timestamps
    end
  end
end
