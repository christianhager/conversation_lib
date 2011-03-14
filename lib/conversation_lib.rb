
module ConversationLib
  class << self
    attr_accessor :app_id, :app_key
    
    def ready?
      !self.app_id.nil? && !self.app_key.nil?
    end
  end
end