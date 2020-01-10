class Project
  attr_accessor :title
  attr_reader :id

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

def self.all
  returned_projects = DB.exec("SELECT * FROM projects;")
  projects = []
  returned_projects.each do |project|
    title = project.fetch("title")
    id = project.fetch("id")
    projects.push(Project({:title => title, :id => id}))
  end
  projects
end


end
