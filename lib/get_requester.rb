# Write your code here
require 'open-uri'
require 'net/http'
require 'json'
class GetRequester
    attr_accessor :url
    def initialize(url)
        @url= url
    end
    def get_response_body
        uri=URI.parse(self.url)
        response= Net::HTTP.get_response(uri)
        response.body
    end
    def parse_json
        body=self.get_response_body
        JSON.parse(body)
    end
end