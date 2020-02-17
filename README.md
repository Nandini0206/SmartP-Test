# Smart Pension Tech Test

 ## Requirements

 Write a program that:

 1. Receives a log file as an argument (webserver.log is provided) e.g. /<parse>webserver.log

 2. Returns the following:

 * list of webpages with the most page views ordered from most pages views to least page views
 e.g. `/home 90 visits/index 80 visits etc...`

 * list of webpages with the most unique page views also ordered
 e.g. `/about/28 unique views/index 5 unique views etc...`

 ## User Stories

 1. As a user so that I can see the viewing history
    I'd like to be able to read the webserver.log file.

 2. As a user so that I can see the most popular pages
    I'd like to be able to see a list of webpages from most visits to least visits.

 3. As a user so that I can see the different webpages
    I'd like to be able to see a list of webpages with unique page views ordered.

4. EDGE CASE - As a user I would like to be informed
                   if an incorrect filename has been passed
                   by raising an error.

## How to Run

1. Clone this repository
2. Navigate into the repository
3. Run `bundle install` from the command line
4. Carry out the following steps in you terminal:

    - Open your REPL, in this case - `irb`
    - Load the file - `require './lib/parse.rb'`
    - Create a new instance of the Parse class - `file = Parse.new`
    - Pass the log file as an argument to the parser method, this will return an array of each url and ip - `file.parser("webserver.log")`
    - Depending on what you want you can call two methods;
         1.  If you want to view the most popular pages - `file.most_viewed`
         2.  If you want to view the pages with the most unique views - `file.unique_views`
    - Once done then type `exit` to come out of IRB

## Running the Tests

1. Clone this repository
2. Navigate into the repository
3. Run `bundle install` from the command line
4. Run `rspec` from the command line

## Test Coverage

```
COVERAGE: 100.00% -- 33/33 lines in 2 files
```
