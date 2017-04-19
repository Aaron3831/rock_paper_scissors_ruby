require('pry')
require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @rps = params.fetch('rps').rock_paper_scissors()
  erb(:result)
end
