class Area < ApplicationRecord
    belongs_to :nation
    belongs_to :sido
    belongs_to :gugun
    belongs_to :local
end
