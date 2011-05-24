class UnitsController < ApplicationController
	
	def index
		@units = Unit.all
		
		respond_to do |format|
		format.html
		format.xml { render :xml => @units }
		end
	end
	
	def new
		@unit = Unit.new
		
		respond_to do |format|
		format.html
		format.xml { render :xml => @unit }
		end
	end
	
	def create
		@unit = Unit.new(params[:unit])
		
		respond_to do |format|
			if @unit.save
				format.html { redirect_to(@unit,
										:notice => 'Unit added successfully') }
				format.xml { render :xml => @unit,
										:status => :created, :location => @unit }
			else
				format.html { render :action => "new" }
				format.xml { render :xml => @unit.errors,
										:status => :unprocessable_entity }
			end
		end
	end
	
	def show
		@unit = Unit.find(params[:id])
			
			respond_to do |format|
			format.html
			format.xml { render :xml => @unit }
			end
	end
	
end
