Pod::Spec.new do |s|
    s.name             = 'media_volume_control'
    s.version          = '0.0.1'
    s.summary          = 'A Flutter plugin to force media volume control.'
    s.description      = <<-DESC
                         A plugin that makes sure volume buttons always adjust media volume.
                         DESC
    s.homepage         = 'https://github.com/your-username/media_volume_control'
    s.license          = { :file => '../LICENSE' }
    s.author           = { 'Your Name' => 'your.email@example.com' }
    s.source           = { :path => '.' }
    s.source_files     = 'Classes/**/*'
    s.public_header_files = 'Classes/**/*.h'
    s.platform         = :ios, '11.0'
    s.framework        = 'AVFoundation'
  end
  