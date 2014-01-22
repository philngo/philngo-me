class Topic
  attr_reader :title, :projects
  def initialize(title,projects)
    @title, @projects = title, projects
  end
end
