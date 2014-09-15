class TeamsController < ApplicationController
  
	def index
		render(:template => 'teams/index')
		#render('index')
	end

	def new
		@trainer = Trainer.find(params[:trainer_id])
		@team = Team.new
	end

	def create
		@trainer = Trainer.find(params[:trainer_id])
		@team = Team.new(team)

		if @team.save
			redirect_to @team, :notice => "This team has been created."
		else
			render action: "new"
		end
	end

	def update
		@trainer = Trainer.find(params[:trainer_id])
		@team = Team.find(params[:id])

		if @team.update_attributes(team)
			redirect_to @team, :notice => "This team has been updated."
		else
			render :action => "edit"
		end
	end

	def edit
		@trainer = Trainer.find(params[:trainer_id])
		@team = Team.find(params[:id])
	end

	def show
		@trainer = Trainer.find(params[:trainer_id])
		@order = Order.find(params[:id])
	end

end
