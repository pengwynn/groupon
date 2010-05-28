require 'rubygems'
require 'test/unit'
require 'shoulda'

require 'redgreen'
require 'matchy'
require 'fakeweb'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'groupon'


# Set the default allow_net_connect option--usually you'll want this off.
# You don't usually want your test suite to make HTTP connections, do you?
FakeWeb.allow_net_connect = false

class Test::Unit::TestCase
end

def fixture_file(filename)
  return '' if filename == ''
  file_path = File.expand_path(File.dirname(__FILE__) + '/fixtures/' + filename)
  File.read(file_path)
end

def groupon_url(url, options={})
  url =~ /^http/ ? url : "http://www.groupon.com/api/v1#{url}"
end

def stub_request(method, url, filename, status=nil)
  options = {:body => ""}
  options.merge!({:body => fixture_file(filename)}) if filename
  options.merge!({:body => status.last}) if status
  options.merge!({:status => status}) if status

  FakeWeb.register_uri(method, groupon_url(url), options)
end

def stub_get(*args); stub_request(:get, *args) end
def stub_post(*args); stub_request(:post, *args) end


