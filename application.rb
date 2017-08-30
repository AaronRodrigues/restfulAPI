require 'sinatra'
require 'bundler'
require 'review'

Bundler.require

DataMapper.setup(:default, 'sqlite::memory:')
DataMapper.finalize
DataMapper.auto_migrate!

get '/' do
  "Hello World!"
end
