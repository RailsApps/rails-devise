require 'spec_helper'

feature '#destroy', :js=>true do
  scenario 'user should be allowed to delete own account' do
  	user_sign_up('otheruser@example.com', 'otheruser', 'otheruser')
    click_link 'Logout'
    expect(page).to have_content 'Signed out successfully.'
    sign_in('otheruser@example.com', 'otheruser')
    expect(page).to have_content 'Signed in successfully.'
    visit '/users/edit'
    click_button 'Cancel my account'
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content 'Bye! Your account was successfully cancelled. We hope to see you again soon.'
  end
end

# Scenario: User cannot delete another account
# not implemented as there is no such beahviour in the system.