require 'spec_helper'

describe "messages/edit" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :title => "MyString",
      :content => "MyString",
      :read => false
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", message_path(@message), "post" do
      assert_select "input#message_title[name=?]", "message[title]"
      assert_select "input#message_content[name=?]", "message[content]"
      assert_select "input#message_read[name=?]", "message[read]"
    end
  end
end
