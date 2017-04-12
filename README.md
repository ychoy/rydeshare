# Rydeshare
Rydeshare is a responsive web application that lets users sign up to create carpools or join carpools.

Try it here: http://rydeshare.herokuapp.com/

Project duration: 7 days

## Demo Account
Login email: f@h.com
Password: 123456

## Technologies Used
- Ruby on Rails
- Google Maps API
- Geocoder gem
- Semantic UI
- Gmaps.js library
- Postgresql
- Heroku

## Existing Features
- Users can create a carpool trip with departure address
- Users can see departure points for trips on maps
- Users can filter results within ten miles of address
- Users can join carpools
- Users can leave carpools

## Planned Features
- User dashboard should zoom into hometown
- Users can search for carpools based on destination address
- Users can schedule carpools - single time or reoccurring carpools
- Users can track carbon emissions reduced by carpooling

## Shoutouts
Thank you Kody Lawton, Nathan Allen, Michelle Ferreirae, Tyler Hampton

## Deployment instructions

```git clone https://github.com/ychoy/rydeshare```

``` bundle```

``` rails db:create db:migrate db:seed ```

``` rails s ```
