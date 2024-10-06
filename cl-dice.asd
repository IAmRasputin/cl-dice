;;;; cl-dice.asd
;;
;;;; Copyright (c) 2024 Ryan Gannon <ryanmgannon.dev@gmail.com


(asdf:defsystem #:cl-dice
  :description "Describe cl-dice here"
  :author "Ryan Gannon <ryanmgannon.dev@gmail.com>"
  :license  "MIT"
  :version "0.0.1"
  :serial t
  :components ((:file "package")
               (:file "dice")))
