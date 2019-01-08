--hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
--  hs.alert.show("Hello World!")
--  hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
--end)

function center()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + max.w * 0.1
  f.y = max.y + max.h * 0.1
  f.w = max.w * 0.8
  f.h = max.h * 0.7
  win:setFrame(f)
end

function fullScreen()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end

function moveToScreen(position)
  window = hs.window.focusedWindow()
  screen = hs.screen.find(position)
  window:moveToScreen(screen)
end

function randomMove()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + max.w * 0.5 * math.random()
  f.y = max.y + max.h * 0.5 * math.random()
  f.w = max.w * 0.5
  f.h = max.h * 0.5
  win:setFrame(f)
end

--hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
--  randomMove()
--end)

function newBraveWindowBlinkist()
  local scriptString = [[
  tell application "Brave Browser"
	  activate
	  tell application "System Events"
		  tell process "Brave Browser"
		  	click menu item "New Window" of menu "File" of menu bar 1
		  end tell
		  keystroke "blinkist.com/en/"
		  key code 36
	  end tell
  end tell
  ]]

  hs.osascript.applescript(scriptString)
  moveToScreen({x=0, y=0})
  fullScreen()
end

function newBraveWindow()
  local scriptString = [[
  tell application "Brave Browser"
	  activate
    tell application "System Events"
		  tell process "Brave Browser"
		  	click menu item "New Window" of menu "File" of menu bar 1
		  end tell
	  end tell
  end tell
  ]]

  hs.osascript.applescript(scriptString)
  moveToScreen({x=0, y=0})
  fullScreen()
end

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "B", function()
  newBraveWindowBlinkist()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "N", function()
  newBraveWindow()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "C", function()
  center()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "1", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w * 0.5
  f.h = max.h * 0.5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "2", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + max.w * 0.5
  f.y = max.y
  f.w = max.w * 0.5
  f.h = max.h * 0.5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "3", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + max.h * 0.5
  f.w = max.w * 0.5
  f.h = max.h * 0.5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "4", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + max.w * 0.5
  f.y = max.y + max.h * 0.5
  f.w = max.w * 0.5
  f.h = max.h * 0.5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "5", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w * 0.5
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "6", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + max.w * 0.5
  f.y = max.y
  f.w = max.w * 0.5
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "7", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h * 0.5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "8", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + max.h * 0.5
  f.w = max.w
  f.h = max.h * 0.5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "F", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
  center()
  moveToScreen({x=0, y=-1})
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
  moveToScreen({x=0, y=0})
  randomMove()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
  center()
  moveToScreen({x=0, y=-1})
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
  center()
  moveToScreen({x=1, y=-1})
end)
