class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		@event.update(event_params)
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			redirect_to events_path
		else
			render :new
		end
	end

	private

		def event_params
			params.require(:event).permit(:title, :start_date, :end_date, :body)
		end

end
