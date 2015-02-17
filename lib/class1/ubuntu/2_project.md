### Project

Before continuing with this guide, make sure you have a home for all your programming projects. If not, make a `Projects` directory by running the following command.

```
mkdir ~/Projects
```

Then change into this directory.

```
cd ~/Projects
```

Back in your browser, **fork this repository** by clicking the `Fork` button on the top right of the page.

![fork me](https://i.imgur.com/JjaRBfW.png)

Then copy the **HTTPS clone URL** of your forked repository by clicking the little `Copy icon` button on the right sidebar.

![clone you](https://i.imgur.com/NYj4fAo.png)

Back in the Terminal, run the following command to `clone` the repository to your computer. Remember to replace `CLONE_URL` with the URL copied into the clipboard.

```
git clone CLONE_URL
```

**TIP:** If clicking the button doesn't copy the URL, try using a different browser like [Chrome](https://www.google.com/chrome/browser/).

Finally, change into the newly created clone directory.

```
cd sea-c33-ruby
```

And your shell prompt will look something like this.

![](http://i.imgur.com/IwwRNwO.png)

Here's a quick break down of what you're seeing:

| Component          | Description                                         |
| ------------------ | --------------------------------------------------- |
| `~/P/sea-c33-ruby` | Abbreviated name of your working directory          |
| `master`           | Name of your repository's current branch            |
| `✔`                | Prompt symbol indicating your staging area is clean |

Anything typed appears after the green `✔` prompt symbol. :+1:

**TIP:** The full name of your working directory is `~/Projects/sea-c33-ruby`. To save prompt space, Fish abbreviates it. This is especially handy for **deeply nested** directories.


### Install Gem dependencies

**Bundler** is a tool that'll install and manage the 3rd-party Ruby code that's needed for your homework assignments.

To get started, download and install [Bundler](http://bundler.io/) itself by running the following command.

```
gem install bundler
```

Then, use the `bundle` command to install the necessary 3rd-party Ruby code.

```
bundle install --path vendor/bundle
```


### Add an upstream remote

From time to time, your instructor(s) will update this project. By adding another Git remote, it'll be trivial to stay in sync with their changes.

To get started, add a remote called `upstream` by running the following command.

```
git remote add upstream https://github.com/codefellows/sea-c33-ruby.git
```

To download their changes into your Git repository, run the following command.

```
git pull upstream master
```


### Test your laptop

It's time to test how well you've setup your laptop! :8ball:

To get started, run the following command.

```
bin/test_laptop
```

Once that finishes, you'll noticed a red `✖` has replaced your prompt symbol. It indicates your staging area is dirty. :worried:

To fix that, add `lib/class1/laptop.txt` to your repository's staging area:

```
git add lib/class1/laptop.txt
```

And commit the changes to your repository:

```
git commit -m 'Submit class1 assignment'
```

The green `✔` prompt symbol is back, indicating your staging area is clean. Phew! :relieved:


### Submit your homework

Next, push your changes back to GitHub:

```
git push origin master
```

And, submit the link of **your forked GitHub repository** to the [Class 1 Assignment](https://canvas.instructure.com/courses/880907/assignments/3003935)  on Canvas.

![my forked repo](https://i.imgur.com/g9UtQoL.png)


### Congratulations!

Time for a frosty beverage. :beers:


### [⇐ Previous](1_git.md)
