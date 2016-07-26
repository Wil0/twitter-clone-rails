require "test_helper"

class StaticPagesTest < Capybara::Rails::TestCase
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
end
