;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!
;; 放置私有的配置信息
;;

(defconst *is-a-mac* (eq system-type 'darwin))

(defconst *is-a-linux* (eq system-type 'gnu/linux))

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "lihuu"
      user-mail-address "1449488533qq@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; 有不同的设备，只能根据系统不同设置字体大小
;;
;;


;;这里面的字体 https://github.com/ryanoasis/nerd-fonts
(if *is-a-mac*
    (setq doom-font (font-spec :family "Consolas NF" :size 20 ))
  (if *is-a-linux*
      (setq doom-font (font-spec :family "Consolas NF" :size 40 ))
    ;;(setq doom-font (font-spec :family "Fira Mono for Powerline" :size 25 )
    ;;(setq doom-font (font-spec :family "Consolas NF" :size 26 )
    (setq doom-font (font-spec :family "Consolas NF" :size 26 )
          ;;doom-variable-pitch-font (font-spec :family "Sarasa Mono SC Nerd")
          ;;doom-unicode-font (font-spec :family "Microsoft Yahei" )
          ;;doom-big-font (font-spec :family "Sarasa Mono SC Nerd" :size 30)
        ;;doom-unicode-font (font-spec :family "simhei" :size 25)
          )))
;;(setup-default-fontset "Noto Sans Mono" 26)
;;

;; (when IS-WINDOWS
;;   (when (display-graphic-p)
;;     (defun set-font (english chinese english-size chinese-size)
;;       (set-face-attribute 'default nil :font
;;                           (format   "%s:pixelsize=%d"  english english-size))
;;       (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;         (set-fontset-font (frame-parameter nil 'font) charset
;;                           (font-spec :family chinese :size chinese-size))))
;;     (set-font "Consolas NF" "SIMHEI" 12 14)
;;     ))
;;(setq doom-font (font-spec :family "Consolas NF" :size 40 ))
       ;;
       ;;
       ;;
       ;;
       ;;doom-variable-pitch-font (font-spec :family "sans" :size 13))

;;(cond (*is-a-mac* (setq doom-font (font-spec :family "Consolas NF" :size 20 )))
;;      (*is-a-linux* (setq doom-font (font-spec :family "Consolas NF" :size 20 )))
;; )
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; ;; =>
;; ("doom-Iosvkem"
;;  "doom-acario-dark"
;;  "doom-acario-light"
;;  "doom-challenger-deep"
;;  "doom-city-lights"
;;  "doom-dark+"
;;  "doom-dracula"
;;  "doom-ephemeral"
;;  "doom-fairy-floss"
;;  "doom-gruvbox"
;;  "doom-horizon"
;;  "doom-laserwave"
;;  "doom-manegarm"
;;  "doom-material"
;;  "doom-molokai"
;;  "doom-monokai-classic"
;;  "doom-monokai-pro"
;;  "doom-monokai-spectrum"
;;  "doom-moonlight"
;;  "doom-nord-light"
;;  "doom-nord"
;;  "doom-nova"
;;  "doom-oceanic-next"
;;  "doom-one-light"
;;  "doom-one"
;;  "doom-opera-light"
;;  "doom-opera"
;;  "doom-outrun-electric"
;;  "doom-palenight"
;;  "doom-peacock"
;;  "doom-rouge"
;;  "doom-snazzy"
;;  "doom-solarized-dark"
;;  "doom-solarized-light"
;;  "doom-sourcerer"
;;  "doom-spacegrey"
;;  "doom-tomorrow-day"
;;  "doom-tomorrow-night"
;;  "doom-vibrant"
;;  "doom-wilmersdorf")
;;(setq doom-theme 'doom-one)
;;(setq doom-theme 'doom-monokai-pro)
(setq doom-theme 'doom-Iosvkem)

;; 设置Org的目录
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/OneDrive/org/")

;; 设置行号
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

(dolist (mode '(org-mode-hook
                eshell-mode-hook
                ))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;;(setq org-bullets-bullet-list '( "⦿" "○" "✸" "✿" "◆"))

;;设置Org mode的标题的图标
(setq org-superstar-headline-bullets-list '("⁖" "◉" "○" "✸" "✿" "◆"))

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;;设置默认的目录
(setq default-directory "~/")


;; orgmode import image from clipboard
;; (defun org-docs-insert-image-from-clipboard ()
;;     "Take a screenshot into a time stamped unique-named file in the
;;     same directory as the org-buffer and insert a link to this file."
;;     (interactive)
;;     (let* ((the-dir (concat "~/OneDrive/org/" "docs/"))
;;            (attachments-dir (concat the-dir "assets/attachments/"))
;;            (jpg-file-name (format-time-string "%Y%m%d_%H%M%S.jpg"))
;;            (jpg-path (concat attachments-dir jpg-file-name))
;;            (jpg-relative-path (f-relative jpg-path  (f-dirname buffer-file-name))))
;;           (shell-command (concat "powershell -command \"Add-Type -AssemblyName System.Windows.Forms;if ($([System.Windows.Forms.Clipboard]::ContainsImage())) {$image = [System.Windows.Forms.Clipboard]::GetImage();[System.Drawing.Bitmap]$image.Save('" jpg-path "',[System.Drawing.Imaging.ImageFormat]::Jpeg); Write-Output 'clipboard content saved as file'} else {Write-Output 'clipboard does not contain image data'}\""))
;;           (insert (concat "[[file:" jpg-relative-path "]]"))
;;           ))
;; ;; set keybinding
;; (global-set-key (kbd "M-o M-v") 'org-docs-insert-image-from-clipboard)
;; 保存剪贴板中的图片到文件中，只有再Windows 平台下才有效。
(setq pasteex-executable-path (concat (getenv "HOME") "\\software\\PasteEx\\PasteEx.exe"))

(setq system-time-locale "C")
(format-time-string "%Y-%m-%d %a")
;;
;; 启动的时候全屏
;;(setq initial-frame-alist (quote ((fullscreen . fullscreen))))
;;maximized
;;启动的时候，最大化
(setq initial-frame-alist (quote ((fullscreen . maximized))))
