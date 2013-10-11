# Forking and Cloning The Test Suite

Please fork the repository at:
http://github.com/flatiron-school/ruby-003-quiz-1

Clone your fork locally and create a `solutions` branch.
Push your `solutions` branch to your fork.

Make a commit for every test file you make pass. For example,
once you make `001.assignment/.01_assignment_spec.rb` pass, you should make 
a commit that reads `pass 001.assignment/.01_assignment_spec.rb`.

# Installing RSpec

In order to run these specs, you must first install the RSPEC gem.

```
gem install rspec
```

You should see something like:

```
Successfully installed rspec-2.14.1
1 gem installed
```

*Note: Your RSpec version might differ, anything above 2.0. is fine.*

# Running the Test Suite

To run the test suite, from the root of the directory, run:

```
rspec spec.rb
```

You can also run each test individually with:

```
rspec 001.assignment/01_assignment_spec.rb
```

# Making the Tests Pass

Read each spec file (they start with numbers and end in `spec.rb`. 
Do the tests in order). Most of the tests require a file for you to 
code your solution in.

For example `002.methods/01_dice_spec.rb` requires a file
`dice.rb`. That is where to code your solution. Once you write 
code to make the test pass, re-run the test suite until it turns
green.

As in any test suite, it's inappropriate to change the test code.

# Submitting Your Solution.

Simply push the `solutions` branch to your fork.

# Notes

Feel free to use Google. Do your best. Go slow, one line at a time,
one method at a time, one test at a time.