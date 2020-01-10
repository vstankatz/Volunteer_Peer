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
    volunteers.push(Volunteer.new({:new => name, :project_id => project_id, :id => id}))
  end
  volunteers
end

end
