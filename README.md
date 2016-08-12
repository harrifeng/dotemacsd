# emacs.d
emacs.d is from old .emacs.d, keep this only have one branch, so that it can spread quickly

# daily usage
Use following elisp to clean the screen in any repl buffer

    $ erase-buffer

# sql-setting.el is need if you use sql very often, one example el file looks like following
```
(provide 'sql-setting)

(setq sql-connection-alist
      '((server1 (sql-product 'mysql)
                 (sql-port 3306)
                 (sql-server "db")
                 (sql-user "root")
                 (sql-password "root")
                 (sql-database "mysql"))
        (server2 (sql-product 'mysql)
                 (sql-port 3306)
                 (sql-server "localhost")
                 (sql-user "root")
                 (sql-password "password")
                 (sql-database "db2"))))

(defun my-sql-server1 ()
  (interactive)
  (my-sql-connect 'mysql 'server1))

(defun my-sql-server2 ()
  (interactive)
  (my-sql-connect 'postgres 'server2))

(defun my-sql-connect (product connection)
  ;; remember to set the sql-product, otherwise, it will fail for the first time
  ;; you call the function
  (setq sql-product product)
  (sql-connect connection))
```
# golang install
        go get -u -v github.com/nsf/gocode github.com/golang/lint/golint github.com/lukehoban/go-find-references github.com/lukehoban/go-outline sourcegraph.com/sqs/goreturns golang.org/x/tools/cmd/gorename github.com/tpng/gopkgs github.com/newhook/go-symbols github.com/rogpeppe/godef golang.org/x/tools/cmd/goimports

# nodejs install

    $ npm install -g js-beautify webpack tern

# python install

    $ pip install rope flake8 importmagic autopep8 yapf powerline-status psutil

# first usage
* Use following command to first initialize the environment(on shell you can go to .emacs.d folder and run > $(tail -n1 README.md):

        emacs --batch -l ~/.emacs.d/config/helpfunc-setting.el -f install-my-packages

# livedown usage
        git clone https://github.com/shime/emacs-livedown.git ~/.emacs.d/emacs-livedown
        cat <<EOF >> ~/.emacs.d/init.el
        (add-to-list 'load-path (expand-file-name "~/.emacs.d/emacs-livedown"))
        (require 'livedown)
        EOF
