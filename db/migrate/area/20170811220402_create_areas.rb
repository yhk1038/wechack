class CreateAreas < ActiveRecord::Migration[5.1]
    def change
        create_table :areas do |t|
            t.references :nation, foreign_key: true
            t.references :sido, foreign_key: true
            t.references :gugun, foreign_key: true
            t.references :local, foreign_key: true

            t.timestamps
        end
    end
end
