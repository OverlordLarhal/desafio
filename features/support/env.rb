require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
require_relative 'pageHelper.rb'
require_relative 'utils.rb'

World(Screens)

Before do
  chromedriver_path = File.join(File.absolute_path('~/Documents', File.dirname(__FILE__)), "test", "browsers", "chromedriver")
  Selenium::WebDriver::Chrome.driver_path = chromedriver_path  
  @driver = Selenium::WebDriver.for :chrome
  @driver.get 'https://www.americanas.com.br/produto/69256290/guarda-roupa-com-espelho-ella-branco-moveis-arapongas?DCSext.recom=RR_category_page.rr2-CategoryTopProducts&dcsext.recom=RR_category_page.rr2-CategoryTopProducts&nm_origem=rec_category_page.rr2-CategoryTopProducts&nm_ranking_rec=2'
end

After do
  @driver.quit
end