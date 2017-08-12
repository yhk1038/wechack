class CreateStores < ActiveRecord::Migration[5.1]
    def change
        create_table :stores do |t|
            t.string :name
            t.references :grade, foreign_key: true
            t.references :runtime, foreign_key: true

            t.timestamps
        end
    end
end
