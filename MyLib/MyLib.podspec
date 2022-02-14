Pod::Spec.new do |s|
  s.name         = 'MyLib'
  s.version      = '1.0'
  s.homepage     = 'http://fake-home-page.com'
  s.authors      = 'My library authors'
  s.summary      = 'My library summery'
  s.description  = 'My library description'
  s.source       = { :git => 'http://fake-repo-lib.git', :tag => 'v1.0' }
  s.license      = { :type => 'MIT' }

  s.ios.deployment_target = '12.0'

  s.source_files = 'Classes/*.swift'

  s.test_spec do |test_spec|
    test_spec.source_files = 'Tests/*.swift'
    
    test_spec.dependency 'MyLib/Demo'
    
    test_spec.requires_app_host = true
    test_spec.app_host_name = 'MyLib/Demo'
  end
  
  s.app_spec 'Demo' do |app_spec|
    app_spec.source_files = 'App/*.swift'
  end
end
