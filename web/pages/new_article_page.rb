class NewArticlePage < Howitzer::Web::Page
  validate :url, %r{.*/articles/new}
  element :title_input, 'input[type="text"]'
  element :text_input, 'textarea'
  element :create_article_button, 'input[type="submit"]'

  def fill_form(title = nil, text = nil)
    title_input_element.set(title) unless title.nil?
    text_input_element.set(text) unless text.nil?
  end

  def sumbit_article
    create_article_button_element.click
    ArticlePage.given
  end
end
