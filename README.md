# _Volunteer Peer_

##### _Volunteer Tracking Database Program for Epicodus, 01/10/20_

#### By _**Veronica Stanley-Katz**_

## Description

_This program was designed to allow a non-profit employee to view, update, and delete volunteer projects and volunteers to those projects. This program was created for an Epicodus assignment geared at understanding Postgres SQL database construction and use with Ruby and Sinatra._

## Specs

|Specs|Input|Output|
|-|-|-|
|The program should allow the user to add a project.| "Feeding the Old"| Project List: Feeding the Old|
|The program should allow the user to edit a project.| Edit "Feed the Old" to "Helping the Elderly" |Project List: Helping the Elderly|
|The program should allow the user to delete a project. |Delete "Helping the Elderly" |Project List: *empty*|
|The program should allow the user to add a volunteer.| "Veronica" |Volunteer List: Veronica|
|The program should allow the user to add a volunteer to a project.| Add "Veronica" to "Helping the Elderly" |Helping the Elderly: Veronica|
|The program should allow the user to edit a volunteer.| Edit "Veronica" to "Alex" |Volunteer List: Alex|
|The program should allow the user to delete a volunteer.| Delete "Alex"| Volunteer List: *empty*|


## Setup-Installation Requirements

* _Go to https://github.com/vstankatz/Volunteer_Peer__
* _Clone the GitHub repository._
* _In your terminal/command line go into the folder that was cloned and run the following in order:_
<br>
Windows Instructions:

  >  1. createdb -w -U postgres volunteer_tracker
  >  2. psql -U postgres volunteer_tracker < database_backup.sql
  >  3. createdb -U postgres -T volunteer_tracker_test

  <i>If using Mac simply remove the '-w' and '-U postgres'</i>

* _Once the database is properly installed run 'ruby app.rb' and input 'localhost:' into your browser with the port given by your terminal._
* _Use the site as desired!_



## Known Bugs
_No known bugs._

## Technologies Suggested
* _Ruby 2.5.1_
* _Gems:_
  * _rspec_
  * _sinatra_
  * _sinatra-contrib_
  * _pry_
  * _bundler_
  * _capybara_
  * _pg_
  * _rb-readline_
* _Markup_
* _Psql_

### License

Copyright (c) 2019 **_Veronica Stanley-Katz_**

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
