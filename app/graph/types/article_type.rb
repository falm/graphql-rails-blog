ArticleType = GraphQL::ObjectType.define do

  name 'Article'

  description 'article type'

  field :id, !types.ID
  field :title, !types.String
  field :content, !types.String

  field :comments, -> { types[!CommentType] }

  field :user, UserType

end
