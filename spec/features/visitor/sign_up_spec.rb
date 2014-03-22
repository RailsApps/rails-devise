require 'spec_helper'

feature '#sign_up', :js=>true do
  scenario 'user signs up with valid data' do
  	user_sign_up('newuser@example.com', 'newuser123', 'newuser123')
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end

  scenario 'user signs up with invalid data', :js=>true do
    user_sign_up('otheruser', 'otheruser', 'otheruser')
    expect(page).not_to have_content 'Please enter an email address.'
  end

  scenario 'user signs up without password', :js=>true do
    user_sign_up('new@example.com', '', '')
    find("li", :text => "Password can't be blank")
  end

  scenario 'user signs up without password confirmation', :js=>true do
    user_sign_up('new@example.com', 'other12345', '')
    find("li", :text => "Password confirmation doesn't match Password")
  end
  
  scenario 'user signs up with mismatched password and confirmation', :js=>true do
    user_sign_up('new@example.com', 'other12345', 'mismatchpass')
    find("li", :text => "Password confirmation doesn't match Password")
  end
end