class Experience < ActiveRecord::Base
	belongs_to :visitor
    belongs_to :park
end