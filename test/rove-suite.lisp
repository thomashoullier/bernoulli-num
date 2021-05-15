(defpackage :bernoulli-num/test
  (:use :cl :bernoulli-num :rove))
(in-package :bernoulli-num/test)

(deftest validation
  (testing "Akiyama-Tanigawa"
    (let ((nvals '(0 1 2 5 10))
          (resvals (list 1 (/ 1 2) (/ 1 6) 0 (/ 5 66))))
      (ok (equal resvals (map 'list #'bnum nvals)) "ok"))))
