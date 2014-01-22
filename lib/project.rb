class Project
  attr_reader :title,:thumb,:link,:description
  def initialize(title,thumb,link,description)
    @title, @thumb, @link, @description = title, thumb, link, description
  end
end
