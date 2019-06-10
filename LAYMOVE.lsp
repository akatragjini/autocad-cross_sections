;Download Notepad++ to view
;This AUTOLISP auto-switches layer of selection set based on text data contained in the ss

;-----------------------------------------------------------------------
; FUNCTION: 	AUTO SWITCH LAYER OF SELECTION SET
; AUTHOR: 		ALDO KATRAGJINI
; DATE:			MARCH 12 2018
;-----------------------------------------------------------------------

(defun C:LAYMOVE ( /	txt_ss											;Text selection set
						txt_ss_n										;Text selection set name
						txt_ss_n_d
						txt												;Text group codes & associated data
						sel_s											;Selection set
						
					)
			   
(setvar "NOMUTT" 1)
(setvar "CMDECHO" 0)													;Supress command window
(command "UCS" "w")														;UCS World
(setvar "OSMODE" (boole 7 (getvar "OSMODE") 16384))						;On-snap button off. Causes issues when drawing lines	

(princ "\nSelect Entities for LAYMOVE:\n")								;Select entities to move
	(command "Select" pause)			
	(setq sel_s (ssget "P"))
	(setq txt_ss (ssget "P" '((0 . "TEXT"))))							;Get previous selection set filtering out entities /= text
	
(setq txt_ss_n (ssname txt_ss 0))										;Get selection set name
	(setq txt_ss_n_d (entget txt_ss_n))									;Get selection set name dxf codes & associated data
	(setq txt (cdr(assoc 1 txt_ss_n_d))) 								;Get text contents
	
		
(command "CHPROP" sel_s "" "LAYER" txt "")

;TROUBLESHOOTING	
;(princ txt)
;(princ "\n")

	

(command "UCS" "previous")												;UCS previous							
(setvar "OSMODE" (boole 2 (getvar "OSMODE") 16384))						;On-snap button on.
(setvar "NOMUTT" 0)
(setvar "CMDECHO" 1)
)

;End of program
