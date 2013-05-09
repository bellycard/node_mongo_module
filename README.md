node_mongo_module
==================

Simple node module to wrap over mongolian

### Installation

Add to your dependencies in package.json, with a reference to this repository

```JAVASCRIPT
"dependencies": {
  "node_mongo_module": "git://github.com/bellycard/node_mongo_module.git#v0.0.1"
}
```

### Usage

```JAVASCRIPT
mongo = require('node_mongo_module')
mongo.collection('users').find(user_id : user_id).toArray (error, results) ->
  console.log results
```

### Settings

```JAVASCRIPT
{
  "development": {
    "mongodb" : {
      "server" : "mongo://username:password@localhost:27017",
      "database" : "database_name"
    }
  }
}
```


### Development

Source files are written in coffee, and compiled into JavaScript.  To watch the src directory and compile js into the add directory
```
coffee -c -b -w -o app/ src/
```
