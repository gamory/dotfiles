
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; This enabled Russian Cyrillic
(set-language-environment "Cyrillic-KOI8")

;; This is a custom (dark) color theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (manoj-dark)))
 '(org-agenda-files (quote ("~/Dropbox/org")))
 '(org-directory (quote ("~/Dropbox/org")))
 '(org-mobile-inbox-for-pull (quote ("~/Dropbox/org/flagged.org")))
 '(org-mobile-directory (quote ("~/Dropbox/Apps/MobileOrg")))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
; Disable transient mark mode, so we can use the mark as a bookmark
(transient-mark-mode 0)
; Enable icomplete, for nice tab completion
(icomplete-mode 99)
; Enable show-paren-mode since it's handy for programming
(show-paren-mode 1)
; Disable aauto-save, becuase it bugs me
(setq auto-save-default nil)
(setq make-backup-files nil)
; Next four lines are hotkey settings for org mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; Code for inserting date
(defun insert-date (prefix)
    "Insert the current date. With prefix-argument, use ISO format. With
   two prefix arguments, write out the day and month name."
    (interactive "P")
    (let ((format (cond
                   ((not prefix) "%Y-%m-%d")
                   ((equal prefix '(4)) "%d.%m.%Y")
                   ((equal prefix '(16)) "%A, %d. %B %Y")))
          (system-time-locale "de_DE"))
      (insert (format-time-string format))))
;; Key command to insert date, C-c d is most useful
(global-set-key (kbd "C-c d") 'insert-date)

; Adds in files in home folder
(add-to-list 'load-path "~")

; Config to load dockerfile mode
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

; Config to load Go programming language mode
(require 'go-mode-autoloads)

; Config to allow GPG encrypted ORG files
(require 'epa-file)

; Config for GPG4Win
(when (string-equal system-type "windows-nt")
  (custom-set-variables '(epg-gpg-program  "C:/Program Files (x86)/GnuPG/bin/gpg.exe"))
)

; Enable GPG files
(epa-file-enable)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))



