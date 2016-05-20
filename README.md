# FINE Assets

Because copy and pasting is so 2015.

## Installation

Bundle the gem:

```ruby
gem 'fine-assets', github: 'wearefine/fine-assets'
```

## Supported Libraries

| Name | JavaScript | SCSS/CSS |
|---|---|---|
| [fine-forever](https://github.com/wearefine/fine-forever) | `//= require fine-forever` | |
| [frob-core](https://github.com/wearefine/frob-core) | `//= require frob_core_helpers` | `@import 'finescss/fine'` |
| [fryr](https://github.com/wearefine/fryr) | `//= require fryr` | |
| [js-cookie](https://github.com/js-cookie/js-cookie) | `//= require js.cookie` | |
| [picturefill](https://github.com/scottjehl/picturefill) | `//= require picturefill` | |
| [slick](https://github.com/kenwheeler/slick/) | `//= require slick` | `/*= require slick */` |
| [svg4everybody](https://github.com/jonathantneal/svg4everybody) | `//= require svg4everybody` | |


## Development/Updating

### `update`

To update all libraries to the latest and greatest, run

```
$ rake update
```

To update a specific library, add an asset argument: 

```
$ rake update asset=frob-core
```

### `commit`

Libraries can be automatically committed after updating. The task checks against the last time the submodule(s) updated and adds a commit with an automatic message per submodule(s) if there's been a change. The `commit` task accepts an asset argument like `update`.

```
$ rake commit
```
