require 'openssl'
require 'open-uri'

class ScreenshotsCloud
	def initialize(apiKey, apiSecret)
	  @apiKey = apiKey
	  @apiSecret = apiSecret
    end

	def screenshotUrl(options={})
	  parameters = options.map {|option| option.map {|value| URI.escape(value.to_s, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]")) }.join('=') }.join('&')

	  token = OpenSSL::HMAC.hexdigest('sha1', @apiSecret, parameters)

	  "https://api.screenshots.cloud/v1/screenshot/#{@apiKey}/#{token}?#{parameters}"
	end
end