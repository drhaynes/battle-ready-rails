require 'spec_helper'

describe "LayoutLinks" do
  it "should have a Home page at '/'" do
    visit '/'
    page.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/contact'" do
    visit '/contact'
    page.should have_selector('title', :content => "Contact")
  end

  it "should have a About page at '/about'" do
    visit '/about'
    page.should have_selector('title', :content => "About")
  end

  it "should have a Help page at '/help'" do
    visit '/help'
    page.should have_selector('title', :content => "Help")
  end

  it "should have a Signup page at '/signup'" do
    visit '/signup'
    page.should have_selector('title', :content => "Sign up")
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector('title', :content => "About")
    click_link "Help"
    page.should have_selector('title', :content => "Help")
    click_link "Contact"
    page.should have_selector('title', :content => "Contact")
    click_link "Home"
    page.should have_selector('title', :content => "Home")
    click_link "Sign up now!"
    page.should have_selector('title', :content => "Sign up")
  end
end
