class Mission < ApplicationRecord
	belongs_to :category
	has_many :comment
end
