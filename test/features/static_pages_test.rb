require "test_helper"

class StaticPagesTest < Capybara::Rails::TestCase

  test "home content" do
    visit '/home'
    assert_content page, "This is the home page for the"
    refute_content page, "StaticPages#home"
    assert_link 'Ruby on Rails Tutorial'
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

  test "root page" do
    visit root_path
    assert_link 'Contact'
    assert_link 'Home'
    assert_link 'Help'
    assert_link 'About'
    assert_link 'News'
  end
end
