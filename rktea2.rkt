#lang racket
(require racket/gui/base)

(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

(define (calculate-factorial button event)
  (let ((input (string->number (send input-field get-value))))
    (send output-field set-label
          (cond [(and (integer? input) (>= input 0))
                 (format "Factorial of ~a is ~a" input (factorial input))]
                [else
                 "Invalid input. Please enter a non-negative integer."]))))

(define frame (new frame%
                   [label "Factorial Calculator"]
                   [width 300]
                   [height 150]
                   [alignment '(center center)]))

(define input-field (new text-field%
                         [parent frame]
                         [label "Enter a number:"]
                         [min-width 200]))

(define output-field (new message%
                          [parent frame]
                          [label "Factorial will be displayed here"]))

(define calculate-button (new button%
                              [parent frame]
                              [label "Calculate"]
                              [callback calculate-factorial]))

(send frame show #t)