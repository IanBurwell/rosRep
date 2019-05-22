
(cl:in-package :asdf)

(defsystem "ian_bot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PWM" :depends-on ("_package_PWM"))
    (:file "_package_PWM" :depends-on ("_package"))
  ))