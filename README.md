# simple-cms

A simple content management system built with Ruby on Rails that implements CRUD actions and a RESTful API.

## Getting Started

These instructions will outline the steps I went through to create this project.

### Prerequisites

- A working command line
- Ruby
- Rails
- PostgreSQL

### Installing and Running PostgreSQL on macOS

```console
foo@bar:~$ brew install postgres
foo@bar:~$ rm -rf /usr/local/var/postgres
foo@bar:~$ pg_ctl -D /usr/local/var/postgres start
```
To initialize a PostgreSQL database cluster, run the following command:

```console
foo@bar:~$ initdb /usr/local/var/postgres
```

To delete a PostgreSQL database cluster, run the following command:

```console
foo@bar:~$ rm -r /usr/local/var/postgres
```

To create a new super user with a password, run the following command:

```console
foo@bar:~$ createuser -P -s your_username
```

## Utilizing Credentials in Rails

Rails has a built in way for handling sensitive information. In the project's config directory, there is an encrypted file called "master.key." This is the proper place to store sensitive information such as usernames and passwords.

To edit this file in vim, run the following command

```console
foo@bar:~$ EDITOR="vim" credentials:edit
```
If you want to change the base secret, run the following command and paste the result over the previous base key in master.key:

```console
foo@bar:~$ rails secret
```

To utilize these credentials in a file, simply type ```<%= Rails.application.credentials.your_value %>``` in the place where you want to insert the result.

## Implement CRUD Actions in Rails

CRUD Actions and their descriptions.

![CRUD Actions](images/CRUD_Actions.jpeg)

Resourceful route helpers in Rails.

![Resourceful Route Helpers](images/Resourceful_Route_Helpers.jpeg)

**Note:** These pictures were taken from the *Ruby on Rails 6 Essential Training* course on LinkedIn Learning.

## Authors

* **Michael Roush** - *Project completion*

## License

Copyright © 2020 Michael Roush. All rights reserved.