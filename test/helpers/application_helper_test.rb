require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase

  def title
    'Ruby on Rails Tutorial Sample App'
  end
  test "full title helper" do
    assert_equal full_title, title
    assert_equal full_title("Help"), "Help | #{title}"
  end
end
