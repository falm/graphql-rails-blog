
CommentType = GraphQL::ObjectType.define do

  name 'Comment'

  description 'Comment type'

  field :id, !types.ID
  field :user_id, !types.ID
  field :content, !types.String
  field :article, ArticleType
  field :user, UserType

end
