
(cl:in-package :asdf)

(defsystem "IntegratedNavigation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "integratedNavigationMsg" :depends-on ("_package_integratedNavigationMsg"))
    (:file "_package_integratedNavigationMsg" :depends-on ("_package"))
  ))