on alfred_script(q)
set mainItem to "Quit f.lux"

tell application "System Events"
    tell application process "Flux"
        tell menu bar 2
            tell menu bar item 1
                try
                    with timeout of 0.1 seconds
                        perform action "AXPress"
                    end timeout
                end try
            end tell
        end tell
    end tell
end tell
do shell script "killall 'System Events'"
tell application "System Events"
    tell application process "Flux"
        tell menu bar 2
            tell menu bar item 1
                tell menu 1
                    tell menu item mainItem
                        perform action "AXPress"
                    end tell
                    if menu 1 of menu item mainItem exists then
                        tell menu 1 of menu item mainItem
                            tell menu item subItem
                                perform action "AXPress"
                            end tell
                        end tell
                    end if
                end tell
            end tell
        end tell
    end tell
end tell

end alfred_script