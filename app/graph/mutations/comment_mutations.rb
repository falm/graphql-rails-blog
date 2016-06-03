module CommentMutations

  Create = GraphQL::Field.define do
    type -> { CommentType }
    description 'create a comment for article'

    argument :article_id, types.ID

    argument :content, !types.String

    resolve -> (obj, input_fields, ctx)  do
      article = Article.find_by(id: input_fields['article_id'])
      article.comments.create(content: input_fields['content'], user: ctx[:current_user])
    end

  end

  Destroy = GraphQL::Field.define do
    type -> { types.Boolean }
    description 'delete a comment'

    argument :id, types.ID

    resolve -> (obj, input_fields, ctx)  do
      !!Comment.delete(input_fields['id'])
    end
  end
end