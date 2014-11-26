class CreatePosts < ActiveRecord::Migration
    def change
        create_table :posts do |t|
            t.string :title
            t.string :subtext
            t.text :body
            t.date :date_posted
            t.timestamps
        end
    end
end
