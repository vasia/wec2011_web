module ApplicationHelper
  def set_title(text)
    @title = text
  end
  
  def title
    "- #{@title}"
  end
  
  def set_header(text)
    @title = text
  end
  
  def header
    @header
  end
end
