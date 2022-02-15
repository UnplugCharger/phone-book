#!/usr/bin/env bash


echo 'Creating application user and db';


mongo phonebookdb  --username byron  --password byron  --authenticationDatabase admin  --host localhost  --port 27017  --eval "db.createUser({user: 'byron', pwd: 'byron', roles:[{role:'dbOwner', db: 'phonebookdb'}]});"


echo 'User: byron create to database phonebookdb';


