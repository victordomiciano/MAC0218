require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=help]", help_path
    assert_select "a[href=about]", about_path
    assert_select "a[href=contact]", contact_path
    get contact_path
    assert_select "title", full_title("Chatterzilla")
  end
end
