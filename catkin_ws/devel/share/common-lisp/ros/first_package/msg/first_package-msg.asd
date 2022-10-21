
(cl:in-package :asdf)

(defsystem "first_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "dron" :depends-on ("_package_dron"))
    (:file "_package_dron" :depends-on ("_package"))
    (:file "zaman" :depends-on ("_package_zaman"))
    (:file "_package_zaman" :depends-on ("_package"))
  ))