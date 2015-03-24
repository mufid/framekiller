require 'sinatra'
require 'uri'

set :public_folder, File.dirname(__FILE__) + '/static'
set :protection, :except => :path_traversal

get '/' do
  erb :index
end

get '/*' do
  #"Hi #{params[:uri_urlencoded]}"
  @uri = URI.decode(request.path_info.gsub!(/^\//, ""))
  #"Hi #{uri}"
  erb :main
end
