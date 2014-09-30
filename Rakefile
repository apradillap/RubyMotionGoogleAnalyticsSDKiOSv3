# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'RubyMotionGoogleAnalyticsSDKiOSv3'

  app.frameworks += %w(CoreData SystemConfiguration AdSupport EventKit EventKitUI)

  app.libs += %W(/usr/lib/libz.dylib /usr/lib/libsqlite3.dylib)

  app.vendor_project( 'vendor/GoogleAnalytics',
                      :static,
                      :products => ['libGoogleAnalyticsServices.a', 'libAdIdAccess.a'] )
end
