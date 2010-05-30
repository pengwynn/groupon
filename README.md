# Groupon

Simple Ruby wrapper for the Groupon [API](http://sites.google.com/site/grouponapi/home). [Groupon](http://groupon.com) features the best deals and stuff to do in a growing number of major cities.

## Installation

    sudo gem install groupon
    
## Usage

You'll need a Groupon [API key](http://sites.google.com/site/grouponapi/home).

    require 'groupon'
    Groupon.api_key = 'your_key'
    
### Listing divisions

    divisions = Groupon.divisions
    
Groupon uses a [`Hashie::Mash`](http://github.com/intridea/hashie) for return values, providing a handy hash that supports dot notation:

    divisions.first.latitude
    => 35.0845
    divisions.first.name
    => "Albuquerque"
    
### Finding deals
    
    deals = Groupon.deals(:lat => 38.8339, :lng => -104.821)
    deals.first.conditions.minimum_purchase
    => 1
    
### Finding deals by division

    deals = Groupon.deals(:division => 'dallas')
    
<a name="changelog"></a>
## Changelog

### 0.0.1 - May 27, 2010

* Initial version

## How to contribute
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

Copyright (c) 2010 [Wynn Netherland](http://wynnnetherland.com). See LICENSE for details.
