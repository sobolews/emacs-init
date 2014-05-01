;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  .emacs init file for emacs24@Ysengrin ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Load-paths  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq load-path (cons (expand-file-name "~/.emacs.d/lisp") load-path))
(setq load-path (cons
  (expand-file-name "~/.emacs.d/lisp/multiple-cursors-master") load-path))
(setq load-path (cons 
  (expand-file-name "~/.emacs.d/lisp/expand-region.el-master") load-path))

;;  Preferences  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'default-frame-alist '(height . 67))
(add-to-list 'default-frame-alist '(width . 99))
(column-number-mode 1)
(global-linum-mode t)
(setq-default indent-tabs-mode nil) ;; use spaces, not tabs, when indenting
(setq current-language-environment "English")
(setq inhibit-startup-screen t)
(set-scroll-bar-mode 'right)
(setq-default fill-column 80)
(global-hl-line-mode 1)
(setq initial-scratch-message ";; SCRATCH BUFFER")
(setq visible-bell t)             ;; Get rid of the beeps
;; (scroll-bar-mode 0)               
(tool-bar-mode 0)
(menu-bar-mode 0)
(which-function-mode t)
(mouse-avoidance-mode 'jump)  ;; 'banish;; 'animate
(setq inhibit-startup-message t)
(fset 'yes-or-no-p 'y-or-n-p) ; no yes-or-no prompts
(setq find-file-wildcards t)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(column-number-mode t)
 '(flyspell-persistent-highlight t)
 '(kill-do-not-save-duplicates t)
 '(save-place t nil (saveplace))
 '(session-use-package t nil (session))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode -1)
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify))
 '(x-select-enable-clipboard t))
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))


;;  Custom Faces  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#252532" :foreground "#8A12FDE1C150" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "unknown" :family "Ubuntu Mono"))))
 '(cursor ((t (:background "#8A12FDE1C150" :foreground "black"))))
 '(escape-glyph ((t (:foreground "magenta"))))
 '(flycheck-fringe-warning ((t (:foreground "lawn green"))))
 '(flycheck-warning ((t (:underline (:color "#cc8800" :style wave)))))
 '(flymake-errline ((((class color) (background dark)) (:underline "Firebrick2"))))
 '(flymake-infoline ((((class color) (background dark)) (:underline "green"))))
 '(flyspell-duplicate ((((class color)) (:underline "#600808"))))
 '(flyspell-incorrect ((((class color)) (:underline "firebrick4"))))
 '(font-lock-builtin-face ((t (:foreground "#58FBFFFF2EC3"))))
 '(font-lock-comment-delimiter-face ((default (:foreground "#82B982B982B9")) (((class color) (min-colors 16)) nil)))
 '(font-lock-comment-face ((t (:foreground "#999999"))))
 '(font-lock-doc-face ((t (:foreground "wheat1"))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "Cyan1"))))
 '(font-lock-keyword-face ((t (:foreground "#FFFF9436E408"))))
 '(font-lock-negation-char-face ((t (:foreground "white" :height 100))))
 '(font-lock-preprocessor-face ((t (:inherit font-lock-builtin-face :foreground "#FFFFCAC4461E"))))
 '(font-lock-string-face ((t (:foreground "#FFFF730D730D"))))
 '(font-lock-type-face ((((class color) (min-colors 88) (background dark)) (:foreground "LightSkyBlue"))))
 '(font-lock-warning-face ((((class color) (min-colors 88) (background dark)) (:foreground "Pink" :underline "firebrick2" :weight bold))))
 '(fringe ((t (:inherit default))))
 '(hc-tab ((t (:box (:line-width -2 :color "#323A323A43E7")))))
 '(hc-trailing-whitespace ((t (:background "#230F230F2F64"))))
 '(highlight ((t (:background "gray35"))))
 '(hl-line ((t (:inherit highlight :background "#28283a"))))
 '(ido-only-match ((((class color)) (:foreground "green"))))
 '(ido-subdir ((((min-colors 88) (class color)) (:foreground "#FFFF9436E408"))))
 '(linum ((t (:inherit (shadow default)))))
 '(mode-line ((((class color) (min-colors 88)) (:background "gray70" :foreground "black" :box (:line-width -1 :style released-button)))))
 '(mode-line-inactive ((t (:inherit mode-line :background "gray30" :foreground "grey80"))))
 '(region ((((class color) (min-colors 88) (background dark)) (:background "#3e3e54"))))
 '(scroll-bar ((t (:background "red"))))
 '(show-paren-match ((((class color) (background dark)) (:background "pink" :foreground "black" :weight bold))))
 '(which-func ((((class color) (min-colors 88) (background dark)) (:weight bold))))
 '(widget-button-pressed ((((min-colors 88) (class color)) (:foreground "lightgreen")))))

;;  Auto-complete  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp//ac-dict")
(ac-config-default)

;;  Fci-mode  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'fill-column-indicator)
(define-globalized-minor-mode
 global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode t)
(setq fci-rule-width 3)
(setq fci-rule-color "#28283a")
(add-hook 'after-change-major-mode-hook 'fci-mode)

;;  Macro Defuns  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun show-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (message (buffer-file-name))
  (kill-new (file-truename buffer-file-name))
)

(defun djcb-full-screen-toggle ()
  "toggle full-screen mode"
  (interactive)
  (shell-command "wmctrl -r :ACTIVE: -btoggle,fullscreen"))

(defun smarter-move-beginning-of-line (arg)
  "Move point back to indentation or beginning of line."
  (interactive "P")

  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))

(defun point-in-comment ()
  "Determine if the point is inside a comment"
  (interactive)
  (let ((syn (syntax-ppss)))
    (and (nth 8 syn)
         (not (nth 3 syn)))))

(defun my-end-of-code-or-line (arg)
  "Move to the end of line. If already there, move to the end of code.
  that is before the possible comment.

  Comments are recognized in any mode that sets syntax-ppss properly."
  (interactive "P")
  (cond ((= (point) (save-excursion (end-of-line) (point)))
         (move-end-of-line arg)
         (while (point-in-comment)
           (backward-char))
         (backward-char) ; FIXME: Fix for case when point on empty line goes
                         ; back to previous line
         (skip-chars-backward " \t"))
        (t
         (move-end-of-line arg))))

(defun jao-toggle-selective-display (column)
  (interactive "P")
  (set-selective-display 
   (if selective-display nil (or column 1))))

(defun scroll-up-3-line ()
  (interactive)
  (scroll-up 3))

(defun scroll-down-3-line ()
  (interactive)
  (scroll-down 3))

(defun pull-up-line ()
  (interactive)
  (join-line -1))

(defun open-next-line (arg)
  (interactive "p")
  (end-of-line)
  (open-line arg)
  (next-line 1)
  (indent-according-to-mode))

(defun open-previous-line (arg)
  (interactive "p")
  (beginning-of-line)
  (open-line arg)
  (indent-according-to-mode))

(defun duplicate-line-below (arg)
  (interactive "p")
  (beginning-of-line)
  (kill-line)
  (yank)
  (newline arg)
  (yank))

(defun back-window ()
  (interactive)
  (other-window -1))

(defun forward-three-char () (interactive) (forward-char 3))
(defun back-three-char () (interactive) (backward-char 3))
(defun next-three-lines () (interactive) (next-line 3))
(defun prev-three-lines () (interactive) (previous-line 3))

;(defun back-zap () (interactive) (zap-up-to-char -1))

(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR.
  \(fn arg char)"
  'interactive)

(defadvice split-window-vertically
  (after my-window-splitting-advice first () activate)
  (set-window-buffer (next-window) (other-buffer)))

(defun mark-line (&optional argextra arg goes here)
  "Marks a line"
  (interactive "p")
  (beginning-of-line)
  (push-mark (point) nil t)
  (end-of-line))

;;  Requires  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'saveplace)
(require 'multiple-cursors)
(require 'expand-region)
(require 'uniquify)
;(require 'tool-bar)
(tool-bar-mode -1)
(require 'session)
    (add-hook 'after-init-hook 'session-initialize)
(require 'facemenu+)
(require 'highlight-chars)
(add-hook 'font-lock-mode-hook 'hc-highlight-tabs)
(add-hook 'font-lock-mode-hook 'hc-highlight-trailing-whitespace)    

;;  Global-set-keys  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-unset-key (kbd "<f2>"))
(global-set-key (kbd "C-!") 'flycheck-mode)
(global-set-key (kbd "C-M-n") 'flycheck-next-error)
(global-set-key (kbd "C-M-p") 'flycheck-previous-error)
(global-set-key (kbd "C-M-a") 'flycheck-first-error)
(global-set-key [f7] 'jao-toggle-selective-display)
(global-set-key [C-return]   'open-next-line)
(global-set-key [C-S-return] 'open-previous-line)
(global-set-key (kbd "C-j") 'newline-and-indent)
(global-set-key (kbd "C-x O") 'back-window)
(global-set-key (kbd "C-x M-f") 'fci-mode)
(global-set-key (kbd "C-c C") 'uncomment-region)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "C-x g") 'goto-line)
(global-set-key (kbd "<f8>") 'goto-line)
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z C-c") 'compile)
(global-set-key (kbd "C-c C-z") 'compile)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-O") 'back-window)
(global-set-key (kbd "C-S-F") 'forward-three-char)
(global-set-key (kbd "C-S-B") 'back-three-char)
(global-set-key (kbd "C-S-N") 'next-three-lines)
(global-set-key (kbd "C-S-P") 'prev-three-lines)
(global-set-key (kbd "C-S-I") 'ispell-word)
(global-set-key (kbd "<s-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<s-right>") 'enlarge-window-horizontally)
(global-set-key (kbd "<s-down>") 'shrink-window)
(global-set-key (kbd "<s-up>") 'enlarge-window)
(global-set-key (kbd "C-<") 'scroll-down-3-line)
(global-set-key (kbd "C->") 'scroll-up-3-line)
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "M-Z") 'back-zap)
(global-set-key (kbd "C-.") 'comment-or-uncomment-region)
(global-unset-key (kbd "C-M-c"))
(global-unset-key (kbd "C-M--"))
(global-set-key (kbd "C-M-c C-M-c") 'mc/edit-lines)
(global-set-key (kbd "C-M-.") 'mc/mark-next-like-this)
(global-set-key (kbd "C-M-,") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M-c C-M-.") 'mc/mark-all-like-this)
(global-set-key (kbd "C-M->") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-M-<") 'mc/skip-to-previous-like-this)
(global-set-key (kbd "C-M--") 'mc/unmark-next-like-this)
(global-set-key (kbd "C-M-=") 'mc/unmark-previous-like-this)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-'") 'er/mark-inside-quotes)
(global-set-key [(control \")] 'er/mark-outside-quotes)
(global-set-key (kbd "C-(") 'er/mark-inside-pairs)
(global-set-key (kbd "C-)") 'er/mark-outside-pairs)
(global-unset-key (kbd "C-M-V"))
(global-set-key (kbd "M-j") 'pull-up-line) 
(global-set-key (kbd "C-z r") 'insert-random-number)
(global-set-key (kbd "C-S-J") 'duplicate-line-below)
(global-set-key (kbd "C-c l") 'mark-line)
(global-set-key (kbd "C-c M-q") 'quick-calc)
(global-set-key (kbd "M-c") 'capitalize-region)
(global-set-key (kbd "C-x M-k") 'clean-buffer-list)
(global-set-key (kbd "C-x M-c") 'capitalize-region)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c q") 'fc-calculate-region)
(global-set-key (kbd "C-c C-q") 'fc-calculate-region)
(global-set-key (kbd "C-c u") 'upcase-region)
(global-set-key (kbd "C-c l") 'downcase-region)
(global-set-key (kbd "C-c c") 'capitalize-region)
(global-set-key (kbd "M-l") 'mark-line)
(global-set-key (kbd "C-c C-o") 'overwrite-mode)
(global-set-key (kbd "C-S-V") 'ido-find-alternate-file)
(global-set-key (kbd "C-+") 'c++-mode)
(global-set-key (kbd "C-e") 'my-end-of-code-or-line)
(global-set-key (kbd "C-a") 'smarter-move-beginning-of-line)
(global-set-key (kbd "<f9>")  'djcb-full-screen-toggle)
(global-unset-key (kbd "C-c C-f"))
(global-set-key (kbd "C-c C-f") 'show-file-name)
(global-set-key (kbd "C-c f") 'show-file-name)

;;  Revive  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'save-current-configuration "revive" "Save status" t)
(autoload 'resume "revive" "Resume Emacs" t)
(autoload 'wipe "revive" "Wipe Emacs" t)
(define-key ctl-x-map "S" 'save-current-configuration)
(define-key ctl-x-map "F" 'resume)
(define-key ctl-x-map "K" 'wipe)

;;  ido-mode  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'ido)
(ido-mode t)
(add-hook 'ido-setup-hook
          (lambda ()
            (define-key ido-file-completion-map
              (kbd "~")
              (lambda ()
                (interactive)
                (if (looking-back "/")
                    (insert "~/")
                  (call-interactively 'self-insert-command))))))

;;  Backups  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))
;; (setq backup-directory-alist
;;       `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.emacs.d/emacs-backup/auto-saves" t)))


;;  Quick-calc Region  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun fc-calculate-region (start end &optional prefix)
  "Evaluate the mathematical expression within the region, and
replace it with its result.

With a prefix arg, do not replace the region, but instead put the
result into the kill ring."
  (interactive "r\nP")
  (let* ((expr (buffer-substring start end))
         (result (fc-bc-calculate-expression expr))
         (ends-with-newline (string-match "\n$" expr)))
    (if prefix
        (progn
          (kill-new result)
          (message "%s" result))
      (delete-region start end)
      (insert result)
      (when ends-with-newline
        (insert "\n")))))

(defun fc-bc-calculate-expression (expr)
  "Evaluate `expr' as a mathematical expression, and return its result.

This actually pipes `expr' through bc(1), replacing newlines with
spaces first. If bc(1) encounters an error, an error is
signalled."
  (with-temp-buffer
    (insert expr)
    (goto-char (point-min))
    (while (search-forward "\n" nil t)
      (replace-match " " nil t))
    (goto-char (point-max))
    (insert "\n")
    (call-process-region (point-min)
                          (point-max)
                         "bc" t t nil "-lq")
    (goto-char (point-min))
    (when (search-forward "error" nil t)
      (error "Bad expression"))
    (while (search-forward "\n" nil t)
      (replace-match "" nil t))
    (buffer-string)))

;; (defun fc-calculate-region-to-kill-ring ()
;;   (interactive "r") (fc-calculate-region (
;; (global-set-key (kbd "C-c C-q") 'fc-calculate-region-to-kill-ring)

;;  Python  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c C-.") 'python-indent-shift-right)
(global-set-key (kbd "C-c C-,") 'python-indent-shift-left)
;; (require 'flymake-python-pyflakes)
;; (add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

;; (global-set-key (kbd "<C-f9>") 'select-pyflakes)
;; (defun select-pyflakes ()                (interactive)
;; (flycheck-select-checker "python-pyflakes"))
;; (defun my-python-hook ()
;;   "Hook to select python-pyflakes automatically"
;;   (flycheck-mode)
;;   (flycheck-select-checker 'python-pyflakes)
;;   (flycheck-mode))
  
;; (add-hook 'python-mode-hook 'my-python-hook)

(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")
;; (load-file "~/.emacs.d/lisp/emacs-for-python/epy-init.el")
;; (epy-setup-ipython)
;; (setq epy-enable-ropemacs nil)
;; (setq skeleton-pair nil)
(setq python-shell-interpreter "/usr/bin/ipython3")
(setq python-python-command "/usr/bin/python3")
(defconst my-python-non-keywords  ;; constant name
       '("\\blong\\")             ;; constant value
       "My list of Python Keywords that I do not highlighted")
(font-lock-remove-keywords 'python-mode-hook my-python-non-keywords)
(font-lock-remove-keywords 'python-mode my-python-non-keywords)


(defun python-do-doctest () (interactive)
  (insert "import doctest; doctest.testmod()"))
(global-set-key (kbd "C-z d") 'python-do-doctest)


;;  SQL ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun oracle-select-star-from () (interactive)
  (insert "SELECT * FROM ;")
  (backward-char 1))
(global-set-key (kbd "C-z s") 'oracle-select-star-from)


;;  C/C++  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq compile-command "g++ -Wall -Wextra -Wconversion")
(add-hook 'c-mode-hook (lambda () (setq comment-start "// "
                                        comment-end   "")))
(add-to-list 'auto-mode-alist '("\\.pro\\'" . makefile-mode))

;; add in your commonly used packages/include directories here, for
;; example, SDL or OpenGL. this shouldn't slow down cpp, even if
;; you've got a lot of them
;; (setq c-eldoc-includes "`pkg-config gtk+-2.0 --cflags` -I./ -I../ ")
;; (load "c-eldoc")
;; (add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)
;; (add-hook 'c-mode-common-hook 'flyspell-prog-mode t)
;; (add-hook 'c-mode-common-hook 'cwarn-mode t)
 
(add-hook 'c-mode-common-hook
  (lambda() 
    (local-set-key  (kbd "C-c o") 'ff-find-other-file)))

;; Create Header Guards with C-z H
(global-set-key (kbd "C-z H") 
                '(lambda () 
                   (interactive)
                   (if (buffer-file-name)
                       (let*
                           ((fName (upcase (file-name-nondirectory (file-name-sans-extension buffer-file-name))))
                            (ifDef (concat "#ifndef " fName "_H" "\n#define " fName "_H" "\n"))
                            (begin (point-marker))
                            )
                         (progn
                                        ; If less then 5 characters are in the buffer, insert the class definition
                           (if (< (- (point-max) (point-min)) 5 )
                               (progn
                                 (insert "\nclass " (capitalize fName) "{\npublic:\n\nprivate:\n\n};\n")
                                 (goto-char (point-min))
                                 (next-line-nomark 3)
                                 (setq begin (point-marker))
                                 )
                             )
                           
                                        ;Insert the Header Guard
                           (goto-char (point-min))
                           (insert ifDef)
                           (goto-char (point-max))
                           (insert "\n#endif" " //" fName "_H")
                           (goto-char begin))
                         )
                                        ;else
                     (message (concat "Buffer " (buffer-name) " must have a filename"))
                     )
                   )
                )

;;  Assembly  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq asm-comment-char ?#)
(add-hook 'asm-mode-hook (lambda () (setq comment-start "# "
                                        comment-end   "")))

;;  Flycheck  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(setq flycheck-check-syntax-automatically '(mode-enabled save new-line idle-change))
(setq flycheck-disabled-checkers '(python-flake8))
(setq flycheck-display-errors-delay 0.2)
(setq flycheck-idle-change-delay 10)
(setq flycheck-completion-system 'ido)
(flycheck-mode) ;; activate to add below
(flycheck-define-checker python-pyflakes
  "I'd rather use pyflakes alone by default, if I care about PEP8 I'll ask."
  :command ("pyflakes" source-inplace)
  :error-patterns
   ((warning line-start (file-name) ":" line
          ":"
          (message) "used" line-end)
   (error line-start (file-name) ":" line
          ":"
          (message) line-end))
  :modes python-mode) 

(setq-default flycheck-clang-language-standard "c++11")

(flycheck-define-checker c/c++-clang
  "A C/C++ syntax checker using Clang.

See URL `http://clang.llvm.org/'."
  :command ("clang"
            "-fsyntax-only"
            "-fno-color-diagnostics"    ; Do not include color codes in output
            "-fno-caret-diagnostics"    ; Do not visually indicate the source
                                        ; location
            "-fno-diagnostics-show-option" ; Do not show the corresponding
                                        ; warning group
            (option "-std=" flycheck-clang-language-standard)
            (option-flag "-fno-rtti" flycheck-clang-no-rtti)
            (option-list "-include" flycheck-clang-includes)
            (option-list "-W" flycheck-clang-warnings s-prepend)
            (option-list "-D" flycheck-clang-definitions s-prepend)
            (option-list "-I" flycheck-clang-include-path)
            "-x" (eval
                  (cl-case major-mode
                    (c++-mode "c++")
                    (c-mode "c"))) source-inplace)
  :error-patterns
  ((warning line-start (file-name) ":" line ":" column
            ": warning: " (message) line-end)
   (error line-start (file-name) ":" line ":" column
          ": " (or "fatal error" "error") ": " (message) line-end))
  :modes (c-mode c++-mode)
  :next-checkers ((warnings-only . c/c++-cppcheck)))


(flycheck-mode) ;; deactivate after
(add-to-list 'flycheck-checkers 'python-pyflakes)
;(lambda () (interactive) ('flycheck-select-checker python-pyflakes)))

;; mc-lists.el ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq mc/cmds-to-run-for-all
      '(
        abbrev-prefix-mark
        c-electric-delete-forward
        c-electric-paren
        c-electric-semi&comma
        c-electric-star
        c-indent-line-or-region
        capitalize-region
        comment-dwim
        comment-or-uncomment-region
        duplicate-line-below
        end-of-buffer
        end-of-visual-line
        er/mark-inside-quotes
        er/mark-outside-quotes
        handle-switch-frame
        indent-for-tab-command
        kill-region
        mark-line
        next-three-lines
        open-next-line
        open-previous-line
        pull-up-line
        python-indent-electric-colon
        save-some-buffers
        scroll-up-3-line
        skeleton-pair-insert-maybe
        temphack-prevline
        ))

(setq mc/cmds-to-run-once
      '(
        fill-paragraph
        scroll-down-3-line
        ))

;; Text Insertion Macros ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun insert-c++-comment () (interactive)
  (insert "/* \n */")
  (previous-line 1) (move-end-of-line 1))
(global-set-key (kbd "C-z 8") 'insert-c++-comment)

(defun pound-include () (interactive)
  (insert "#include "))
(global-set-key (kbd "C-z #") 'pound-include)

(defun c-unsigned-int () (interactive)
  (insert "unsigned int "))
(global-set-key (kbd "C-z u") 'c-unsigned-int)

(defun c-print-integer () (interactive)
  (insert "printf(\"%d\\n\", );")
  (backward-char 2))
(global-set-key (kbd "C-z i") 'c-print-integer)

(defun c-for-loop () (interactive)
  (insert "for (int i=0; i<; i++) {\n\n  }")
  (previous-line 2) (move-end-of-line 1) (backward-char 8))
(global-set-key (kbd "C-z f") 'c-for-loop)

(defun c-template () (interactive)
  (insert "#include <stdio.h>\n\nint main() {\n  ")
  (insert "printf(\"hello world %d\\n\", ")
  (insert-random-number)
  (insert ");\n  \n  \n  \n  return 0;\n}")
  (previous-line 3) (c-indent-line-or-region))
(global-set-key (kbd "C-z t") 'c-template)

(defun find-file-ualberta () (interactive)
  (insert "/sobolews@um02.cs.ualberta.ca:~/"))
(global-set-key (kbd "C-z @") 'find-file-ualberta)

(random t) ; seed it randomly
(defun insert-random-number ()
  "Insert a random number between 0 to 999999."
  (interactive)
  (insert (number-to-string (random 999999))) )


;;  SANDBOX  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun temphack-prevline () (interactive)
  (let (pos) (setq pos (funcall 'current-column))
  (beginning-of-line) (backward-char)
  (move-to-column pos)))
(global-set-key (kbd "C-p") 'temphack-prevline)

(defun xah-cut-line-or-region ()
  "Cut the current line, or current text selection."
  (interactive)
  (if (region-active-p)
      (kill-region (region-beginning) (region-end))
    (kill-region (line-beginning-position) (line-beginning-position 2)) ) )

(defun xah-copy-line-or-region ()
  "Copy current line, or current text selection."
  (interactive)
  (if (region-active-p)
      (kill-ring-save (region-beginning) (region-end))
    (kill-ring-save (line-beginning-position) (line-beginning-position 2)) ) )

(global-set-key (kbd "C-w") 'xah-cut-line-or-region)
(global-set-key (kbd "M-w") 'xah-copy-line-or-region)

(defun comment-whole-line (&optional arg)
  "Comments or uncomments the whole line"
  (interactive "p")
  (mark-line) (comment-dwim arg))

(global-set-key (kbd "C-;") 'comment-whole-line)

;;  END  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(provide '.emacs)
;;; .emacs ends here