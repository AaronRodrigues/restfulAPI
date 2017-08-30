require 'sinatra'
require 'bundler'

Bundler.require

require 'review'
DataMapper.setup(:default, 'sqlite::memory:')
DataMapper.finalize
DataMapper.auto_migrate!

get '/' do
  "Hello World!"
end
