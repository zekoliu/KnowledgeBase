json.status :ok
json.message :ok
json.pageno @pageno
json.pagesize @pagesize
json.total @total
json.courses @courses.each do |course|
  json.id course.id
  json.name course.name
  json.photo polymorphic_url(course.main_pic)
  json.price course.price
  json.actual_price course.actual_price
  json.finish_date course.finish_date.strftime('%Y-%m-%d %H:%M:%S')
  json.group_number course.group_number
end