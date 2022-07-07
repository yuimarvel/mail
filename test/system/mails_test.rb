require "application_system_test_case"

class MailsTest < ApplicationSystemTestCase
  test "testing" do
    visit new_email_path
    fill_in "Адрес отправителя", with: "yuimarvel@icloud.com"
    fill_in "Адрес получателя", with: "yuimarvel2017@gmail.com"
    fill_in "Тема", with: "Spring day"
    fill_in "Текст письма", with: "Ты слышала новую песню группы BTS-Spring day?"
    take_screenshot
    click_on "Отправить"
  end
end
