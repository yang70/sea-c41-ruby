### Install Ruby

Using APT, install the latest, stable version of [Ruby](https://www.ruby-lang.org/). To get started, run the following commands.

```
wget -O ruby-install-0.4.3.tar.gz https://github.com/postmodern/ruby-install/archive/v0.4.3.tar.gz
tar -xzvf ruby-install-0.4.3.tar.gz
cd ruby-install-0.4.3/
sudo make install
sudo ruby-install -i /usr/local/ ruby 2.2.0
cd
rm -rf ~/src/
rm -rf ~/ruby-install-0.4.3/
```

Once it finishes, verify Ruby was installed correctly by running the following command.

```
ruby -v
```

And you'll see something like this.

![](https://i.imgur.com/qi20rW3.png)


### Interactive Ruby Shell

The Interactive Ruby Shell, or **IRB**, provides a REPL (read-evaluate-print loop) for Ruby programs.

To get started, run this command to download and install a small config file that makes IRB more beginner friendly.

```
curl -fsSL http://git.io/G6oJ4g > ~/.irbrc
```

Then, launch IRB by running the following command.

```
irb
```

And you'll see the IRB prompt.

![](http://i.imgur.com/Ckn6ssE.png)

Now that IRB is running, type and run the following Ruby program.

```
42 + 9000
```

And watch IRB return the following result.

![](https://i.imgur.com/bMEtYp1.png)

Next, type and run a more sophisticated Ruby program.

```
def add(a, b)
  a + b
end
add(42, 9000)
```

Notice how IRB **evaluates the method definition** and then **invokes the method**.

![](https://i.imgur.com/QAQcpjZ.png)

As you can see, IRB is a great tool for learning and experimenting with Ruby.

**TIP:** To quit, type `exit` and press the Enter key.


### Ruby Interpreter

Given a Ruby program, the **Ruby Interpreter** reads it, evaluates it, and then quits.

Unlike IRB, the Ruby Interpreter won't automatically print the result and it certainly won't loop waiting for you to give it another program to run. Despite all this, you'll use the Ruby Interpreter to run nearly all the Ruby programs you create.

Let's try it out. First, open a new Ruby program file in Sublime Text.

```
subl ~/Desktop/test.rb
```

**TIP:** Ruby program files end with a `.rb` extension.

Then type the following program into the file.

```
42 + 9000
```

Save the file and run the program using the Ruby Interpreter.

```
ruby ~/Desktop/test.rb
```

And you'll see something like this.

![](https://i.imgur.com/SVn8Wko.png)

Weird, nothing happened. Remember, the Ruby Interpreter won't print anything unless told. Jerk! :triumph:

Change the program so it reads like this.

```
puts 42 + 9000
```

Save the file and re-run the program:

```
ruby ~/Desktop/test.rb
```

And you'll see something like this.

![](https://i.imgur.com/7ejO4L1.png)

Bravo! :tada:

Play around with Ruby on your own. When you're done, remove the `test.rb` file by running the following command.

```
rm ~/Desktop/test.rb
```


### [Next ⇒](2_project.md)
