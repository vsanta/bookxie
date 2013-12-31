require 'spec_helper'

feature 'Sign up' do

  scenario "User can sign up" do
    Given "I am at Bookxie homepage"
    When "I Click on a sign up link"
    Then "I fill in my email"
    And "I fill in my password"
    And "I fill in my confirmation password"
    When "I click on sign up button"
    Then "I see the You have signed up successfully"
    When "I click in sign out link"
    Then "I see the Signed out successfully message"

  end

  def i_am_at_bookxie_homepage
    visit root_path
  end

  def i_click_on_a_sign_up_link
    click_on "sign up"
  end

  def i_fill_in_my_email
    fill_in 'Email', :with => 'jesusmarlima@gmail.com'
  end

  def i_fill_in_my_password
    fill_in 'Password', :with => 'qwertyuiop'
  end

  def i_fill_in_my_confirmation_password
    fill_in 'Password confirmation', :with => 'qwertyuiop'
  end

  def i_click_on_sign_up_button
    click_on "Sign up"
  end

  def i_see_the_you_have_signed_up_successfully
    expect(page).to have_content "You have signed up successfully"
    expect(page).to_not have_content "sign up"
    expect(page).to have_content "sign out"
  end

  def i_click_in_sign_out_link
    click_on "sign out"
  end

  def i_see_the_signed_out_successfully_message
    expect(page).to have_content "Signed out successfully"
  end
end