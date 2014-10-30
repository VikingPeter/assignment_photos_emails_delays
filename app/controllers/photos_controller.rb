class PhotosController < ApplicationController

	def new
		@photo = Photo.new
	end

	def show
	end

	def index
	end

	def create
	end

	def upload
		uploaded_io = params[:person][:picture]
		    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
		      # Note that we're using the `read` method
		      file.write(uploaded_io.read)
	end

	def photo_params
	end

end
