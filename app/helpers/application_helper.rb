# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def textarea_display(text)
      text.gsub(/\n/, "<br />")
  end
  
  
end
