require 'spec_helper'

feature '#update' do
  scenario 'user should be allowed to update own account' do
    user = FactoryGirl.create(:user)
    sign_in(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
    visit '/users/edit'
    fill_in 'Email', :with => 'newemail@example.com'
    fill_in 'Current password', :with => user.password
    click_button 'Update'
    expect(page).to have_content 'You updated your account successfully.'
  end
end