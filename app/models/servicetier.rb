class Servicetier < ActiveRecord::Base
    belongs_to :webtier
    belongs_to :apptier
end
