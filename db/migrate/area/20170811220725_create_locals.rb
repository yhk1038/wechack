class CreateLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :locals do |t|
      t.string :name
      t.string :info

      t.timestamps
    end
  end
end
