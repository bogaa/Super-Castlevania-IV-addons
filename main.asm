;---------------------------------------------------------------
;--------------- options gamePlay ------------------------------
;--------------------------------------------------------------- 

!deathCounter = 0
!removeTimer = 0
!levelSelect = 0

!hotFixWhipCancle = 0				; always check ring with whip 
!NoFatalCrusherHit = 0				; set to do 5 damage in the code 
!NoFatalSpikeHit = 0

!BatRing = 0						; code in baseRomTweaks

!removeGFXreuse = 0
!HeartDependendMultishot = 0
!lastSlotFixedRing = 0
!practice = 0

!freeScrolling = 0					; broken 
!reUseBrkblBlock = 0
!simonIdleAnimation = 0
!subWeaponDropOnPickup = 0
!extraSpritesOnScreen = 0
!invertRingGlitchControll = 0
!swordSkellyHitboxFix = 0
!jpWhipSound = 0
!radio = 0
!moonwalk = 0
!newSecondQuestStartLevel = 0 
!eventHandlerChanges = 0

!movableGoldPlatform = 0 

!debuggMenu = 0 

;---------------------------------------------------------------
;--------------- options gfx -----------------------------------
;--------------------------------------------------------------- 

!removeGFXreuse = 0					; this option is ment to be used along the editor and removes the second GFX load. So you can put graphics there! 

!GFX_insert = 1
!simonIdle = 0

;---------------------------------------------------------------
;--------------- options player --------------------------------
;--------------------------------------------------------------- 

!moonWalking = 0 

;---------------------------------------------------------------
;--------------- NEW RAM LABELS --------------------------------
;--------------------------------------------------------------- 
!skipeHitFlag = $530


{ ; ----------- asm patches ------------------------------------
!vanillaROM_FreeSpace = 1 			; for small patches of Vanilla ROM. DO NOT SET UNTIL U NEED 2!

incsrc code/labels.asm				; ----------------------


if !vanillaROM_FreeSpace == 1 		; assigne free space manually since donno behavior of free space directive.. 	
org $9FF3C4							; same as practice ROM uses 
else 
org $a08000							
endif 
pushPC

	incsrc code/baseRomTweaks.asm		
;incsrc code/jobs.asm 				; will be applied to the ROM beforehand  
;incsrc code/textEngine.asm 
;incsrc code/tutorialHackTweak.asm	; moved for space 

pullPC
warnPC $a0c000
org $A49000
pushPC 

;incsrc code/tutorialHackTweak.asm
;incsrc code/tutorialBosses.asm
;incsrc code/mapSRAM.asm
;incsrc code/bloodDripTitle.asm
;incsrc code/newCollusionTypes.asm

pullPC
warnPC $a4ffff

;incsrc code/enemiePointer.asm		; will be applied to the ROM beforehand  
;incsrc code/text.asm

if !debuggMenu == 1
incsrc code/debugMenu.asm
endif

;incsrc code/NewEnemies/oldManEvID0d.asm 

if !GFX_insert == 1
incsrc code/gfxPatching.asm 
endif 


}