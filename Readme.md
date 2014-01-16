MailCannon Monitor
==================

This is a packaged Rack/Sinatra app you can use to deploy a Sidekiq monitor panel, what is war without numbers right?

**This is a work in PROGRESS, use it at your own risk**

Install
=======

No brainer, just push it to your server/Heroku and set the `REDIS_URL` variable to point to your [MailCannon Outpost](https://github.com/lucasmartins/mailcannon-outpost) Redis instance.

You **SHOULD** change the password defined on `config.ru` or set the `MAILCANNON_MONITOR_PASSWORD` variable.

Refer to the main gem for more details: [MailCannon](https://github.com/lucasmartins/mailcannon).

Rackup is your friend:

```bash
  $ bundle exec rackup
```

Contribute
==========

Just fork [MailCannon Monitor](https://github.com/lucasmartins/mailcannon-monitor), test it exaustively and make a pull request.

Support
=======

This is an opensource project so don't expect premium support, but don't be shy, post any troubles you're having in the [Issues](https://github.com/lucasmartins/mailcannon-monitor/issues) page and we'll do what we can to help.

License
=======

MailCannon Monitor is free software under the [FreeBSD license](http://www.freebsd.org/copyright/freebsd-license.html).
