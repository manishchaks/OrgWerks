require 'spec_helper'

describe "links/show" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :prefix => "Prefix",
      :site_url => "Site Url",
      :tld => "Tld",
      :page_url => "Page Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Prefix/)
    rendered.should match(/Site Url/)
    rendered.should match(/Tld/)
    rendered.should match(/Page Url/)
  end
end
