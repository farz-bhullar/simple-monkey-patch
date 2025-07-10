# 🐒 simple-monkey-patch

A minimal Ruby demo showcasing how monkey patching works by adding custom methods to the built-in `String` class.

---

## ✨ Features

We’ve added new behavior to Ruby’s `String` class:

| Method          | What it does                         |
|-----------------|--------------------------------------|
| `shout`         | Converts the string to uppercase with "!!!" |
| `whisper`       | Converts the string to lowercase with "..." |
| `palindrome?`   | Checks if the string reads the same backward |
| `to_snake_case` | Converts camelCase or spaced text to snake_case |

---

## ▶️ How to Run

```bash
ruby demo.rb
```

## Example output:

```bash
"hello world".shout         # => "HELLO WORLD !!!"
"HELLO WORLD".whisper       # => "hello world ..."
"madam".palindrome?         # => true
"not a palindrome".palindrome? # => false
"SnakeCaseConversion".to_snake_case  # => "snake_case_conversion"
```

---

## 🧠 What is Monkey Patching?

Monkey patching is the practice of adding or modifying methods on existing classes — including Ruby's built-in classes like String, Array, or even Rails classes.

In Ruby, classes are always open, which means you can reopen any class and add/override methods at any point.

---

## 🔍 How Monkey Patching Works Under the Hood

Here’s what happens internally when you monkey patch in Ruby:

1. **Class Lookup**: When Ruby sees class String, it looks up the existing String constant. If it exists (which it does), Ruby reopens that class rather than redefining it.

2. **Method Table Update**: When you define def shout, Ruby simply adds it to the method table for the String class. If shout already existed, it gets overwritten.

3. **Method Dispatch**: When you call "hello".shout, Ruby:

    - Checks the method table for the String class.

    - Follows the method lookup chain (class → module ancestors → Object).

    - Calls the shout method you defined.

So your method becomes as native as built-in ones like `.upcase`.

---

## ⚠️ Caution

Monkey patching is powerful but risky:

 - It affects all uses of the class globally.

 - It can lead to conflicts if a gem or another file defines the same method.

 - Always use clearly named methods to avoid collisions.