[![Build Status](https://travis-ci.org/anonyo/simple-blog.svg?branch=master)](https://travis-ci.org/anonyo/simple-blog)

# Simple blog

----
## what is simple-blog?

> Simple blog is a easiest way to get your blog and personal page up and running, it's powered Rails as the backend and front-end is made with Bootstrap.

> Markdown supported, format and add `code blocks` with ease.

----
## installation
1. Clone repository or Fork it.
2. Then run the following from project path:

```
bundle install
```

```
bundle exec rake db:create
```

```
bundle exec rake db:migrate
```

```
bundle exec rails s
```
## Setup

1. Set the following in your environment variables:

```
SITE_NAME=AH
SITE_TITLE=My Blog
SITE_HEADING_TITLE=My Blog Title
SITE_HEADING_SUBTITLE=Some awesome subtitle
ADMIN_EMAIL=somename@provider.com
ADMIN_PASSWORD=somepassword
```
In development, create a `.env` file and cut and paste above with your info.

2. Then you'll need to create an Admin user, run the following rake task.

```
bundle exec rake db:seed
```
Now you can sign in from `/admins/sign_in`

Path to new post and page will appear on nav.

You're good to go!

----
## Testing
> RSpec and Cabybara is used for testing.

##### To run test suite:

```
bundle exec rake
```
