json.array!(@gadgets) do |gadget|
  json.extract! gadget, :id, :make, :model, :available, :checked_out, :checked_in, :location, :format, :os_version, :user_id
  json.url gadget_url(gadget, format: :json)
end
