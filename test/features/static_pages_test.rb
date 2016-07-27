require "test_helper"

class StaticPagesTest < Capybara::Rails::TestCase

  test "home content" do
    visit '/home'
    assert_content page, "This is the home page for the"
    refute_content page, "StaticPages#home"
    assert_link 'Ruby on Rails Tutorial'
    click_link 'Sign up now!'
    assert_content 'Sign up here'
  end

  test "help content" do
    visit '/help'
    assert_content page, "To get help on this sample app"
    assert_link 'Rails Tutorial help page'
    assert_link 'Ruby on Rails Tutorial'
  end

  test "about content" do
    visit '/about'
    assert_content page, "About"
    assert_link 'book'
    assert_link 'Ruby on Rails Tutorial'
  end

  test "contact content" do
    visit '/contact'
    assert_content page, "Contact"
    assert_link 'contact page'
  end

  test "layput page links" do
    visit root_path
    click_link 'Contact'
    assert_content 'Contact us'
    click_link 'Home'
    assert_content 'Welcome to the Sample App'
    click_link 'Help'
    assert_content 'Get help'
    click_link 'About'
    assert_content 'About us'
  end

end
