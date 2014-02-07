require 'rubygems'
require 'sinatra'
require 'open-uri'
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











