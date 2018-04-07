(defun c:xlayer ( / sel)
  (while
    (not
      (and
	(setq sel (nentsel "\nSelect xref layer: "))))
    (princ "\nNo selection!")
    )
  (if sel
    (progn
      (princ
	(strcat
	  "\nLayer from selection is <"
	    (cdr (assoc 8 (entget (car sel))))
	    ">"))
      (alert
	(strcat
	  "\nLayer from selection is <"
	    (cdr (assoc 8 (entget (car sel))))
	    ">"))
      )
    )
  (princ "\nFinished.")
  (princ)
  )
	
  