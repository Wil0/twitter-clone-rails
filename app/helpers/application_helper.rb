module ApplicationHelper

  def full_title(page_title = '')
    title = 'Ruby on Rails Tutorial Sample App'
    page_title.empty? ? title : page_title + ' | ' + title
  end
end
