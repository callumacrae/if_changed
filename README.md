# if_changed [![Build Status](https://travis-ci.org/callumacrae/if_changed.svg?branch=master)](https://travis-ci.org/callumacrae/if_changed)

Runs commands when files are changed on git pull: for example, when package.json
is changed, `npm install` will be ran, installing the dependency updates.

See [the source] for a full list—it's pretty readable. Please send a pull
request if your technology or desired command is missing!

## Setup

You can either run this script manually every time you pull, or you can set it
up on the post-merge git hook so that it runs automatically.

As of 1.0.0, you can install this over npm.

```
$ npm install -g if_changed
```

Then to run the script:

```
$ if_changed
```

And to install itself into the post-merge hook:

```
$ if_changed install
```

### Manual install

To run every time, download if_changed.sh and run it.

To run automatically on the post-merge hook, move the if_changed.sh file to
`.git/hooks/post-merge` in your repository (where post-merge is the name of
the file, not a containing directory), and make it executable using
`chmod +x post-merge`.

See [this document][git hooks] to learn more about git hooks.

## License

Released under the MIT license.

[the source]: if_changed.sh
[git hooks]: http://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks
