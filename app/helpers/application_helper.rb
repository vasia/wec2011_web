module ApplicationHelper
  def set_title(text)
    @title = text
  end
  
  def title
    "- #{@title}"
  end
  
  def set_header(text)
    @header = text
  end
  
  def header
    @header
  end
end
