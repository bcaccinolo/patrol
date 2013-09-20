# Patrol

Patrol is a simple data report generator. Based on a set of queries, Patrol launch these queries and send the result through emails.

# Use cases
* receive a report about amount failed orders
* receive a report about users without user description
* receive a report about failed order transactions

# Getting started
```ruby
gem 'patrol'
```

# Configuration
here

# Launch
```ruby
rake patrol:go
```

# Todo
- rescue no config file found. Add a nice message saying the config file is not created and create the file automatically
- the default config file should contain a default 
- add a comment in readme: how to set up patrol to run regularly

