[wearhouse.ph](http://www.wearhouse.ph)
=======================================

Cebu based e-commerce.

Production Notes
----------------
1. If there are any changes on the db or pending migrations, just run `heroku run rake db:migrate`

2. Assets are hosted on a CDN. Run the following if there are changes in assets:

    `heroku run rake cloudinary:sync_static` this task if native from Cloudinary which uploads images to the cloud.
    `heroku run rake cloudinary:sync_assets` this is a custom task that uploads the application js and css to the cloud.

3. The fonts used in `/assets/stylesheets/font.css.sass` are hosted on [Google App Engine](http://cdn-cloud.appspot.com). To upload the fonts
on the cloud use `http://cdn-cloud.appspot/com/a/[file_path]?url=[the_url_of_the_file]` and the file will then be available on `http://cdn-cloud.appspot.com/a/[file_path]`.
