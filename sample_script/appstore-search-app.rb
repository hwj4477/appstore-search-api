#!/usr/bin/env ruby
#
# appstore-search-api.rb
#
# search app infomation from app_id
#
# by hwj4477@gmail.com
#

require 'appstore-search-api'

def print_usage

  puts "* usage: #{__FILE__} [APP_ID]"

end

def search_app(app_id)

  app_info = AppStoreSearch.new

  app_info.request_app_info(app_id) do |result|

    if result
      
      p app_info.title
      p app_info.icon
      p app_info.url

    else

      p "failed"

    end

  end

end

if __FILE__ ==  $0

  if ARGV.count == 1

    search_app(ARGV[0])

  else

    print_usage

  end

end
