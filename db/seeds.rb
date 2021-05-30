EMAIL = "test@example.com"
PASSWORD = "password"

User.destroy_all
# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts "ユーザーの初期データインポートに成功しました。"
end

user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

AdminUser.find_or_create_by!(email: 'admin@example.com') do |admin_user|
  admin_user.password = PASSWORD
  puts "管理者ユーザーの初期データインポートに成功しました。"
end

Text.destroy_all
ImportCsv.text_data

Movie.destroy_all
ImportCsv.movie_data