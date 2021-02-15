class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.datetime :day
      t.string :title
      t.string :text
      t.timestamps
    end
  end
end
