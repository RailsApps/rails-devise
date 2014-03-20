require 'spec_helper'

feature '#show' do
  scenario 'user views own account' do
    user = FactoryGirl.create(:user)
    sign_in(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
    # Home page is treated as user profile page here.
    expect(page).to have_content 'Home'
    expect(page).to have_content 'user@example.com'
  end
end