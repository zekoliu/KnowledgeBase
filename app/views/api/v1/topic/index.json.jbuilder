json.status :ok
json.message :ok
json.total @total
json.pageno @pageno
json.pagesize @pagesize
json.topics @topics.each do |topic|
  json.id topic.id
  json.title topic.title
  json.answer topic.answer
  json.options topic.options_to_json
  json.parsing topic.parsing
  json.status topic.status
end