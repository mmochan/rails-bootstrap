class Webtier < ActiveRecord::Base
    has_many :servicetiers
    has_many :apptiers
end
