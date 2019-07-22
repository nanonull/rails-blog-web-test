class ArticlePage < Howitzer::Web::Page
  validate :url, %r{.*/articles/\d+}
  element :go_back_link, 'a[href="/articles"]'
  element :title, 'p:first-of-type', match: :first
  element :article_content, 'p:nth-of-type(2n)', match: :first

  def title_text
    title_element.text
  end

  def article_content_text
    article_content_element.text
  end
end
