require 'carrierwave'
require 'rmagick'

class ImageUploader < Carrierwave::Uploader::Base
	include CarrierWave::RMagick
	version :thumb do
		process :resize_to_fill => [200,200]		
	end

	def store_dir
		"uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
	end
	
	storage :file
end