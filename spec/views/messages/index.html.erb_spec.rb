require 'spec_helper'

describe "messages/index" do
  before(:each) do
    assign(:messages, [
      stub_model(Message,
        :title => "Title",
        :content => "Content",
        :read => false
      ),
      stub_model(Message,
        :title => "Title",
        :content => "Content",
        :read => false
      )
    ])
  end

  it "renders a list of messages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
