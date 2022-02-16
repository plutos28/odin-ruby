def parse(payload)
  split_items = payload.split('&')
  payload_hash = {}

  split_items.each do |item| 
    key = item.split('=')[0]
    value = item.split('=')[1]
    payload_hash[key] = value
  end
  payload_hash
end

payload = "name=victor&age=19&gender=male" 
p parse(payload)
