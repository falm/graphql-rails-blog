module ArticleMutations

  Create = GraphQL::Field.define do
    type -> { ArticleType }
    description 'create a article'

    argument :title, !types.String

    argument :content, !types.String

    resolve -> (obj, input_fields, ctx)  do
      ctx[:current_user].articles.create(title: input_fields['title'], content: input_fields['content'])
    end

  end

  Update = GraphQL::Field.define do
    type -> { ArticleType }
    description 'update title of article'

    argument :id, types.ID

    argument :title, !types.String

    resolve -> (obj, input_fields, ctx)  do
      article = Article.find_by(id: input_fields['id'])
      article.update(title: input_fields['title'])
      article
    end
  end
end
