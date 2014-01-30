require 'spec_helper'

feature 'Gadget Manager' do
  before do
    # login
    visit('/')
    click_link('login')
    fill_in('user_email', with: 'admin@example.com')
    fill_in('user_password', with: 'password')
  end

  scenario "user browses list of gadgets" do
    visit('/')
    expect(page).to have_selector('h3', text: 'Gadget 1')
  end

  scenario "user browses cover flow of gadgets" do
    visit('/')
  end

  scenario "user clicks a gadget to see detail page" do
    visit('/')
    click_link('details')
    expect(page).to have_selector('h3', text: 'Gadget 1')
  end

  scenario "user adds a gadget" do
    visit('/')
    click_link('add gadget')
  end

  scenario "user adds an image to a gadget" do
  end

end
