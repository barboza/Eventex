class EventsController < InheritedResources::Base
	def create
		@event = Event.new(params[:event])

		respond_to do |format|
			if @event.save
				format.html {redirect_to(events_url, :notice => 'Event was successfully created.') }
				format.json { render :json => @event, :status => :created, :llocation => @event }
			else
				format.html { render :action => 'new' }
				format.json { render :json => @event.errors, :status => :uprocessable_entity }
			end
		end
	end
end
