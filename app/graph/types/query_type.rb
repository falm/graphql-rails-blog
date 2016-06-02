QueryType = GraphQL::ObjectType.define do

  name 'Query'
  description "query root for this schemas"

  field :user do
    type UserType
    argument :id, types.ID

    resolve -> (obj, args, ctx) do
      User.find_by(id: args['id'])
    end
  end

  field :articles do
    type !types[!ArticleType]
    resolve -> (obj, args, ctx) do
      Article.all
    end
  end

  field :article do
    type ArticleType

    argument :id, types.ID

    resolve -> (obj, args, ctx) do
      Article.find_by(id: args['id'])
    end
  end

end
