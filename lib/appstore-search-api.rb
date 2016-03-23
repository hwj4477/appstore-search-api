#
# AppStore Search API Helper
# 
# last update 2016.02.04
#
# hwj4477@gmail.com
#

require 'net/http'
require 'json'

class AppStoreSearch

  APP_STORE_API = "https://itunes.apple.com/lookup"

  attr_accessor :title, :icon, :url

  def request_app_info(app_id)

      param = Hash.new
      param["id"] = app_id

      uri = URI.parse(APP_STORE_API)
      uri.query = URI.encode_www_form(param)
      
      response = Net::HTTP.get_response(uri)
    
      result =  JSON.parse(response.body)

      if result["resultCount"] == 0

        yield false
        return

      end
      
      app_info = result["results"][0]

      self.title = app_info["trackCensoredName"]
      self.icon = app_info["artworkUrl100"]
      self.url = app_info["trackViewUrl"]

      yield true

  end

end
