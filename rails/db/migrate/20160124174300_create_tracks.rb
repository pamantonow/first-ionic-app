class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
    	t.string :name
    	t.string :unit
    	t.references :user

    	t.timestamps
    end
  end
end
