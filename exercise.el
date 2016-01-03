;;区别在于是否需要'
;;定义变量numstr
(set 'numstr 'nine)
(setq numstr 'nine)

;;打印log
(message "hello world!")
.

;;使用局部变量
(let ((name 'cl)
      (age '28))
  (message "Name is %s, %d years old" name age))
;;用let定义局部变量另外一种形式
(let (name age)
  (setq name 'cl)
  (setq age '28)
  (message "Name is %s, %d years old" name age))


;;运算
(+ 1 2) ; =3
(+ 1 2 3) ; =6
(* 1 2 3) ; =6
(% 9 4)   ; =1
(/ 7 2.0) ; =3.5
(expt 2 3) ; =8

;;比较
;;在elisp中false用nil表示，空列表也用nil表示 其余都是true
;;0 和空字符串也是true
(< 2 3)   ;; t
(> 2 3)   ;; nil
(= 2 3)   ;; nil
(string= "he" "he") ;;t
(string< "he" "ie") ;;t  string< 比较的是字符串的字典顺序，没有string>
(string> "he" "he") ;;error

(not (< 2 3))  ;; nil
(or (< 2 3) (< 3 2)) ;; t
(and (< 2 3) (< 3 2)) ;; nil

;;表达式
;;if t则执行下一句，否则执行再下一句
(if (< 3 2)
    (message "3 < 2")
  (message "3 > 2")
;;when表示如符合条件就执行所有语句
  (when (< 2 3)
    (setq x 2)
    (setq y 3)
    (message "%d < %d" x y))

;;while表示循环语句
  (setq x 0)
  (while (< x 4)
    (print "hit")
    (message "te")
    (setq x (1- x))

    ;;progn表示一个代码块 返回最后一个语句的返回值
    (progn
      (setq x 2)
      (setq y 3)
      (setq z(+ x y)))

    ;;cond列出一系列条件，以及满足该条件时的动作
    (setq x 1)
    (cond
     ((<= x 0) 0)
     ((= x 1) 1)
     ((> x 1)
      (+ x 1)))



    ;;函数
    ;;需要先在函数后执行C-x C-e 把函数注册到elisp中，然后再执行函数才能正确执行
    (defun show(type)
      (message "%s func" type))
    (show 'demo)


    (defun show(type)
      (interactive)
      (message "%s func" type))
    (show "test demo")




    (defun add(x)
      (+ 2 x))
    (print (add2 8))

    ;;字符串判空
    (defun string-empty (str)
      (not (string< "" str)))

    (string-empty "test")
    (string-empty "")




