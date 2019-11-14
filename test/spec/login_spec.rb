require 'selenium-webdriver'

describe 'Login' do
  
  before :each do
    @driver = Selenium::WebDriver.for :chrome
  end

  after :each do
    @driver.quit
  end

  it 'succeeded' do
    @driver.get 'https://intense-peak-03612.herokuapp.com//'
    @driver.find_element(id: 'username').send_keys 'username'
    @driver.find_element(id: 'password').send_keys 'password'
    @driver.find_element(id: 'login').submit
    expect(@driver.find_element(css: '.success').displayed?).to be(true)
  end

end