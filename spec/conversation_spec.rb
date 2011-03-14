require 'spec_helper'

describe ConversationLib::Conversation do
  before do
    ConversationLib.stub!(:url).and_return("http://some/url")
    ConversationLib.stub!(:app_id).and_return("app123")
    ConversationLib.stub!(:app_key).and_return("key123")
    RestClient.stub!(:post).and_return({:topic => "A hot topic"}.to_json)
  end
  
  context "creation" do
    it "sends a POST to the url with app_id, app_key and conversation topic" do
      RestClient.should_receive(:post).with("http://some/url", {:app_id => "app123", :app_key => "key123", :user_id => "user123",
        :conversation => {:topic => "A hot topic", :user_ids => nil}
      })
      ConversationLib::Conversation.create("A hot topic", "user123")
    end
    
    it "returns a object of that conversation" do
      result = ConversationLib::Conversation.create("A hot topic", "user123")
      result["topic"].should == "A hot topic"
    end
    
    it "raises error if not configured" do
      ConversationLib.stub!(:app_id).and_return(nil)
      ConversationLib.configured?.should == false
      lambda {ConversationLib::Conversation.create("A hot topic", "user123")}.should raise_error(ConversationLib::Error::ConfigurationError)
    end
  end
end