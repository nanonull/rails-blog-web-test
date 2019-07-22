Test project for [demo rails project](https://github.com/nanonull/rails-blog-tutorial).  

# Setup

## [Howitzer](https://github.com/strongqa/howitzer) - high-level acceptance testing framework

## [Capybara](https://github.com/teamcapybara/capybara)
- driver management and configuration:  
  [Howitzer#Drivers](http://docs.howitzer-framework.io/#available-drivers)  

- page-object support:  
[Howitzer#PageObject](http://docs.howitzer-framework.io/#pages) - how to describe pages, elements, sections and more  
[Capybara/Selector](https://www.rubydoc.info/github/jnicklas/capybara/Capybara/Selector) - element selectors  
[Capybara/Node/Finders](https://www.rubydoc.info/github/jnicklas/capybara/Capybara%2FNode%2FFinders:all) - kind of 'filters' and 'options' over selectors  
[Capybara/Node/Element](https://www.rubydoc.info/github/jnicklas/capybara/Capybara/Node/Element) - element API  

## [RSpec](https://rspec.info/)
It is used for [Scenarios support](https://www.rubyguides.com/2018/07/rspec-tutorial/)

# Run tests

Currently, project is configured to run tests in Chrome browser.  
[SeleniumHQ#ChromeDriver](https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver)

### Run all specs  
`bundle exec rake rspec`