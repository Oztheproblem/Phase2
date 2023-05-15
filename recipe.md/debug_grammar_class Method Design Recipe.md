debug_grammar_class Method Design Recipe
## 1. Describe the Problem
As a user
verify text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

Returns n integer the percentage of texts checked so far that passed the check defined in the `check` method. The number 55 represents 55%.

## 2. Design the Method Signature
_Include the name of the method, its parameters, return value, and side effects._
```ruby
class GrammarStats
    def initialize
      # ...
    end
    def check(text) # text is a string
    # Returns true or false depending on whether the textbegins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    end
    def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    end
  end
```
## 3. Create Examples as Tests
_Make a list of examples of what the method will take and return._
```ruby

```
_Encode each example as a test. You can add to the above list as you go._
## 4. Implement the Behaviour
