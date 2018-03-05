class DonetasksController < ApplicationController
	before_action :authenticate_user!

	def create

		@previous_donetask_true = DoneTask.find_by(user_id: current_user.id, task_id: params[:id], done: true)
		@previous_donetask_false = DoneTask.find_by(user_id: current_user.id, task_id: params[:id], done: false)

		if @previous_donetask_true.present?
			@previous_donetask_true.done = false
			@previous_donetask_true.save
			redirect_to root_path, notice: "Tarea Actualizada"
		else
			if @previous_donetask_false.present?
				@previous_donetask_false.done = true
				@previous_donetask_false.save
				redirect_to root_path, notice: "Tarea Actualizada"
			else
				@donetask = DoneTask.new()
				@donetask.task = Task.find(params[:id])
				@donetask.done = true
				@donetask.user = current_user
				if @donetask.save 
					redirect_to root_path, notice: "Tarea Completada"
				else
					redirect_to root_path, alert: "La Tarea no se ha completado"
				end
			end
		end
	end
end
