# php5-ppa cookbook

add ppa repository of php5.

# Requirements

depends "apt"

# Usage

add recipe to run_list 

# Attributes

- ["php5_ppa"]["keyserver"] = "keys.gnupg.net"

# Recipes

## from_skettler

add [https://launchpad.net/~skettler/+ppa-packages](https://launchpad.net/~skettler/+ppa-packages)   and execute `apt-get update` 

## from_ondrej

add [https://launchpad.net/~ondrej/+archive/php5](https://launchpad.net/~ondrej/+archive/php5)  
and execute `apt-get update` 


Contributing
====

e.g.

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
====
Authors: sawanoboryu@higanworks.com (HiganWorks LLC)

Licensed under the Apache License, Version 2.0 (the "License");

