require 'spec_helper'

describe ConversationLib do
  
  context "setup" do
    it "is ready when there is an app_id and an app_key" do
      ConversationLib.ready?.should == false
      ConversationLib.app_id = "some_id"
      ConversationLib.app_key = "some_key"
      ConversationLib.ready?.should == true
    end
  end
end