require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit 'ask'
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying hello yields grumpy question from Coach" do
    visit '/ask'
    fill_in 'question', with: 'hello'
    click_on "Ask!"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end
end
