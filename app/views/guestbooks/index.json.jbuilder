json.array!(@guestbooks) do |guestbook|
  json.extract! guestbook, :message, :name
  json.url guestbook_url(guestbook, format: :json)
end
