require 'rest-client'
require 'json'


# creating a class which parses Mashable API using JSON
class Mashable
 attr_reader :endpoint_url
 
 BASE_URL = 'http://mashable.com'

 def initialize(subcategory)
     @endpoint_url = "#{BASE_URL}/#{subcategory}.json"
   end
 
   def get
    response = RestClient.get(endpoint_url)
    @parsed_response = JSON.parse(response)
   end

 # defining what information should be retrieved from the Mashable API
   def parsed_response
    @parsed_response['new'].map do |post|
      { title: post['title'], author: post['author'], url: post['link'] }
  end
 end
end