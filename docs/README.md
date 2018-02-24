# Jekyll Assets Example 

## Installation

```bash
bundle install
```

## Serve

```bash
jekyll serve
```

Now, browse to `http://localhost:4000`

## Steps

1. Add `jekyll-assets` and `bulma-sass` to `Gemfile` and `_config.yml`

## Gemfile 

```ruby
group :jekyll_plugins do
  gem "jekyll-assets"
  gem "bulma-sass"
end
```

## _config.yml

```yml
plugins:
  - jekyll-assets
  - bulma-sass
```

2. Import `bulma` in `_assets/css/main.scss`

```scss
@import "bulma";
```

3. Link stylesheet in header(`_includes/head.html`)

```html
<head>
  {% asset main.css %}
</head>
```


**Warning!!! Because you are using custom plugin, you need to build it locally instead of building from github repository.**

<details>
<summary>Show details</summary>

```quote
Plugins on GitHub Pages
[GitHub Pages](https://pages.github.com/) is powered by Jekyll. However, all Pages sites are generated using the `--safe` option to disable custom plugins for security reasons. Unfortunately, this means your plugins won’t work if you’re deploying to GitHub Pages.

You can still use GitHub Pages to publish your site, but you’ll need to convert the site locally and push the generated static files to your GitHub repository instead of the Jekyll source files.
```

</details>

Read more at [https://jekyllrb.com/docs/plugins/](https://jekyllrb.com/docs/plugins/)
