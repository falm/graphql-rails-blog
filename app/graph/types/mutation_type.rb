MutationType = GraphQL::ObjectType.define do

  field :CreateArticle, field: ArticleMutations::Create

  field :UpdateArticle, field: ArticleMutations::Update

  field :CreateComment, field: CommentMutations::Create

  field :DestroyComment, field: CommentMutations::Destroy

end