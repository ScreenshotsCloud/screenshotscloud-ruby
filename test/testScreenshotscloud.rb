require './lib/screenshotscloud.rb'
require 'test/unit'

class TestScreenshotscloud < Test::Unit::TestCase
	def test_match_expected_output
		screenshotscloud = ScreenshotsCloud.new("my-key-generated-at-screenshots-dot-cloud", "mysecretstringgeneratedatscreenshotsdotcloud");

		url = screenshotscloud.screenshotUrl({
			"url" => "maps.google.com"
		})

		assert(url == "https://api.screenshots.cloud/v1/screenshot/my-key-generated-at-screenshots-dot-cloud/20bc07c6b9d6875ddce3d7b69dbacac3c0ca3c7a?url=maps.google.com", "Expected output does not match")
	end
end