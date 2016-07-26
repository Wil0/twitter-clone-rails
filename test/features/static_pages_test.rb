require "test_helper"

class StaticPagesTest < Capybara::Rails::TestCase

  def text
    text = '| Ruby on Rails Tutorial Sample App'
  end

  test "home has a link to the tutorial" do
    visit static_pages_home_url
    assert_content page, "This is the home page for the"
    refute_content page, "StaticPages#home"
    assert_link 'Ruby on Rails Tutorial'
  end

  test "help has a link to the help page" do
    visit static_pages_help_url
    assert_content page, "Rails Tutorial help page"
    assert_content page, "To get help on this sample app"
    assert_link 'Rails Tutorial help page'
    assert_link 'Ruby on Rails Tutorial'
  end

  test "about has a link to the book" do
    visit static_pages_about_path
    assert_content page, "About"
    assert_link 'book'
    assert_link 'Ruby on Rails Tutorial'
  end

  test "contact has a contact link" do
    visit static_pages_contact_url
    assert_content page, "Contact"
    assert_link 'contact page'
  end
end
