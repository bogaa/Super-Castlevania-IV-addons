;---------------------------------------------------------------
;--------------- options gamePlay ------------------------------
;--------------------------------------------------------------- 

!deathCounter = 0
!removeTimer = 0

!removeGFXreuse = 0
!hotFixWhipCancle = 0				; always check ring with whip 
!NoFatalCrusherHit = 0
!BatRing = 0						; code in baseRomTweaks

!removeGFXreuse = 0
!HeartDependendMultishot = 0
!lastSlotFixedRing = 0
!practice = 0
!levelSelect = 0
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
!NoFatalSpikeHit = 0


;---------------------------------------------------------------
;--------------- options gfx -----------------------------------
;--------------------------------------------------------------- 

!GFX_insert = 1
!simonIdle = 0

;---------------------------------------------------------------
;--------------- options player --------------------------------
;--------------------------------------------------------------- 

!moonWalking = 0 

{ ; ----------- asm patches ------------------------------------

incsrc code/labels.asm					; ----------------------

org $80810D
;LDA.W #$0040                         	;subw default 2X

; freeSpace at  $81B7BC-81b902 
; freeSpace at	$A49000-A4FFFF ??
; freeSpace at 	$ff8a00		
;				$80C5BF-80C647

;110000 collusion tables ROM offset
;org $20c000 LvlTransitionTable


;entrances a78000 ROM 138000

;SPRITEASSEMBLY l2590 tutorialHackTweak
;GFX some are in pointer and need to be plit for some reason??

org $a08000							; free Space startpoint !!org $a0f000 freeSpace PrePatch
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

if !practice == 1
incsrc code/practice.asm 
endif

;incsrc code/NewEnemies/oldManEvID0d.asm 

if !GFX_insert == 1
incsrc code/gfxPatching.asm 
endif 


}