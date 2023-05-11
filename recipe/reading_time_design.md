# {{PROBLEM}} Method Design Recipe
## 1. Describe the Problem
> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that
> I can read 200 words a minute.
## 2. Design the Method Signature
_Include the name of the method, its parameters, return value, and side effects._
```ruby
reading_time_design(text)
# text is a string with a words in it
# reading_time is a integer representing minutes
```
## 3. Create Examples as Tests
_Make a list of examples of what the method will take and return._
```ruby
# 1th Example
reading_time_design("")
# => 0
# 2th Example
reading_time_design("one")
# => 1
# 3th Example
reading_time_design("TWO_HUNDRED_WORD")
# => 1
# 4th Example
reading_time_design("THREE_HUNDRED_WORD")
# => 2
# 5th Example
reading_time_design("FOUR_HUNDRED_WORD")
# => 2
# 6th Example
reading_time_design("FIVE_THOUSAND_WORD")
# => 25
```
_Encode each example as a test. You can add to the above list as you go._
## 4. Implement the Behaviour
_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._





3:43
for the design file