
# {{PROBLEM}} Method Design Recipe
## 1. Describe the Problem
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature
name of method: grammar_checker
its parameters: text(string)
return value: Boolean
side effects:

```ruby
# EXAMPLE
# `grammar_checker` verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark

right_words = grammar_checker(mixed_words)

mixed_words: a string (e.g. "hello WORLD")
return false

# The method doesn't print anything or have any other side-effects
```
## 3. Create Examples as Tests
Make a list of examples of what the method will take and return.

```ruby
# EXAMPLE
grammar_checker("hello WORLD") => false
grammar_checker("HELLO WORLD") => false
grammar_checker("hello world") => false
grammar_checker("hello WoRLD") => false
grammar_checker("hello WORLD!") => false
grammar_checker("Hello world!") => true
grammar_checker("Hello world.") => true
grammar_checker("") => false
grammar_checker(nil) throws an error

```

Encode each example as a test. You can add to the above list as you go.

## 4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.