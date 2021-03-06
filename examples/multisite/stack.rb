require 'rack/builder'
require 'rack/abstract_format'
require '../../lib/orange'

require 'rack/openid'
require 'openid_dm_store'

class Main < Orange::Application
  stack do
    orange.options[:development_mode] = true
    
    use Rack::CommonLogger
    use Rack::MethodOverride
    use Rack::Session::Cookie, :secret => 'orange_secret'

    auto_reload!
    use_exceptions
    
    use Rack::OpenID, OpenIDDataMapper::DataMapperStore.new
    prerouting :multi => true

    routing :single_user => false
    
    postrouting
    load Tester.new
    run Main.new(orange)
  end
end