module Groupon
  class Client
    include HTTParty
    base_uri "http://www.groupon.com/api/v1"
    format :json

    def initialize(options={})
      api_key = options[:api_key] || Groupon.api_key
      self.class.headers({'X-GrouponToken' => api_key }) unless api_key.nil?
    end
    
    def divisions
      self.class.get("/divisions.json").divisions
    end
    
    def deals(query={})
      division = query.delete(:division)
      path = division ? "/#{division}" : ""
      path += "/deals.json"
      self.class.get(path, :query => query).deals
    end


    def self.get(*args); handle_response super end
    def self.post(*args); handle_response super end
    
    def self.handle_response(response)
      case response.code
      when 500...600; raise GrouponError.new(Hashie::Mash.new(response).status)
      else; response
      end
      
      Hashie::Mash.new(response)
      
    end
    
  end
end