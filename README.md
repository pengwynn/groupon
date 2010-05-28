# Groupon

Simple Ruby wrapper for the [Groupon](http://groupon.com) [API](http://sites.google.com/site/grouponapi/home). 

## Installation

    sudo gem install groupon
    
## Usage

You'll need a Groupon [API key](http://sites.google.com/site/grouponapi/home).

    require 'groupon'
    
    Groupon.api_key = 'your_key'
    
### Listing divisions

    divisions = Groupon.divisions
    
### Finding deals

    # full list of query options: http://sites.google.com/site/grouponapi/deals-api
    
    deals = Groupon.deals(:lat => 38.8339, :lng => -104.821)
    
### Finding deals by division

    deals = Groupon.deals(:division => 'dallas')
    


## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

### Copyright

Copyright (c) 2010 Wynn Netherland. See LICENSE for details.
