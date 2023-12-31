Pod::Spec.new do |spec|
  spec.name         = "NWSocket"
  spec.version      = "0.0.1"
  spec.summary      = "NWSocket is a versatile library simplifying powerful tcp/udp tasks."
  spec.description  = <<-DESC
                      Socket simplifies and enhances network-related tasks by providing a flexible.
                      DESC
  
  spec.homepage     = "https://github.com/harryngict/NWSocket"
  spec.source       = { :git => "git@github.com:harryngict/NWSocket.git", :tag => "#{spec.version}" }
  spec.authors      = { "Hoang Nguyen" => "harryngict@gmail.com" }
  spec.license      = { :type => "MIT", :text => "Copyright (c) 2023" }
  spec.swift_version = '5.0'
  spec.platform     = :ios, "12.0"
  spec.requires_arc = true
  spec.static_framework = true
  spec.source_files  = "Sources/Socket/**/**/*.{swift}"
end
