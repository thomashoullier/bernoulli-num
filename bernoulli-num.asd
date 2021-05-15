(defsystem bernoulli-num
  :name "bernoulli-num"
  :author "Thomas HOULLIER"
  :depends-on ("cl-factorial")
  :components
  ((:module "src"
    :components ((:file "package")
                 (:file "bernoulli-num" :depends-on ("package")))))
  :in-order-to ((test-op (test-op "bernoulli-num/test"))))

(defsystem bernoulli-num/test
  :name "bernoulli-num/test"
  :depends-on ("rove" "bernoulli-num")
  :components
  ((:module "test"
    :components ((:file "rove-suite"))))
  :perform (test-op (o c) (symbol-call :rove '#:run c)))
