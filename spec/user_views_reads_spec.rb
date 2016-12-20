require 'rails_helper'

RSpec.describe "User views reads", :type => :feature do
  it "user visits index and sees reads" do
    Read.create(title: 'New article', url: 'http://www.example.com')
    visit '/'
    expect(page).to have_content('New article')
    expect(page).to have_content('http://www.example.com')
  end
end
