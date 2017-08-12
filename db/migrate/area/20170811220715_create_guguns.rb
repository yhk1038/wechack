class CreateGuguns < ActiveRecord::Migration[5.1]
  def change
    create_table :guguns do |t|
      t.string :name
      t.string :info

      t.timestamps
    end
  end
end
