require 'spec_helper'

describe "links/new" do
  before(:each) do
    assign(:link, stub_model(Link,
      :prefix => "MyString",
      :site_url => "MyString",
      :tld => "MyString",
      :page_url => "MyString"
    ).as_new_record)
  end

  it "renders new link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", links_path, "post" do
      assert_select "input#link_prefix[name=?]", "link[prefix]"
      assert_select "input#link_site_url[name=?]", "link[site_url]"
      assert_select "input#link_tld[name=?]", "link[tld]"
      assert_select "input#link_page_url[name=?]", "link[page_url]"
    end
  end
end
