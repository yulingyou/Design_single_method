

{{PROBLEM}} Method Design Recipe
1. Describe the Problem
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO

2. Design the Method Signature
name of the method:track_my_task
its parameters:string
return value:bolean
and side effects.

# EXAMPLE

todo = track_my_task(string)

string: a string of todo (e.g. "TODO shopping")
string: a string without tdod (e.g. "watch movie")

# The method doesn't print anything or have any other side-effects
3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# EXAMPLE

track_my_task("TODO shopping") => true
track_my_task("todo shopping") => false
track_my_task("watch movie") => false
track_my_task("") => false
track_my_task(nil) => "No todo task"


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.