
UserType = GraphQL::ObjectType.define do

  name 'User'

  description 'user type'


  field :id, !types.ID
  field :name, !types.String
  field :email, !types.String
  field :articles, -> { types[!ArticleType] }

end
