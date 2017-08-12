class ApplicationRecord < ActiveRecord::Base
    include ParseInfo
    self.abstract_class = true

end
