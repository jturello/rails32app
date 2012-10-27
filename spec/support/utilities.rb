
def full_title(page_title)
  base_title = "Rails 3.2 App"
  if page_title.empty?
    base_title
  else
    "#{base_title} - #{page_title}"
  end
end
