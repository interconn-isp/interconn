# InterConn

This Rails application serves InterConn's marketing website.

You can see a live version of it running at http://www.interconn.it.

Ruby on Rails
-------------

This application requires:

- Ruby 2.3.0
- Rails 4.2.6

Getting Started
---------------

Clone the Git repository:

```console
$ git clone git://github.com/interconn-isp/interconn.git
```

Copy and edit the configuration files:

```console
$ cp config/database.example.yml config/database.yml
$ cp config/application.example.yml config/application.yml
```

Install the dependencies:

```console
$ bundle
```

Prepare the database:

```console
$ bundle exec rake db:setup
```

Finally, run the application:

```console
$ bundle exec foreman s -f Procfile.development
```

The application is now running at http://localhost:5000.

Contributing
------------

Bug reports and pull requests are welcome on GitHub at
https://github.com/interconn-isp/interconn.

Credits
-------

The application is developed and maintained by [Alessandro Desantis](https://github.com/alessandro1997).

License
-------

The application is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
