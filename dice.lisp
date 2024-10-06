;;;; cl-dice.lisp
;;
;;;; Copyright (c) 2024 Ryan Gannon <ryanmgannon.dev@gmail.com


(in-package #:cl-dice)

(defun roll (sides &optional dice)
  (if dice
      (mapcar (lambda (x)
                (roll x))
              (make-list dice :initial-element sides))
      (1+ (random sides))))

(defun roll-string (die-string)
  (let* ((roll-split (uiop:split-string die-string :separator '(#\d)))
         (num-dice (parse-integer (car roll-split)))
         (dice-sides (parse-integer (cadr roll-split))))
    (roll dice-sides num-dice)))
