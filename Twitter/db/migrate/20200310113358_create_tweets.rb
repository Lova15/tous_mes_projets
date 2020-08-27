class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
    	t.text :content
    	t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
