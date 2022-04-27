## Overview

The **Cat-Stuff** app was created in order to practice associations using ActiveRecord and Ruby on Rails, using a SQLite database. In this app there is a list of 'owners' who <ins>has_many</ins> cats and each cat <ins>has_many</ins> toys.

## Tech Stack

React<br>
Ruby on Rails<br>
HTML5<br>
CSS

## Setup

'npm i' front_end<br>
'bundle i' app<br>
foreman start -f Procfile.dev

#### Front End

cd cat-stuff/front_end<br>
To install the dependencies run 'npm i'<br>
Then run 'npm start' to run the front end at 'localhost:4000'

#### Back End

cd cat-stuff/app<br>
To install dependencies run 'bundle i' in your terminal<br>
Then run 'rails s'
