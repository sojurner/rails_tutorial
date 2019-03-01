## Rails Console Guide

`rails console` - Runs rails console / irb
`reload!` - restarts console

`Article.all` - Shows all article records
`Article` - Shows schema for an article

#### Create Record

###### manual step by step setting new record

`article = Article.new` - Creates new article
`article.description = 'article description'` sets description for the new article
`article.title = 'article title'` sets title for the new article
`article.save` - commits record to db

###### single command setting new record

```
Article.new(title: "this is my title", description: "This is the description").save
```

```
Article.create(title: "this is my title", description: "This is the description")
```

#### Edit Record

`article = Article.find(2)` - find article by id
`article.title = "new title"` - edit title of article
`article.save` - commit change to db
`article = Article.find_by(title)`

#### Error detection

`article.errors.any?` - boolean if there are err
`article.errors.full_messages` - list of errors
