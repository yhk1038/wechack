class CreateRuntimes < ActiveRecord::Migration[5.1]
    def change
        create_table :runtimes do |t|
            t.datetime :wd_open
            t.datetime :wd_close
            t.datetime :we_open
            t.datetime :we_close
            t.datetime :etc_time1
            t.datetime :etc_time2

            t.timestamps
        end
    end
end
