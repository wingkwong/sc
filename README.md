# sc

sc is a collection of Bash Alias scripts. 

## Installation

#### via curl
````
sh -c "$(curl -fsSL https://raw.githubusercontent.com/wingkwong/sc/master/install.sh)"
````

#### via wget
````
sh -c "$(wget -O- https://raw.githubusercontent.com/wingkwong/sc/master/install.sh)"
````

## Usage
By default, all modules are disabled. 

To enable an alias module: ``sc -e [alias_module]``
````
sc -e apache
# Use the alias defined in the specified module. Example:
# apsta
````

To disable an alias module: ``sc -d [alias_module]``
````
sc -d apache
````

To check the usage: ``sc -h ``
````
sc -h
````

## Avilable Alias Module
- apache
- cli
- django
- git
- hg
- npm
- yarn