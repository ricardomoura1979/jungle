# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of buy several kinds of plants.
You can check the kind of plant, description, time to deliver and price.
Full your cart now with our system 100% approved by clients!

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

# Admin Login and Password
Login: jungle
Password: book

# FINAL PRODUCT IMAGES

!["screenshot description"](https://github.com/ricardomoura1979/jungle/blob/master/docs/1_index.png)
1 - Main page with all plants available for sales.

!["screenshot description"](https://github.com/ricardomoura1979/jungle/blob/master/docs/2_login_signup.png)
2 - Login and SignUp webpage to start buying now!

!["screenshot description"](https://github.com/ricardomoura1979/jungle/blob/master/docs/3_clients_cart.png)
3 - Manage your purchases with our amazing and safe system!

!["screenshot description"](https://github.com/ricardomoura1979/jungle/blob/master/docs/4_admin_dashboard_add_categories.png)
4 - Admin dashboard to add any plant categories like Brazilian Cactus.

!["screenshot description"](https://github.com/ricardomoura1979/jungle/blob/master/docs/5_admin_dashboard_add_plants.png)
5 - Admin Dashboard to add any plant like Ficus Lyrata.
