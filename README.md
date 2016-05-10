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

## Supported Libraries

| Name | JavaScript | SCSS |
|---|---|---|
| [frob-core](https://github.com/wearefine/frob-core) | `//= require frob_core_helpers` | `@import 'finescss/fine'` |
| [fryr](https://github.com/wearefine/fryr) | `//= require fryr` | |
| [fine-forever](https://github.com/wearefine/fine-forever) | `//= require fine-forever` | |
| [slick](https://github.com/kenwheeler/slick/) | `//= require slick` | `/*= require slick */` |


## Updating

To update all libraries to the latest and greatest, run

```
$ rake fine_assets:update
```

To update a specific library, add an asset argument: 

```
$ rake fine_assets:update asset=frob-core
```
