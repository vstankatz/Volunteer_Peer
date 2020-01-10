require('sinatra')
require('sinatra/reloader')
require('./lib/project')
require('./lib/volunteer')
require('pry')
require('pg')

also_reload('lib/**/*.rb')

DB = PG.connect({:dbname => "volunteer_tracker"})

get('/') do
  @projects = Project.all
  erb(:home)
end

get('/home') do
  @projects = Project.all
  erb(:home)
end

get('/home/projects') do
  @projects = Project.all
  erb(:projects)
end
#User view of project list

get('/home/admin') do
  @projects = Project.all
  erb(:admin_projects)
end
#Admin view of project list
