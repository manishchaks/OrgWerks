require 'spec_helper'

describe "links/index" do
  before(:each) do
    assign(:links, [
      stub_model(Link,
        :prefix => "Prefix",
        :site_url => "Site Url",
        :tld => "Tld",
        :page_url => "Page Url"
      ),
      stub_model(Link,
        :prefix => "Prefix",
        :site_url => "Site Url",
        :tld => "Tld",
        :page_url => "Page Url"
      )
    ])
  end

  it "renders a list of links" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Prefix".to_s, :count => 2
    assert_select "tr>td", :text => "Site Url".to_s, :count => 2
    assert_select "tr>td", :text => "Tld".to_s, :count => 2
    assert_select "tr>td", :text => "Page Url".to_s, :count => 2
  end
end
