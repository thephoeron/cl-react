;; file: cl-react-test.asd

(in-package :cl-user)

(defpackage cl-react-test-asd
  (:use :cl :asdf))
  
(in-package :cl-react-test-asd)

(defsystem cl-react-test
  :serial t
  :version "0.0.1"
  :author "\"the Phoeron\" Colin J.E. Lupton <sysop@thephoeron.com>"
  :description "Test suite for CL-REACT"
  :license "MIT"
  :depends-on (:cl-react
               :prove)
  :components ((:module "t"
                :serial t
                :components ((:file "cl-react"))))
  :defsystem-depends-on (prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
  
  ;; EOF
  
