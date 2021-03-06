# Dir[File.join(File.dirname(__FILE__), "../lib", "*.rb")].each {|f| require f}

RSpec.configure do |config|
# Use color in STDOUT
  config.color_enabled = true

# Use color not only in STDOUT but also in pagers and files
  config.tty = true 

# Use the specified formatter
  # config.formatter = :progress # :progress, :html, :textmate
  config.formatter = :documentation # :progress, :html, :textmate
end