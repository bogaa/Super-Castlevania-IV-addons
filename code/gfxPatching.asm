

; ------------------------------ player GFX ----------------------
check bankcross off
org $F6A57D
	simonSpriteData00:
		dw $2004
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.sfc":($0000)-($1fff) 
endif 

org $F6C5FD
	simonSpriteData01:
		dw $2003
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.sfc":($2000)-($3fff) 
endif 			
			
org $F6E65D
	simonSpriteData02:
		dw $2003
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.sfc":($4000)-($5fff) 		
endif 

org $F786BD
	simonSpriteData03:
		dw $2003
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.sfc":($6000)-($7fff) 				
endif 			
			
org $F7A71D
	simonSpriteData04:
		dw $2003
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.sfc":($8000)-($9fff) 		
endif 

org $F7C77D
	simonSpriteData05:
		dw $2003
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.sfc":($a000)-($bfff) 	
endif 			
			
org $F7E7DD
	simonSpriteData06:
		dw $2003
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.sfc":($c000)-($dfff) 		
endif 