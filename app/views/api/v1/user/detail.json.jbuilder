json.status :ok
json.message :ok
json.openid @user.openid
avatar = @user.avatar.attached? ? polymorphic_url(@user.avatar) : ''
json.user_info do
  json.nickName @user.name
  json.avatarUrl @user.wx_avatar_url
end
json.avatar avatar
json.my_class @course_count
json.my_know 1
json.my_moment @moment_count