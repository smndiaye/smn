require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
    test "layout links" do
      get root_path
      #assert_template 'static_pages/home'
      assert_template 'users/vaddy-a715d37932b2ecd.html'
      assert_select "a[href=?]", root_path
      assert_select "a[href=?]", help_path
      assert_select "a[href=?]", about_path
      assert_select "a[href=?]", contact_path
      assert_select "a[href=?]", signup_path
      assert_select "a[href=?]", home_path
    end
end
