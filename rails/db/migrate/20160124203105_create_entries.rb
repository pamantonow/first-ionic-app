class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
    	t.references :track
    	t.datetime :date
    	t.string :note
    	t.integer :quantity

    end
  end
end
