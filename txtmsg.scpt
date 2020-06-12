on run {Recipient, txtMessage, numTimes, MsgDelay}
	repeat numTimes
		set timeStamp to do shell script "date"
		set FootNote to "\n\nThis message was sent on\n"
		tell application "Messages"
			send txtMessage & footNote & timeStamp to buddy Recipient of service "SMS"
		end tell
		delay MsgDelay
	end repeat
end run
