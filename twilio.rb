require "rubygems"
require "twilio-ruby"

account_sid = "AC0139a1f4621be507d338f46ef0b89d4d"
auth_token = "00988e96d5fcd3e3c8dc4ad5ef99842a"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.api.account.messages.create(
		:from => "+18144028733",
		:to => "+18142186335",
		:body =>"Hawaii!"
	)

puts message.to