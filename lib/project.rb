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
    projects.push(Project.new({:title => title, :id => id}))
  end
  projects
end

def save
  new_project = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id;")
  @id = new_project.first.fetch("id").to_i
end

def ==(project_to_compare)
  self.title.downcase.eql?(project_to_compare.title.downcase)
end


end
