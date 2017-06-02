load './screenshotscloud.rb'

screenshotscloud = ScreenshotsCloud.new("[apiKey]", "[apiSecret]");

url = screenshotscloud.screenshotUrl({
	"url" => "bbc.com/news",
	"width" => 800
})
puts url