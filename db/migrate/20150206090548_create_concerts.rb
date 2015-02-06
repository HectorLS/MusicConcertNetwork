class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
    	t.string		:band
    	t.text			:description
    	t.string		:city
    	t.string		:venue
    	t.date			:date
    	t.integer		:price	
    	t.integer		:num_comments
      t.timestamps null: false
    end
  end
end
