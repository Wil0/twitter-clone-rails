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

  test "contact has a contact link to contact us" do
    visit static_pages_contact_url
    assert_content page, "Contact"
    assert_link 'contact page'
  end

  test 'we can navegate to contact from every page' do
    visit root_url
    click_on 'Contact'
    page.must_have_content 'Contact us'
    refute_content page, "This is the home page for the"
  end

  test 'we can navegate to home from every page' do
    visit root_url
    click_on 'Home'
    page.must_have_content 'This is the home page'
  end

  test 'we can navegate to help from every page' do
    visit root_url
    click_on 'Help'
    page.must_have_content 'Get help on the Ruby'
    refute_content page, "This is the home page for the"
  end

  test 'we can navegate to about from every page' do
    visit root_url
    click_on 'About'
    page.must_have_content 'About us'
    refute_content page, "This is the home page for the"
  end
end
