require 'sinatra'

set :bind=>"0" # 172.20.234.230"

get '/button' do
	erb :button
end

get '/' do
	erb :index
end

get '/capture' do
  filename = Time.now.to_i.to_s
	full_path = "public/SavedImages/"+filename+".png"
  system "fswebcam --png 0 --no-banner --resolution \"1280x720\" --save '"+full_path+"'"
	puts "tweeting: #{full_path}"
 	system "/home/pi/test_twittering '"+full_path+"'"
  "/SavedImages/"+filename+".png"
end

get '/latest' do
	erb :latest
end

get '/latest_image' do
	latest = Dir["public/SavedImages/*.png"].sort.last
	"/SavedImages/"+File.basename(latest)
end
