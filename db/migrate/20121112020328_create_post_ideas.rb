class CreatePostIdeas < ActiveRecord::Migration
  def change
    create_table :post_ideas do |t|
      t.string :idea
      t.date :date
      t.text :content

      t.timestamps
    end
  end
end
