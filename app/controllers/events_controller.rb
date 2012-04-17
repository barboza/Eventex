class EventsController < InheritedResources::Base
	def create
		@event = Event.new(params[:event])

		respond_to do |format|
			if @event.save
				format.html {redirect_to("/events/list/all", :notice => 'Event was successfully created.') }
				format.json { render :json => @event, :status => :created, :llocation => @event }
			else
				format.html { render :action => 'new' }
				format.json { render :json => @event.errors, :status => :uprocessable_entity }
			end
		end
	end

	def select
		respond_to do |format|
			if params[:id]
				session[:event] = Event.find(params[:id])
				format.html {redirect_to(root_url, :notice => 'Event was successfully selected.') }
				format.json { render :json => @event, :status => :selected, :llocation => @event }
			else
				format.html { redirect_to(home_url, :notice => 'Event wasn\'t successfully selected.') }
				format.json { render :json => @event.errors, :status => :uprocessable_entity }
			end
		end
	end

	def list
		@events = Event.all
	end
end
