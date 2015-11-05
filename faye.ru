require 'faye'
require File.expand_path('../config/initializers/faye_token.rb', __FILE__)

class ServerAuth
  def incoming(message, callback)
    puts message
    if message['channel'] !~ %r{^/meta/}
      if message['ext']['auth_token'].present?
        if message['ext']['auth_token'] != FAYE_TOKEN
          message['error'] = 'Invalid authentication token'
        end
      else
        message['error'] = 'Invalid authentication token'
      end
    end
    callback.call(message)
  end

  # IMPORTANT: clear out the auth token so it is not leaked to the client
  def outgoing(message, callback)
    if message['ext'] && message['ext']['auth_token']
      message['ext'] = {} 
    end
    callback.call(message)
  end
end


Faye::WebSocket.load_adapter('thin')
bayeux = Faye::RackAdapter.new(:mount => '/faye', :timeout => 25)
bayeux.add_extension(ServerAuth.new)
run bayeux