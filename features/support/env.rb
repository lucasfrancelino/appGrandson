require "appium_lib"
require "appium_console"
require "pry"

caps = Appium.load_appium_txt file: File.expand_path("caps/appium.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)
# Appium::Driver.new("http://localhost:4723/wd/hub/sessions", "b2283492-ebe5-47fd-b75a-a1a86d4d7f3b")
Appium.promote_appium_methods Object

