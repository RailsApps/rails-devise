require 'spec_helper'

feature '#visitor' do
  scenario 'visits home page' do
  	visit '/'
    expect(page).to have_content 'Home'
  end
end