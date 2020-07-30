# Description

This is the Ghost theme used for https://our.status.im/.

# Usage

Install the dependencies:
```
yarn install
```
To verify the theme is valid use:
```
yarn verify
```
To pack up the theme use:
```
yarn archive
```

# CSS

We just fetch CSS from tha main site:
```
yarn getcss
```
The updates to tempaltes need to be manual.

# Development

You can start a local instance of Ghost using:
```
yarn ghost-start
```
Which will start a ghost instance at: http://localhost:2368/ghost/
You can open it and create your account to test the theme.

The instance will be installed at `/var/tmp/ghost`.
It will have this repo symlinked under `content/themes/casper`.
