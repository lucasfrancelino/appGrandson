require 'base64'
Before do
    driver.start_driver
end

After do
    screenshot = driver.screenshot_as(:png)
    attach(screenshot, "image/png")

    driver.quit_driver
end