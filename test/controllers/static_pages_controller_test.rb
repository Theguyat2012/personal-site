require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Alex Ho"
  end

  test "should get home" do
    get root_path
    assert_template 'static_pages/home'
    assert_select 'title', "#{@base_title}"
    navigation_links_exist
    assert_select 'h1', 'Welcome'
    assert_select 'h2', 'What brings you here today?'
  end

  test "should get about" do
    get about_path
    assert_template 'static_pages/about'
    assert_select 'title', "#{@base_title} | About"
    navigation_links_exist
    assert_select 'h1', 'About Me'
    assert_select 'h2', 'My Social Media'
    assert_select 'a[href=?]', 'https://www.linkedin.com/in/alex-h-52923113a/'
    assert_select 'a[href=?]', 'https://github.com/Theguyat2012'
  end

  test "should get employment" do
    get employment_path
    assert_template 'static_pages/employment'
    assert_select 'title', "#{@base_title} | Employment"
    navigation_links_exist
    assert_select 'h1', 'Employment'
  end

  test "should get projects" do
    get projects_path
    assert_template 'static_pages/projects'
    assert_select 'title', "#{@base_title} | Projects"
    navigation_links_exist
    assert_select 'h1', 'Projects'
  end
end
