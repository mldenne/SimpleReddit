json.array!(@links) do |link|
  json.extract! link, :id, :title, :url, :user_id, :subreddit_id
  json.url link_url(link, format: :json)
end
