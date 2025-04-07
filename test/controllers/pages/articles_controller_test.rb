require "test_helper"

class Pages::ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get skills" do
    get pages_articles_skills_url
    assert_response :success
  end
end
