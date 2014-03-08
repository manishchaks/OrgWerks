require 'spec_helper'

describe "links/edit" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :prefix => "MyString",
      :site_url => "MyString",
      :tld => "MyString",
      :page_url => "MyString"
    ))
  end

  it "renders the edit link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", link_path(@link), "post" do
      assert_select "input#link_prefix[name=?]", "link[prefix]"
      assert_select "input#link_site_url[name=?]", "link[site_url]"
      assert_select "input#link_tld[name=?]", "link[tld]"
      assert_select "input#link_page_url[name=?]", "link[page_url]"
    end
  end
end
