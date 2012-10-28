require 'spec_helper'

describe "StaticPages" do
  subject { page }

  let(:base_title) { "Rails 3.2 App" }

  describe "Home page" do
    before(:each) { visit root_path }

    it { should have_selector('h1', text: 'Rails 3.2 App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '- Home') }
  end

  describe "Help page" do
    before(:each) { visit help_path }

    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before(:each) { visit about_path }

    it { should have_selector('h1', text: 'About Us') }
    it { should have_selector('title', text: full_title('About')) }
  end

  describe "Contact page" do
    before(:each) { visit contact_path }

    it {should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end

end
