# TeXaDemic

- [About](#about)
- [Features](#features)
- [Installation](#installation)
- [Support](#support)

## About

I wanted to create a theme that would work for academic style web-pages, both for individuals and for collaboration pages.  The theme currently works reasonably well for collaboration pages and developments for individual pages are under way.  This theme started from [TeXify3](https://github.com/michaelneuper/hugo-texify3) at gitlog `4a9c4398666e797bb83963f68521adc6e3a9180f` from Nov 29, 2024, and has since evolved significantly from its inception.

Example pages using this theme
- [Berkeley LQCD Group](https://berkeley-lqcd.github.io)
- [CoSMoN Collaboration](https://cosmon-collaboration.github.io)
- [BaSc Collaboration](https://basc-collaboration.github.io)



## Features

An incomplete list of features includes:
- Multiple color themse available, or create your own and use it
- Optional Hero image (hero header / hero banner / etc.) that can be controlled on each page
- Organize members alphabetically or by category
- ...

The current type of pages supported include:
- Landing page
  * The landing pages pulls the latest `N` items from News, publications, ... to populate the latest info on the home page where `N` is configurable in the main configuration file (eg hugo.toml).
- About
- News
- Members
- Publications
- Talks
- Software

### Theme color
The theme supports different color options which is controlled in the `hugo.toml` file:
```
[params]
  theme="\<theme\>"
```
with the two `theme` options being `blue-grey` and `gruvbox`.  Alternatively, you can create your own theme and place it in your own `assets/sass/themes/` folder, reference the name in your `hugo.toml` file, and it will override the default (`gruvbox`) theme option.

## Installation

NOTE: This theme has been tested to work with [Hugo](https://gohugo.io/documentation/) version `0.161.1`.

You need the `extended` version of Hugo installed.

### Step-by-step set up with example collaboration page
To make a new site with this theme, one option is
1. create your github project site, \<collaboration\>.github.io
2. clone locally
3. cd \<collaboration\>.github.io
4. hugo new site . --force
5. git submodule add https://github.com/walkloud/hugo-texademic.git themes/hugo-texademic
6. cp -r themes/hugo-texademic/exampleSite/collaboration/* .
7. Edit menu and content as desired
8. Edit the `hugo.toml` file as appropriate for your site
8. Currently required npm module are `autoprefixer`, `postcss-cli`, `postcss-import`.  These can be installed with the provided script: `bash themes/hugo-texademic/scripts/add_npm_modules.sh`
9. git add:
    - git add themes/hugo-texademic/
    - git add package.json, package-lock.json
    - git add content
    - git add hugo.toml
    - git add \<.gitignore\> \<other_files_you_added\>
10. create a `.github/workflows` directory and create the appropriate `hugo.yaml` file.  An example you can copy is `.github-tmp/workflows/hugo.yaml`.
11. follow instructions: `https://gohugo.io/host-and-deploy/host-on-github-pages/`
12. git commit; git push;

#### Images.
For cleanliness, I recommend placing all images in the `assets/images` folder.  I have created sub-folders for various types of images, for example, for members, I place all images in `assets/images/portraits` folder.  They can then be referenced from the `frontmatter` on individual pages.  By storing images in `assets/images/*`, they are only copied to public if they are referenced by your content.  See this [hugo solution](https://discourse.gohugo.io/t/re-markdown-style-images-with-full-path-when-baseurl-includes-subdirectory/55930) for advice on placing images.

## Support

If you want to support the development or say thanks

<a href="https://buymeacoffee.com/loudwalker" target="_blank">
<img src="https://cdn.buymeacoffee.com/buttons/default-orange.png"
    alt="Buy Me A Coffee"
    height="41"
    width="174">
</a>
