require 'spec_helper'

RSpec.feature 'Article' do
  scenario 'Author can create new article' do
    new_article_page = HomePage.open.start_new_article_form
    new_article_page.fill_form('test article 001', 'nice article description')
    article_page = new_article_page.sumbit_article
    expect(article_page.title_text).to eq('Title: test article 001')
    expect(article_page.article_content_text).to eq('Text: nice article description')
  end
end
