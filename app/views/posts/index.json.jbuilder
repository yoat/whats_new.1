json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :project_id, :image_url, :music_url, :video_url, :message, :title
  json.url post_url(post, format: :json)
end
