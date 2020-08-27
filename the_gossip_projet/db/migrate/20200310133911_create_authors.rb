class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :tel
    	t.text :content
      t.timestamps
    end
  end
end
