json.status :ok
json.message :ok
json.subjects @subjects.each do |subject|
  json.id subject.id
  json.name subject.name
end