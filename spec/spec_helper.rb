$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))
require 'app'
require 'capybara'
require 'capybara/dsl'

Capybara.app = App.new

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.order = 'default'
  config.include Capybara::DSL
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end
