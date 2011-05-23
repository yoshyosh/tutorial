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
		@lesson = Lesson.find(params[:id])
		
		respond_to do |format|
			format.html
			format.xml { render :xml => @lesson }
		end
	end
	
	def update
		@lesson = Lesson.find(params[:id])
		
		respond_to do |format|
			if @lesson.update_attributes(params[:lesson])
				format.html { redirect_to @lesson,
										:notice => 'Lesson was successfully updated.' }
				format.xml { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml { render :xml => @lesson.errors,
										:status => :unprocessable_entity }
			end
		end
	end
	
	def destroy
		@lesson = Lesson.find(params[:id])
		@lesson.destroy
		
		respond_to do |format|
		format.html { redirect_to(lessons_url) }
		format.xml { head :ok }
		end
	end
end
