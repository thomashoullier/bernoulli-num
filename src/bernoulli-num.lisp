(in-package :bernoulli-num)

;;; Single Bernoulli number by Akiyama-Tanigawa algorithm.
(defun bnum (n)
  "Compute a single Bernoulli number +Bn with Akiyama-Tanigawa recursion.
   Performance is very poor, academic interest only."
  (when (and (/= n 1) (oddp n)) (return-from bnum 0)) ; odd n give 0
  (bnum-triangle n 1))

(defun bnum-triangle (n m)
  "Compute the number at row n, column m in the Akiyama-Tanigawa triangle.
   Row indices start from 0, columns from 1."
  (cond ((= n 0) (/ 1 m)) ; First row.
        (t (* m (- (bnum-triangle (1- n) m) (bnum-triangle (1- n) (1+ m)))))))
