module ConversationLib
  class Conversation
    class << self
      def create(topic, user_id, user_ids=nil)
        raise ConversationLib::Error::ConfigurationError unless ConversationLib.configured?
        response = RestClient.post(ConversationLib.url+"/conversations", 
              {
                :app_id => ConversationLib.app_id, :app_key => ConversationLib.app_key,
                :user_id => user_id,
                :conversation => {:topic => topic, :user_ids => user_ids}
              })
        return JSON.parse(response)
      end
    end
  end
end