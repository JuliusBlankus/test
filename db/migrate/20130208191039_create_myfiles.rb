class CreateMyfiles < ActiveRecord::Migration
  def change
    create_table :myfiles do |t|
	t.binary :data

      t.timestamps
    end
  end
end
