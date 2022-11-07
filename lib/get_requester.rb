# Write your code here
require "uri"
require "net/http"
require "json"
class GetRequester
attr_reader :url

def initialize url 
    @url = URI.parse(url)
end


def get_response_body
response = Net::HTTP.get_response(self.url)
response.body
end
def parse_json
        JSON.parse(self.get_response_body)
end

end