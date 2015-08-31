;; file: cl-react.asd

(in-package :cl-user)

(defpackage cl-react-asd
  (:use :cl :asdf))

(in-package :cl-react-asd)

(defsystem cl-react
  :serial t
  :license "MIT"
  :author "\"the Phoeron\" Colin J.E. Lupton <sysop@thephoeron.com>"
  :description "Common Lisp interface to React.js framework"
  :version "0.0.1"
  :depends-on (:cl-jsx
               :cl-who
               :cl-css
               :parenscript)
  :components ((:file "packages")
               (:file "cl-react")))

;; EOF
