# FINE Assets

Because copy and pasting is so 2015.

## Installation

Bundle the gem:

```ruby
gem 'fine-assets', github: 'wearefine/fine-assets'
```

And then expand the submodules:

```ruby
$ rake fine_assets:update
```

*TODO: This task should be automated and run after post install*

## Usage

Require the libraries as usual:

### Javascript

```javascript
// application.js
//= require frob_core_helpers


## Updating

To update all libraries to the latest and greatest, run

```
$ rake fine_assets:update
```

To update a specific library, add an asset argument: 

```
$ rake fine_assets:update asset=frob-core
```

## Supported Libraries

* [frob-core](https://github.com/wearefine/frob-core)
* [fryr](https://github.com/wearefine/fryr)
* [fine-forever](https://github.com/wearefine/fine-forever)
