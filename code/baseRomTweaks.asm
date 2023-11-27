{ ; -------------------------- different teaks pause (old job.asm) ----------------
	org $80945D
		jsl pauseCheckHijack

pullPC 	
	pauseCheckHijack:
		lda $70
		cmp #$0005 						; only run main game 
		bne endPauseHijack

if !NoFatalSpikeHit == 1		
		lda !skipeHitFlag
		beq +
		jsl getSpiked
	+	
endif 
	

	endPauseHijack:						; hijackFix this will check for pause
		jsl pauseCheck					; JSL.L $80978F
		rtl

	pauseCheck:
		LDA.B $4A                           
        ORA.B $64                           
        ORA.B RAM_X_event_slot_3e           
        BEQ +                     
        JMP.W endPauseCheck                   			

	+	LDX.B RAM_SFX_Ptr_Repeat            
        LDA.B RAM_pauseFlag                 
        BNE unpauseCheck                     
        LDA.B RAM_82_buttonPressCurFram,X 
        AND.W #$1000                        
        BEQ endPauseCheck                     			
 
		INC.B RAM_pauseFlag    ; set and pause the game              
;        inc.w !ShowScore
		LDA.W #$00F0                        
        JML.L lunchSFXfromAccum             

    unpauseCheck: 
		jsr whilePauseRoutines 
		LDX.B RAM_SFX_Ptr_Repeat            
        LDA.B RAM_82_buttonPressCurFram,X 
        BIT.W #$1000                        
        BEQ endPauseCheck                     			
;        stz.w !ShowScore		; start up game after pause
		STZ.B RAM_pauseFlag                 
        LDA.W #$00F1                        
        JSL.L lunchSFXfromAccum             
    endPauseCheck:	
		RTL   
	
	whilePauseRoutines:
		rts 
		
pushPC 
}


; ----------------- levelSelect at Start --------------------------
if !levelSelect == 1
org $809477			; https://tcrf.net/Notes:Super_Castlevania_IV R+L select Hold A for fast forward 
	dw $9a63		; pointer to menu
org $8094D3
	db $80 			; skip clear 
org $809A77
	dw $0064 		; fix flag 
org $809AF9			
	jmp $94c5		; jump menu 
endif 

; ----------------- HeartDependendMultishot -----------------------
if !HeartDependendMultishot == 1
org $80B988
	jsl HeartDependendMultishotRoutine

pullPC											; free Space
		HeartDependendMultishotRoutine:			; store 1 or 2 on $10 for multiShoots
			lda $13F2
			cmp #$0032
			bmi NotEnoughHeartFor3
			lda #$0002
			bra storeMultishootManip
		NotEnoughHeartFor3:
			cmp #$0018
			bmi NotEnoughHeartFor2
			lda #$0001
		
		storeMultishootManip:
			sta $10
		NotEnoughHeartFor2:
			rtl
pushPC
endif

; ----------------- lastSlotFixedRing -----------------------------
if !lastSlotFixedRing == 1
org $80D7E4	
		jml lastSlotFixedRingRoutine
		;LDX.B $FC                            ;80D7E4|A6FC    |0000FC;  
		;STZ.B $26,X                          ;80D7E6|7426    |000026;  

pullPC									; free space
	lastSlotFixedRingRoutine:
		LDX.B $FC                           ;80D7E4|A6FC    |0000FC;  
		LDA #$01e0							;offset last slot !!needs to be disable for Drac,
		STA.B $26,X                         ;80D7E6|7426    |000026;  
		RTL
pushPC
endif


; ----------------- BatRing ---------------------------------------
if !BatRing == 1
org $81A425
	dl NewRingRoutine
	
org $86C656
	jml NewRingEventInit 

pullPC				; free space
	NewRingEventInit:
		lda $14,x 		
		beq ++
		lda #$0003
		sta $10,x
		sta $1a			; will be used to find sprite OAM offset
		stz $12,x
		lda #$0022		; get hurt use 47
		sta $2e,x
	
		lda #$0010		; AddEvent newBat trigger identifyer
		sta $22,x
		
		stz $14,x 		; remove subID to prevent making it a drop. Sicne drop routien gets rid of stats.. 
		
		jsl $80d7cc		; SpriteOffset
		rtl 
	
	++	stz $2e,x		; normal routine bat gets killed
		stz $26,x 
		jml $86C65A
	
	NewRingRoutine:
		lda $22,x
		cmp #$0010 		; Check Bat event
		bne +
		
		jsl $82C20B		; Medusa movement
		
		lda $552		; Check RingState
		cmp #$0008
		bne +
		
		lda $0022,x		; Check New Event
		cmp #$0010
		bne +
		jsl $8CFF49	
	+	jml $8CFF07		; RingMain
		;jml $86C529
pushPC
		
org $8cff9e
	padbyte $ff
	pad $8cfffe
	
warnpc $8cffff	
endif

; ----------------- Remove Fatal Hit Crusher ----------------------
if !NoFatalCrusherHit == 1
org $82BBA5		; spike hit 
			jsl newSpikeHitRoutine
			nop
			nop 
;		STZ.W RAM_81_simonStat_Health_HUD    ;82BBA5|9CF413  |8113F4; killSimon
;        LDA.W #$000C                         ;82BBA8|A90C00  |      ;  
;        STA.W RAM_81_simonSlot_State         ;82BBAB|8D5205  |810552;  
pullPC
		newSpikeHitRoutine:
				lda $13f4
				sec
				sbc #$0005			; spike damage
				bcs +
				lda #$0000			; fatal hit detection 
			+	sta $13f4 	
				lda #$000c
				rtl 
pushPC
endif 	; ------------------------------------------------------------------------------------------

; ----------------- Remove Fatal Hit Spike -----------------------
if !NoFatalSpikeHit == 1
org $80AE02
	setSimonCollusionByte1430: 
		STA.W $1430                          ;80AE02|8D3014  |811430;  
        LDA.B $02     ;80AE05|A502    |000002;  
        CLC                                  ;80AE07|18      |      ;  
        ADC.W #$0008                         ;80AE08|690800  |      ;  
        STA.B $02     ;80AE0B|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AE0D|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AE11|C90600  |      ;  
        BNE setSimonCollusionByte1400        ;80AE14|D003    |80AE19;  
        INC.W !skipeHitFlag                          ;80AE16|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1400: 
		STA.W $1400                          ;80AE19|8D0014  |811400;  
        LDA.B $02     ;80AE1C|A502    |000002;  
        CLC                                  ;80AE1E|18      |      ;  
        ADC.W #$0008                         ;80AE1F|690800  |      ;  
        STA.B $02     ;80AE22|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AE24|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AE28|C90600  |      ;  
        BNE setSimonCollusionByte1402        ;80AE2B|D003    |80AE30;  
        INC.W !skipeHitFlag                          ;80AE2D|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1402: 
		STA.W $1402                          ;80AE30|8D0214  |811402;  
        LDA.B $02     ;80AE33|A502    |000002;  
        CLC                                  ;80AE35|18      |      ;  
        ADC.W #$0008                         ;80AE36|690800  |      ;  
        STA.B $02     ;80AE39|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AE3B|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AE3F|C90600  |      ;  
        BNE CODE_80AE47                      ;80AE42|D003    |80AE47;  
        INC.W !skipeHitFlag                          ;80AE44|EE841F  |811F84;  
                                                            ;      |        |      ;  
    CODE_80AE47: 
		STA.W $1404                          ;80AE47|8D0414  |811404;  
        LDA.B $02     ;80AE4A|A502    |000002;  
        CLC                                  ;80AE4C|18      |      ;  
        ADC.W #$0008                         ;80AE4D|690800  |      ;  
        STA.B $02     ;80AE50|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AE52|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AE56|C90600  |      ;  
        BNE setSimonCollusionByte1406        ;80AE59|D003    |80AE5E;  
        INC.W !skipeHitFlag                          ;80AE5B|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1406: 
		STA.W $1406                          ;80AE5E|8D0614  |811406;  
        LDA.B $02     ;80AE61|A502    |000002;  
        CLC                                  ;80AE63|18      |      ;  
        ADC.W #$0008                         ;80AE64|690800  |      ;  
        STA.B $02     ;80AE67|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AE69|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AE6D|C90600  |      ;  
        BNE setSimonCollusionByte1408        ;80AE70|D003    |80AE75;  
        INC.W !skipeHitFlag                          ;80AE72|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1408: 
		STA.W $1408                          ;80AE75|8D0814  |811408;  
        LDA.B $02     ;80AE78|A502    |000002;  
        CLC                                  ;80AE7A|18      |      ;  
        ADC.W #$0008                         ;80AE7B|690800  |      ;  
        STA.B $02     ;80AE7E|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AE80|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AE84|C90600  |      ;  
        BNE setSimonCollusionByte140a        ;80AE87|D003    |80AE8C;  
        INC.W !skipeHitFlag                          ;80AE89|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusionByte140a: 
		STA.W $140A                          ;80AE8C|8D0A14  |81140A;  
        LDA.B $02     ;80AE8F|A502    |000002;  
        CLC                                  ;80AE91|18      |      ;  
        ADC.W #$0008                         ;80AE92|690800  |      ;  
        STA.B $02     ;80AE95|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AE97|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AE9B|C90600  |      ;  
        BNE setSimonCollusionByte140c        ;80AE9E|D003    |80AEA3;  
        INC.W !skipeHitFlag                          ;80AEA0|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusionByte140c: 
		STA.W $140C                          ;80AEA3|8D0C14  |81140C;  
        LDA.B $02     ;80AEA6|A502    |000002;  
        CLC                                  ;80AEA8|18      |      ;  
        ADC.W #$0008                         ;80AEA9|690800  |      ;  
        STA.B $02     ;80AEAC|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AEAE|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusionByte140e: 
		STA.W $140E                          ;80AEB2|8D0E14  |81140E;  
        LDA.W $1F94                          ;80AEB5|AD941F  |811F94;  
        STA.B $00;80AEB8|8500    |000000;  
        LDA.W $1F9C                          ;80AEBA|AD9C1F  |811F9C;  
        STA.B $02     ;80AEBD|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AEBF|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1432: 
		STA.W $1432                          ;80AEC3|8D3214  |811432;  
        LDA.B $02     ;80AEC6|A502    |000002;  
        CLC                                  ;80AEC8|18      |      ;  
        ADC.W #$0008                         ;80AEC9|690800  |      ;  
        STA.B $02     ;80AECC|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AECE|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AED2|C90600  |      ;  
        BNE setSimonCollusionByte1410        ;80AED5|D003    |80AEDA;  
        INC.W !skipeHitFlag                          ;80AED7|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1410: 
		STA.W $1410                          ;80AEDA|8D1014  |811410;  
        LDA.B $02     ;80AEDD|A502    |000002;  
        CLC                                  ;80AEDF|18      |      ;  
        ADC.W #$0008                         ;80AEE0|690800  |      ;  
        STA.B $02     ;80AEE3|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AEE5|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AEE9|C90600  |      ;  
        BNE setSimonCollusionByte1412        ;80AEEC|D003    |80AEF1;  
        INC.W !skipeHitFlag                          ;80AEEE|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1412: 
		STA.W $1412                          ;80AEF1|8D1214  |811412;  
        LDA.B $02     ;80AEF4|A502    |000002;  
        CLC                                  ;80AEF6|18      |      ;  
        ADC.W #$0008                         ;80AEF7|690800  |      ;  
        STA.B $02     ;80AEFA|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AEFC|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AF00|C90600  |      ;  
        BNE setSimonCollusionByte1414        ;80AF03|D003    |80AF08;  
        INC.W !skipeHitFlag                          ;80AF05|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1414: 
		STA.W $1414                          ;80AF08|8D1414  |811414;  
        LDA.B $02     ;80AF0B|A502    |000002;  
        CLC                                  ;80AF0D|18      |      ;  
        ADC.W #$0008                         ;80AF0E|690800  |      ;  
        STA.B $02     ;80AF11|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AF13|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AF17|C90600  |      ;  
        BNE CODE_80AF1F                      ;80AF1A|D003    |80AF1F;  
        INC.W !skipeHitFlag                          ;80AF1C|EE841F  |811F84;  
                                                            ;      |        |      ;  
    CODE_80AF1F: 
		STA.W $1416                          ;80AF1F|8D1614  |811416;  
        LDA.B $02     ;80AF22|A502    |000002;  
        CLC                                  ;80AF24|18      |      ;  
        ADC.W #$0008                         ;80AF25|690800  |      ;  
        STA.B $02     ;80AF28|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AF2A|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AF2E|C90600  |      ;  
        BNE setSimonCollusionByte1418        ;80AF31|D003    |80AF36;  
        INC.W !skipeHitFlag                          ;80AF33|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1418: 
		STA.W $1418                          ;80AF36|8D1814  |811418;  
        LDA.B $02     ;80AF39|A502    |000002;  
        CLC                                  ;80AF3B|18      |      ;  
        ADC.W #$0008                         ;80AF3C|690800  |      ;  
        STA.B $02     ;80AF3F|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AF41|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AF45|C90600  |      ;  
        BNE setSimonCollusionByte141a        ;80AF48|D003    |80AF4D;  
        INC.W !skipeHitFlag                          ;80AF4A|EE841F  |811F84; ppu mode??
                                                            ;      |        |      ;  
	setSimonCollusionByte141a: 
		STA.W $141A                          ;80AF4D|8D1A14  |81141A;  
        LDA.B $02     ;80AF50|A502    |000002;  
        CLC                                  ;80AF52|18      |      ;  
        ADC.W #$0008                         ;80AF53|690800  |      ;  
        STA.B $02     ;80AF56|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AF58|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AF5C|C90600  |      ;  
        BNE setSimonCollusionByte141c        ;80AF5F|D003    |80AF64;  
        INC.W !skipeHitFlag                          ;80AF61|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusionByte141c: 
		STA.W $141C                          ;80AF64|8D1C14  |81141C;  
        LDA.B $02     ;80AF67|A502    |000002;  
        CLC                                  ;80AF69|18      |      ;  
        ADC.W #$0008                         ;80AF6A|690800  |      ;  
        STA.B $02     ;80AF6D|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AF6F|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusionByte141e: 
		STA.W $141E                          ;80AF73|8D1E14  |81141E;  
        LDA.W RAM_81_simonSlot_Xpos          ;80AF76|AD4A05  |81054A;  
        STA.B $00;80AF79|8500    |000000;  
        LDA.W $1F9C                          ;80AF7B|AD9C1F  |811F9C;  
        STA.B $02     ;80AF7E|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AF80|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1434: 
		STA.W $1434                          ;80AF84|8D3414  |811434;  
        LDA.B $02     ;80AF87|A502    |000002;  
        CLC                                  ;80AF89|18      |      ;  
        ADC.W #$0008                         ;80AF8A|690800  |      ;  
        STA.B $02     ;80AF8D|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AF8F|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AF93|C90600  |      ;  
        BNE setSimonCollusionByte1420        ;80AF96|D003    |80AF9B;  
        INC.W !skipeHitFlag                          ;80AF98|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1420: 
		STA.W $1420                          ;80AF9B|8D2014  |811420;  
        LDA.B $02     ;80AF9E|A502    |000002;  
        CLC                                  ;80AFA0|18      |      ;  
        ADC.W #$0008                         ;80AFA1|690800  |      ;  
        STA.B $02     ;80AFA4|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AFA6|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1422: 
		STA.W $1422                          ;80AFAA|8D2214  |811422;  
        LDA.B $02     ;80AFAD|A502    |000002;  
        CLC                                  ;80AFAF|18      |      ;  
        ADC.W #$0008                         ;80AFB0|690800  |      ;  
        STA.B $02     ;80AFB3|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AFB5|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1424: 
		STA.W $1424                          ;80AFB9|8D2414  |811424;  
        LDA.B $02     ;80AFBC|A502    |000002;  
        CLC                                  ;80AFBE|18      |      ;  
        ADC.W #$0018                         ;80AFBF|691800  |      ;  
        STA.B $02     ;80AFC2|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AFC4|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusionByte142a: 
		STA.W $142A                          ;80AFC8|8D2A14  |81142A;  
        LDA.B $02     ;80AFCB|A502    |000002;  
        CLC                                  ;80AFCD|18      |      ;  
        ADC.W #$0008                         ;80AFCE|690800  |      ;  
        STA.B $02     ;80AFD1|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AFD3|2286CF80|80CF86;  
        CMP.W #$0006                         ;80AFD7|C90600  |      ;  
        BNE setSimonCollusionByte142c        ;80AFDA|D003    |80AFDF;  
        INC.W !skipeHitFlag                          ;80AFDC|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusionByte142c: 
		STA.W $142C                          ;80AFDF|8D2C14  |81142C;  
        LDA.B $02     ;80AFE2|A502    |000002;  
        CLC                                  ;80AFE4|18      |      ;  
        ADC.W #$0008                         ;80AFE5|690800  |      ;  
        STA.B $02     ;80AFE8|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80AFEA|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusionByte142e: 
		STA.W $142E                          ;80AFEE|8D2E14  |81142E;  
        LDA.W $1F98                          ;80AFF1|AD981F  |811F98;  
        STA.B $02     ;80AFF4|8502    |000002;  
        LDA.W RAM_81_simonSlot_Xpos          ;80AFF6|AD4A05  |81054A;  
        SEC                                  ;80AFF9|38      |      ;  
        SBC.W #$0008                         ;80AFFA|E90800  |      ;  
        STA.B $00;80AFFD|8500    |000000;  
        JSL.L readCollusionTable7e4000       ;80AFFF|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1426: 
		STA.W $1426                          ;80B003|8D2614  |811426;  
        LDA.W RAM_81_simonSlot_Xpos          ;80B006|AD4A05  |81054A;  
        CLC                                  ;80B009|18      |      ;  
        ADC.W #$0008                         ;80B00A|690800  |      ;  
        STA.B $00;80B00D|8500    |000000;  
        JSL.L readCollusionTable7e4000       ;80B00F|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusionByte1428: 
		STA.W $1428                          ;80B013|8D2814  |811428;  
        RTL                                  ;80B016|6B      |      ;  
                                                            ;      |        |      ;  
    CODE_80B017: 
		LDA.W $1F92                          ;80B017|AD921F  |811F92;  
        STA.B $00;80B01A|8500    |000000;  
        LDA.W $1F9C                          ;80B01C|AD9C1F  |811F9C;  
        STA.B $02     ;80B01F|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B021|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusion_02_Byte1430: 
		STA.W $1430                          ;80B025|8D3014  |811430;  
		LDA.B $02     ;80B028|A502    |000002;  
		CLC                                  ;80B02A|18      |      ;  
		ADC.W #$0008                         ;80B02B|690800  |      ;  
		STA.B $02     ;80B02E|8502    |000002;  
		JSL.L readCollusionTable7e4000       ;80B030|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusion_02_Byte1400: 
		STA.W $1400                          ;80B034|8D0014  |811400;  
        LDA.B $02     ;80B037|A502    |000002;  
        CLC                                  ;80B039|18      |      ;  
        ADC.W #$0008                         ;80B03A|690800  |      ;  
        STA.B $02     ;80B03D|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B03F|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusion_02_Byte1402: 
		STA.W $1402                          ;80B043|8D0214  |811402;  
        LDA.B $02     ;80B046|A502    |000002;  
        CLC                                  ;80B048|18      |      ;  
        ADC.W #$0008                         ;80B049|690800  |      ;  
        STA.B $02     ;80B04C|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B04E|2286CF80|80CF86;  
        CMP.W #$0006                         ;80B052|C90600  |      ;  
        BNE setSimonCollusion_02_Byte1404    ;80B055|D003    |80B05A;  
        INC.W !skipeHitFlag                          ;80B057|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusion_02_Byte1404: 
		STA.W $1404                          ;80B05A|8D0414  |811404;  
        LDA.B $02     ;80B05D|A502    |000002;  
        CLC                                  ;80B05F|18      |      ;  
        ADC.W #$0008                         ;80B060|690800  |      ;  
        STA.B $02     ;80B063|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B065|2286CF80|80CF86;  
        CMP.W #$0006                         ;80B069|C90600  |      ;  
        BNE setSimonCollusion_02_Byte1406    ;80B06C|D003    |80B071;  
        INC.W !skipeHitFlag                          ;80B06E|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusion_02_Byte1406: 
		STA.W $1406                          ;80B071|8D0614  |811406;  
        LDA.B $02     ;80B074|A502    |000002;  
        CLC                                  ;80B076|18      |      ;  
        ADC.W #$0008                         ;80B077|690800  |      ;  
        STA.B $02     ;80B07A|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B07C|2286CF80|80CF86;  
        CMP.W #$0006                         ;80B080|C90600  |      ;  
        BNE setSimonCollusion_02_Byte1408    ;80B083|D003    |80B088;  
        INC.W !skipeHitFlag                          ;80B085|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusion_02_Byte1408: 
		STA.W $1408                          ;80B088|8D0814  |811408;  
        LDA.B $02     ;80B08B|A502    |000002;  
        CLC                                  ;80B08D|18      |      ;  
        ADC.W #$0008                         ;80B08E|690800  |      ;  
        STA.B $02     ;80B091|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B093|2286CF80|80CF86;  
        CMP.W #$0006                         ;80B097|C90600  |      ;  
        BNE setSimonCollusion_02_Byte140a    ;80B09A|D003    |80B09F;  
        INC.W !skipeHitFlag                          ;80B09C|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusion_02_Byte140a: 
		STA.W $140A                          ;80B09F|8D0A14  |81140A;  
        LDA.B $02     ;80B0A2|A502    |000002;  
        CLC                                  ;80B0A4|18      |      ;  
        ADC.W #$0008                         ;80B0A5|690800  |      ;  
        STA.B $02     ;80B0A8|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B0AA|2286CF80|80CF86;  
        CMP.W #$0006                         ;80B0AE|C90600  |      ;  
        BNE setSimonCollusion_02_Byte140c    ;80B0B1|D003    |80B0B6;  
        INC.W !skipeHitFlag                          ;80B0B3|EE841F  |811F84;  
                                                            ;      |        |      ;  
	setSimonCollusion_02_Byte140c: 
		STA.W $140C                          ;80B0B6|8D0C14  |81140C;  
        LDA.B $02     ;80B0B9|A502    |000002;  
        CLC                                  ;80B0BB|18      |      ;  
        ADC.W #$0008                         ;80B0BC|690800  |      ;  
        STA.B $02     ;80B0BF|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B0C1|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusion_02_Byte140e: 
		STA.W $140E                          ;80B0C5|8D0E14  |81140E;  
        LDA.W $1F94                          ;80B0C8|AD941F  |811F94;  
        STA.B $00;80B0CB|8500    |000000;  
        LDA.W $1F9C                          ;80B0CD|AD9C1F  |811F9C;  
        STA.B $02     ;80B0D0|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B0D2|2286CF80|80CF86;  
                                                            ;      |        |      ;  
	setSimonCollusion_02_Byte1432: 
		STA.W $1432                          ;80B0D6|8D3214  |811432;  
        LDA.B $02     ;80B0D9|A502    |000002;  
        CLC                                  ;80B0DB|18      |      ;  
        ADC.W #$0008                         ;80B0DC|690800  |      ;  
        STA.B $02     ;80B0DF|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B0E1|2286CF80|80CF86;  
        STA.W $1410                          ;80B0E5|8D1014  |811410;  
        LDA.B $02     ;80B0E8|A502    |000002;  
        CLC                                  ;80B0EA|18      |      ;  
        ADC.W #$0008                         ;80B0EB|690800  |      ;  
        STA.B $02     ;80B0EE|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B0F0|2286CF80|80CF86;  
        STA.W $1412                          ;80B0F4|8D1214  |811412;  
        LDA.B $02     ;80B0F7|A502    |000002;  
        CLC                                  ;80B0F9|18      |      ;  
        ADC.W #$0008                         ;80B0FA|690800  |      ;  
        STA.B $02     ;80B0FD|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B0FF|2286CF80|80CF86;  
        CMP.W #$0006                         ;80B103|C90600  |      ;  
        BNE CODE_80B10B                      ;80B106|D003    |80B10B;  
        INC.W !skipeHitFlag                          ;80B108|EE841F  |811F84;  
                                                            ;      |        |      ;  
    CODE_80B10B: 
		STA.W $1414                          ;80B10B|8D1414  |811414;  
        LDA.B $02     ;80B10E|A502    |000002;  
        CLC                                  ;80B110|18      |      ;  
        ADC.W #$0008                         ;80B111|690800  |      ;  
        STA.B $02     ;80B114|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B116|2286CF80|80CF86;  
        CMP.W #$0006                         ;80B11A|C90600  |      ;  
        BNE CODE_80B122                      ;80B11D|D003    |80B122;  
        INC.W !skipeHitFlag                          ;80B11F|EE841F  |811F84;  
                                                            ;      |        |      ;  
    CODE_80B122: 
		STA.W $1416                          ;80B122|8D1614  |811416;  
        LDA.B $02     ;80B125|A502    |000002;  
        CLC                                  ;80B127|18      |      ;  
        ADC.W #$0008                         ;80B128|690800  |      ;  
        STA.B $02     ;80B12B|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B12D|2286CF80|80CF86;  
        CMP.W #$0006                         ;80B131|C90600  |      ;  
        BNE CODE_80B139                      ;80B134|D003    |80B139;  
        INC.W !skipeHitFlag                          ;80B136|EE841F  |811F84;  
                                                            ;      |        |      ;  
    CODE_80B139: 
		STA.W $1418                          ;80B139|8D1814  |811418;  
        LDA.B $02     ;80B13C|A502    |000002;  
        CLC                                  ;80B13E|18      |      ;  
        ADC.W #$0008                         ;80B13F|690800  |      ;  
        STA.B $02     ;80B142|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B144|2286CF80|80CF86;  
        CMP.W #$0006                         ;80B148|C90600  |      ;  
        BNE CODE_80B150                      ;80B14B|D003    |80B150;  
        INC.W !skipeHitFlag                          ;80B14D|EE841F  |811F84;  
                                                            ;      |        |      ;  
    CODE_80B150: 
		STA.W $141A                          ;80B150|8D1A14  |81141A;  
        LDA.B $02     ;80B153|A502    |000002;  
        CLC                                  ;80B155|18      |      ;  
        ADC.W #$0008                         ;80B156|690800  |      ;  
        STA.B $02     ;80B159|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B15B|2286CF80|80CF86;  
        CMP.W #$0006                         ;80B15F|C90600  |      ;  
        BNE CODE_80B167                      ;80B162|D003    |80B167;  
        INC.W !skipeHitFlag                          ;80B164|EE841F  |811F84;  
                                                            ;      |        |      ;  
    CODE_80B167: 
		STA.W $141C                          ;80B167|8D1C14  |81141C;  
        LDA.B $02     ;80B16A|A502    |000002;  
        CLC                                  ;80B16C|18      |      ;  
        ADC.W #$0008                         ;80B16D|690800  |      ;  
        STA.B $02     ;80B170|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B172|2286CF80|80CF86;  
        STA.W $141E                          ;80B176|8D1E14  |81141E;  
        LDA.W RAM_81_simonSlot_Xpos          ;80B179|AD4A05  |81054A;  
        STA.B $00;80B17C|8500    |000000;  
        LDA.W $1F9C                          ;80B17E|AD9C1F  |811F9C;  
        STA.B $02     ;80B181|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B183|2286CF80|80CF86;  
        STA.W $1434                          ;80B187|8D3414  |811434;  
        LDA.B $02     ;80B18A|A502    |000002;  
        CLC                                  ;80B18C|18      |      ;  
        ADC.W #$0008                         ;80B18D|690800  |      ;  
        STA.B $02     ;80B190|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B192|2286CF80|80CF86;  
        STA.W $1420                          ;80B196|8D2014  |811420;  
        LDA.B $02     ;80B199|A502    |000002;  
        CLC                                  ;80B19B|18      |      ;  
        ADC.W #$0008                         ;80B19C|690800  |      ;  
        STA.B $02     ;80B19F|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B1A1|2286CF80|80CF86;  
        STA.W $1422                          ;80B1A5|8D2214  |811422;  
        LDA.B $02     ;80B1A8|A502    |000002;  
        CLC                                  ;80B1AA|18      |      ;  
        ADC.W #$0008                         ;80B1AB|690800  |      ;  
        STA.B $02     ;80B1AE|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B1B0|2286CF80|80CF86;  
        CMP.W #$0006                         ;80B1B4|C90600  |      ;  
        BNE CODE_80B1BC                      ;80B1B7|D003    |80B1BC;  
        INC.W !skipeHitFlag                          ;80B1B9|EE841F  |811F84;  
                                                            ;      |        |      ;  
    CODE_80B1BC: 
		STA.W $1424                          ;80B1BC|8D2414  |811424;  
        LDA.B $02     ;80B1BF|A502    |000002;  
        CLC                                  ;80B1C1|18      |      ;  
        ADC.W #$0018                         ;80B1C2|691800  |      ;  
        STA.B $02     ;80B1C5|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B1C7|2286CF80|80CF86;  
        STA.W $142A                          ;80B1CB|8D2A14  |81142A;  
        LDA.B $02     ;80B1CE|A502    |000002;  
        CLC                                  ;80B1D0|18      |      ;  
        ADC.W #$0008                         ;80B1D1|690800  |      ;  
        STA.B $02     ;80B1D4|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B1D6|2286CF80|80CF86;  
        CMP.W #$0006                         ;80B1DA|C90600  |      ;  
        BNE CODE_80B1E2                      ;80B1DD|D003    |80B1E2;  
        INC.W !skipeHitFlag                          ;80B1DF|EE841F  |811F84;  
                                                            ;      |        |      ;  
    CODE_80B1E2: 
		STA.W $142C                          ;80B1E2|8D2C14  |81142C;  
        LDA.B $02     ;80B1E5|A502    |000002;  
        CLC                                  ;80B1E7|18      |      ;  
        ADC.W #$0008                         ;80B1E8|690800  |      ;  
        STA.B $02     ;80B1EB|8502    |000002;  
        JSL.L readCollusionTable7e4000       ;80B1ED|2286CF80|80CF86;  
        STA.W $142E                          ;80B1F1|8D2E14  |81142E;  
        LDA.W $1F98                          ;80B1F4|AD981F  |811F98;  
        STA.B $02     ;80B1F7|8502    |000002;  
        LDA.W RAM_81_simonSlot_Xpos          ;80B1F9|AD4A05  |81054A;  
        SEC                                  ;80B1FC|38      |      ;  
        SBC.W #$0008                         ;80B1FD|E90800  |      ;  
        STA.B $00;80B200|8500    |000000;  
        JSL.L readCollusionTable7e4000       ;80B202|2286CF80|80CF86;  
        STA.W $1426                          ;80B206|8D2614  |811426;  
        LDA.W RAM_81_simonSlot_Xpos          ;80B209|AD4A05  |81054A;  
        CLC                                  ;80B20C|18      |      ;  
        ADC.W #$0008                         ;80B20D|690800  |      ;  
        STA.B $00;80B210|8500    |000000;  
        JSL.L readCollusionTable7e4000       ;80B212|2286CF80|80CF86;  
        STA.W $1428                          ;80B216|8D2814  |811428;  
        RTL                                  ;80B219|6B      |      ;  

pullPC
	getSpiked:
		stz.w  !skipeHitFlag
		lda $bc				; skip invonrable
		bne ++ 		
		lda #$000c
		sta $552
	
		ldy #$ffff			; boost in oposit direction you hold dpad 
		lda $20
		bit #$0100
		beq +
		ldy #$0000
	+	sty $546
		
		lda #$0020			; invis timer 
		sta $bc 
		
		lda RAM_simonStat_Health_HUD
		sec 
		sbc #$0005			; damage 
		bpl +
		lda #$0000
	+	sta RAM_simonStat_Health_HUD	
		lda #$0096
		jsl lunchSFXfromAccum
	++	rtl 
pushPC	
endif


{ ; ----------------- timer remove --------------------------------
org $828000	
	timerOutofBoundCheckScrolling:	
		LDA $78                  
		AND #$003F  	;check frame counter to run             
		BNE +              		
	if !removeTimer == 1
		bra +
		nop
		nop
		nop
	elseif !removeTimer == 0
		LDA $13F0      	; skip when timer is zero   
		BEQ +              
	endif		
		SED                      
		SEC                      
		SBC #$0001               
		STA $13F0                
		CLD                      
		CMP #$0031               
		BCS +              
		LDA #$004F    	; SoundID when time runs out.            
		JSL $8085E3              
		
		LDA $13F0  		; timer               
		BNE +              
		LDA #$000C 		; knockback state              
		STA $0552                
		STZ $13F4                
	-   RTL                      
	+ 	LDA $B6 		; $828030  	               
		BNE -              
		LDX $13D0      	; scroll values          
		LDA $054E                
		BMI -              
		SEC                      
		SBC $18,X                
		CMP #$00D8               
		BMI -              
}

if !removeTimer == 1	; $808241 dynamic update Hud
org $80c756
		stz $0000		; make it appear as 000
		nop
		nop
org $80da7d
		stz $13f0		; store 00 to timer will make countdown faster without modding other values. Removing timer data routine would be better.. 
		nop
		nop
org $82ba8a
		padbyte $ea		; remove check on stairs if timer is 000 to not trigger transition
		pad $82ba8f
endif

; ----------------- deathCounter -------------------------------
if !deathCounter == 1
org $82809d
		sed
		inc $7c
		cld
		padbyte $ea
		pad $8280a7

org $8094da
		lda #$0001		;Make life counter start out with 00 lifes
org $8cfd9a
		lda #$0001

org $8095c7			;Continue?
endif



; ----------------- make use of empty GFX provided with SC4ed extension -------------------------------
if !removeGFXreuse == 1
org $868934			;Terminate second loads lvl 2
	db $ff,$ff
org $68967			;Terminate second loads lvl 9 Swamp
	db $ff,$ff
org $6897a			;Terminate second loads lvl a River	also removes 2bb gfx.. 
	db $ff,$ff	
org $689ae			;Terminate second loads lvl e Catacomb
	db $ff,$ff	
org $689bc			;Terminate second loads lvl 12 Puwexil 
	db $ff,$ff	
org $689ef			;Terminate second loads lvl 18 Amazone
	db $ff,$ff	
org $68a02			;Terminate second loads lvl 19 Amazone
	db $ff,$ff		
org $68a15			;Terminate second loads lvl 1a Castle
	db $ff,$ff
org $68a31			;Terminate second loads lvl 1c Castle Interior
	db $ff,$ff	
org $68a3f			;Terminate second loads lvl 1f Castle DanceRoom
	db $ff,$ff	
org $68a77			;Terminate second loads lvl 2c Stage 8 part 2
	db $ff,$ff		
endif


if !hotFixWhipCancle == 1 
; -------- whipCancleOnRingFix
org $80DB1B
	jml whipCancleRingFix 
;    BEQ CODE_80DB22                      ;80DB1B|F005    |80DB22;  
;    BMI CODE_80DB22                      ;80DB1D|3003    |80DB22;  
;    JMP.W CODE_80DC78                    ;80DB1F|4C78DC  |80DC78;  
pullPC
	whipCancleRingFix:
		BEQ +                     
		BMI +                     
		lda RAM_X_event_slot_ID,x
		cmp #$0003					; add a exeption to always check rings 
		beq +					
		cmp #$000e					; exeptions for Candles 
		beq +
		jml $80DC78                   
+	jml $80DB22
pushPC 
endif


 

	
	
	
	
	
;entrances 278000 ROM 138000

;0A03`	State0 DeathEntrance
;6E00   Xpos
;B600   ypos
;0200   cam0Xpos
;0800   cam0Ypos
;8000   cam1Xpos
;0400   cam1ypos
;0100   State1
;0000   EntranceNumber
;0500	BorderLeft
;0002	BorderRight
;0600	BorderTop
;0700	BorderBottom
;6666	ScrollSpeedXDirection
;0080	ScrollSpeedYDirection
;B2C3	ScrollBehavierPointer? 


;58C3	;lvl 0 	type 6 
;76C3    ;lvl 1	type 0
;94C3    ;lvl 2	(TwoScreensLong)
;94C3    ;lvl 3	(TwoScreensLongIntersected)
;94C3    ;lvl 4
;B2C3    ;lvl 5
;B2C3    ;lvl 6
;B2C3    ;lvl 7
;D0C3    ;lvl 8
;EEC3    ;lvl 9
;0CC4    ;lvl a
;0CC4    ;lvl b
;2AC4    ;lvl c
;48C4    ;lvl d
;66C4    ;lvl e
;66C4    ;lvl f
;66C4    ;lvl 10
;66C4    ;lvl 11
;84C4    ;lvl 12
;84C4    ;lvl 13
;84C4    ;lvl 14
;A2C4    ;lvl 15
;C0C4    ;lvl 16
;DEC4    ;lvl 17
;FCC4    ;lvl 18
;1AC5    ;lvl 19
;38C5    ;lvl 1a
;38C5    ;lvl 1b
;56C5    ;lvl 1c
;56C5    ;lvl 1d
;56C5    ;lvl 1e
;74C5    ;lvl 1f
;74C5    ;lvl 20
;74C5    ;lvl 21
;74C5    ;lvl 22
;92C5    ;lvl 23
;92C5    ;lvl 24
;92C5    ;lvl 25
;B0C5    ;lvl 26
;B0C5    ;lvl 27
;B0C5    ;lvl 28
;B0C5    ;lvl 29
;CEC5    ;lvl 2a
;CEC5    ;lvl 2b
;ECC5    ;lvl 2c
;ECC5    ;lvl 2d
;0AC6    ;lvl 2e
;0AC6    ;lvl 2f
;0AC6    ;lvl 30
;28C6    ;lvl 31
;28C6    ;lvl 32
;28C6    ;lvl 33
;28C6    ;lvl 34
;28C6    ;lvl 35
;28C6    ;lvl 36
;46C6    ;lvl 37
;46C6    ;lvl 38
;46C6    ;lvl 39
;46C6    ;lvl 3a
;64C6    ;lvl 3b
;82C6    ;lvl 3c
;82C6    ;lvl 3d
;A0C6    ;lvl 3e
;BEC6    ;lvl 3f
;DCC6    ;lvl 41
;FAC6    ;lvl 42
;18C7    ;lvl 43
;18C7    ;lvl 44
	