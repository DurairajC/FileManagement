module FileManagementsHelper
	def url_short(url)
		client = Bitly::API::Client.new(token: 'dcc042adbb667d108d8e3c1a0e0f5fd92dc62bc1')
		bitlink = client.shorten(long_url: url)
		bitlink.link
	end
end
