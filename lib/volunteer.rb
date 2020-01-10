require 'spec_helper'

class Volunteer
  attr_accessor :name, :project_id
  attr_reader :id

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @project_id = attributes.fetch(:project_id)
    @id = attributes.fetch(:id)
  end

def self.all
  returned_volunteers = DB.exec("SELECT * FROM volunteers;")
  volunteers = []
  returned_volunteers.each do |volunteer|
    name = volunteer.fetch("name")
    project_id = volunteer.fetch("project_id")
    id = volunteer.fetch("id")
    volunteers.push(Volunteer.new({:name => name, :project_id => project_id, :id => id}))
  end
  volunteers
end

def save
   new_volunteer = DB.exec("INSERT INTO volunteers (name, project_id) VALUES ('#{@name}', #{@project_id.to_i}) RETURNING id;")
   @id = new_volunteer.first.fetch("id").to_i
end

def ==(volunteer_to_compare)
  (self.name.downcase.eql?(volunteer_to_compare.name.downcase))&&(self.project_id.to_i.eql?(volunteer_to_compare.project_id.to_i))
end

def self.find(id)
  volunteer = DB.exec("SELECT * FROM volunteers WHERE id = #{id};").first
  name = volunteer.fetch("name")
  project_id = volunteer.fetch("project_id")
  id = volunteer.fetch("id")
  Volunteer.new({:name => name, :project_id => project_id, :id => id})
end


end
