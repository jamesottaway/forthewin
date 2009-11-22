require 'spec_helper'

describe App do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :author => "value for author",
      :demo => "value for demo",
      :source => "value for source",
      :description => "value for description",
      :samplecode => "value for samplecode"
    }
  end

  it "should create a new instance given valid attributes" do
    App.create!(@valid_attributes)
  end
end
