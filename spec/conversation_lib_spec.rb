require 'spec_helper'

describe ConversationLib do
  
  context "setup" do
    it "is configured when there is an app_id and an app_key" do
      ConversationLib.configured?.should == false
      ConversationLib.app_id = "some_id"
      ConversationLib.app_key = "some_key"
      ConversationLib.configured?.should == true
    end
  end

end