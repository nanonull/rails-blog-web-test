class HomePage < Howitzer::Web::Page
  path '/'
  validate :url, %r{\A(?:.*?:\/\/)?[^\/]*\/?\z}

  element :my_blog_link, 'a:first-of-type'
  element :new_article_link, 'a:nth-of-type(2n)'

  def start_new_article_form
    Howitzer::Log.info 'start_new_article_form'
    new_article_link_element.click
    NewArticlePage.given
  end
end
