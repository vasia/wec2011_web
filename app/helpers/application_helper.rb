module ApplicationHelper
  def set_title
    @title = text
  end
  
  def title
    "- #{@title}"
  end
end
