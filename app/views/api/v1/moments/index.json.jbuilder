json.status :ok
json.message :ok
json.pageno @pageno
json.pagesize @pagesize
json.total @total
json.moments @moments.each do |moment|
  json.id moment.id
  json.content moment.content
  json.user_id moment.id
  json.user_name moment.user.name
  json.created_at moment.created_at.strftime('%Y-%m-%d %H:%M:%S')
  json.user_avatar moment.user.avatar.attached? ? polymorphic_url(moment.user.avatar) : ''
  json.pics moment.pics.each do |pic|
    json.id pic.id
    json.url polymorphic_url(pic)
  end
end