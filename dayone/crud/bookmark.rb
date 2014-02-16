require "data_mapper"
require "date"

class Bookmark
	include DataMapper::Resource

	property :id, Serial
	property :url, String
	property :title, String
	property :creationDate, DateTime, :default => DateTime.now
end
