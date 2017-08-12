class Nation < ApplicationRecord
    after_find :load_data
end
