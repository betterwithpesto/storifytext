require 'rubygems'
require 'sinatra'
require 'open-uri'
require 'open_uri_redirections'
require 'nokogiri'
require 'uri'
Dir['./app/*.rb'].each { |file| require file }


get '/' do
  erb :storify
end

post '/' do
  @page = ResultsPage.new(params)
  erb :result
end











