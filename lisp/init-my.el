;;;(load-theme 'material-light)
;;;(load-theme 'smart-mode-line-light-powerline)


(set-default-font "DejaVu Sans Mono 11" nil t)
;;(set-face-attribute 'default nil :font (format   "%s:pixelsize=%d" "DejaVu Sans Mono" 15))
(dolist (charset '(kana han cjk-misc bopomofo)) (set-fontset-font (frame-parameter nil 'font) charset (font-spec :family "Source Han Serif SC" :size 15)))
;;(setq sml/no-confirm-load-theme t);;(setq sml/theme 'dark)
;;(setq sml/theme 'light)
;;(setq sml/theme 'respectful)
;; These two lines are just examples
;;(setq powerline-arrow-shape 'curve)
;;(setq powerline-default-separator-dir '(right . left))
;; These two lines you really need.
;;(set-face-attribute 'mode-line nil :foreground "Grey" :background "DarkOrange" :box nil)
;;(setq sml/theme 'powerline)
;;(sml/setup)

;;(setq powerline-arrow-shape 'curve)

;;(custom-set-faces '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil)))) '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

;;(setq ns-use-srgb-colorspace nil)
;;(setq powerline-image-apple-rgb t)

(require 'ox-latex)

(setq org-latex-listings t)
(add-to-list 'org-latex-packages-alist '("" "listings"))
(add-to-list 'org-latex-packages-alist '("" "color"))
(add-to-list 'org-latex-packages-alist '("" "pst-plot"))

(setq org-latex-create-formula-image-program 'imagemagick)

(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)

(setq org-src-tab-acts-natively t)
(setq org-src-fontify-natively t)

(setq org-babel-python-command "python3")

(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))
(add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++11")))

(setq org-latex-to-pdf-process
      '("xelatex -interaction nonstopmode %f"
        "xelatex -interaction nonstopmode %f"))

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

(setq markdown-enable-math t)

;;(setq markdown-css-paths "~/markdowncss/lostkeys.css")

(setq markdown-preview-stylesheets (list "~/markdowncss/lostkeys.css"))

;;q.(add-to-list 'markdown-preview-javascript "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML")

(require 'cnfonts)

(setq cnfonts--custom-set-fontnames
      '(("PragmataPro" "Ubuntu Mono" "DejaVu Sans Mono")
        ("文泉驿等宽微米黑" "Ubuntu Mono" "隶书" "新宋体")
        ("HanaMinB" "SimSun-ExtB" "MingLiU-ExtB")))

(setq cnfonts--custom-set-fontsizes
      '((9    9.0  9.5 )
        (10   11.0 11.0)
        (11.5 12.5 12.5)
        (12.5 13.5 13.5)
        (14   15.0 15.0)
        (16   17.0 17.0)
        (18   18.0 18.0)
        (20   21.0 21.0)
        (22   23.0 23.0)
        (24   25.5 25.5)
        (26   27.0 27.0)
        (28   29.0 29.0)
        (30   32.0 32.0)
        (32   33.0 33.0)))

(provide 'init-my)
