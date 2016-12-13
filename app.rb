require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('sinatra/activerecord')
require('./lib/survey')
require('./lib/question')
require('./lib/response')
require('pg')

get ('/') do
  @surveys = Survey.all
  erb :index
end

post ('/survey/new') do
  title = params[:title]
  Survey.create({title: title})
  @surveys = Survey.all
  erb :index
end

get ('/surveys/:id') do
  @survey = Survey.find(params[:id].to_i)
  erb :survey
end

post ('/surveys/:id/questions') do
  question = params[:question]
  id_survey = params[:id_survey].to_i
  Question.create({description: question, survey_id: id_survey})
  @survey = Survey.find(id_survey)
  erb :survey
end

get ('/question/:id') do
  @question = Question.find(params[:id].to_i)
  erb :question
end

post ('/questions/:id') do
  answer = params[:answer]
  question_id = params[:id_question].to_i
  Response.create({answer: answer, question_id: question_id})
  @question = Question.find(question_id)
  erb :question
end

get ('/method') do
  Survey.all.each {|survey| survey.destroy}
  Question.all.each {|question| question.destroy}
  redirect '/'
end
