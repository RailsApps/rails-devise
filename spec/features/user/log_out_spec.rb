require 'spec_helper'

feature '#logout' do
  scenario 'user should be logged out' do
    user = FactoryGirl.create(:user)
    sign_in(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
    click_link 'Logout'
    expect(page).to have_content 'Signed out successfully.'
  end
end