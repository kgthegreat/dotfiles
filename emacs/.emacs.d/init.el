(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
                      '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("cdbd0a803de328a4986659d799659939d13ec01da1f482d838b68038c1bb35e8" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Window navigation
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

;; for org mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)


;; Ignoring certain directories while doing rgrep
(eval-after-load "grep"
  '(progn
     (add-to-list 'grep-find-ignored-files "*.tmp")
     (add-to-list 'grep-find-ignored-files "*.war")
     (add-to-list 'grep-find-ignored-files "*.zip")
     (add-to-list 'grep-find-ignored-files "*.gz")
     (add-to-list 'grep-find-ignored-files "*.DS_Store")
     (add-to-list 'grep-find-ignored-directories "node_modules")
     (add-to-list 'grep-find-ignored-directories "build")
     (add-to-list 'grep-find-ignored-directories ".jruby-container")
     (add-to-list 'grep-find-ignored-directories ".sass-cache")
     (add-to-list 'grep-find-ignored-directories "bin")
     (add-to-list 'grep-find-ignored-directories "dist")))

;; Copy current file name
(defun clip-file ()
  "Put the current file name on the clipboard"
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      (file-name-directory default-directory)
                    (buffer-file-name))))
    (when filename
      (kill-new filename))))

;;(setq display-time-format "%I:%M:%S")

(defface egoge-display-time
  '((((type x w32 mac))
     ;; #060525 is the background colour of my default face.
     (:foreground "#060525" :inherit bold))
    (((type tty))
     (:foreground "blue")))
  "Face used to display the time in the mode line.")

;; This causes the current time in the mode line to be displayed in
;; `egoge-display-time-face' to make it stand out visually.
(setq display-time-string-forms
      '((propertize (concat " " 24-hours ":" minutes " ")
                        'face 'egoge-display-time)))

;; load html mode for gsp files
(setq auto-mode-alist
      (cons '("\\.gsp$" . html-mode)
            auto-mode-alist))

(setq auto-mode-alist
      (cons '("\\.gradle$" . groovy-mode)
            auto-mode-alist))

;; Autocomplete Mode
(require 'auto-complete)
(add-to-list 'ac-modes 'groovy-mode)
(add-to-list 'ac-modes 'html-mode)
(global-auto-complete-mode t)

;; Editorconfig mode
(require 'editorconfig)
(editorconfig-mode 1)


;; Duplicate line
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
  )
(global-set-key (kbd "C-d") 'duplicate-line)

;;; yasnippet
;;; should be loaded before auto complete so that they can work together
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets/yasnippet-snippets"                 ;; personal snippets
                ))
(yas-global-mode 1)

;;; auto complete mod
;;; should be loaded after yasnippet so that they can work together
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

;;; Auto save files to tmp rather than current dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; To prevent lockfiles creation
(setq create-lockfiles nil)
(put 'upcase-region 'disabled nil)

;; Zenburn theme
(load-theme 'zenburn t)

;; runs goimports after every save
(setq gofmt-command "goimports")
;;(add-to-list 'load-path "~/go/src/github.com/kgthegreat")
;;(require 'go-mode-load)
(add-hook 'before-save-hook 'gofmt-before-save)

;; enabling js2-mode and autocomplete for js
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)
;; set syntax highlighting level
(setq js2-highlight-level 3)

;; React Snippet
(require 'react-snippets)


;; Enable paredit in other modes
(defun my-paredit-nonlisp ()
  "Turn on paredit mode for non-lisps."
  (interactive)
  (set (make-local-variable 'paredit-space-for-delimiter-predicates)
       '((lambda (endp delimiter) nil)))
  (paredit-mode 1))

(add-hook 'js-mode-hook 'my-paredit-nonlisp) ;use with the above function
(add-hook 'js-mode-hook 'esk-paredit-nonlisp) ;for emacs starter kit
(electric-pair-mode 1)

;; Set tab to 2
(setq js-indent-level 2)
(setq js2-basic-offset 2)

