module DonetasksHelper
	def realizadas
		DoneTask.where(user_id: current_user).count
	end

	def ranking
    	DoneTask.order('created_at asc').limit(5)
    end
end
