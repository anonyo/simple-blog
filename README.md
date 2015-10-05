[![Build Status](https://travis-ci.org/anonyo/simple-blog.svg?branch=master)](https://travis-ci.org/anonyo/simple-blog)

#### [Live Preview](http://anonyo.xyz)

# Simple blog

----
## what is simple-blog?

> Simple blog is a easiest way to get your blog and personal page up and running, it's powered Rails as the backend and front-end is made with Bootstrap. All credit goes to [IronSummitMedia](https://github.com/IronSummitMedia/startbootstrap-clean-blog) for the bootstrap template.

> Markdown supported, format and add `code blocks` with ease.

----
## installation
1. Fork it!
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
GIHUB_URL=//www.github.com/anonyo
FACEBOOK_URL=//facebook.com/anonyo
TWITTER_URL=//twitter.com/hossainanonyo
ADMIN_EMAIL=somename@provider.com
ADMIN_PASSWORD=somepassword
```
### Set these for SendGrid on Heroku
> Sign up on SendGrid for a free account

```
SENDGRID_USERNAME=your_sendgrid_username
SENDGRID_PASSWORD=your_sendgrid_password
DOMAIN_NAME=your_domain_name.com
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
