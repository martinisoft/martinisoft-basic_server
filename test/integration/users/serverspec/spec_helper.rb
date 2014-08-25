require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::Debian

RSpec.configure do |c|
  c.before :all do
    c.path = '/sbin:/usr/sbin'
  end
end
