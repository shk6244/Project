class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
	  t.belongs_to :user
	  t.belongs_to :post

      t.timestamps
    end
  end
end
