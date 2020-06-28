json.message :ok
json.status :ok
json.id @course.id
json.name @course.name
json.price @course.price
json.actual_price @course.actual_price
json.finish_date @course.finish_date.strftime('%Y-%m-%d %H:%M:%S')
json.main_pic polymorphic_url(@course.main_pic)
json.detail_pics @course.detail_pics.each do |pic|
  json.id pic.id
  json.url polymorphic_url(pic)
end