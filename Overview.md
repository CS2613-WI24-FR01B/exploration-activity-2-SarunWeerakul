# EA2

## Package/Library Ovierview

### 1.Selected Package/Library

   The selected package/library is __racket/gui/base__.

### 2.What is the package/library? [1],[2]

   ### Purpose:
The __racket/gui/base__ library is a part of the Racket programming language ecosystem,
specifically tailored for building graphical user interfaces (GUIs). It provides a wide
range of tools and utilities to create interactive graphical applications.

### Usage:
To use the __racket/gui/base__ library, you need to import it into your Racket program. 
Once imported, you can create GUI elements such as windows, buttons, text fields, labels,
etc., and define their behaviors and interactions using provided procedures and classes.

Creating a basic GUI window in Racket using __racket/gui/base__ can be as simple as:

```racket
#lang racket
(require racket/gui/base)

(define frame (new frame% [label "Hello, GUI World!"]))
(send frame show #t)
```

   The functions and commands that I use in my program:
   1. Creating GUI windows, frames, dialogs, buttons, text fields, labels, etc.
   2. Handling user interactions such as button clicks, text input, mouse events, etc.
   3. Customizing the appearance and behavior of GUI elements.
   4. Layout management to organize GUI components within windows.

### 3.What are the functionalities of package/library? [2]
   
 __Example:__
 
```racket
#lang racket
(require racket/gui/base)

;; Define a button callback
(define (button-callback button event)
  (displayln "Button Clicked"))

;; Create a GUI window with a button
(define frame (new frame% [label "Button Example"]))
(define button (new button% [parent frame]
                           [label "Click Me"]
                           [callback button-callback]))
(send frame show #t)
```

 __Output:__
 
When you run the above code, it creates a GUI window with a button labeled "Click Me".
When you click the button, the message "Button Clicked" is displayed in the console.

### 4.When was it created? [2]

The racket/gui/base library has been a part of the Racket language since its early
versions. Racket itself has a long history, with the first version released in 1994 as 
PLT Scheme.

### 5.Why this package/library?

I selected the racket/gui/base library because it provides an easy-to-use and
comprehensive solution for building graphical user interfaces in Racket. With its 
extensive documentation and support, it enables developers to create interactive
applications efficiently.

### 6.Influence on Learning

Learning the racket/gui/base library has expanded my understanding of Racket beyond 
text-based programming. It introduced me to the world of GUI development within the Racket
ecosystem, showcasing the language's versatility and capabilities in building diverse 
types of applications.

### 7.Overall Experience

My overall experience with the racket/gui/base library has been positive. It provides a
robust set of tools for GUI development in Racket, and its integration with the language
makes it seamless to work with. I would recommend this library to anyone interested in
creating GUI applications in Racket.

__Recommendations:__
1. I would recommend this library to Racket developers who need to build GUI applications
with ease.
2. It's suitable for both beginners and experienced developers due to its simplicity and
flexibility.

__Continuation:__
I would definitely continue using the racket/gui/base library for future GUI projects in 
Racket. Its reliability, functionality, and integration with the language make it a
preferred choice for GUI development.
   
## References:

  [1] https://docs.racket-lang.org/gui/
  
  [2] https://okpanico.wordpress.com/2015/11/14/racket-graphical-interface-toolkit-1/

