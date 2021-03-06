;;; evil-collection-ruby-mode.el --- Bindings for `ruby-mode'. -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; Pierre Neidhardt <ambrevar@gmail.com>
;; URL: https://github.com/jojojames/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: emacs, tools, ruby

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;; Bindings for `ruby-mode'.

;;; Code:
(require 'evil)
(require 'ruby-mode)

(defun evil-collection-ruby-mode-set-evil-shift-width ()
  "Set `evil-shift-width' according to `ruby-indent-level'."
  (setq evil-shift-width ruby-indent-level))

(defun evil-collection-ruby-mode-setup ()
  "Set up `evil' bindings for `python'."
  (add-hook 'ruby-mode-hook #'evil-collection-ruby-mode-set-evil-shift-width))

(provide 'evil-collection-ruby-mode)
;;; evil-collection-ruby-mode.el ends here
