#Source : http://support.mongohq.com/languages/ruby.html
# gem install mongo bson_ext json

# require 'rubygems'  # if less than Ruby 1.9
# require 'mongo'
# require 'bson'

# @db_connection = Mongo::Connection.new
# def get_connection
#   return @db_connection if @db_connection
#   db = URI.parse("mongodb://heroku:k0thapalli@linus.mongohq.com:10073/app20597435")
#   db_name = db.path.gsub(/^\//, '')
#   @db_connection = Mongo::Connection.new(db.host, db.port).db(db_name)
#   @db_connection.authenticate(db.user, db.password) unless (db.user.nil? || db.user.nil?)
#   @db_connection
# end
 
# db = get_connection