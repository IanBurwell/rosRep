
(cl:in-package :asdf)

(defsystem "ian_bot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PWMfreq" :depends-on ("_package_PWMfreq"))
    (:file "_package_PWMfreq" :depends-on ("_package"))
    (:file "PWMget" :depends-on ("_package_PWMget"))
    (:file "_package_PWMget" :depends-on ("_package"))
  ))