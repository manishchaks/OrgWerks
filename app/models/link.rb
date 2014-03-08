class Link
  include Mongoid::Document
  field :prefix, type: String
  field :site_url, type: String
  field :tld, type: String
  field :page_url, type: String
end
