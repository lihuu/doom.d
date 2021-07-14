;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!
;; 放置私有的配置信息
;;

(defconst *is-a-mac* (eq system-type 'darwin))

(defconst *is-a-linux* (eq system-type 'linux))

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

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
(if *is-a-mac*
    (setq doom-font (font-spec :family "Consolas NF" :size 20 ))

    (setq doom-font (font-spec :family "Consolas NF" :size 30 )))
       ;;doom-variable-pitch-font (font-spec :family "sans" :size 13))

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
(setq doom-theme 'doom-monokai-pro)

;; 设置Org的目录
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/OneDrive/org/")

;; 设置行号
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;;(setq org-bullets-bullet-list '( "⦿" "○" "✸" "✿" "◆"))

;;设置Org mode的标题的图标
(setq org-superstar-headline-bullets-list '("⁖" "◉" "○" "✸" "✿"))

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
