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
| [lazysizes](https://github.com/aFarkas/lazysizes) | `//= require lazysizes` | |
| [magnific](https://github.com/dimsemenov/Magnific-Popup) | `//= require jquery.magnific-popup.js` | `/*= require magnific-popup */` |
| [normalize](https://github.com/necolas/normalize.css/) | | `/*= require normalize */` |
| [picturefill](https://github.com/scottjehl/picturefill) | `//= require picturefill` | |
| [reset](http://meyerweb.com/eric/tools/css/reset/) | | `/*= require reset */` (not a submodule, not updatable) |
| [slick](https://github.com/kenwheeler/slick/) | `//= require slick` | `/*= require slick */` |
| [svg4everybody](https://github.com/jonathantneal/svg4everybody) | `//= require svg4everybody` | |

## Adding a new library

1. Run `git submodule add <.git_REPO_URL> submodules/<REPONAME>`. For example, `git submodule add git@github.com:necolas/normalize.css.git submodules/normalize`.
2. Specify what files are necessary and how they can be referenced in `lib/fine-assets/sources.rb`.
3. Document the new library in this `README`.
4. Run `rake update[<REPONAME>]` to include the necessary files.
5. Generate a first-time commit marker using `rake commit[<REPONAME>,true]`.

## Updating existing libraries

To update all libraries to their latest release and to generate a commit, run

```
$ rake update && rake commit
```

*These tasks are explained in full below, but in most cases the above command is sufficient.*

#### `rake update`

To update all libraries to the latest and greatest, run

```
$ rake update
```

To update a specific library, add the asset name as the first argument: 

```
$ rake update[frob-core]
```

#### `rake commit`

Libraries can be automatically committed after updating. The task checks against the last time the submodule(s) updated and adds a commit with an automatic message per submodule(s) if there's been a change. The `commit` task accepts an asset argument like `update`.

```
$ rake commit
```

When adding a library, be sure to include a truthy second argument to generate the marker:

```
$ rake commit[frob-core,true]
```
