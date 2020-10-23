
Before do
    driver.start_driver
    # manage.timeouts.implicit_wait = 25
    # driver.execute_script('mobile:deepLink', { url: 'exp://192.168.0.20:19000', package: 'com.example.grandson'})
end

After do
    driver.quit_driver
end