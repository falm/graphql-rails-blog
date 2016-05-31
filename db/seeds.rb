# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user_data = 3.times.map do
  {name: Faker::Internet.user_name, email: Faker::Internet.email}
end

users = User.create(user_data)

article_date = users.map do |user|

  3.times.map do
    {title: Faker::Name.title, content: Faker::Lorem.paragraph, user_id: user.id}
  end

end.flatten

articles = Article.create(article_date)

comment_data = articles.map do |article|

  3.times.map do
    {article_id: article.id, content: Faker::Lorem.paragraph, user_id: User.all.to_a.sample.id}
  end

end.flatten

comments = Comment.create(comment_data)


