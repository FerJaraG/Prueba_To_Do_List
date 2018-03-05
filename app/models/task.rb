class Task < ApplicationRecord
	has_many :done_tasks 
    has_many :users , through: :done_tasks
end
