
require "sinatra"
require "sinatra/reloader"
# require "pony"

# use Rack::MethodOverride
enable :sessions



get '/' do
  erb :index, layout: :template
end



post '/' do
@names_array = []
@names = params[:names]
@method = params[:method]
@number = params[:number]

@names_array = @names.split(/[\s, ]/)

@names_array.shuffle!

@size = @names_array.length
  	

 erb :index, layout: :template
end


#def shuf
#	@names_array = @names.split /\s| |,/
#	@names_array.shuffle!	
#end


