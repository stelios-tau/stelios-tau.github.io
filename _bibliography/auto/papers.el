;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "papers"
 (lambda ()
   (LaTeX-add-bibitems
    "gtu25_arxiv"
    "gmtu24lics"
    "gmstu24"
    "UrbatTsampasEtAl23"
    "gmstu23"
    "DBLP:conf/csfw/El-Korashy0PD0P21"
    "DBLP:conf/csfw/TsampasDP19"
    "DBLP:conf/cmcs/0001NDP20"
    "tsampas2017towards"
    "DBLP:conf/mfcs/0001WNDP21"
    "DBLP:conf/aplas/AbateBT21"
    "DBLP:conf/fscd/0001MS0U22"))
 '(or :bibtex :latex))

