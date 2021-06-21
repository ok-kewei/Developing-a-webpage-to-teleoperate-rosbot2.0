
(cl:in-package :asdf)

(defsystem "husky_highlevel_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "MulTwoInts" :depends-on ("_package_MulTwoInts"))
    (:file "_package_MulTwoInts" :depends-on ("_package"))
    (:file "RadianToAngle" :depends-on ("_package_RadianToAngle"))
    (:file "_package_RadianToAngle" :depends-on ("_package"))
  ))