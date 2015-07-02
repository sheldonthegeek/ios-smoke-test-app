#!/usr/bin/env ruby

require 'fileutils'

cal_app = File.expand_path('./CalSmoke-cal.app')
cal_ipa = File.expand_path('./xtc-staging/CalSmoke-cal.ipa')
app = File.expand_path('./CalSmoke.app')
ipa = File.expand_path('./CalSmoke.ipa')

# calabash-ios
dir = File.expand_path('~/git/calabash/calabash-ios')
if !File.exist?(dir)
  dir = File.expand_path('~/git/calabash-ios')
end

if !File.exist?(dir)
  raise 'Expected calabash-ios to be in ~/git/calabash/calabash-ios or ~/git/calabash-ios'
end

rspec_resources_dir = File.join(dir, 'calabash-cucumber/spec/resources')
FileUtils.cp_r(app, rspec_resources_dir)

dylib_dir = File.join(dir, 'calabash-cucumber/test/dylib')
FileUtils.cp_r(app, dylib_dir)

xtc_dir = File.join(dir, 'calabash-cucumber/test/xtc')
FileUtils.cp_r(cal_ipa, xtc_dir)

# run-loop
dir = File.expand_path('~/git/calabash/run_loop')
if !File.exist?(dir)
  dir = File.expand_path('~/git/calabash/run-loop')
end

if !File.exist?(dir)
  dir = File.expand_path('~/git/run_loop')
end

if !File.exist?(dir)
  dir = File.expand_path('~/git/run-loop')
end

if !File.exist?(dir)
  raise 'Expected run-loop to be in ~/git/{run_loop | run-loop} or ~/git/calabash/{run_loop | run-loop}'
end

rspec_resources_dir = File.join(dir, 'spec/resources')
FileUtils.cp_r(cal_app, rspec_resources_dir)
FileUtils.cp_r(cal_ipa, rspec_resources_dir)
FileUtils.cp_r(app, rspec_resources_dir)
FileUtils.cp_r(ipa, rspec_resources_dir)


# calabash
dir = File.expand_path('~/git/calabash/calabash')
if !File.exist?(dir)
  dir = File.expand_path('~/git/calabash')
end

if !File.exist?(dir)
  raise 'Expected calabash to be in ~/git/calabash/calabash or ~/git/calabash'
end

rspec_resources_dir = File.join(dir, 'spec/resources/ios')
FileUtils.cp_r(cal_app, rspec_resources_dir)
FileUtils.cp_r(cal_ipa, rspec_resources_dir)
FileUtils.cp_r(app, rspec_resources_dir)
FileUtils.cp_r(ipa, rspec_resources_dir)

