# wrapper around the mongodb module
# https://github.com/mongodb/node-mongodb-native
settings = require 'node_settings_module'
Mongolian = require "mongolian"

# setup a connection - without logging
server = new Mongolian settings.get("mongodb").server, {log: {}}

db = server.db settings.get("mongodb").database

exports.collection = (collection) ->
  db.collection collection
