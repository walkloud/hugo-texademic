# TeXaDemic

- [About](#about)
- [Features](#features)
- [Installation](#installation)
- [Support](#support)

## About

This theme started from [TeXify3](https://github.com/michaelneuper/hugo-texify3) at gitlog `4a9c4398666e797bb83963f68521adc6e3a9180f` from Nov 29, 2024.  Beyond the installation details provided in the TeXify3 docs, I've found I need to do
```
npm install autoprefixer
npm install postcss-cli
npm install postcss-import
```
Then, add the `package-lock.json` to your webpage repo.  To manage this, I created a script, see steps 8,9 below.


I wanted to create a theme that is useful for my interests in creating a static site for an academic group and an individual.


## Installation

## Usage
To make a new site with this theme, one option is
1. create your github project site, <collaboration>.github.io
2. clone locally
3. cd <collaboration>.github.io
4. hugo new site . --force
5. git submodule add https://github.com/walkloud/hugo-texademic.git themes/hugo-texademic
6. cp -r themes/hugo-texademic/exampleSite/* .
7. edit menu and content as desired
8. `bash themes/hugo-texademic/scripts/add_npm_modules.sh`
9. git add:
    - git add themes/hugo-texademic/
    - git add package-lock.json
    - git add content
    - git add hugo.toml
    - git add package.json
    - git add <.gitignore> <other_files_you_added>
10. create a `.github/workflows` directory and copy the example `.github-tmp/workflows/hugo.yaml` file there.
11. git add package.json package-lock.json; git add <your content>
12. follow instructions: `https://gohugo.io/host-and-deploy/host-on-github-pages/`
13. git commit; git push;

### Collaboration Page

#### Members
Place portraits in your `assets/images` folder.  By storing images here, they are only copied to public if they are referenced by your content.  See this [hugo solution](https://discourse.gohugo.io/t/re-markdown-style-images-with-full-path-when-baseurl-includes-subdirectory/55930) for advice on placing images.

## Features

## Acknowledgement

The following software inspires the design of this theme:

- <https://github.com/michaelneuper/hugo-texify3>

- [Help from `jmooring`](https://discourse.gohugo.io/t/re-markdown-style-images-with-full-path-when-baseurl-includes-subdirectory/55930)

## Support

If you want to support the development or say thanks

<a href="https://buymeacoffee.com/loudwalker" target="_blank">
<img src="https://cdn.buymeacoffee.com/buttons/default-orange.png"
    alt="Buy Me A Coffee"
    height="41"
    width="174">
</a>
