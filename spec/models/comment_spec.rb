require 'spec_helper'

describe Comment do
  before(:each) do
    @valid_attributes = {
      :text => "value for text",
      :app_id => 1,
      :user_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Comment.create!(@valid_attributes)
  end
end
