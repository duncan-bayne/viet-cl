(require :sb-posix)
(load (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname)))

(ql:quickload '("alexandria"))
(load "infpre.lisp")

(defun solve-puzzle (permutation)
  (destructuring-bind (a b c d e f g h i) permutation
    (let ((result (infpre:!! a + 13 * b / c + d + 12 * e - f - 11 + g * h / i - 10)))
      (when (= result 66) (print permutation)))))

(alexandria:map-permutations #'solve-puzzle '(1 2 3 4 5 6 7 8 9) :length 9)
