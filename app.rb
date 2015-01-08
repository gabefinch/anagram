require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')

get('/form') do
  erb(:form)
end

get('/matches') do
  @start = params.fetch('object')
  @array = params.fetch('argument_array')
  array = params.fetch("argument_array").split(", ")
  @answer = (params.fetch('object').anagram(array)).join(", ")

  erb(:matches)
end
