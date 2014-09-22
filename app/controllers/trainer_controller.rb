class TrainerController < ApplicationController

	def index
		@trainers = Trainer.all
		render(:template => 'trainers/index')
	end

	def new
		@trainer = Trainer.new
	end

	def create
		@trainer = Trainer.new(trainer_params)

		if @trainer.save
			redirect_to @trainer, :notice => "This trainer has been created."
		else
			render action: "new"
		end
	end

	def update
		@trainer = Trainer.find(params[:id])

		if @trainer.update_attributes(trainer_params)
			redirect_to @team, :notice => "This trainer has been updated."
		else
			render :action => "edit"
		end
	end

	def edit
		@trainer = Trainer.find(params[:id])
	end

	def show
		@trainer = Trainer.find(params[:id])
	end

end
