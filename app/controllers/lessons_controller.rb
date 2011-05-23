class LessonsController < ApplicationController

	def index
		@lessons = Lesson.all
		
		respond_to do |format|
		format.html # index.html.erb
		format.xml { render :xml => @lessons }
		end
	end
	
	def new
		@lesson = Lesson.new
		
		respond_to do |format|
		format.html
		format.xml { render :xml => @lesson }
		end
	end
	
	def create
		@lesson = Lesson.new(params[:lesson])
			
			respond_to do |format|
			if @lesson.save
				format.html { redirect_to(@lesson,
										:notice => 'Lesson was successfully created!') }
				format.xml { render :xml => @lesson,
										:status => :created, :location => @post }
			else
				format.html { render :action => "new" }
				format.xml { render :xml => @post.errors,
										:status => :unprocessable_entity }
			end
		end
	end
	
	def show
		@lesson = Lesson.find(params[:id])
		
		respond_to do |format|
			format.html
			format.xml { render :xml => @lesson }
		end
	end
	
	def edit
	end
	
	def update
	end
	
	def destroy
	end
end
