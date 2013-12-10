require 'rubygems'  
require 'sinatra'
require 'open-uri'
require 'nokogiri'

get '/' do
	erb :storify
end

post '/' do

  url = params[:storify]
  if !url.include? ".html"
  	url+=".html"
  end
  @data = Nokogiri::HTML(open(url))
  
  
  erb :result
end
