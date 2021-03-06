Pod::Spec.new do |s|
  s.name         = "RxSwiftExt"
  s.version      = "2.5.1"
  s.summary      = "RxSwift operators not found in the core distribtion"
  s.description  = <<-DESC
    A collection of operators for RxSwift adding commonly requested operations not found in the core distribution
    of RxSwift.
                   DESC
  s.homepage     = "https://github.com/RxSwiftCommunity/RxSwiftExt"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "RxSwiftCommunity" => "https://github.com/RxSwiftCommunity" }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.source       = { :git => "https://github.com/RxSwiftCommunity/RxSwiftExt.git", :tag => s.version }

  s.subspec "Core" do |cs|
    cs.source_files  = "Source/RxSwift"
    cs.frameworks  = "Foundation"
    cs.dependency "RxSwift", '~> 3.4'
  end

  s.subspec "RxCocoa" do |co|
    co.source_files  = "Source/RxCocoa"
    co.frameworks  = "Foundation"
    co.dependency "RxCocoa", '~> 3.4'
    co.dependency "RxSwiftExt/Core"
  end

  s.default_subspecs = "Core"
end
