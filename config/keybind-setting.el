(provide 'keybind-setting)

(global-set-key (kbd "C-c C-c")           'comment-box)
(global-set-key (kbd "C-c C-k")           'kill-region)

;; Group key bind-------------------------------->
;; Mac iterm set `ctrl-;` to `0x03 0x6f`
(global-set-key (kbd "C-c o")             'other-window)
;; Windows set `ctrl-;` to `ctrl-1`
(global-set-key (kbd "C-1")               'other-window)
(global-set-key (kbd "C-;")               'other-window)

;; Group key bind-------------------------------->
;; iterm set `ctrl-=` to `0x03 0x61`
;; C-= can be used later
(global-set-key (kbd "C-c C-y")           'kill-ring-save)
;; git add current buffer to version control!
(global-set-key (kbd "C-c i")             'git-add-current-buffer)
(global-set-key (kbd "C-c C-i")           'git-add-current-buffer)
;;(global-set-key (kbd "C-w")               'align-whitespace)
(global-set-key (kbd "C-c r")             'revert-buffer)
(global-set-key (kbd "<f5>")              'revert-buffer-no-confirm)
(global-set-key (kbd "<f2>")              'helm-global-mark-ring)
(global-set-key (kbd "<f7>")              'indent-whole)
(global-set-key (kbd "<f12>")             'whitespace-mode)
(global-set-key (kbd "<C-f11>")           'toggle-tool-bar-mode-from-frame)
(global-set-key (kbd "M-;")               'qiang-comment-dwim-line)
(global-set-key (kbd "M-/")               'hippie-expand)
(global-set-key (kbd "C-j")               'newline-and-indent)
(global-set-key (kbd "M-p")               'query-replace)
(global-set-key (kbd "C-c C-g")           'helm-global-mark-ring)
;; iterm set `ctrl-=` to `0x03 0x0d`
(global-set-key (kbd "C-c RET")           'mark-whole-buffer)
(global-set-key (kbd "<C-return>")        'mark-whole-buffer)
(global-set-key (kbd "C-2")               'set-mark-command)
(global-set-key (kbd "C-,")               'set-mark-command)

(global-set-key "\C-x" nil)
;; we still need this
;;(global-set-key (kbd "C-h")               'backward-delete-char-untabify)
