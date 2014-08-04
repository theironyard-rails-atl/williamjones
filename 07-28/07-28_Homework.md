#Day 1 Homework - 7/28/14

1) Define a function to find the hypotenuse of a right triangle with side lengths a and b
    def hypotenuse(a,b)
    hypotenuse = Math.hypot(a,b)
    end

2) What methods do strings have that symbols don't? Describe a few. What methods do symbols have that strings don't?
    The main difference is that symbols are immutable and cannot be concatenated or appended.
    Some methods that strings have and symbols do not:
     .reverse - This reverses the characthers in a string
     .center - This centers your string based on the length you define

    Some methods that symbols have that strings do not:
     .concat - This appends a string to the end of another

3) Why doesn't Fixnum.new work?
    Fixnum are immutable objects and cannot be changed once created.

4) Write code using methods on at least one number, string, symbol, array and hash. Make a gist from the code.
    String method:
      name = "William"
      name.reverse => "mailliW"

    Number method:
      2 + 2 => 4

    Symbol method:
     :will.id2name => "will"

    Array method:
     arr = 1,2,3,4
     arr[2] => 3

    Hash method:


5) Define Musher class such that Musher.new("+").mush(["array", "of", "strings"]) == "array + of + strings"
    class Musher
  def initialize seperator
    @seperator = seperator
  end
  def mush str_array
    # ["array", "of", "strings"] --> "array + of + strings"
    str_array.join(" #{@seperator} ")
  end
end

6) Define an Averager class that can compute the average of two numbers. Bonus: any number of numbers.

7) Write a script to read list of lines from a file and print one at random
    def random_line(filename)
    File.open(filename).readlines.sample
    end
