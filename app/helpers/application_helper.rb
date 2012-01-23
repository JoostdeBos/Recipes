module ApplicationHelper
	# Allows you to set the page title in a standardized way.
	# At the beginning of your view just add this line: <%= title 'Your awesome title' %>
	def title(page_title)
  	content_for(:title) { page_title }
	end
end
