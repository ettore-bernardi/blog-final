    Author.create!(
        email: 'author@blog.com', 
        username: 'defAuthor', 
        password: '123321',
    )

    Category.create!(
        name: 'Category',
    )

    Post.create!(
        title: 'A example Post',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus suspendisse faucibus interdum posuere lorem.',
        published: 'true',
        published_at: 'Tue, 13 Jul 2021 23:11:35 UTC +00:00',
        author_id: '1',
        category_id: '1',
    )