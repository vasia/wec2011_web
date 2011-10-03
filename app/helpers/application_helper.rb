module ApplicationHelper
  def set_title(text)
    @title = t(text)
  end
  
  def title
    "- #{@title}"
  end
  
  def set_header(text)
    @header = t(text)
  end
  
  def header
    @header
  end
end
