power-cut-telegram
==================

Power cut notifier for telegram

Note: Registerd at https://my.telegram.org/ and create an app, which will give you a public key, to use telegram-cli.


Step 1:
======
Install telegram-cli
```
sudo yum install telegram-cli
```

Step 2:
=======
Copy telegram-shell script to /bin; after modifying it with required path to key and phone number
```
sudo cp telegram-shell /bin
```

Step 3:
=======
Execute electricity-telegram.rb now; after modifying telegram group.
```
ruby electricity-telegram.rb
```

