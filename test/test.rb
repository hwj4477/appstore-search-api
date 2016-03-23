require 'appstore-search-api'

TEST_APP_ID = 854982437

app_info = AppStoreSearch.new

app_info.request_app_info(TEST_APP_ID) do |result|

  if result
    p "success"

    p app_info.title
    p app_info.icon
    p app_info.url
  else
    p "failed"
  end
end
