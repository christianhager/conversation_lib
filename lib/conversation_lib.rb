require "conversation_lib/conversation"
require 'rest-client'
require 'json'
module ConversationLib
  class Error
    ConfigurationError = "Unconfigured"
  end
  
  class << self
    attr_accessor :app_id, :app_key
    
    def url
      "http://conversations.heroku.com"
    end
    
    def configured?
      !self.app_id.nil? && !self.app_key.nil?
    end
  end
end