# AppStore Search API Helper
- rubygems : http://rubygems.org/gems/appstore-search-api

## Installation

```sh
gem install appstore-search-api
```

## Usage
```ruby
require 'appstore-search-api'

TEST_APP_ID = 422876559
  
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
```

