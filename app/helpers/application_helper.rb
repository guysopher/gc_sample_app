module ApplicationHelper
  def full_title(page_title)
    base_title = "Sssssopher!"
    base_title and return if page_title.empty?
    "#{base_title} | #{page_title}"
  end
end
