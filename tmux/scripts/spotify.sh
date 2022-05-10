#!/usr/bin/env osascript
# Returns the current playing song in Spotify for OSX

tell application "Spotify"
if it is running then
    set track_name to name of current track
    set artist_name to artist of current track

    if artist_name > 0
		set t to "♫ " & artist_name & " - " & track_name
		if length of t > 45
			text 1 thru 45 of t & "..."
		else
			"♫ " & artist_name & " - " & track_name
		end if
	else
		"~ " & track_name
	end if
end if
end tell
