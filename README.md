## Rydeshare

Rydeshare is a responsive web application that makes finding rideshares (carpools) easy.

## Why?
28.9 percent of commuters in the Bay Area often cross county lines to get to work ([Silicon Valley Indicators, 2014](http://siliconvalleyindicators.org/data/place/transportation/commute-patterns/)). Commuters are stuck in rush hour on average of 6.6 hours in San Francisco, 6.7 hours in San Jose, and 7.8 hours in Los Angeles. ([Silicon Valley Indicators, 2014](http://siliconvalleyindicators.org/data/place/transportation/time-lost-to-traffic-congestion/)). Ridesharing can help commuters save time and money and reduce stress. Other advantages of carpooling include:
- Use of High Occupancy Vehicle (HOV) lanes, which can save time and money  
- Reduced wear and tear on your vehicle
- Reduced parking costs

## How to run this application

Dependencies:
Ruby: 2.3.3p222
Postgres: 9.6.1

1. ```git clone https://github.com/ychoy/rydeshare```

2. ``` bundle install ```

3. ``` rails db:create db:migrate db:seed ```

4. ``` rails s ```

5. Navigate to  ```localhost:3000```


## Demo
Try it [ here](https://rydeshare.herokuapp.com).

Login email: f@h.com
Password: 123456


## Technologies Used
- Ruby on Rails
- Google Maps API
- Geocoder gem
- Gmaps.js library
- Semantic UI Sass
- Font Awesome Rails
- jQuery Turbolinks
- Postgresql
- Devise
- Devise Encryptable
- Heroku

## Existing Features
- Users can create accounts
- Users can create a carpool with departure address
- Users can see markers representing departures on maps
- Users can filter results within ten miles of address
- Users can join carpools
- Users can leave carpools

## Planned Features
- Move map javascript into json endpoint for faster loading and better scaling. Currently the map's javascript is in the erb file, and every search query refreshes the page showing the map.
- App should track user's hometown and zoom map into hometown on the map dashboard
- Users can add destination markers to their carpool trips
- Users can view destination address markers
- Users can search for carpools based on destination address
- Users can schedule carpools - single time or reoccurring carpools
- Users can track carbon emissions reduced by carpooling

## Shoutouts
Thank you Kody Lawton, Nathan Allen, Michelle Ferreirae, Tyler Hampton for your help debugging!
