require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Pepe", email: 'pepe@email')
  end

  test "user has name and email to be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = '    '
    refute @user.valid?
  end

  test "email should be present" do
    @user.email = ''
    refute @user.valid?
  end
end
