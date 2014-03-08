json.array!(@links) do |link|
  json.extract! link, :id, :prefix, :site_url, :tld, :page_url
  json.url link_url(link, format: :json)
end
