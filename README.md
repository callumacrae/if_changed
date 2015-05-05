# if_changed

Runs commands when files are changed on git pull: for example, when package.json
is failed, `npm install` will be ran, installing the dependency updates.

See [the source] for a full list—it's pretty readable. Please send a pull
request if your technology or desired command is missing!

## Setup

You can either run this command manually every time you pull, or you can set it
up on the post-merge git hook so that it runs automatically.

Move the if_changed.sh file to `.git/hooks/post-merge` in your repository
(where post-merge is the name of the file, not a containing directory), and
make it executable using `chmod +x post-merge`.

See [this document][git hooks] to learn more about git hooks.

## License

Released under the MIT license.

[the source]: if_changed.sh
[git hooks]: http://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks
