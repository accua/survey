require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('sinatra/activerecord')
require('./lib/survey')
require('./lib/question')
require('pg')

get ('/') do
  @surveys = Survey.all
  erb :index
end

post ('/survey/new') do
  title = params[:title]
  Survey.create({title: "top food carts!"})
  @surveys = Survey.all
  erb :index
end
