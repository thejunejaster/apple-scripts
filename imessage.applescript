on run {Recipient, Message, numTimes, MsgDelay}
	repeat numTimes times
		tell application "Messages"
			set iMessageService to 1st service whose service type = iMessage
			set iMessageBuddy to buddy Recipient of iMessageService
			send Message to iMessageBuddy
		end tell
		delay MsgDelay
	end repeat
end run
