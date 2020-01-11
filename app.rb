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
get('/home/admin/new') do
  erb(:admin_new)
end

post('/home/admin') do
  project = Project.new({:title => params[:proj_title], :id => nil})
  project.save
  @projects = Project.all
  erb(:admin_projects)
end

get('/home/admin/:proj_id/volunteer') do
  @project = Project.find(params[:proj_id])
  erb(:admin_project)
end

get('/home/volunteer') do
  @volunteers = Volunteer.all
  erb(:admin_volunteers)
end

get('/home/admin/:proj_id/volunteer/new') do
@project = Project.find(params[:proj_id])
  erb(:new_volunteer)
end

post('/home/admin/:proj_id/volunteer') do
  @project = Project.find(params[:proj_id])
  volunteer = Volunteer.new({:name => params[:volunteer_name], :project_id => @project.id, :id => nil})
  volunteer.save
  erb(:thanks)
end

get('/home/admin/:proj_id/volunteer/:id') do
  @project = Project.find(params[:proj_id])
  @volunteer = Volunteer.find(params[:id])
  erb(:thanks)
end

delete('/home/admin/:proj_id/volunteer/:id') do
  @project = Project.find(params[:proj_id])

end
