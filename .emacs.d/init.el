;; turn off welcome screen
(setq inhibit-startup-screen t)

;; tab width
(setq-default tab-width 4)

;; personal data
(setq user-full-name "jhx"
      user-mail-address "@")

;; dont show menu bar and tool bar, hide scrollbar to
;; only in gui mode
;; (tool-bar-mode -1)

(menu-bar-mode -1)

;; only in gui mode
;; (scroll-bar-mode -1)

;; highlight current line
(global-hl-line-mode)

;; show uncomitted lines
;;(require 'diff-hl)

;;(add-hook 'prog-mode-hook 'turn-on-diff-hl-mode)
;;(add-hook 'vc-dir-mode-hook 'turn-on-diff-hl-mode)
