require 'selenium-webdriver'
require_relative './pages/login'


describe 'Login' do

  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @login = Login.new(@driver)
  end
  
  after(:each) do
    @driver.quit
  end
 
  it 'Caso feliz' do
    @login.with('Jefferson', '1@2b3c')
    expect(@login.success_message_present?).to be(true)
  end

end