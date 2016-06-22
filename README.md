
## GraphQL on Rails Blog Demo
> GraphQL与Rails结合的开发的例子

### 主要的Gem
```ruby
gem 'graphql'
gem 'graphiql-rails'
gem 'graphql-libgraphqlparser', '~> 0.2'
```
### 模型
![ER图](http://upload-images.jianshu.io/upload_images/1767848-b7e262cc67dde74c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)  

- 查询: **/queries/create**
- schema定义 **app/graph/schemas/***
- type **app/graph/types/***
- mutation **app/graph/mutatinos/***

### 使用

访问 localhost:3000/graphql

![GraphQL查询](http://upload-images.jianshu.io/upload_images/1767848-15b69df744a23011.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
