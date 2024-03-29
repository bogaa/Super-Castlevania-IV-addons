!mapEdit = 0				; experimental features!! 
!titleEdit = 0

{ ; -- enemy Sets and GFX pointers ----------------------------------

org $868B45
	enemyGFXPointerForEachLevel:
        dw enemyGFX0                         ;868B45|        |868C56;
        dw enemyGFX1                         ;868B47|        |868C77;
        dw enemyGFX2                         ;868B49|        |868C8D;
        dw enemyGFX3                         ;868B4B|        |868CAA;
        dw enemyGFX4                         ;868B4D|        |868CD3;
        dw enemyGFX5                         ;868B4F|        |868CF0;
        dw enemyGFX6                         ;868B51|        |868D13;
        dw enemyGFX7                         ;868B53|        |868D3C;
    ; stage 2     
		dw enemyGFX8                         ;868B55|        |868D59;
        dw enemyGFX9                         ;868B57|        |868D82;
        dw enemyGFX10                        ;868B59|        |868DB1;
        dw enemyGFX11                        ;868B5B|        |868DD4;
    ; stage 3        
		dw enemyGFX12                        ;868B5D|        |868DFD;
        dw enemyGFX13                        ;868B5F|        |868E2C;
        dw enemyGFX14                        ;868B61|        |868E5B;
        dw enemyGFX15                        ;868B63|        |868E84;
        dw enemyGFX16                        ;868B65|        |868EAD;
        dw enemyGFX17                        ;868B67|        |868ECA;
    ; stage 4        
		dw enemyGFX18                        ;868B69|        |868EF3;
        dw enemyGFX19                        ;868B6B|        |868F16;
        dw enemyGFX20                        ;868B6D|        |868F33;
        dw enemyGFX21                        ;868B6F|        |868F50;
        dw enemyGFX22                        ;868B71|        |868F61;
        dw enemyGFX23                        ;868B73|        |868F78;
    ; stage 5
        dw enemyGFX24                        ;868B75|        |868F95;
        dw enemyGFX25                        ;868B77|        |868FB8;
    ; stage 6
        dw enemyGFX26                        ;868B79|        |868FCF;
        dw enemyGFX27                        ;868B7B|        |868FEC;
        dw enemyGFX28                        ;868B7D|        |868FFD;
        dw enemyGFX29                        ;868B7F|        |869026;
        dw enemyGFX30                        ;868B81|        |869049; secret 
        dw enemyGFX31                        ;868B83|        |86905A;
        dw enemyGFX32                        ;868B85|        |86906B;
        dw enemyGFX33                        ;868B87|        |869082;
        dw enemyGFX34                        ;868B89|        |869099;
    ; stage 7
        dw enemyGFX35                        ;868B8B|        |8690A4;
        dw enemyGFX36                        ;868B8D|        |8690C1;
        dw enemyGFX37                        ;868B8F|        |8690D8;
        dw enemyGFX38                        ;868B91|        |8690F5;
        dw enemyGFX39                        ;868B93|        |869118;
        dw enemyGFX40                        ;868B95|        |869141;
        dw enemyGFX41                        ;868B97|        |869152;
    ; stage 8
        dw enemyGFX42                        ;868B99|        |86916F;
        dw enemyGFX43                        ;868B9B|        |86919E;
        dw enemyGFX44                        ;868B9D|        |8691CD;
        dw enemyGFX45                        ;868B9F|        |8691F6;

    ; stage 9       
	    dw enemyGFX46                        ;868BA1|        |869219;
        dw enemyGFX47                        ;868BA3|        |869236;
        dw enemyGFX48                        ;868BA5|        |869253;
        dw enemyGFX49                        ;868BA7|        |86927C;
        dw enemyGFX50                        ;868BA9|        |869299;
        dw enemyGFX51                        ;868BAB|        |8692B6;
        dw enemyGFX52                        ;868BAD|        |8692D9;
        dw enemyGFX53                        ;868BAF|        |8692F6;
        dw enemyGFX54                        ;868BB1|        |869301; secret 
    ; stage A 
        dw enemyGFX55                        ;868BB3|        |869312;
        dw enemyGFX56                        ;868BB5|        |869323;
        dw enemyGFX57                        ;868BB7|        |869346;
        dw enemyGFX58                        ;868BB9|        |869369;
        dw enemyGFX59                        ;868BBB|        |86938C;
    ; stage B 
        dw enemyGFX60                        ;868BBD|        |8693A3;
        dw enemyGFX61                        ;868BBF|        |8693B4;
        dw enemyGFX62                        ;868BC1|        |8693C5;
    ; bossRush        
		dw enemyGFX63                        ;868BC3|        |86FFFF;
        dw enemyGFX63                        ;868BC5|        |86FFFF;
        dw enemyGFX63                        ;868BC7|        |86FFFF;
        dw enemyGFX63                        ;868BC9|        |86FFFF;
        dw enemyGFX63                        ;868BCB|        |86FFFF;

	enemyIDusedToAssignPPUSlotSpacePointer:
        dw enemyIDslotGFX0                   ;868BCD|        |868C73;
        dw enemyIDslotGFX1                   ;868BCF|        |868C8A;
        dw enemyIDslotGFX2                   ;868BD1|        |868CA5;
        dw enemyIDslotGFX3                   ;868BD3|        |868CCC;
        dw enemyIDslotGFX4                   ;868BD5|        |868CEB;
        dw enemyIDslotGFX5                   ;868BD7|        |868D0D;
        dw enemyIDslotGFX6                   ;868BD9|        |868D35;
        dw enemyIDslotGFX7                   ;868BDB|        |868D54;
	; stage 2 
		dw enemyIDslotGFX8                   ;868BDD|        |868D7B;
        dw enemyIDslotGFX9                   ;868BDF|        |868DA9;
        dw enemyIDslotGFX10                  ;868BE1|        |868DCE;
        dw enemyIDslotGFX11                  ;868BE3|        |868DF6;
	; stage 3
        dw enemyIDslotGFX12                  ;868BE5|        |868E24;
        dw enemyIDslotGFX13                  ;868BE7|        |868E53;
        dw enemyIDslotGFX14                  ;868BE9|        |868E7D;
        dw enemyIDslotGFX15                  ;868BEB|        |868EA6;
        dw enemyIDslotGFX16                  ;868BED|        |868EC5;
        dw enemyIDslotGFX17                  ;868BEF|        |868EEC;
    ; stage 4
		dw enemyIDslotGFX18                  ;868BF1|        |868F10;
        dw enemyIDslotGFX19                  ;868BF3|        |868F2E;
        dw enemyIDslotGFX20                  ;868BF5|        |868F4B;
        dw enemyIDslotGFX21                  ;868BF7|        |868F5E;
        dw enemyIDslotGFX22                  ;868BF9|        |868F74;
        dw enemyIDslotGFX23                  ;868BFB|        |868F90;
    ; stage 5 
        dw enemyIDslotGFX24                  ;868BFD|        |868FB2;
        dw enemyIDslotGFX25                  ;868BFF|        |868FCB;
    ; stage 6        
		dw enemyIDslotGFX26                  ;868C01|        |868FE7;
        dw enemyIDslotGFX27                  ;868C03|        |868FFA;
        dw enemyIDslotGFX28                  ;868C05|        |86901F;
        dw enemyIDslotGFX29                  ;868C07|        |869043;
        dw enemyIDslotGFX30                  ;868C09|        |869057;
        dw enemyIDslotGFX31                  ;868C0B|        |869068;
        dw enemyIDslotGFX32                  ;868C0D|        |86907E;
        dw enemyIDslotGFX33                  ;868C0F|        |869095;
        dw enemyIDslotGFX34                  ;868C11|        |8690A2;
    ; stage 7        
		dw enemyIDslotGFX35                  ;868C13|        |8690BC;
        dw enemyIDslotGFX36                  ;868C15|        |8690D4;
        dw enemyIDslotGFX37                  ;868C17|        |8690F0;
        dw enemyIDslotGFX38                  ;868C19|        |869112;
        dw enemyIDslotGFX39                  ;868C1B|        |86913A;
        dw enemyIDslotGFX40                  ;868C1D|        |86914F;
        dw enemyIDslotGFX41                  ;868C1F|        |86916A;
    ; stage 8       
		dw enemyIDslotGFX42                  ;868C21|        |869196;
        dw enemyIDslotGFX43                  ;868C23|        |8691C5;
        dw enemyIDslotGFX44                  ;868C25|        |8691EF;
        dw enemyIDslotGFX45                  ;868C27|        |869213;
        dw enemyIDslotGFX46                  ;868C29|        |869231;
    ; stage 9    
		dw enemyIDslotGFX47                  ;868C2B|        |86924E;
        dw enemyIDslotGFX48                  ;868C2D|        |869275;
        dw enemyIDslotGFX49                  ;868C2F|        |869294;
        dw enemyIDslotGFX50                  ;868C31|        |8692B1;
        dw enemyIDslotGFX51                  ;868C33|        |8692D3;
        dw enemyIDslotGFX52                  ;868C35|        |8692F1;
        dw enemyIDslotGFX53                  ;868C37|        |8692FF;
        dw enemyIDslotGFX54                  ;868C39|        |86930F;
    ; stage A     
		dw enemyIDslotGFX55                  ;868C3B|        |869320;
        dw enemyIDslotGFX56                  ;868C3D|        |869340;
        dw enemyIDslotGFX57                  ;868C3F|        |869363;
        dw enemyIDslotGFX58                  ;868C41|        |869386;
        dw enemyIDslotGFX59                  ;868C43|        |86939F;
    ; stage B    
		dw enemyIDslotGFX60                  ;868C45|        |8693B1;
        dw enemyIDslotGFX61                  ;868C47|        |8693C2;
        dw enemyIDslotGFX62                  ;868C49|        |8693E2;
    ; bossRush     
		dw enemyIDslotGFX63                  ;868C4B|        |868C55;
        dw enemyIDslotGFX63                  ;868C4D|        |868C55;
        dw enemyIDslotGFX63                  ;868C4F|        |868C55;
        dw enemyIDslotGFX63                  ;868C51|        |868C55;
        dw enemyIDslotGFX63                  ;868C53|        |868C55;
                                                            ;      |        |      ;
     enemyIDslotGFX63:
                       db $00                               ;868C55|        |      ;
                                                            ;      |        |      ;
            enemyGFX0:
                       dw $0000,$2000                       ;868C56|        |      ;
                       dl levelGFXStage1_entrance           ;868C5A|        |A8861D;
                       dw $3000                             ;868C5D|        |      ;
                       dl DATAlevel00                       ;868C5F|        |A0FFD0;
                       dw $6A00                             ;868C62|        |      ;
                       dl gfxCrumblinkBlocksRings01         ;868C64|        |A8C67D;
                       dw $6C00                             ;868C67|        |      ;
                       dl gfxSpritePillarEntrance           ;868C69|        |A8CA9D;
                       dw $7000                             ;868C6C|        |      ;
                       dl spriteGFXBridgeChain              ;868C6E|        |A8D23D;
                       dw $FFFF                             ;868C71|        |      ;
                                                            ;      |        |      ;
      enemyIDslotGFX0:
                       db $03,$37,$14,$04                   ;868C73|        |      ;
                                                            ;      |        |      ;
            enemyGFX1:
                       dw $0000,$6A00                       ;868C77|        |      ;
                       dl spriteGFX_bat                     ;868C7B|        |AA979D;
                       dw $6C00                             ;868C7E|        |      ; offset of the PPU slot it goes into
                       dl spriteGFX_skelly01                ;868C80|        |AA9BFD;
                       dw $7E00                             ;868C83|        |      ;
                       dl spriteGFX_dirtFence               ;868C85|        |AAAB7D;
                       dw $FFFF                             ;868C88|        |      ;
                                                            ;      |        |      ;
      enemyIDslotGFX1:
                       db $02,$0C,$12                       ;868C8A|        |      ; first byte tells how many enteries are present followed by the even ID used in the scene. They need to be in order so the slot space can be assigned to the event sprite address
                                                            ;      |        |      ;
            enemyGFX2:
                       dw $0000,$6A00                       ;868C8D|        |      ;
                       dl gfxSpritePillarEntrance           ;868C91|        |A8CA9D;
                       dw $6C00                             ;868C94|        |      ;
                       dl spriteGFX_bat                     ;868C96|        |AA979D;
                       dw $6E00                             ;868C99|        |      ;
                       dl spriteGFX_skelly01                ;868C9B|        |AA9BFD;
                       dw $7400                             ;868C9E|        |      ;
                       dl spriteGFX_bonePillar              ;868CA0|        |ABEE1D;
                       dw $FFFF                             ;868CA3|        |      ;
                                                            ;      |        |      ;
      enemyIDslotGFX2:
                       db $04,$2E,$0C,$12,$0B               ;868CA5|        |      ;
                                                            ;      |        |      ;
            enemyGFX3:
                       dw $0000,$6A00                       ;868CAA|        |      ;
                       dl gfxSpritePillarEntrance           ;868CAE|        |A8CA9D;
                       dw $6C00                             ;868CB1|        |      ;
                       dl spriteGFX_bat                     ;868CB3|        |AA979D;
                       dw $6E00                             ;868CB6|        |      ;
                       dl spriteGFX_skelly01                ;868CB8|        |AA9BFD;
                       dw $7400                             ;868CBB|        |      ;
                       dl gfxCrumblinkBlocksRings01         ;868CBD|        |A8C67D;
                       dw $7600                             ;868CC0|        |      ;
                       dl spriteGFX_bonePillar              ;868CC2|        |ABEE1D;
                       dw $7A00                             ;868CC5|        |      ;
                       dl spriteGFX_clubGuy                 ;868CC7|        |ACF7FD;
                       dw $FFFF                             ;868CCA|        |      ;
                                                            ;      |        |      ;
      enemyIDslotGFX3:
                       db $06,$2E,$0C,$12,$03,$0B,$73       ;868CCC|        |      ;
                                                            ;      |        |      ;
            enemyGFX4:
                       dw $0000,$6A00                       ;868CD3|        |      ;
                       dl gfxSpritePillarEntrance           ;868CD7|        |A8CA9D;
                       dw $6C00                             ;868CDA|        |      ;
                       dl spriteGFX_bat                     ;868CDC|        |AA979D;
                       dw $6E00                             ;868CDF|        |      ;
                       dl spriteGFX_skelly01                ;868CE1|        |AA9BFD;
                       dw $7400                             ;868CE4|        |      ;
                       dl spriteGFX_bonePillar              ;868CE6|        |ABEE1D;
                       dw $FFFF                             ;868CE9|        |      ;
                                                            ;      |        |      ;
      enemyIDslotGFX4:
                       db $04,$2E,$0C,$12,$0B               ;868CEB|        |      ;
                                                            ;      |        |      ;
            enemyGFX5:
                       dw $0000,$6A00                       ;868CF0|        |      ;
                       dl gfxSpritePillarEntrance           ;868CF4|        |A8CA9D;
                       dw $6C00                             ;868CF7|        |      ;
                       dl spriteGFX_snakesSworm             ;868CF9|        |AEA1DD;
                       dw $6E00                             ;868CFC|        |      ;
                       dl spriteGFX_ghost                   ;868CFE|        |AEA57D;
                       dw $7000                             ;868D01|        |      ;
                       dl spriteGFX_horseHead               ;868D03|        |AEA9DD;
                       dw $7200                             ;868D06|        |      ;
                       dl spriteGFX_dog                     ;868D08|        |AEAE3D;
                       dw $FFFF                             ;868D0B|        |      ;
                                                            ;      |        |      ;
      enemyIDslotGFX5:
                       db $05,$2E,$32,$08,$6F,$0A           ;868D0D|        |      ;
                                                            ;      |        |      ;
            enemyGFX6:
                       dw $0000,$6A00                       ;868D13|        |      ;
                       dl gfxSpritePillarEntrance           ;868D17|        |A8CA9D;
                       dw $6C00                             ;868D1A|        |      ;
                       dl spriteGFX_snakesSworm             ;868D1C|        |AEA1DD;
                       dw $6E00                             ;868D1F|        |      ;
                       dl spriteGFX_ghost                   ;868D21|        |AEA57D;
                       dw $7000                             ;868D24|        |      ;
                       dl spriteGFX_turningPlatform         ;868D26|        |AFBC1D;
                       dw $7200                             ;868D29|        |      ;
                       dl spriteGFX_medusaHead              ;868D2B|        |AFC03D;
                       dw $7400                             ;868D2E|        |      ;
                       dl spriteGFX_clubGuy                 ;868D30|        |ACF7FD;
                       dw $FFFF                             ;868D33|        |      ;
                                                            ;      |        |      ;
      enemyIDslotGFX6:
                       db $06,$2E,$32,$08,$3B,$07,$73       ;868D35|        |      ;
                                                            ;      |        |      ;
            enemyGFX7:
                       dw $0000,$6A00                       ;868D3C|        |      ;
                       dl gfxSpritePillarEntrance           ;868D40|        |A8CA9D;
                       dw $6C00                             ;868D43|        |      ;
                       dl spriteGFX_snakesSworm             ;868D45|        |AEA1DD;
                       dw $6E00                             ;868D48|        |      ;
                       dl spriteGFX_ghost                   ;868D4A|        |AEA57D;
                       dw $7000                             ;868D4D|        |      ;
                       dl spriteGFX_turningPlatform         ;868D4F|        |AFBC1D;
                       dw $FFFF                             ;868D52|        |      ;
                                                            ;      |        |      ;
      enemyIDslotGFX7:
                       db $04,$2E,$32,$08,$3B               ;868D54|        |      ;
                                                            ;      |        |      ;
            enemyGFX8:
                       dw $0000,$6A00                       ;868D59|        |      ;
                       dl spriteGFX_grabingHand             ;868D5D|        |B0C5BD;
                       dw $6E00                             ;868D60|        |      ;
                       dl spriteGFX_leaveMonster            ;868D62|        |B0CE1D;
                       dw $7200                             ;868D65|        |      ;
                       dl spriteGFX_hedgehog                ;868D67|        |B0D67D;
                       dw $7400                             ;868D6A|        |      ;
                       dl spriteGFX_bird                    ;868D6C|        |B0DADD;
                       dw $7800                             ;868D6F|        |      ;
                       dl spriteGFX_graveDigger             ;868D71|        |B0E23D;
                       dw $7C00                             ;868D74|        |      ;
                       dl spriteGFX_spider                  ;868D76|        |B0EA1D;
                       dw $FFFF                             ;868D79|        |      ;
                                                            ;      |        |      ;
      enemyIDslotGFX8:
                       db $06,$66,$3C,$09,$10,$70,$43       ;868D7B|        |      ;
                                                            ;      |        |      ;
            enemyGFX9:
                       dw $0000,$6A00                       ;868D82|        |      ;
                       dl spriteGFX_floatingPlatformSwamp   ;868D86|        |B2B05D;
                       dw $6C00                             ;868D89|        |      ;
                       dl spriteGFX_bird                    ;868D8B|        |B0DADD;
                       dw $7000                             ;868D8E|        |      ;
                       dl spriteGFX_frog                    ;868D90|        |B2B31D;
                       dw $7200                             ;868D93|        |      ;
                       dl spriteGFX_hedgehog                ;868D95|        |B0D67D;
                       dw $7400                             ;868D98|        |      ;
                       dl spriteGFX_bat                     ;868D9A|        |AA979D;
                       dw $7600                             ;868D9D|        |      ;
                       dl spriteGFX_skelly01                ;868D9F|        |AA9BFD;
                       dw $7C00                             ;868DA2|        |      ;
                       dl spriteGFX_plant                   ;868DA4|        |B2B6BD;
                       dw $FFFF                             ;868DA7|        |      ;
                                                            ;      |        |      ;
      enemyIDslotGFX9:
                       db $07,$17,$10,$30,$09,$0C,$12,$35   ;868DA9|        |      ;
                                                            ;      |        |      ;
           enemyGFX10:
                       dw $0000,$6A00                       ;868DB1|        |      ;
                       dl spriteGFX_gargoyle                ;868DB5|        |B4817D;
                       dw $7000                             ;868DB8|        |      ;
                       dl spriteGFX_frog                    ;868DBA|        |B2B31D;
                       dw $7200                             ;868DBD|        |      ;
                       dl spriteGFX_skelly01                ;868DBF|        |AA9BFD;
                       dw $7800                             ;868DC2|        |      ;
                       dl spriteGFX_stealingHand            ;868DC4|        |B48DBD;
                       dw $7A00                             ;868DC7|        |      ;
                       dl gfxCrumblinkBlocksRings01         ;868DC9|        |A8C67D;
                       dw $FFFF                             ;868DCC|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX10:
                       db $05,$3E,$30,$12,$6E,$03           ;868DCE|        |      ;
                                                            ;      |        |      ;
           enemyGFX11:
                       dw $0000,$6A00                       ;868DD4|        |      ;
                       dl spriteGFX_gargoyle                ;868DD8|        |B4817D;
                       dw $7000                             ;868DDB|        |      ;
                       dl spriteGFX_bat                     ;868DDD|        |AA979D;
                       dw $7200                             ;868DE0|        |      ;
                       dl spriteGFX_frog                    ;868DE2|        |B2B31D;
                       dw $7400                             ;868DE5|        |      ;
                       dl spriteGFX_bonePillar              ;868DE7|        |ABEE1D;
                       dw $7800                             ;868DEA|        |      ;
                       dl spriteGFX_stealingHand            ;868DEC|        |B48DBD;
                       dw $7A00                             ;868DEF|        |      ;
                       dl gfxCrumblinkBlocksRings01         ;868DF1|        |A8C67D;
                       dw $FFFF                             ;868DF4|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX11:
                       db $06,$3E,$0C,$30,$0B,$6E,$03       ;868DF6|        |      ;
                                                            ;      |        |      ;
           enemyGFX12:
                       dw $0000,$6A00                       ;868DFD|        |      ;
                       dl spriteGFX_stalactite              ;868E01|        |B6971D;
                       dw $6C00                             ;868E04|        |      ;
                       dl spriteGFX_waterDrip               ;868E06|        |B69B7D;
                       dw $6E00                             ;868E09|        |      ;
                       dl spriteGFX_mudman                  ;868E0B|        |B69F9D;
                       dw $7400                             ;868E0E|        |      ;
                       dl spriteGFX_bat                     ;868E10|        |AA979D;
                       dw $7600                             ;868E13|        |      ;
                       dl spriteGFX_unusedBat               ;868E15|        |B6ABFD;
                       dw $7800                             ;868E18|        |      ;
                       dl spriteGFX_bonePillar              ;868E1A|        |ABEE1D;
                       dw $7C00                             ;868E1D|        |      ;
                       dl spriteGFX_ghost                   ;868E1F|        |AEA57D;
                       dw $FFFF                             ;868E22|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX12:
                       db $08,$44,$3F,$34,$0C,$4B,$0B,$08   ;868E24|        |      ;
                                                            ;      |        |      ;
           enemyGFX13:
                       dw $0000,$6A00                       ;868E2C|        |      ;
                       dl gfxCrumblinkBlocksRings01         ;868E30|        |A8C67D;
                       dw $6C00                             ;868E33|        |      ;
                       dl spriteGFX_woodenSinkingBridg      ;868E35|        |B7F7DD;
                       dw $6E00                             ;868E38|        |      ;
                       dl spriteGFX_bat                     ;868E3A|        |AA979D;
                       dw $7000                             ;868E3D|        |      ;
                       dl spriteGFX_bonePillar              ;868E3F|        |ABEE1D;
                       dw $7400                             ;868E42|        |      ;
                       dl spriteGFX_turningPlatform         ;868E44|        |AFBC1D;
                       dw $7600                             ;868E47|        |      ;
                       dl spriteGFX_fuzzyBall               ;868E49|        |B7FABD;
                       dw $7800                             ;868E4C|        |      ;
                       dl spriteGFX_plant                   ;868E4E|        |B2B6BD;
                       dw $FFFF                             ;868E51|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX13:
                       db $07,$03,$3A,$0C,$0B,$67,$6D,$35   ;868E53|        |      ;
                                                            ;      |        |      ;
           enemyGFX14:
                       dw $0000,$6A00                       ;868E5B|        |      ;
                       dl gfxCrumblinkBlocksRings01         ;868E5F|        |A8C67D;
                       dw $6C00                             ;868E62|        |      ;
                       dl spriteGFX_fallingPillar           ;868E64|        |B9BF9D;
                       dw $6E00                             ;868E67|        |      ;
                       dl spriteGFX_fishman                 ;868E69|        |B9C2BD;
                       dw $7400                             ;868E6C|        |      ;
                       dl spriteGFX_fuzzyBall               ;868E6E|        |B7FABD;
                       dw $7600                             ;868E71|        |      ;
                       dl spriteGFX_boneDragon01            ;868E73|        |B9CF1D;
                       dw $7A00                             ;868E76|        |      ;
                       dl spriteGFX_eye                     ;868E78|        |B9D73D;
                       dw $FFFF                             ;868E7B|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX14:
                       db $06,$03,$39,$4C,$6D,$5D,$72       ;868E7D|        |      ;
                                                            ;      |        |      ;
           enemyGFX15:
                       dw $0000,$6A00                       ;868E84|        |      ;
                       dl gfxCrumblinkBlocksRings01         ;868E88|        |A8C67D;
                       dw $6C00                             ;868E8B|        |      ;
                       dl spriteGFX_boneDragon01            ;868E8D|        |B9CF1D;
                       dw $7000                             ;868E90|        |      ;
                       dl spriteGFX_fishman                 ;868E92|        |B9C2BD;
                       dw $7600                             ;868E95|        |      ;
                       dl spriteGFX_fuzzyBall               ;868E97|        |B7FABD;
                       dw $7800                             ;868E9A|        |      ;
                       dl spriteGFX_eye                     ;868E9C|        |B9D73D;
                       dw $7A00                             ;868E9F|        |      ;
                       dl spriteGFX_plant                   ;868EA1|        |B2B6BD;
                       dw $FFFF                             ;868EA4|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX15:
                       db $06,$03,$5D,$4C,$6D,$72,$35       ;868EA6|        |      ;
                                                            ;      |        |      ;
           enemyGFX16:
                       dw $0000,$6A00                       ;868EAD|        |      ;
                       dl gfxCrumblinkBlocksRings01         ;868EB1|        |A8C67D;
                       dw $6C00                             ;868EB4|        |      ;
                       dl spriteGFX_bonePillar              ;868EB6|        |ABEE1D;
                       dw $7000                             ;868EB9|        |      ;
                       dl spriteGFX_skelly01                ;868EBB|        |AA9BFD;
                       dw $7600                             ;868EBE|        |      ;
                       dl spriteGFX_clubGuy                 ;868EC0|        |ACF7FD;
                       dw $FFFF                             ;868EC3|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX16:
                       db $04,$03,$0B,$12,$73               ;868EC5|        |      ;
                                                            ;      |        |      ;
           enemyGFX17:
                       dw $0000,$6A00                       ;868ECA|        |      ;
                       dl gfxCrumblinkBlocksRings01         ;868ECE|        |A8C67D;
                       dw $6C00                             ;868ED1|        |      ;
                       dl spriteGFX_fuzzyBall               ;868ED3|        |B7FABD;
                       dw $6E00                             ;868ED6|        |      ;
                       dl spriteGFX_bird                    ;868ED8|        |B0DADD;
                       dw $7200                             ;868EDB|        |      ;
                       dl spriteGFX_boneDragon01            ;868EDD|        |B9CF1D;
                       dw $7600                             ;868EE0|        |      ;
                       dl spriteGFX_bonePillar              ;868EE2|        |ABEE1D;
                       dw $7A00                             ;868EE5|        |      ;
                       dl spriteGFX_swordSkelly             ;868EE7|        |BBDE9D;
                       dw $FFFF                             ;868EEA|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX17:
                       db $07,$03,$6D,$10,$5D,$0B,$31       ;868EEC|        |      ;
                                                            ;      |        |      ;
           enemyGFX18:
                       dw $0000,$6A00                       ;868EF3|        |      ;
                       dl spriteGFX_turningPlaform02        ;868EF7|        |BCEC1D;
                       dw $6C00                             ;868EFA|        |      ;
                       dl spriteGFX_floatingPlatformSwamp   ;868EFC|        |B2B05D;
                       dw $6E00                             ;868EFF|        |      ;
                       dl spriteGFX_clubGuy                 ;868F01|        |ACF7FD;
                       dw $7200                             ;868F04|        |      ;
                       dl spriteGFX_wallCorpse              ;868F06|        |BCF05D;
                       dw $7800                             ;868F09|        |      ;
                       dl spriteGFX_swordSkelly             ;868F0B|        |BBDE9D;
                       dw $FFFF                             ;868F0E|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX18:
                       db $05,$3B,$17,$73,$2C,$31           ;868F10|        |      ;
                                                            ;      |        |      ;
           enemyGFX19:
                       dw $0000,$6A00                       ;868F16|        |      ;
                       dl spriteGFX_turningPlaform02        ;868F1A|        |BCEC1D;
                       dw $6C00                             ;868F1D|        |      ;
                       dl spriteGFX_skelly01                ;868F1F|        |AA9BFD;
                       dw $7400                             ;868F22|        |      ;
                       dl spriteGFX_wallCorpse              ;868F24|        |BCF05D;
                       dw $7A00                             ;868F27|        |      ;
                       dl spriteGFX_highFiveSkelly          ;868F29|        |BDFE3D;
                       dw $FFFF                             ;868F2C|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX19:
                       db $04,$3B,$56,$2C,$36               ;868F2E|        |      ;
                                                            ;      |        |      ;
           enemyGFX20:
                       dw $0000,$6A00                       ;868F33|        |      ;
                       dl spriteGFX_turningPlaform02        ;868F37|        |BCEC1D;
                       dw $6C00                             ;868F3A|        |      ;
                       dl spriteGFX_medusaHead              ;868F3C|        |AFC03D;
                       dw $6E00                             ;868F3F|        |      ;
                       dl spriteGFX_swordSkelly             ;868F41|        |BBDE9D;
                       dw $7400                             ;868F44|        |      ;
                       dl spriteGFX_bat                     ;868F46|        |AA979D;
                       dw $FFFF                             ;868F49|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX20:
                       db $04,$3B,$07,$31,$0C               ;868F4B|        |      ;
                                                            ;      |        |      ;
           enemyGFX21:
                       dw $0000,$6A00                       ;868F50|        |      ;
                       dl gfxCrumblinkBlocksRings01         ;868F54|        |A8C67D;
                       dw $6C00                             ;868F57|        |      ;
                       dl spriteGFX_medusaHead              ;868F59|        |AFC03D;
                       dw $FFFF                             ;868F5C|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX21:
                       db $02,$03,$07                       ;868F5E|        |      ;
                                                            ;      |        |      ;
           enemyGFX22:
                       dw $0000,$6A00                       ;868F61|        |      ;
                       dl spriteGFX_platformTunnel          ;868F65|        |BFD9DD;
                       dw $6C00                             ;868F68|        |      ;
                       dl spriteGFX_skelly01                ;868F6A|        |AA9BFD;
                       dw $7400                             ;868F6D|        |      ;
                       dl spriteGFX_medusaHead              ;868F6F|        |AFC03D;
                       dw $FFFF                             ;868F72|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX22:
                       db $03,$06,$56,$07                   ;868F74|        |      ;
                                                            ;      |        |      ;
           enemyGFX23:
                       dw $0000,$6A00                       ;868F78|        |      ;
                       dl spriteGFX_crusherWithFloatingBlock;868F7C|        |C0DE1D;
                       dw $6C00                             ;868F7F|        |      ;
                       dl spriteGFX_bat                     ;868F81|        |AA979D;
                       dw $6E00                             ;868F84|        |      ;
                       dl spriteGFX_bonePillar              ;868F86|        |ABEE1D;
                       dw $7200                             ;868F89|        |      ;
                       dl spriteGFX_boneDragon01            ;868F8B|        |B9CF1D;
                       dw $FFFF                             ;868F8E|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX23:
                       db $04,$16,$0C,$0B,$5D               ;868F90|        |      ;
                                                            ;      |        |      ;
           enemyGFX24:
                       dw $0000,$6A00                       ;868F95|        |      ;
                       dl spriteGFX_harpies                 ;868F99|        |C2A6FD;
                       dw $7200                             ;868F9C|        |      ;
                       dl spriteGFX_gargoyle                ;868F9E|        |B4817D;
                       dw $7800                             ;868FA1|        |      ;
                       dl spriteGFX_bonePillar              ;868FA3|        |ABEE1D;
                       dw $7C00                             ;868FA6|        |      ;
                       dl spriteGFX_stealingHand            ;868FA8|        |B48DBD;
                       dw $7E00                             ;868FAB|        |      ;
                       dl spriteGFX_frog                    ;868FAD|        |B2B31D;
                       dw $FFFF                             ;868FB0|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX24:
                       db $05,$57,$3E,$0B,$6E,$30           ;868FB2|        |      ;
                                                            ;      |        |      ;
           enemyGFX25:
                       dw $0000,$6A00                       ;868FB8|        |      ;
                       dl spriteGFX_skelly01                ;868FBC|        |AA9BFD;
                       dw $7200                             ;868FBF|        |      ;
                       dl spriteGFX_bat                     ;868FC1|        |AA979D;
                       dw $7400                             ;868FC4|        |      ;
                       dl spriteGFX_swordSkelly             ;868FC6|        |BBDE9D;
                       dw $FFFF                             ;868FC9|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX25:
                       db $03,$56,$0C,$31                   ;868FCB|        |      ;
                                                            ;      |        |      ;
           enemyGFX26:
                       dw $0000,$6A00                       ;868FCF|        |      ;
                       dl spriteGFX_castleGhostZombie       ;868FD3|        |C5BADD;
                       dw $6E00                             ;868FD6|        |      ;
                       dl spriteGFX_axeKnight               ;868FD8|        |C5C27D;
                       dw $7400                             ;868FDB|        |      ;
                       dl spriteGFX_dog                     ;868FDD|        |AEAE3D;
                       dw $7A00                             ;868FE0|        |      ;
                       dl spriteGFX_bat                     ;868FE2|        |AA979D;
                       dw $FFFF                             ;868FE5|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX26:
                       db $04,$54,$52,$0A,$4E               ;868FE7|        |      ;
                                                            ;      |        |      ;
           enemyGFX27:
                       dw $0000,$6A00                       ;868FEC|        |      ;
                       dl spriteGFX_platformAndStairs       ;868FF0|        |C6EE5D;
                       dw $6C00                             ;868FF3|        |      ;
                       dl spriteGFX_crumblingBlockRings02   ;868FF5|        |C6F0FD;
                       dw $FFFF                             ;868FF8|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX27:
                       db $02,$06,$03                       ;868FFA|        |      ;
                                                            ;      |        |      ;
           enemyGFX28:
                       dw $0000,$6A00                       ;868FFD|        |      ;
                       dl spriteGFX_turningPlatformWithSpikes;869001|        |C7F63D;
                       dw $6C00                             ;869004|        |      ;
                       dl spriteGFX_ghostWoman              ;869006|        |C7FA1D;
                       dw $7200                             ;869009|        |      ;
                       dl spriteGFX_ghostMan                ;86900B|        |C885BD;
                       dw $7400                             ;86900E|        |      ;
                       dl spriteGFX_fallingChandelire       ;869010|        |C88A1D;
                       dw $7600                             ;869013|        |      ;
                       dl spriteGFX_axeKnight               ;869015|        |C5C27D;
                       dw $7C00                             ;869018|        |      ;
                       dl spriteGFX_bat                     ;86901A|        |AA979D;
                       dw $FFFF                             ;86901D|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX28:
                       db $06,$4A,$5A,$5B,$4D,$52,$0C       ;86901F|        |      ;
                                                            ;      |        |      ;
           enemyGFX29:
                       dw $0000,$6A00                       ;869026|        |      ;
                       dl spriteGFX_crumblingBlockRings02   ;86902A|        |C6F0FD;
                       dw $6C00                             ;86902D|        |      ;
                       dl spriteGFX_skelly01                ;86902F|        |AA9BFD;
                       dw $7200                             ;869032|        |      ;
                       dl spriteGFX_coffin                  ;869034|        |C98FBD;
                       dw $7A00                             ;869037|        |      ;
                       dl spriteGFX_bat                     ;869039|        |AA979D;
                       dw $7C00                             ;86903C|        |      ;
                       dl spriteGFX_stealingHand            ;86903E|        |B48DBD;
                       dw $FFFF                             ;869041|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX29:
                       db $05,$37,$12,$33,$0C,$6E           ;869043|        |      ;
                                                            ;      |        |      ;
           enemyGFX30:
                       dw $0000,$6A00                       ;869049|        |      ;
                       dl spriteGFX_secretMan               ;86904D|        |C9E07D;
                       dw $7000                             ;869050|        |      ;
                       dl spriteGFX_dog                     ;869052|        |AEAE3D;
                       dw $FFFF                             ;869055|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX30:
                       db $02,$0D,$0A                       ;869057|        |      ;
                                                            ;      |        |      ;
           enemyGFX31:
                       dw $0000,$6A00                       ;86905A|        |      ;
                       dl spriteGFX_redSkelly               ;86905E|        |CACD9D;
                       dw $7000                             ;869061|        |      ;
                       dl spriteGFX_skelly01                ;869063|        |AA9BFD;
                       dw $FFFF                             ;869066|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX31:
                       db $02,$69,$56                       ;869068|        |      ;
                                                            ;      |        |      ;
           enemyGFX32:
                       dw $0000,$6A00                       ;86906B|        |      ;
                       dl spriteGFX_ghostHandAlongSwordSkelly;86906F|        |CBDA5D;
                       dw $6C00                             ;869072|        |      ;
                       dl spriteGFX_swordSkelly             ;869074|        |BBDE9D;
                       dw $7200                             ;869077|        |      ;
                       dl spriteGFX_redSkelly               ;869079|        |CACD9D;
                       dw $FFFF                             ;86907C|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX32:
                       db $03,$5C,$31,$69                   ;86907E|        |      ;
                                                            ;      |        |      ;
           enemyGFX33:
                       dw $0000,$6A00                       ;869082|        |      ;
                       dl spriteGFX_dancingCouple           ;869086|        |CC9F5D;
                       dw $7000                             ;869089|        |      ;
                       dl spriteGFX_coffin                  ;86908B|        |C98FBD;
                       dw $7800                             ;86908E|        |      ;
                       dl spriteGFX_tableAndChairs          ;869090|        |CCABDD;
                       dw $FFFF                             ;869093|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX33:
                       db $03,$76,$7B,$42                   ;869095|        |      ;
                                                            ;      |        |      ;
           enemyGFX34:
                       dw $0000,$6A00                       ;869099|        |      ;
                       dl spriteGFX_axeKnight               ;86909D|        |C5C27D;
                       dw $FFFF                             ;8690A0|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX34:
                       db $01,$52                           ;8690A2|        |      ;
                                                            ;      |        |      ;
           enemyGFX35:
                       dw $0000,$6A00                       ;8690A4|        |      ;
                       dl spriteGFX_spearKnight             ;8690A8|        |CDF91D;
                       dw $7200                             ;8690AB|        |      ;
                       dl spriteGFX_axeKnight               ;8690AD|        |C5C27D;
                       dw $7800                             ;8690B0|        |      ;
                       dl spriteGFX_ghost                   ;8690B2|        |AEA57D;
                       dw $7A00                             ;8690B5|        |      ;
                       dl spriteGFX_swordSkelly             ;8690B7|        |BBDE9D;
                       dw $FFFF                             ;8690BA|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX35:
                       db $04,$59,$52,$08,$31               ;8690BC|        |      ;
                                                            ;      |        |      ;
           enemyGFX36:
                       dw $0000,$6A00                       ;8690C1|        |      ;
                       dl spriteGFX_bookBird                ;8690C5|        |CF8ADD;
                       dw $6C00                             ;8690C8|        |      ;
                       dl spriteGFX_shildGargoyle           ;8690CA|        |CF8E3D;
                       dw $7200                             ;8690CD|        |      ;
                       dl spriteGFX_swordSkelly             ;8690CF|        |BBDE9D;
                       dw $FFFF                             ;8690D2|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX36:
                       db $03,$0F,$75,$31                   ;8690D4|        |      ;
                                                            ;      |        |      ;
           enemyGFX37:
                       dw $0000,$6A00                       ;8690D8|        |      ;
                       dl spriteGFX_floatingPlatformBook03  ;8690DC|        |CFDB5D;
                       dw $6C00                             ;8690DF|        |      ;
                       dl spriteGFX_axeKnight               ;8690E1|        |C5C27D;
                       dw $7200                             ;8690E4|        |      ;
                       dl spriteGFX_spearKnight             ;8690E6|        |CDF91D;
                       dw $7A00                             ;8690E9|        |      ;
                       dl spriteGFX_redSkelly               ;8690EB|        |CACD9D;
                       dw $FFFF                             ;8690EE|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX37:
                       db $04,$17,$52,$59,$69               ;8690F0|        |      ;
                                                            ;      |        |      ;
           enemyGFX38:
                       dw $0000,$6A00                       ;8690F5|        |      ;
                       dl spriteGFX_libraryTrapBallHand     ;8690F9|        |D0DF5D;
                       dw $6C00                             ;8690FC|        |      ;
                       dl spriteGFX_axeKnight               ;8690FE|        |C5C27D;
                       dw $7200                             ;869101|        |      ;
                       dl spriteGFX_candleDog               ;869103|        |D0E37D;
                       dw $7800                             ;869106|        |      ;
                       dl spriteGFX_bat                     ;869108|        |AA979D;
                       dw $7A00                             ;86910B|        |      ;
                       dl spriteGFX_dog                     ;86910D|        |AEAE3D;
                       dw $FFFF                             ;869110|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX38:
                       db $05,$68,$52,$6B,$4E,$0A           ;869112|        |      ;
                                                            ;      |        |      ;
           enemyGFX39:
                       dw $0000,$6A00                       ;869118|        |      ;
                       dl spriteGFX_libraryTrapBallHand     ;86911C|        |D0DF5D;
                       dw $6C00                             ;86911F|        |      ;
                       dl spriteGFX_turningPlatform         ;869121|        |AFBC1D;
                       dw $6E00                             ;869124|        |      ;
                       dl spriteGFX_caterpillar             ;869126|        |D1F15D;
                       dw $7000                             ;869129|        |      ;
                       dl spriteGFX_candleDog               ;86912B|        |D0E37D;
                       dw $7600                             ;86912E|        |      ;
                       dl spriteGFX_axeKnight               ;869130|        |C5C27D;
                       dw $7C00                             ;869133|        |      ;
                       dl spriteGFX_clubGuy                 ;869135|        |ACF7FD;
                       dw $FFFF                             ;869138|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX39:
                       db $06,$68,$3B,$74,$6B,$52,$73       ;86913A|        |      ;
                                                            ;      |        |      ;
           enemyGFX40:
                       dw $0000,$6A00                       ;869141|        |      ;
                       dl spriteGFX_libraryTrapBallHand     ;869145|        |D0DF5D;
                       dw $6C00                             ;869148|        |      ;
                       dl spriteGFX_clubGuy                 ;86914A|        |ACF7FD;
                       dw $FFFF                             ;86914D|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX40:
                       db $02,$68,$73                       ;86914F|        |      ;
                                                            ;      |        |      ;
           enemyGFX41:
                       dw $0000,$6A00                       ;869152|        |      ;
                       dl spriteGFX_libraryTrapBallHand     ;869156|        |D0DF5D;
                       dw $6C00                             ;869159|        |      ;
                       dl spriteGFX_bat                     ;86915B|        |AA979D;
                       dw $6E00                             ;86915E|        |      ;
                       dl spriteGFX_axeKnight               ;869160|        |C5C27D;
                       dw $7400                             ;869163|        |      ;
                       dl spriteGFX_clubGuy                 ;869165|        |ACF7FD;
                       dw $FFFF                             ;869168|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX41:
                       db $04,$68,$4E,$52,$73               ;86916A|        |      ;
                                                            ;      |        |      ;
           enemyGFX42:
                       dw $0000,$6A00                       ;86916F|        |      ;
                       dl spriteGFX_dungeonTrapsCrusherDaggerStairs;869173|        |D3F85D;
                       dw $6E00                             ;869176|        |      ;
                       dl spriteGFX_waterDrip               ;869178|        |B69B7D;
                       dw $7000                             ;86917B|        |      ;
                       dl spriteGFX_spider                  ;86917D|        |B0EA1D;
                       dw $7200                             ;869180|        |      ;
                       dl spriteGFX_eye                     ;869182|        |B9D73D;
                       dw $7400                             ;869185|        |      ;
                       dl spriteGFX_axeKnight               ;869187|        |C5C27D;
                       dw $7A00                             ;86918A|        |      ;
                       dl spriteGFX_bonePillar              ;86918C|        |ABEE1D;
                       dw $7E00                             ;86918F|        |      ;
                       dl spriteGFX_plant                   ;869191|        |B2B6BD;
                       dw $FFFF                             ;869194|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX42:
                       db $07,$62,$3F,$43,$72,$52,$0B,$35   ;869196|        |      ;
                                                            ;      |        |      ;
           enemyGFX43:
                       dw $0000,$6A00                       ;86919E|        |      ;
                       dl spriteGFX_dungeonTrapsCrusherDaggerStairs;8691A2|        |D3F85D;
                       dw $6E00                             ;8691A5|        |      ;
                       dl spriteGFX_waterDrip               ;8691A7|        |B69B7D;
                       dw $7000                             ;8691AA|        |      ;
                       dl spriteGFX_crumblingBlockRings02   ;8691AC|        |C6F0FD;
                       dw $7200                             ;8691AF|        |      ;
                       dl spriteGFX_boneDragon01            ;8691B1|        |B9CF1D;
                       dw $7600                             ;8691B4|        |      ;
                       dl spriteGFX_eye                     ;8691B6|        |B9D73D;
                       dw $7800                             ;8691B9|        |      ;
                       dl spriteGFX_bat                     ;8691BB|        |AA979D;
                       dw $7A00                             ;8691BE|        |      ;
                       dl spriteGFX_bonePillar              ;8691C0|        |ABEE1D;
                       dw $FFFF                             ;8691C3|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX43:
                       db $07,$62,$3F,$06,$5D,$72,$0C,$0B   ;8691C5|        |      ;
                                                            ;      |        |      ;
           enemyGFX44:
                       dw $0000,$6A00                       ;8691CD|        |      ;
                       dl spriteGFX_dungeonTrapsCrusherDaggerStairs;8691D1|        |D3F85D;
                       dw $6E00                             ;8691D4|        |      ;
                       dl spriteGFX_highFiveSkelly          ;8691D6|        |BDFE3D;
                       dw $7200                             ;8691D9|        |      ;
                       dl spriteGFX_plant                   ;8691DB|        |B2B6BD;
                       dw $7400                             ;8691DE|        |      ;
                       dl spriteGFX_boneDragon01            ;8691E0|        |B9CF1D;
                       dw $7800                             ;8691E3|        |      ;
                       dl spriteGFX_medusaHead              ;8691E5|        |AFC03D;
                       dw $7A00                             ;8691E8|        |      ;
                       dl spriteGFX_snakesSworm             ;8691EA|        |AEA1DD;
                       dw $FFFF                             ;8691ED|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX44:
                       db $06,$62,$36,$35,$5D,$07,$32       ;8691EF|        |      ;
                                                            ;      |        |      ;
           enemyGFX45:
                       dw $0000,$6A00                       ;8691F6|        |      ;
                       dl spriteGFX_dungeonTrapsCrusherDaggerStairs;8691FA|        |D3F85D;
                       dw $6E00                             ;8691FD|        |      ;
                       dl spriteGFX_waterDrip               ;8691FF|        |B69B7D;
                       dw $7000                             ;869202|        |      ;
                       dl spriteGFX_highFiveSkelly          ;869204|        |BDFE3D;
                       dw $7400                             ;869207|        |      ;
                       dl spriteGFX_boneDragon01            ;869209|        |B9CF1D;
                       dw $7800                             ;86920C|        |      ;
                       dl spriteGFX_eye                     ;86920E|        |B9D73D;
                       dw $FFFF                             ;869211|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX45:
                       db $05,$62,$3F,$36,$5D,$72           ;869213|        |      ;
                                                            ;      |        |      ;
           enemyGFX46:
                       dw $0000,$6A00                       ;869219|        |      ;
                       dl spriteGFX_suckholeStone01         ;86921D|        |D89B7D;
                       dw $6E00                             ;869220|        |      ;
                       dl spriteGFX_skelly01                ;869222|        |AA9BFD;
                       dw $7400                             ;869225|        |      ;
                       dl spriteGFX_boneDragon01            ;869227|        |B9CF1D;
                       dw $7800                             ;86922A|        |      ;
                       dl spriteGFX_bat                     ;86922C|        |AA979D;
                       dw $FFFF                             ;86922F|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX46:
                       db $04,$63,$12,$5D,$0C               ;869231|        |      ;
                                                            ;      |        |      ;
           enemyGFX47:
                       dw $0000,$6A00                       ;869236|        |      ;
                       dl spriteGFX_suckholeStone01         ;86923A|        |D89B7D;
                       dw $6E00                             ;86923D|        |      ;
                       dl spriteGFX_skelly01                ;86923F|        |AA9BFD;
                       dw $7400                             ;869242|        |      ;
                       dl spriteGFX_boneDragon01            ;869244|        |B9CF1D;
                       dw $7800                             ;869247|        |      ;
                       dl spriteGFX_bat                     ;869249|        |AA979D;
                       dw $FFFF                             ;86924C|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX47:
                       db $04,$63,$12,$5D,$0C               ;86924E|        |      ;
                                                            ;      |        |      ;
           enemyGFX48:
                       dw $0000,$6A00                       ;869253|        |      ;
                       dl spriteGFX_suckholeStone01         ;869257|        |D89B7D;
                       dw $6E00                             ;86925A|        |      ;
                       dl spriteGFX_crumblingBlockRings02   ;86925C|        |C6F0FD;
                       dw $7000                             ;86925F|        |      ;
                       dl spriteGFX_skelly01                ;869261|        |AA9BFD;
                       dw $7600                             ;869264|        |      ;
                       dl spriteGFX_boneDragon01            ;869266|        |B9CF1D;
                       dw $7A00                             ;869269|        |      ;
                       dl spriteGFX_bonePillar              ;86926B|        |ABEE1D;
                       dw $7E00                             ;86926E|        |      ;
                       dl spriteGFX_bat                     ;869270|        |AA979D;
                       dw $FFFF                             ;869273|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX48:
                       db $06,$63,$03,$12,$5D,$0B,$0C       ;869275|        |      ;
                                                            ;      |        |      ;
           enemyGFX49:
                       dw $0000,$6A00                       ;86927C|        |      ;
                       dl spriteGFX_suckholeStone01         ;869280|        |D89B7D;
                       dw $6E00                             ;869283|        |      ;
                       dl spriteGFX_crumblingBlockRings02   ;869285|        |C6F0FD;
                       dw $7000                             ;869288|        |      ;
                       dl spriteGFX_coffin                  ;86928A|        |C98FBD;
                       dw $7800                             ;86928D|        |      ;
                       dl spriteGFX_boneDragon01            ;86928F|        |B9CF1D;
                       dw $FFFF                             ;869292|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX49:
                       db $04,$63,$03,$33,$5D               ;869294|        |      ;
                                                            ;      |        |      ;
           enemyGFX50:
                       dw $0000,$6A00                       ;869299|        |      ;
                       dl spriteGFX_suckholeStone01         ;86929D|        |D89B7D;
                       dw $6E00                             ;8692A0|        |      ;
                       dl spriteGFX_crumblingBlockRings02   ;8692A2|        |C6F0FD;
                       dw $7000                             ;8692A5|        |      ;
                       dl spriteGFX_coffin                  ;8692A7|        |C98FBD;
                       dw $7800                             ;8692AA|        |      ;
                       dl spriteGFX_boneDragon01            ;8692AC|        |B9CF1D;
                       dw $FFFF                             ;8692AF|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX50:
                       db $04,$63,$03,$33,$5D               ;8692B1|        |      ;
                                                            ;      |        |      ;
           enemyGFX51:
                       dw $0000,$6A00                       ;8692B6|        |      ;
                       dl spriteGFX_suckholeStone01         ;8692BA|        |D89B7D;
                       dw $6E00                             ;8692BD|        |      ;
                       dl spriteGFX_crumblingBlockRings02   ;8692BF|        |C6F0FD;
                       dw $7000                             ;8692C2|        |      ;
                       dl spriteGFX_coffin                  ;8692C4|        |C98FBD;
                       dw $7800                             ;8692C7|        |      ;
                       dl spriteGFX_boneDragon01            ;8692C9|        |B9CF1D;
                       dw $7C00                             ;8692CC|        |      ;
                       dl spriteGFX_bonePillar              ;8692CE|        |ABEE1D;
                       dw $FFFF                             ;8692D1|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX51:
                       db $05,$63,$03,$33,$5D,$0B           ;8692D3|        |      ;
                                                            ;      |        |      ;
           enemyGFX52:
                       dw $0000,$6A00                       ;8692D9|        |      ;
                       dl suckholeStone02                   ;8692DD|        |DCD39D;
                       dw $6E00                             ;8692E0|        |      ;
                       dl spriteGFX_brumblingBlocksAndRings03;8692E2|        |DCDB5D;
                       dw $7000                             ;8692E5|        |      ;
                       dl spriteGFX_skelly02                ;8692E7|        |DCDF7D;
                       dw $7600                             ;8692EA|        |      ;
                       dl spriteGFX_boneDragon02            ;8692EC|        |DCEEFD;
                       dw $FFFF                             ;8692EF|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX52:
                       db $04,$63,$03,$12,$5D               ;8692F1|        |      ;
                                                            ;      |        |      ;
           enemyGFX53:
                       dw $0000,$6A00                       ;8692F6|        |      ;
                       dl spriteGFX_skelly02                ;8692FA|        |DCDF7D;
                       dw $FFFF                             ;8692FD|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX53:
                       db $01,$56                           ;8692FF|        |      ;
                                                            ;      |        |      ;
           enemyGFX54:
                       dw $0000,$6A00                       ;869301|        |      ;
                       dl suckholeStone02                   ;869305|        |DCD39D;
                       dw $6E00                             ;869308|        |      ;
                       dl spriteGFX_brumblingBlocksAndRings03;86930A|        |DCDB5D;
                       dw $FFFF                             ;86930D|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX54:
                       db $02,$63,$03                       ;86930F|        |      ;
                                                            ;      |        |      ;
           enemyGFX55:
                       dw $0000,$6A00                       ;869312|        |      ;
                       dl spriteGFX_bigGearCogs             ;869316|        |DEB8FD;
                       dw $6E00                             ;869319|        |      ;
                       dl spriteGFX_skelly02                ;86931B|        |DCDF7D;
                       dw $FFFF                             ;86931E|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX55:
                       db $02,$7C,$12                       ;869320|        |      ;
                                                            ;      |        |      ;
           enemyGFX56:
                       dw $0000,$6A00                       ;869323|        |      ;
                       dl spriteGFX_smallGear               ;869327|        |DFBEBD;
                       dw $6E00                             ;86932A|        |      ;
                       dl spriteGFX_brumblingBlocksAndRings03;86932C|        |DCDB5D;
                       dw $7000                             ;86932F|        |      ;
                       dl spriteGFX_bonePillar              ;869331|        |ABEE1D;
                       dw $7400                             ;869334|        |      ;
                       dl spriteGFX_boneDragon02            ;869336|        |DCEEFD;
                       dw $7800                             ;869339|        |      ;
                       dl spriteGFX_swordSkelly             ;86933B|        |BBDE9D;
                       dw $FFFF                             ;86933E|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX56:
                       db $05,$7C,$37,$0B,$5D,$31           ;869340|        |      ;
                                                            ;      |        |      ;
           enemyGFX57:
                       dw $0000,$6A00                       ;869346|        |      ;
                       dl spriteGFX_bigGearCogs             ;86934A|        |DEB8FD;
                       dw $6E00                             ;86934D|        |      ;
                       dl spriteGFX_brumblingBlocksAndRings03;86934F|        |DCDB5D;
                       dw $7000                             ;869352|        |      ;
                       dl spriteGFX_swordSkelly             ;869354|        |BBDE9D;
                       dw $7600                             ;869357|        |      ;
                       dl spriteGFX_skelly02                ;869359|        |DCDF7D;
                       dw $7E00                             ;86935C|        |      ;
                       dl spriteGFX_medusaHead              ;86935E|        |AFC03D;
                       dw $FFFF                             ;869361|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX57:
                       db $05,$7C,$03,$31,$56,$07           ;869363|        |      ;
                                                            ;      |        |      ;
           enemyGFX58:
                       dw $0000,$6A00                       ;869369|        |      ;
                       dl spriteGFX_smallGear               ;86936D|        |DFBEBD;
                       dw $6E00                             ;869370|        |      ;
                       dl spriteGFX_brumblingBlocksAndRings03;869372|        |DCDB5D;
                       dw $7000                             ;869375|        |      ;
                       dl spriteGFX_boneDragon02            ;869377|        |DCEEFD;
                       dw $7400                             ;86937A|        |      ;
                       dl spriteGFX_axeKnight               ;86937C|        |C5C27D;
                       dw $7A00                             ;86937F|        |      ;
                       dl spriteGFX_medusaHead              ;869381|        |AFC03D;
                       dw $FFFF                             ;869384|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX58:
                       db $05,$7C,$03,$5D,$52,$07           ;869386|        |      ;
                                                            ;      |        |      ;
           enemyGFX59:
                       dw $0000,$6A00                       ;86938C|        |      ;
                       dl spriteGFX_swordSkelly             ;869390|        |BBDE9D;
                       dw $7000                             ;869393|        |      ;
                       dl spriteGFX_redSkelly               ;869395|        |CACD9D;
                       dw $7600                             ;869398|        |      ;
                       dl spriteGFX_boneDragon02            ;86939A|        |DCEEFD;
                       dw $FFFF                             ;86939D|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX59:
                       db $03,$31,$69,$5D                   ;86939F|        |      ;
                                                            ;      |        |      ;
           enemyGFX60:
                       dw $0000,$6A00                       ;8693A3|        |      ;
                       dl spriteGFX_brumblingBlocksAndRings03;8693A7|        |DCDB5D;
                       dw $6C00                             ;8693AA|        |      ;
                       dl spriteGFX_headlessKnight          ;8693AC|        |E38BBD;
                       dw $FFFF                             ;8693AF|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX60:
                       db $02,$37,$7E                       ;8693B1|        |      ;
                                                            ;      |        |      ;
           enemyGFX61:
                       dw $0000,$6A00                       ;8693B4|        |      ;
                       dl spriteGFX_bridgeCrumbles          ;8693B8|        |E4999D;
                       dw $6C00                             ;8693BB|        |      ;
                       dl spriteGFX_bat                     ;8693BD|        |AA979D;
                       dw $FFFF                             ;8693C0|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX61:
                       db $02,$7D,$0C                       ;8693C2|        |      ;
                                                            ;      |        |      ;
           enemyGFX62:
                       dw $0000,$6A00                       ;8693C5|        |      ;
                       dl spriteGFX_rockMan                 ;8693C9|        |E5BDDD;
                       dw $7000                             ;8693CC|        |      ;
                       dl spriteGFX_floatingPlatformStairAndRing;8693CE|        |E5CA3D;
                       dw $7200                             ;8693D1|        |      ;
                       dl spriteGFX_headlessKnight          ;8693D3|        |E38BBD;
                       dw $7800                             ;8693D6|        |      ;
                       dl spriteGFX_skelly02                ;8693D8|        |DCDF7D;
                       dw $7E00                             ;8693DB|        |      ;
                       dl spriteGFX_spikeGear               ;8693DD|        |E5CE5D;
                       dw $FFFF                             ;8693E0|        |      ;
                                                            ;      |        |      ;
     enemyIDslotGFX62:
                       db $04,$7F,$03,$7E,$56               ;8693E2|        |      ;

warnPC $8693E7       

org $86FFFF
        enemyGFX63:
                       db $FF  

}

{ ; -- player GFX ---------------------------------------------------

check bankcross off
org $F6A57D
	simonSpriteData00:
		dw $2004
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.fig":($0000)-($1fff) 
endif 

org $F6C5FD
	simonSpriteData01:
		dw $2003
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.fig":($2000)-($3fff) 
endif 			
			
org $F6E65D
	simonSpriteData02:
		dw $2003
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.fig":($4000)-($5fff) 		
endif 

org $F786BD
	simonSpriteData03:
		dw $2003
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.fig":($6000)-($7fff) 				
endif 			
			
org $F7A71D
	simonSpriteData04:
		dw $2003
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.fig":($8000)-($9fff) 		
endif 

org $F7C77D
	simonSpriteData05:
		dw $2003
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.fig":($a000)-($bfff) 	
endif 			
			
org $F7E7DD
	simonSpriteData06:
		dw $2003
		db $80
if !simonIdle == 1
			incbin "GFX/player/simonIdleSheet.fig":($c000)-($dfff) 		
endif 




org $F8883D
	animatedTilesGFXdataWater00:
        dl $801303                           ;F8883D|        |      ;
		incbin "GFX/misc/animatedTilesGFXdataWater00.fig"
org $F89B9D
    miscUslessJunk:
		dl $800304                           ;F89B9D|        |      ;
}

{ ; -- tiles Sets and GFX pointer------------------------------------

if !mapEdit == 1
org $868138
	blockMabSrcDestPointer0b:
        dw $0001                             ;868138|        |      ;
        dl $7E6000                           ;86813A|        |      ;
        dl $BF801D	; blockMabData_Stage4_Rotating_BGMode7;86813D|        |BF801D;

;		 dl $F4DCFD
;        dl $F58E1D	
		
;		dl $F4ED5D
;		dl $F4FDBD		
;		dl $F59E7D

		
		dw $FFFF                             ;868140|        |      ;
org $868564
	sceneMabSrcDestPointer14:
        dw $0001                             ;868564|        |      ;
        dl $7E8000                           ;868566|        |      ;
        dl $BFA07D	; sceneMabDataStage4_RotatingRoom_Mode7;868569|        |BFA07D;

		dl $7E8400                           ;86856C|        |      ;
        dl DATAlevel00                       ;86856F|        |A0FFD0;
        dw $FFFF                             ;868572|        |      ;
endif

if !titleEdit == 1

org $8680D8
	blockMabSrcDestPointer05:
        dw $0001                             ;8680D8|        |      ;
        dl $7E6000                           ;8680DA|        |      ;
;        dl blockMabData_Stage2Swamp_BG1      ;8680DD|        |B2BB1D;				
        dl $FAB7DD							; scene 
		dl $7EC000                           ;8680E0|        |      ;
;        dl blockMabData_Stage2Swamp_BG0      ;8680E3|        |B2DB7D;
		dl $B2DB7D
        dw $FFFF                             ;8680E6|        |      ;

org $868450	
	sceneMabSrcDestPointer08:
        dw $0001                             ;868450|        |      ;
        dl $7E8000                           ;868452|        |      ;
;        dl sceneMabDataStage2_Swamp_BG1      ;868455|        |B2FBDD;
		dl $FAAF7D		; block 	
		
		dl $7E9000                           ;868458|        |      ;
        dl DATAlevel00                       ;86845B|        |A0FFD0;
        dl $7EE000                           ;86845E|        |      ;
;        dl sceneMabDataStage2_Swamp_BG0      ;868461|        |B39C3D;
		dl $B39C3D
		dl $7EF000                           ;868464|        |      ;
        dl DATAlevel00                       ;868467|        |A0FFD0;
        dw $FFFF                             ;86846A|        |      ;
endif 

org $86889C
	gfxLvlDataPointerTable:
        dw gfxLevel00                        ;86889C|        |868924; first level seems to be special. Mode7 bridge??
        dw gfxLevel01                        ;86889E|        |86892D;
        dw gfxLevel02                        ;8688A0|        |86893B;
        dw gfxLevel02                        ;8688A2|        |86893B;
        dw gfxLevel02                        ;8688A4|        |86893B;
        dw gfxLevel03                        ;8688A6|        |868944;
        dw gfxLevel03                        ;8688A8|        |868944;
        dw gfxLevel03                        ;8688AA|        |868944;
        dw gfxLevel04                        ;8688AC|        |868952;
        dw gfxLevel05                        ;8688AE|        |868960;
        dw gfxLevel06                        ;8688B0|        |868973;
        dw gfxLevel06                        ;8688B2|        |868973;
        dw gfxLevel07                        ;8688B4|        |868986;
        dw gfxLevel08                        ;8688B6|        |868994;
        dw gfxLevel09                        ;8688B8|        |8689A7;
        dw gfxLevel09                        ;8688BA|        |8689A7;
        dw gfxLevel09                        ;8688BC|        |8689A7;
        dw gfxLevel09                        ;8688BE|        |8689A7;
        dw gfxLevel10                        ;8688C0|        |8689B5;
        dw gfxLevel10                        ;8688C2|        |8689B5;
        dw gfxLevel10                        ;8688C4|        |8689B5;
        dw gfxLevel11                        ;8688C6|        |8689C3;
        dw gfxLevel12                        ;8688C8|        |8689CC;
        dw gfxLevel13                        ;8688CA|        |8689D5;
        dw gfxLevel14                        ;8688CC|        |8689E8;
        dw gfxLevel15                        ;8688CE|        |8689FB;
        dw gfxLevel16                        ;8688D0|        |868A0E;
        dw gfxLevel17                        ;8688D2|        |868A21;
        dw gfxLevel18                        ;8688D4|        |868A2A;
        dw gfxLevel18                        ;8688D6|        |868A2A;
        dw gfxLevel18                        ;8688D8|        |868A2A;
        dw gfxLevel19                        ;8688DA|        |868A38;
        dw gfxLevel19                        ;8688DC|        |868A38;
        dw gfxLevel19                        ;8688DE|        |868A38;
        dw gfxLevel19                        ;8688E0|        |868A38;
        dw gfxLevel20                        ;8688E2|        |868A4B;
        dw gfxLevel20                        ;8688E4|        |868A4B;
        dw gfxLevel20                        ;8688E6|        |868A4B;
        dw gfxLevel21                        ;8688E8|        |868A54;
        dw gfxLevel21                        ;8688EA|        |868A54;
        dw gfxLevel21                        ;8688EC|        |868A54;
        dw gfxLevel21                        ;8688EE|        |868A54;
        dw gfxLevel22                        ;8688F0|        |868A62;
        dw gfxLevel22                        ;8688F2|        |868A62;
        dw gfxLevel23                        ;8688F4|        |868A70;
        dw gfxLevel23                        ;8688F6|        |868A70;
        dw gfxLevel24                        ;8688F8|        |868A83;
        dw gfxLevel24                        ;8688FA|        |868A83;
        dw gfxLevel24                        ;8688FC|        |868A83;
        dw gfxLevel25                        ;8688FE|        |868A96;
        dw gfxLevel25                        ;868900|        |868A96;
        dw gfxLevel25                        ;868902|        |868A96;
        dw gfxLevel25                        ;868904|        |868A96;
        dw gfxLevel25                        ;868906|        |868A96;
        dw gfxLevel25                        ;868908|        |868A96;
        dw gfxLevel26                        ;86890A|        |868AA9;
        dw gfxLevel26                        ;86890C|        |868AA9;
        dw gfxLevel26                        ;86890E|        |868AA9;
        dw gfxLevel26                        ;868910|        |868AA9;
        dw gfxLevel27                        ;868912|        |868AB7;
        dw gfxLevel28                        ;868914|        |868ACA;
        dw gfxLevel28                        ;868916|        |868ACA;
        dw gfxLevel29                        ;868918|        |868AD8;
        dw gfxLevel30                        ;86891A|        |868AEB;
        dw gfxLevel31                        ;86891C|        |868AF9;
        dw gfxLevel32                        ;86891E|        |868B07;
        dw gfxLevel33                        ;868920|        |868B15;
        dw gfxLevel34                        ;868922|        |868B32;
                                                            ;      |        |      ;
           gfxLevel00:
                       dw $0003,$0000                       ;868924|        |      ;
                       dl levelGFXStage1_mod7Bridge         ;868928|        |A8801D; ROM src
                       dw $FFFF                             ;86892B|        |      ; terminator ??
                                                            ;      |        |      ;
           gfxLevel01:
                       dw $0000,$2000                       ;86892D|        |      ;
					   dl levelGFXStage1Garden              ;868931|        |A9D73D;
                       dw $3000                             ;868934|        |      ;
                       dl levelGFXStage1_entrance           ;868936|        |A8861D;
                       dw $FFFF                             ;868939|        |      ;
                                                            ;      |        |      ;
           gfxLevel02:
                       dw $0000,$2000                       ;86893B|        |      ;                      
					   dl levelGFXStage1_Castle             ;86893F|        |ABADBD;
                       dw $FFFF                             ;868942|        |      ;                                                            ;      |        |      ;
           gfxLevel03:
                       dw $0000,$2000                       ;868944|        |      ;
                       dl levelGFXStage1_stables            ;868948|        |ADE17D;
                       dw $3000                             ;86894B|        |      ;
                       dl DATAlevel00                       ;86894D|        |A0FFD0;
                       dw $FFFF                             ;868950|        |      ;
                                                            ;      |        |      ;
           gfxLevel04:
                       dw $0000,$2000                       ;868952|        |      ;
                       dl levelGFXStage2_graveyard          ;868956|        |B0855D;
                       dw $3000                             ;868959|        |      ;
                       dl DATAlevel00                       ;86895B|        |A0FFD0;
                       dw $FFFF                             ;86895E|        |      ;
                                                            ;      |        |      ;
           gfxLevel05:
                       dw $0000,$2000                       ;868960|        |      ;
if !titleEdit == 1
					   dl titleScreenCastlevaniaLogoGFXdata
					   dw $3000
					   dl titleScreenLogoBGwallTileData00
					   dw $4000
					   dl titleScreenLogoBGwallTileData01
else 
                       dl levelGFXStage2_swamp              ;868964|        |B1EFFD;
                       dw $3000                             ;868967|        |      ;
                       dl levelGFXStage2_graveyard          ;868969|        |B0855D;
                       dw $4000                             ;86896C|        |      ;
                       dl levelGFXStage1_Castle             ;86896E|        |ABADBD;
endif 
                       dw $FFFF                             ;868971|        |      ;
                                                            ;      |        |      ;
           gfxLevel06:
                       dw $0000,$2000                       ;868973|        |      ;
                       dl levelGFXStage2_waterSlide         ;868977|        |B3BC9D;
                       dw $3000                             ;86897A|        |      ;
                       dl levelGFXStage2_graveyard          ;86897C|        |B0855D;
                       dw $5180                             ;86897F|        |      ;
                       dl levelGFXStage2_waterSlide2bbpBG   ;868981|        |B3FCFD;
                       dw $FFFF                             ;868984|        |      ;
                                                            ;      |        |      ;
           gfxLevel07:
                       dw $0000,$2000                       ;868986|        |      ;
                       dl levelGFXStage3_cave               ;86898A|        |B5D35D;
                       dw $5180                             ;86898D|        |      ;
                       dl levelGFXStage3_cave_2bppBG        ;86898F|        |B693BD;
                       dw $FFFF                             ;868992|        |      ;
                                                            ;      |        |      ;
           gfxLevel08:
                       dw $0000,$2000                       ;868994|        |      ;
                       dl levelGFXStage3_waterFall          ;868998|        |B7B11D;
                       dw $3000                             ;86899B|        |      ;
                       dl DATAlevel00                       ;86899D|        |A0FFD0;
                       dw $5180                             ;8689A0|        |      ;
                       dl levelGFXStage3_waterfall_2bppBG   ;8689A2|        |B7F17D;
                       dw $FFFF                             ;8689A5|        |      ;
                                                            ;      |        |      ;
           gfxLevel09:
                       dw $0000,$2000                       ;8689A7|        |      ;
                       dl levelGFXStage3_aquaduct           ;8689AB|        |B8FF3D;
                       dw $3000                             ;8689AE|        |      ;
                       dl levelGFXStage2_graveyard          ;8689B0|        |B0855D;
                       dw $FFFF                             ;8689B3|        |      ;
                                                            ;      |        |      ;
           gfxLevel10:
                       dw $0000,$2000                       ;8689B5|        |      ;
                       dl levelGFXStage4_SkullTower         ;8689B9|        |BCABBD;
                       dw $3000                             ;8689BC|        |      ;
                       dl levelGFXStage3_aquaduct           ;8689BE|        |B8FF3D;
                       dw $FFFF                             ;8689C1|        |      ;
                                                            ;      |        |      ;
           gfxLevel11:
                       dw $0003,$0000                       ;8689C3|        |      ;
if !mapEdit == 1
                       dl $F3DF3D		
;					   dl $F49CFD
else 
					   dl levelGFXStage4_rotatingRoomMod78bppLinear;8689C7|        |BEE75D;
endif 
					   dw $FFFF                             ;8689CA|        |      ;
                                                            ;      |        |      ;
           gfxLevel12:
                       dw $0003,$0000                       ;8689CC|        |      ;
                       dl levelGFXStage4_CastleWashinMachine8BPPlinear;8689D0|        |BFC0DD;
                       dw $FFFF                             ;8689D3|        |      ;
                                                            ;      |        |      ;
           gfxLevel13:
                       dw $0000,$2000                       ;8689D5|        |      ;
                       dl levelGFXStage4_koranotQuater      ;8689D9|        |C09DBD;
                       dw $4000                             ;8689DC|        |      ;
                       dl spriteGFX_crusherWithFloatingBlock;8689DE|        |C0DE1D;
                       dw $5180                             ;8689E1|        |      ;
                       dl koranotBG_2bpp                     ;8689E3|        |C0E13D;
                       dw $FFFF                             ;8689E6|        |      ;
                                                            ;      |        |      ;
           gfxLevel14:
                       dw $0000,$2000                       ;8689E8|        |      ;
                       dl levelGFXStage5_blueRoude          ;8689EC|        |C1E69D;
                       dw $3000                             ;8689EF|        |      ;
                       dl levelGFXStage2_graveyard          ;8689F1|        |B0855D;
                       dw $4000                             ;8689F4|        |      ;
                       dl levelGFXStage2_waterSlide         ;8689F6|        |B3BC9D;
                       dw $FFFF                             ;8689F9|        |      ;
                                                            ;      |        |      ;
           gfxLevel15:
                       dw $0000,$2000                       ;8689FB|        |      ;
                       dl levelGFXStage5_CastleEntrance     ;8689FF|        |C3B79D;
                       dw $3000                             ;868A02|        |      ;
                       dl DATAlevel00                       ;868A04|        |A0FFD0;
                       dw $4000                             ;868A07|        |      ;
                       dl levelGFXStage5_blueRoude          ;868A09|        |C1E69D;
                       dw $FFFF                             ;868A0C|        |      ;
                                                            ;      |        |      ;
           gfxLevel16:
                       dw $0000,$2000                       ;868A0E|        |      ;
                       dl levelGFXStage6_Entrance           ;868A12|        |C4F97D;
                       dw $3000                             ;868A15|        |      ;
                       dl levelGFXStage5_CastleEntrance     ;868A17|        |C3B79D;
                       dw $5180                             ;868A1A|        |      ;
                       dl levelGFXStage6_2bppBG_entrance    ;868A1C|        |C5B9DD;
                       dw $FFFF                             ;868A1F|        |      ;
                                                            ;      |        |      ;
           gfxLevel17:
                       dw $0003,$0000                       ;868A21|        |      ;
                       dl levelGFXStage6_chandelire_8bppLinear;868A25|        |C6D05D;
                       dw $FFFF                             ;868A28|        |      ;
                                                            ;      |        |      ;
           gfxLevel18:
                       dw $0000,$2000                       ;868A2A|        |      ;
                       dl levelGFXStage6_middleSection      ;868A2E|        |C7B5DD;
                       dw $3000                             ;868A31|        |      ;
                       dl levelGFXStage6_Entrance           ;868A33|        |C4F97D;
                       dw $FFFF                             ;868A36|        |      ;
                                                            ;      |        |      ;
           gfxLevel19:
                       dw $0000,$2000                       ;868A38|        |      ;
                       dl levelGFXStage5_dancingQuater      ;868A3C|        |CA8D3D;
                       dw $3000                             ;868A3F|        |      ;
                       dl levelGFXStage6_middleSection      ;868A41|        |C7B5DD;
                       dw $4000                             ;868A44|        |      ;
                       dl levelGFXStage6_Entrance           ;868A46|        |C4F97D;
                       dw $FFFF                             ;868A49|        |      ;
                                                            ;      |        |      ;
           gfxLevel20:
                       dw $0000,$2000                       ;868A4B|        |      ;
                       dl levelGFXStage7_lieberary          ;868A4F|        |CDB8BD;
                       dw $FFFF                             ;868A52|        |      ;
                                                            ;      |        |      ;
           gfxLevel21:
                       dw $0000,$2000                       ;868A54|        |      ;
                       dl levelGFXStage7_GrqulesQuater      ;868A58|        |D09EFD;
                       dw $3000                             ;868A5B|        |      ;
                       dl DATAlevel00                       ;868A5D|        |A0FFD0;
                       dw $FFFF                             ;868A60|        |      ;
                                                            ;      |        |      ;
           gfxLevel22:
                       dw $0000,$2000                       ;868A62|        |      ;
                       dl levelGFXStage8_dungeon            ;868A66|        |D3B7FD;
                       dw $3000                             ;868A69|        |      ;
                       dl DATAlevel00                       ;868A6B|        |A0FFD0;
                       dw $FFFF                             ;868A6E|        |      ;
                                                            ;      |        |      ;
           gfxLevel23:
                       dw $0000,$2000                       ;868A70|        |      ;
                       dl levelGFXStage8_franksQuater       ;868A74|        |D5C2BD;
                       dw $3000                             ;868A77|        |      ;
                       dl levelGFXStage8_dungeon            ;868A79|        |D3B7FD;
                       dw $4000                             ;868A7C|        |      ;
                       dl levelGFXStage8_dungeon_BG         ;868A7E|        |D6831D;
                       dw $FFFF                             ;868A81|        |      ;
                                                            ;      |        |      ;
           gfxLevel24:
                       dw $0000,$2000                       ;868A83|        |      ;
                       dl levelGFXStage9_start              ;868A87|        |D7D87D;
                       dw $3000                             ;868A8A|        |      ;
                       dl DATAlevel00                       ;868A8C|        |A0FFD0;
                       dw $5180                             ;868A8F|        |      ;
                       dl levelGFXStage9_2bpp_Ghosts        ;868A91|        |D898DD;
                       dw $FFFF                             ;868A94|        |      ;
                                                            ;      |        |      ;
           gfxLevel25:
                       dw $0000,$2000                       ;868A96|        |      ;
                       dl levelGFXStage9_ZapfQuater         ;868A9A|        |DAA63D;
                       dw $3000                             ;868A9D|        |      ;
                       dl levelGFXStage9_start              ;868A9F|        |D7D87D;
                       dw $4000                             ;868AA2|        |      ;
                       dl levelGFXStage9_BG_tresure         ;868AA4|        |DAE69D;
                       dw $FFFF                             ;868AA7|        |      ;
                                                            ;      |        |      ;
           gfxLevel26:
                       dw $0000,$2000                       ;868AA9|        |      ;
                       dl levelGFXStageA_ClockTower         ;868AAD|        |DDF89D;
                       dw $3000                             ;868AB0|        |      ;
                       dl DATAlevel00                       ;868AB2|        |A0FFD0;
                       dw $FFFF                             ;868AB5|        |      ;
                                                            ;      |        |      ;
           gfxLevel27:
                       dw $0000,$2000                       ;868AB7|        |      ;
                       dl levelGFXStageA_mummyQuater        ;868ABB|        |E1897D;
                       dw $3000                             ;868ABE|        |      ;
                       dl DATAlevel00                       ;868AC0|        |A0FFD0;
                       dw $4000                             ;868AC3|        |      ;
                       dl levelGFXStage9_start              ;868AC5|        |D7D87D;
                       dw $FFFF                             ;868AC8|        |      ;
                                                            ;      |        |      ;
           gfxLevel28:
                       dw $0000,$2000                       ;868ACA|        |      ;
                       dl levelGFXStageB_bridge             ;868ACE|        |E2CB5D;
                       dw $3000                             ;868AD1|        |      ;
                       dl DATAlevel00                       ;868AD3|        |A0FFD0;
                       dw $FFFF                             ;868AD6|        |      ;
                                                            ;      |        |      ;
           gfxLevel29:
                       dw $0000,$2000                       ;868AD8|        |      ;
                       dl levelGFXStageB_Tower              ;868ADC|        |E4DDBD;
                       dw $3000                             ;868ADF|        |      ;
                       dl DATAlevel00                       ;868AE1|        |A0FFD0;
                       dw $4000                             ;868AE4|        |      ;
                       dl levelGFXStageB_tower_BG_Clouds    ;868AE6|        |E59E1D;
                       dw $FFFF                             ;868AE9|        |      ;
                                                            ;      |        |      ;
           gfxLevel30:
                       dw $0000,$2000                       ;868AEB|        |      ;
                       dl levelGFXStageB_slograsQuater      ;868AEF|        |E6B35D;
                       dw $3000                             ;868AF2|        |      ;
                       dl DATAlevel00                       ;868AF4|        |A0FFD0;
                       dw $FFFF                             ;868AF7|        |      ;
                                                            ;      |        |      ;
           gfxLevel31:
                       dw $0000,$2000                       ;868AF9|        |      ;
                       dl levelGFXStageB_gaiboneQuater      ;868AFD|        |E7F53D;
                       dw $3000                             ;868B00|        |      ;
                       dl DATAlevel00                       ;868B02|        |A0FFD0;
                       dw $FFFF                             ;868B05|        |      ;
                                                            ;      |        |      ;
           gfxLevel32:
                       dw $0000,$2000                       ;868B07|        |      ;
                       dl levelGFXStageB_deathQuater        ;868B0B|        |E8F65D;
                       dw $3000                             ;868B0E|        |      ;
                       dl levelGFXStageB_slograsQuater      ;868B10|        |E6B35D;
                       dw $FFFF                             ;868B13|        |      ;
                                                            ;      |        |      ;
           gfxLevel33:
                       dw $0000,$1000                       ;868B15|        |      ;
                       dl levelGFXStageB_draculasQuater00   ;868B19|        |EAB83D;
                       dw $2000                             ;868B1C|        |      ;
                       dl levelGFXStageB_draculasQuater01   ;868B1E|        |EAD89D;
                       dw $3000                             ;868B21|        |      ;
                       dl DATAlevel00                       ;868B23|        |A0FFD0;
                       dw $4000                             ;868B26|        |      ;
                       dl levelGFXStageB_draculasQuater02_cape00;868B28|        |EB98FD;
                       dw $4800                             ;868B2B|        |      ;
                       dl levelGFXStageB_draculasQuater02_BG;868B2D|        |EB9C7D;
                       dw $FFFF                             ;868B30|        |      ;
                                                            ;      |        |      ;
           gfxLevel34:
                       dw $0000,$1000                       ;868B32|        |      ;
                       dl levelGFXStageB_draculasQuater00   ;868B36|        |EAB83D;
                       dw $6A00                             ;868B39|        |      ;
                       dl spriteGFX_DraculasLightning_Fire00;868B3B|        |EC9FFD;
                       dw $7000                             ;868B3E|        |      ;
                       dl spriteGFX_DraculasLightning_Fire01;868B40|        |ECAC5D;
                       dw $FFFF                             ;868B43|        |      ;
                                                            ;      |        |      ;
org $A0FFD0
		DATAlevel00:                        ;868B23|        |A0FFD0;

}

{ ; -- sprite GFX -------------------------------------------------- incbin ...
org $A8801D
		levelGFXStage1_mod7Bridge:
			dl $800584                        
			incbin "GFX/tiles/lvlGFX_stage1_mod7Bridge.fig"
		
		levelGFXStage1_entrance:
			dl $804003                           ;A8861D|        |      ; size
			incbin "GFX/tiles/lvlGFX_stage1_entrance.fig"

		gfxCrumblinkBlocksRings01:
            dl $8003c3                      ;A8C67D|        |      ;
			incbin "GFX/sprite/spriteGFX_1_block_ring.fig" 
		gfxSpritePillarEntrance:
            dl $800743                      ;A8CA9D|        |      ;
			incbin "GFX/sprite/spriteGFX_1_pillar.fig" 
		spriteGFXBridgeChain:
            dl $800304                    ;A8D23D|        |      ;
			incbin "GFX/sprite/spriteGFX_1_chains.fig" 
org $A9D73D
		levelGFXStage1Garden:
            dl $804003                     ;A9D73D|        |      ; 
			incbin "GFX/tiles/lvlGFX_stage1_Garden.fig"
org $AA979D					   
		spriteGFX_bat:
            dl $800403                      ;AA979D|        |      ;
			incbin "GFX/sprite/spriteGFX_1_bat.fig" 
		spriteGFX_skelly01:
            dl $800F04                           ;AA9BFD|        |      ;
			incbin "GFX/sprite/spriteGFX_1_skelly.fig" 
		spriteGFX_dirtFence:
            dl $800063                           ;AAAB7D|        |      ;
			incbin "GFX/sprite/spriteGFX_1_dirtFence.fig" 
org $ABADBD
		levelGFXStage1_Castle:
            dl $804003                           ;ABADBD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage1_Castle.fig"			
		spriteGFX_bonePillar:
            dl $800803                           ;ABEE1D|        |      ;
			incbin "GFX/sprite/spriteGFX_1_bonePillar.fig" 
org $ACF7FD
		spriteGFX_clubGuy:
            dl $800803                           ;ACF7FD|        |      ;
			incbin "GFX/sprite/spriteGFX_1_clubGuy.fig" 
org $ADE17D
		levelGFXStage1_stables:
            dl $804003                           ;ADE17D|        |      ;	
			incbin "GFX/tiles/lvlGFX_stage1_stables.fig"
		spriteGFX_snakesSworm:
            dl $800343                           ;AEA1DD|        |      ;			
			incbin "GFX/sprite/spriteGFX_1_snakesSworm.fig" 
		spriteGFX_ghost:
            dl $800403                           ;AEA57D|        |      ;
			incbin "GFX/sprite/spriteGFX_1_ghost.fig" 
		spriteGFX_horseHead:
            dl $800403                           ;AEA9DD|        |      ;	
			incbin "GFX/sprite/spriteGFX_1_horseHead.fig" 
        spriteGFX_dog:
            dl $800C03                           ;AEAE3D|        |      ;
			incbin "GFX/sprite/spriteGFX_1_dog.fig" 
org $AFBC1D
		spriteGFX_turningPlatform:
            dl $8003C3                           ;AFBC1D|        |      ;			
			incbin "GFX/sprite/spriteGFX_1_turningPlatform.fig" 		
		spriteGFX_medusaHead:
            dl $800403                           ;AFC03D|        |      ;		
			incbin "GFX/sprite/spriteGFX_1_medusaHead.fig" 
org $B0855D			
		levelGFXStage2_graveyard:
            dl $804003                           ;B0855D|        |      ;	
			incbin "GFX/tiles/lvlGFX_stage2_graveyard.fig"
		spriteGFX_grabingHand:
            dl $800803                           ;B0C5BD|        |      ;			
			incbin "GFX/sprite/spriteGFX_2_grabingHand.fig" 
		spriteGFX_leaveMonster:
            dl $800803                           ;B0CE1D|        |      ;			
			incbin "GFX/sprite/spriteGFX_2_leaveMonster.fig" 
	    spriteGFX_hedgehog:
            dl $800403                           ;B0D67D|        |      ;		
			incbin "GFX/sprite/spriteGFX_2_hedgehog.fig" 
	    spriteGFX_bird:
            dl $800703                           ;B0DADD|        |      ;		
			incbin "GFX/sprite/spriteGFX_2_bird.fig" 
		spriteGFX_graveDigger:
            dl $800783                           ;B0E23D|        |      ;		
			incbin "GFX/sprite/spriteGFX_2_graveDigger.fig" 
		spriteGFX_spider:
            dl $800403                           ;B0EA1D|        |      ;
			incbin "GFX/sprite/spriteGFX_2_spider.fig" 
org $B1EFFD
		levelGFXStage2_swamp:
            dl $804003                           ;B1EFFD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage2_swamp.fig"
		spriteGFX_floatingPlatformSwamp:
            dl $800244                           ;B2B05D|        |      ;
			incbin "GFX/sprite/spriteGFX_2_floatingPlatformSwamp.fig" 
		spriteGFX_frog:
            dl $800343                           ;B2B31D|        |      ;
			incbin "GFX/sprite/spriteGFX_2_frog.fig" 
		spriteGFX_plant:
            dl $800403                           ;B2B6BD|        |      ;
			incbin "GFX/sprite/spriteGFX_2_plant.fig" 
org $B3BC9D
		levelGFXStage2_waterSlide:
            dl $804003                           ;B3BC9D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage2_waterSlide.fig"		
		levelGFXStage2_waterSlide2bbpBG:
            dl $800413                           ;B3FCFD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage2_waterSlide2bbpBG.fig"		
		spriteGFX_gargoyle:
            dl $800BC4                           ;B4817D|        |      ;
			incbin "GFX/sprite/spriteGFX_2_gargoyle.fig" 
		spriteGFX_stealingHand:
            dl $800303                           ;B48DBD|        |      ;
			incbin "GFX/sprite/spriteGFX_2_stealingHand.fig" 
org $B5D35D
		levelGFXStage3_cave:
            dl $804003                           ;B5D35D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage3_cave.fig"
		levelGFXStage3_cave_2bppBG:
            dl $8002f3	                      	;B693BD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage3_cave_2bppBG.fig"
		spriteGFX_stalactite:
            dl $800403 		                   	;B6971D|        |      ;
			incbin "GFX/sprite/spriteGFX_3_stalactite.fig" 
		spriteGFX_waterDrip:
            dl $8003c3                        	;B69B7D|        |      ;
			incbin "GFX/sprite/spriteGFX_3_waterDrip.fig" 
		spriteGFX_mudman:
            dl $800C03                           ;B69F9D|        |      ;
			incbin "GFX/sprite/spriteGFX_3_mudman.fig" 
		spriteGFX_unusedBat:
            dl $800343                           ;B6ABFD|        |      ;
			incbin "GFX/sprite/spriteGFX_3_unusedBat.fig" 
org $B7B11D
		levelGFXStage3_waterFall:
            dl $804003                           ;B7B11D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage3_waterFall.fig"
		levelGFXStage3_waterfall_2bppBG:
            dl $8005F3                           ;B7F17D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage3_waterfall_2bppBG.fig"		
		spriteGFX_woodenSinkingBridg:
            dl $800283                           ;B7F7DD|        |      ;
			incbin "GFX/sprite/spriteGFX_3_woodenSinkLog.fig" 
		spriteGFX_fuzzyBall:
            dl $800284                           ;B7FABD|        |      ;
			incbin "GFX/sprite/spriteGFX_3_fuzzyBall.fig" 
org $B8FF3D
		levelGFXStage3_aquaduct:
            dl $804003                           ;B8FF3D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage3_aquaduct.fig"	
		spriteGFX_fallingPillar:
            dl $8002C3                           ;B9BF9D|        |      ;
			incbin "GFX/sprite/spriteGFX_3_fallingPillar.fig" 
		spriteGFX_fishman:
            dl $800C03                           ;B9C2BD|        |      ;
			incbin "GFX/sprite/spriteGFX_3_fishman.fig" 
		spriteGFX_boneDragon01:
            dl $8007C3                           ;B9CF1D|        |      ;
			incbin "GFX/sprite/spriteGFX_3_boneDragon.fig" 
        spriteGFX_eye:
            dl $800403                           ;B9D73D|        |      ;
			incbin "GFX/sprite/spriteGFX_3_eye.fig" 
org $BBDE9D
		spriteGFX_swordSkelly:
            dl $800C03                           ;BBDE9D|        |      ;
			incbin "GFX/sprite/spriteGFX_4_swordSkelly.fig" 
org $BCABBD
		levelGFXStage4_SkullTower:
            dl $804003                           ;BCABBD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage4_SkullTower.fig"
		spriteGFX_turningPlaform02:
            dl $8003C4                           ;BCEC1D|        |      ;
			incbin "GFX/sprite/spriteGFX_4_turningPlaform.fig" 
		spriteGFX_wallCorpse:
            dl $800C03                           ;BCF05D|        |      ;
			incbin "GFX/sprite/spriteGFX_4_wallCorpse.fig" 
org $BDFE3D
		spriteGFX_highFiveSkelly:
            dl $800784                           ;BDFE3D|        |      ;
			incbin "GFX/sprite/spriteGFX_4_highFiveSkelly.fig" 
org $BEE75D
		levelGFXStage4_rotatingRoomMod78bppLinear:
            dl $801844                           ;BEE75D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage4_rotatingRoomMod78bppLinear.fig"
org $BFC0DD
		levelGFXStage4_CastleWashinMachine8BPPlinear:
            dl $801884                           ;BFC0DD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage4_CastleWashinMachine8BPPlinear.fig"
		spriteGFX_platformTunnel:
            dl $8002C3                           ;BFD9DD|        |      ;
			incbin "GFX/sprite/spriteGFX_4_platformTunnel.fig" 
org $C09DBD
		levelGFXStage4_koranotQuater:
            dl $804003                           ;C09DBD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage4_koranotQuater.fig"
		spriteGFX_crusherWithFloatingBlock:
            dl $8002C3                           ;C0DE1D|        |      ;
			incbin "GFX/sprite/spriteGFX_4_crusher_floatingBlock.fig" 
        koranotBG_2bpp:
            dl $800373                           ;C0E13D|        |      ;
			incbin "GFX/tiles/koranotBG.2bpp" 
org $C1E69D
		levelGFXStage5_blueRoude:
            dl $804003                           ;C1E69D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage5_blueRoude.fig"
		spriteGFX_harpies:
            dl $800EC3                           ;C2A6FD|        |      ;
			incbin "GFX/sprite/spriteGFX_5_harpies.fig" 
org $C3B79D
		levelGFXStage5_CastleEntrance:
            dl $804003                           ;C3B79D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage5_castleEntrance.fig"
org $C4F97D
		levelGFXStage6_Entrance:
            dl $804003                           ;C4F97D|        |      ;
				incbin "GFX/tiles/lvlGFX_stage6_entrance.fig"	
		levelGFXStage6_2bppBG_entrance:
            dl $8000A3                           ;C5B9DD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage6_BG.2bpp"
		spriteGFX_castleGhostZombie:
            dl $800743                           ;C5BADD|        |      ;
			incbin "GFX/sprite/spriteGFX_6_zombie.fig" 
		spriteGFX_axeKnight:
            dl $800C03                           ;C5C27D|        |      ;
			incbin "GFX/sprite/spriteGFX_6_axeKnight.fig" 
org $C6D05D
		levelGFXStage6_chandelire_8bppLinear:
            dl $801D84                           ;C6D05D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage6_chandelire_8bppLinear.fig"		
		spriteGFX_platformAndStairs:
            dl $800243                           ;C6EE5D|        |      ;
			incbin "GFX/sprite/spriteGFX_6_platformAndStairs.fig" 
		spriteGFX_crumblingBlockRings02:
            dl $8003C3                           ;C6F0FD|        |      ;	
			incbin "GFX/sprite/spriteGFX_6_crumblingBlockRings.fig"
org $C7B5DD
		levelGFXStage6_middleSection:
            dl $804003                           ;C7B5DD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage6_middleSection.fig"
		spriteGFX_turningPlatformWithSpikes:
            dl $800383                           ;C7F63D|        |      ;
			incbin "GFX/sprite/spriteGFX_6_turningPlatformWithSpikes.fig" 
		spriteGFX_ghostWoman:
            dl $800B43                           ;C7FA1D|        |      ;
			incbin "GFX/sprite/spriteGFX_6_ghostWoman.fig" 
		spriteGFX_ghostMan:
            dl $800403                           ;C885BD|        |      ;
			incbin "GFX/sprite/spriteGFX_6_ghostMan.fig" 
		spriteGFX_fallingChandelire:
            dl $8003C3                           ;C88A1D|        |      ;
			incbin "GFX/sprite/spriteGFX_6_fallingChandelire.fig" 
org $C98FBD
		spriteGFX_coffin:
            dl $800F84                           ;C98FBD|        |      ;
			incbin "GFX/sprite/spriteGFX_6_coffin.fig" 
org $C9E07D
		spriteGFX_secretMan:
            dl $800C03                           ;C9E07D|        |      ;
			incbin "GFX/sprite/spriteGFX_6_secretMan.fig" 
org $CA8D3D		
		levelGFXStage5_dancingQuater:
            dl $804003                           ;CA8D3D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage6_dancingQuater.fig"
		spriteGFX_redSkelly:
            dl $800AC4                           ;CACD9D|        |      ;
			incbin "GFX/sprite/spriteGFX_6_redSkelly.fig" 
org $CBDA5D
		spriteGFX_ghostHandAlongSwordSkelly:
            dl $8003C4                           ;CBDA5D|        |      ;
			incbin "GFX/sprite/spriteGFX_6_ghostHandAlongSwordSkelly.fig" 
org $CC9F5D
		spriteGFX_dancingCouple:
            dl $800C04                           ;CC9F5D|        |      ;
			incbin "GFX/sprite/spriteGFX_6_dancingCouple.fig" 
		spriteGFX_tableAndChairs:
            dl $800B03                           ;CCABDD|        |      ;
			incbin "GFX/sprite/spriteGFX_6_tableAndChairs.fig" 
org $CDB8BD
		levelGFXStage7_lieberary:
            dl $804003                           ;CDB8BD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage7_lieberary.fig"
		spriteGFX_spearKnight:
            dl $800FC4                           ;CDF91D|        |      ;
			incbin "GFX/sprite/spriteGFX_7_spearKnight.fig" 
org $CF8ADD
		spriteGFX_bookBird:
            dl $800303                           ;CF8ADD|        |      ;
			incbin "GFX/sprite/spriteGFX_7_bookBird.fig" 
		spriteGFX_shildGargoyle:
            dl $800C03                           ;CF8E3D|        |      ;
			incbin "GFX/sprite/spriteGFX_7_shildGargoyle.fig" 

org $CFDB5D
		spriteGFX_floatingPlatformBook03:
            dl $800283                           ;CFDB5D|        |      ;
			incbin "GFX/sprite/spriteGFX_7_floatingPlatformBook.fig" 
org $D09EFD
		levelGFXStage7_GrqulesQuater:
            dl $804003                           ;D09EFD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage7_GrqulesQuater.fig"		
		spriteGFX_libraryTrapBallHand:
            dl $8003C3                           ;D0DF5D|        |      ;
			incbin "GFX/sprite/spriteGFX_7_ladyPictureHand.fig" 
		spriteGFX_candleDog:
            dl $800C03                           ;D0E37D|        |      ;
			incbin "GFX/sprite/spriteGFX_7_candleDog.fig" 
org $D1F15D
		spriteGFX_caterpillar:
            dl $800403                           ;D1F15D|        |      ;
			incbin "GFX/sprite/spriteGFX_7_caterpillar.fig" 
org $D3B7FD
		levelGFXStage8_dungeon:
            dl $804003                           ;D3B7FD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage8_dungeon.fig"
		spriteGFX_dungeonTrapsCrusherDaggerStairs:
            dl $8007C3                           ;D3F85D|        |      ;
			incbin "GFX/sprite/spriteGFX_8_trapsCrusherDaggerStairs.fig" 

org $D5C2BD
		levelGFXStage8_franksQuater:
            dl $804003                           ;D5C2BD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage8_franksQuater.fig"		
		levelGFXStage8_dungeon_BG:
            dl $8012C3                           ;D6831D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage8_dungeon_BG.fig"
org $D7D87D
		levelGFXStage9_start:
            dl $804003                           ;D7D87D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage9_start.fig"	
		levelGFXStage9_2bpp_Ghosts:
            dl $800243                           ;D898DD|        |      ;
			incbin "GFX/tiles/lvlGFX_stage9_ghost.2bpp"
		spriteGFX_suckholeStone01:
            dl $800744                           ;D89B7D|        |      ;
			incbin "GFX/sprite/spriteGFX_9_suckholeStone_00.fig" 
org $DAA63D
		levelGFXStage9_ZapfQuater:
            dl $804003                           ;DAA63D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage9_ZapfQuater.fig"
		levelGFXStage9_BG_tresure:
            dl $800A03                           ;DAE69D|        |      ;
			incbin "GFX/tiles/lvlGFX_stage9_BG_tresure.fig"

org $DCD39D		
		suckholeStone02:
            dl $800744                           ;DCD39D|        |      ;
			incbin "GFX/sprite/spriteGFX_9_suckholeStone_01.fig" 
		spriteGFX_brumblingBlocksAndRings03:
            dl $8003C3                           ;DCDB5D|        |      ;
			incbin "GFX/sprite/spriteGFX_9_crumblingBlocksAndRings.fig" 
		spriteGFX_skelly02:
            dl $800F04                           ;DCDF7D|        |      ;
			incbin "GFX/sprite/spriteGFX_9_skelly.fig" 
		spriteGFX_boneDragon02:
            dl $8007C3                           ;DCEEFD|        |      ;
			incbin "GFX/sprite/spriteGFX_9_boneDragon.fig" 

org $DDF89D
		levelGFXStageA_ClockTower:
            dl $804003                           ;DDF89D|        |      ;
			incbin "GFX/tiles/lvlGFX_stageA_ClockTower.fig"
		spriteGFX_bigGearCogs:
            dl $8003C4                           ;DEB8FD|        |      ;			
			incbin "GFX/sprite/spriteGFX_A_bigGearCogs.fig" 					   					   
org $DFBEBD					   
		spriteGFX_smallGear:
            dl $800804                           ;DFBEBD|        |      ;					   
			incbin "GFX/sprite/spriteGFX_A_smallGearCogs.fig" 					   				   
org $E1897D					   
		levelGFXStageA_mummyQuater:
            dl $804003                           ;E1897D|        |      ;					   
			incbin "GFX/tiles/lvlGFX_stageA_mummyQuater.fig"					   
org $E2CB5D					   
		levelGFXStageB_bridge:
            dl $804003                           ;E2CB5D|        |      ;					   
			incbin "GFX/tiles/lvlGFX_stageB_bridge.fig"					   
		spriteGFX_headlessKnight:
            dl $800C03                           ;E38BBD|        |      ;					   
			incbin "GFX/sprite/spriteGFX_B_headlessKnight.fig" 					   					   
org $E4999D					   
		spriteGFX_bridgeCrumbles:
            dl $800303                           ;E4999D|        |      ;				   
			incbin "GFX/sprite/spriteGFX_B_bridgeCrumbles.fig" 					   
org $E4DDBD					   
		levelGFXStageB_Tower:
            dl $804003                           ;E4DDBD|        |      ;				   
			incbin "GFX/tiles/lvlGFX_stageB_Tower.fig"					   
		levelGFXStageB_tower_BG_Clouds:
            dl $801F63                           ;E59E1D|        |      ;					   
			incbin "GFX/tiles/lvlGFX_stageB_tower_BG_Clouds.fig"					   
		spriteGFX_rockMan:
            dl $800C03                           ;E5BDDD|        |      ;					   
			incbin "GFX/sprite/spriteGFX_B_rockMan.fig" 					   
		spriteGFX_floatingPlatformStairAndRing:
            dl $8003C3                           ;E5CA3D|        |      ;					   
			incbin "GFX/sprite/spriteGFX_B_floatingPlatformStairAndRing.fig" 					   
		spriteGFX_spikeGear:
            dl $800383                           ;E5CE5D|        |      ;				   
			incbin "GFX/sprite/spriteGFX_B_spikeGear.fig" 					   
org $E6B35D					   
		levelGFXStageB_slograsQuater:
            dl $804003                           ;E6B35D|        |      ;				   
			incbin "GFX/tiles/lvlGFX_stageB_slograsQuater.fig"					   
org $E7F53D					   
		levelGFXStageB_gaiboneQuater:
            dl $804003                           ;E7F53D|        |      ;				   
			incbin "GFX/tiles/lvlGFX_stageB_gaiboneQuater.fig"					   
org $E8F65D					   
		levelGFXStageB_deathQuater:
            dl $804003                           ;E8F65D|        |      ;					   
			incbin "GFX/tiles/lvlGFX_stageB_deathQuater.fig"					   
org $EAB83D					   
		levelGFXStageB_draculasQuater00:
            dl $802003                           ;EAB83D|        |      ;					   
			incbin "GFX/tiles/lvlGFX_stageB_draculasQuater00.fig"		
		levelGFXStageB_draculasQuater01:
            dl $804003                           ;EAD89D|        |      ;
			incbin "GFX/tiles/lvlGFX_stageB_draculasQuater01.fig"
		levelGFXStageB_draculasQuater02_cape00:
            dl $800323                           ;EB98FD|        |      ;					   
			incbin "GFX/tiles/lvlGFX_stageB_draculasQuater02_cape00.fig"					   
		levelGFXStageB_draculasQuater02_BG:
            dl $800184                           ;EB9C7D|        |      ;					   
			incbin "GFX/tiles/lvlGFX_stageB_draculasQuater02_BG.fig"					   
org $EC9FFD 						   
		spriteGFX_DraculasLightning_Fire00:
            dl $800C03                           ;EC9FFD|        |      ;					   
			incbin "GFX/sprite/spriteGFX_DraculasLightning_Fire00.fig" 					   
		spriteGFX_DraculasLightning_Fire01:
            dl $801F83                           ;ECAC5D|        |      ;					   
			incbin "GFX/sprite/spriteGFX_DraculasLightning_Fire01.fig" 					   
org $ECEC9D					   
		rowdinGFXdataPart2:
            dl $800C04                           ;ECEC9D|        |      ;					   
			incbin "GFX/sprite/bosses/rowdinGFXdataPart2.fig" 					   
		rowdinGFXdataPart1:
            dl $802003                           ;ECF91D|        |      ;					   
			incbin "GFX/sprite/bosses/rowdinGFXdataPart1.fig"				   
		koranotRockstGFXdata:
            dl $800383                           ;ED997D|        |      ;					  
			incbin "GFX/sprite/bosses/koranotRockstGFXdata.fig"
		medusaBossGFXdataPart2:
            dl $800C04                           ;ED9D5D|        |      ;
			incbin "GFX/sprite/bosses/medusaBossGFXdataPart2.fig"
		medusBossGFXdataPart1:
            dl $802003                           ;EDA9DD|        |      ;
			incbin "GFX/sprite/bosses/medusBossGFXdataPart1.fig"
		pwuixelGFXdataPart2:
            dl $800C03                           ;EDCA3D|        |      ;
			incbin "GFX/sprite/bosses/pwuixelGFXdataPart2.fig"
		pwuixelGFXdataPart1:
            dl $802003                           ;EDD69D|        |      ;
			incbin "GFX/sprite/bosses/pwuixelGFXdataPart1.fig"
		dancerGFXdataPart2:
            dl $800C03                           ;EDF6FD|        |      ;
			incbin "GFX/sprite/bosses/dancerGFXdataPart2.fig"
		dancerGFXdataPart1:
            dl $802003                           ;EE835D|        |      ;
			incbin "GFX/sprite/bosses/dancerGFXdataPart1.fig"
		zapfBatGFXdataPart2:
            dl $800C03                           ;EEA3BD|        |      ;
			incbin "GFX/sprite/bosses/zapfBatGFXdataPart2.fig"
		zapfBatGFXdataPart1:
            dl $802004                           ;EEB01D|        |      ;
			incbin "GFX/sprite/bosses/zapfBatGFXdataPart1.fig"
		frankenSteinGFXdataPart2:
            dl $800C03                           ;EED09D|        |      ;
			incbin "GFX/sprite/bosses/frankenSteinGFXdataPart2.fig"
		frankensteinGFXdataPart1:
            dl $802003                           ;EEDCFD|        |      ;
			incbin "GFX/sprite/bosses/frankensteinGFXdataPart1.fig"
		gaiboneGFXdataPart2:
            dl $800C03                           ;EEFD5D|        |      ;
			incbin "GFX/sprite/bosses/gaiboneGFXdataPart2.fig"
		gaiboneGFXdataPart1:
            dl $802003                           ;EF89BD|        |      ;
			incbin "GFX/sprite/bosses/gaiboneGFXdataPart1.fig"
		slograGFXdataPart2:
            dl $800C04                           ;EFAA1D|        |      ;
			incbin "GFX/sprite/bosses/slograGFXdataPart2.fig"
		slograGFXdataPart1:
            dl $802003                           ;EFB69D|        |      ;
			incbin "GFX/sprite/bosses/slograGFXdataPart1.fig"		
		grakulGFXdataPart2:
            dl $800C04                           ;EFD6FD|        |      ;
			incbin "GFX/sprite/bosses/grakulGFXdataPart2.fig"
		grakulGFXdataPart1:
            dl $802003                           ;EFE37D|        |      ;
			incbin "GFX/sprite/bosses/grakulGFXdataPart1.fig"
		deathGFXdataPart2:
            dl $800C03                           ;F083DD|        |      ;
			incbin "GFX/sprite/bosses/deathGFXdataPart2.fig"
		deathGFXdataPart1:
            dl $802003                           ;F0903D|        |      ;
			incbin "GFX/sprite/bosses/deathGFXdataPart1.fig"
		mummyGFXdataPart2:
            dl $800C04                           ;F0B09D|        |      ;
			incbin "GFX/sprite/bosses/mummyGFXdataPart2.fig"
		mummyGFXdataPart1:
            dl $802003                           ;F0BD1D|        |      ;
			incbin "GFX/sprite/bosses/mummyGFXdataPart1.fig"
org $FD87FD
		viperBossGFXdataPart2:
            dl $800C03
			incbin "GFX/sprite/bosses/viperBossGFXdataPart2.fig"
		viperBossGFXdataPart1:
            db $03,$20,$80                       ;FD945D|        |      ;
			incbin "GFX/sprite/bosses/viperBossGFXdataPart1.fig"
		koranotGFXdataMod7_8bppLinear:
            db $44,$3C,$80                       ;FDB75D|        |      ;	
			incbin "GFX/sprite/bosses/koranotGFXdataMod7_8bppLinear.fig"			
		mummyExitGFXdata:
            db $C4,$06,$80                       ;FDF41D|        |      ;		
			incbin "GFX/sprite/bosses/mummyExitGFXdata.fig"
		deathExitGFXdata:
            db $43,$03,$80                       ;FDFB5D|        |      ;		
			incbin "GFX/sprite/bosses/deathExitGFXdata.fig"							
}

{ ; -- misc GFX ---------------------------------------------------- incbin ...

org $F3A57D
		konamiLogoFirstScreenGFXData:
            dl $801403                      ;F3A57D|        |      ;
			incbin "GFX/misc/konamiScreen.fig"
org $F3C6FD
		fontGFXdata2bpp:
            dl $8002f3                       ;F3C6FD|        |      ;
			incbin "GFX/misc/fontGFXdata2bpp.fig"		
		dataGFXSpritesEquipment:
            dl $801003                       ;F3CA5D|        |      ;
			incbin "GFX/sprite/spriteGFX_0_Equipment.fig"
		whipLeatherStrightGFXdata:
            dl $800083                       ;F3DABD|        |      ;
			incbin "GFX/misc/whipLeatherStrightGFXdata.fig"
		whipLeatherLimpGFXdata:
            dl $800083                       ;F3DB9D|        |      ;
			incbin "GFX/misc/whipLeatherLimpGFXdata.fig"
		whipLeatherNoWhipGFXdata:
            dl $800023                       ;F3DC7D|        |      ;
			incbin "GFX/misc/whipLeatherNoWhipGFXdata.fig"
		whipChainStrightGFXdata:
            dl $800083                       ;F3DCFD|        |      ;
			incbin "GFX/misc/whipChainStrightGFXdata.fig"
		whipChainLimphGFXdata:
            dl $800083                           ;F3DDDD|        |      ;
			incbin "GFX/misc/whipChainLimphGFXdata.fig"
		whipChainNoWhipGFXdata:
            dl $800023                           ;F3DEBD|        |      ;
			incbin "GFX/misc/whipChainNoWhipGFXdata.fig"
		castleMap1Mode7Tilemap:
            dl $803D44                           ;F3DF3D|        |      ;	
			incbin "GFX/misc/map_tilesOutside_8bpp_linear.fig"
org $F49CFD		
		castleMap2Mode7Tilemap:
            dl $803F84                           ;F49CFD|        |      ;	
			incbin "GFX/misc/map_tilesInside_8bpp_linear.fig"
org $F5A6DD
		nameScreenGFXdataBorders:
            dl $8003A3                           ;F5A6DD|        |      ;
			incbin "GFX/misc/mapScreenBorders.fig"
		nameScreenBigFontsGFXdata:
            dl $800963                           ;F5AADD|        |      ;			
			incbin "GFX/misc/nameScreenBigFontsGFXdata.2bpp"			
		mapScreenBordersBatDotsGFXdata:
            dl $800F03                           ;F5B49D|        |      ;			
			incbin "GFX/misc/mapScreenBordersBatDotsGFXdata.fig"	
		endingScreenTileData00:
            dl $802003                           ;F5C3FD|        |      ;			
			incbin "GFX/misc/endingScreenTileData00.fig"		
		endingScreenTileData01:
            dl $800B43                           ;F5E45D|        |      ;		
			incbin "GFX/misc/endingScreenTileData01.fig"
		endingScreenSpritesData:
            dl $801444                           ;F5EFFD|        |      ;			
			incbin "GFX/misc/endingScreenSpritesData.fig"
org $F89B9D	
		miscDataProbablyTilemaping:
            dl $800304                           ;F89B9D|        |      ;		
			incbin "GFX/misc/miscDataProbablyTilemaping.fig"
		nameScreenBorderGFXdata02:
            dl $801B03                           ;F89F1D|        |      ;			
			incbin "GFX/misc/nameScreenTiles.fig"
		probablyMoreTilemapDataTitlescreen01:
            dl $800803                       ;F8BA7D|        |      ;	
			incbin "GFX/misc/probablyMoreTilemapDataTitlescreen01.fig"
		selectionFlameSpriteGFXdata:
            dl $800343                     ;F8C2DD|        |      ;		
			incbin "GFX/misc/selectionFlameSpriteGFXdata.fig"
		titleScreenCastlevaniaLogoGFXdata:
            dl $802003                      ;F8C67D|        |      ;			
			incbin "GFX/misc/titleScreenCastlevaniaLogoGFXdata.fig"
		passwordScreenTileGFXdata:
            dl $802003                       ;F8E6DD|        |      ;
			incbin "GFX/misc/PW_ScreenTileGFXdata.fig"

org $F98F9D
		someBorderGFXdata:
            dl $800243                            ;F98F9D|        |      ;
			incbin "GFX/misc/PW_redBoarderSprite.fig"
		japaneseFontsGFXdata:
            dl $8007f3                         ;F9923D|        |      ;			
			incbin "GFX/misc/japaneseFontsGFXdata.fig"
		introGraveTileGFXdata00:
            dl $802003                           ;F99A9D|        |      ;			
			incbin "GFX/misc/introGraveTileGFXdata00.fig"
		introGraveTileGFXdata01:
            dl $802004                 ;F9BAFD|        |      ;		
			incbin "GFX/misc/introGraveTileGFXdata01.fig"
		introGraveTileGFXdata02:
            dl $800033                          ;F9DB7D|        |      ;		
			incbin "GFX/misc/introGraveTileGFXdata02.fig"
		introGraveTileGFXdata03:           
			dl $800b83                       ;F9DC1D|        |      ;			
			incbin "GFX/misc/introGraveTileGFXdata03.fig"
org $FA80FD
		titleScreenLogoBGwallTileData00:
            dl $802003                  ;FA80FD|        |      ;		
			incbin "GFX/misc/titleScreenLogoBGwallTileData00.fig"
		titleScreenLogoBGwallTileData01:
            dl $800dc3                            ;FAA15D|        |      ;			
			incbin "GFX/misc/titleScreenLogoBGwallTileData01.fig"
org $FAC83D
		titleScreenSpriteGFXdata:
            dl $801683                          ;FAC83D|        |      ;
			incbin "GFX/misc/titleScreenSpriteGFXdata.fig"
		introScreenCastleGFXdata:
            dl $802003                       ;FADF1D|        |      ;
			incbin "GFX/misc/introScreenCastleGFXdata.fig"
org $FBB89D
		introSimonWhipingGFXdata:
            dl $801643                            ;FBB89D|        |      ;
			incbin "GFX/misc/introSimonWhipingGFXdata.fig"

org $FDB4BD
		slograExitGFXdata:
            dl $800243                        ;FDB4BD|        |      ;
			incbin "GFX/misc/slograExitGFXdata.fig"

org $FDFEFD
		mostlyEmptySpaceGFXdata:
            dl $801003                       ;FDFEFD|        |      ;
			incbin "GFX/misc/mostlyEmptySpaceGFXdata.fig"
			
check bankcross on

}

{ ; -- misc GFX loades ---------------------------------------------
org $829398									; miscGFXload
		LDX.W bossSrcDestPointer,Y           ;829398|BED6B9  |81B9D6;
org $81B9D6									
	bossSrcDestPointer:							
        dw rowdinSrcDestPointer              ;81B9D6|        |81B9EE;
        dw koranotSrcDestPointer             ;81B9D8|        |81B9FC;
        dw medusaBossSrcDestPointer          ;81B9DA|        |81BA05;
        dw pwuexilSrcDestPointer             ;81B9DC|        |81BA13;
        dw dancerSrcDestPointer              ;81B9DE|        |81BA21;
        dw zapfBatSrcDestPointer             ;81B9E0|        |81BA2F;
        dw frankensteintSrcDestPointer       ;81B9E2|        |81BA3D;
        dw gaiboneSrcDestPointer             ;81B9E4|        |81BA4B;
        dw slograSrcDestPointer              ;81B9E6|        |81BA59;
        dw grakulSrcDestPointer              ;81B9E8|        |81BA67;
        dw deathSrcDestPointer               ;81B9EA|        |81BA75;
        dw mummySrcDestPointer               ;81B9EC|        |81BA83;
	
	rowdinSrcDestPointer:
                       dw $0100,$6A00                       ;81B9EE|        |      ;
                       dl rowdinGFXdataPart2                ;81B9F2|        |ECEC9D;
                       dw $7000                             ;81B9F5|        |      ;
                       dl rowdinGFXdataPart1                ;81B9F7|        |ECF91D;
                       dw $FFFF                             ;81B9FA|        |      ;
                                                            ;      |        |      ;
	koranotSrcDestPointer:
                       dw $0100,$6C00                       ;81B9FC|        |      ;
                       dl koranotRockstGFXdata              ;81BA00|        |ED997D;
                       dw $FFFF                             ;81BA03|        |      ;
                                                            ;      |        |      ;
	medusaBossSrcDestPointer:
                       dw $0100,$6A00                       ;81BA05|        |      ;
                       dl medusaBossGFXdataPart2            ;81BA09|        |ED9D5D;
                       dw $7000                             ;81BA0C|        |      ;
                       dl medusBossGFXdataPart1             ;81BA0E|        |EDA9DD;
                       dw $FFFF                             ;81BA11|        |      ;
                                                            ;      |        |      ;
	pwuexilSrcDestPointer:
                       dw $0100,$6A00                       ;81BA13|        |      ;
                       dl pwuixelGFXdataPart2               ;81BA17|        |EDCA3D;
                       dw $7000                             ;81BA1A|        |      ;
                       dl pwuixelGFXdataPart1               ;81BA1C|        |EDD69D;
                       dw $FFFF                             ;81BA1F|        |      ;
                                                            ;      |        |      ;
	dancerSrcDestPointer:
                       dw $0100,$6A00                       ;81BA21|        |      ;
                       dl dancerGFXdataPart2                ;81BA25|        |EDF6FD;
                       dw $7000                             ;81BA28|        |      ;
                       dl dancerGFXdataPart1                ;81BA2A|        |EE835D;
                       dw $FFFF                             ;81BA2D|        |      ;
                                                            ;      |        |      ;
	zapfBatSrcDestPointer:
                       dw $0100,$6A00                       ;81BA2F|        |      ;
                       dl zapfBatGFXdataPart2               ;81BA33|        |EEA3BD;
                       dw $7000                             ;81BA36|        |      ;
                       dl zapfBatGFXdataPart1               ;81BA38|        |EEB01D;
                       dw $FFFF                             ;81BA3B|        |      ;
                                                            ;      |        |      ;
	frankensteintSrcDestPointer:
                       dw $0100,$6A00                       ;81BA3D|        |      ;
                       dl frankenSteinGFXdataPart2          ;81BA41|        |EED09D;
                       dw $7000                             ;81BA44|        |      ;
                       dl frankensteinGFXdataPart1          ;81BA46|        |EEDCFD;
                       dw $FFFF                             ;81BA49|        |      ;
                                                            ;      |        |      ;
	gaiboneSrcDestPointer:
                       dw $0100,$6A00                       ;81BA4B|        |      ;
                       dl gaiboneGFXdataPart2               ;81BA4F|        |EEFD5D;
                       dw $7000                             ;81BA52|        |      ;
                       dl gaiboneGFXdataPart1               ;81BA54|        |EF89BD;
                       dw $FFFF                             ;81BA57|        |      ;
                                                            ;      |        |      ;
	slograSrcDestPointer:
                       dw $0100,$6A00                       ;81BA59|        |      ;
                       dl slograGFXdataPart2                ;81BA5D|        |EFAA1D;
                       dw $7000                             ;81BA60|        |      ;
                       dl slograGFXdataPart1                ;81BA62|        |EFB69D;
                       dw $FFFF                             ;81BA65|        |      ;
                                                            ;      |        |      ;
	grakulSrcDestPointer:
                       dw $0100,$6A00                       ;81BA67|        |      ;
                       dl grakulGFXdataPart2                ;81BA6B|        |EFD6FD;
                       dw $7000                             ;81BA6E|        |      ;
                       dl grakulGFXdataPart1                ;81BA70|        |EFE37D;
                       dw $FFFF                             ;81BA73|        |      ;
                                                            ;      |        |      ;
	deathSrcDestPointer:
                       dw $0100,$6A00                       ;81BA75|        |      ;
                       dl deathGFXdataPart2                 ;81BA79|        |F083DD;
                       dw $7000                             ;81BA7C|        |      ;
                       dl deathGFXdataPart1                 ;81BA7E|        |F0903D;
                       dw $FFFF                             ;81BA81|        |      ;
                                                            ;      |        |      ;
	mummySrcDestPointer:
					   dw $0100,$6A00                       ;81BA83|        |      ;
                       dl mummyGFXdataPart2                 ;81BA87|        |F0B09D;
                       db $00,$70                           ;81BA8A|        |      ;
                       dl mummyGFXdataPart1                 ;81BA8C|        |F0BD1D;
                       db $FF,$FF                           ;81BA8F|        |      ;
org $81E267
	viperSrcDestPointer:
                       dw $0100,$6A00                       ;81E267|        |      ;
                       dl viperBossGFXdataPart2             ;81E26B|        |FD87FD;
                       dw $7000                             ;81E26E|        |      ;
                       dl viperBossGFXdataPart1             ;81E270|        |FD945D;
                       dw $FFFF                             ;81E273|        |      ;
org $81F349 
	koranotGFX_miscLoade:
                       dw $0203,$0000                       ;81F349|        |      ;
                       dl koranotGFXdataMod7_8bppLinear     ;81F34D|        |FDB75D;
                       dw $FFFF,$0000,$6C00                 ;81F350|        |      ;
                       dl koranotRockstGFXdata              ;81F356|        |ED997D;
                       dw $FFFF                             ;81F359|        |      ;

org $81E843
    slograDoor_GFX:
                       dw $0100,$6A00                       ;81E843|        |      ;
                       dl slograExitGFXdata                 ;81E847|        |FDB4BD;
                       dw $FFFF                             ;81E84A|        |      ;

org $81FA19
	zapfStairsMiscLoad:
                       dw $0100,$6A00                       ;81FA19|        |      ;
                       dl suckholeStone02                   ;81FA1D|        |DCD39D;
                       dw $FFFF                             ;81FA20|        |      ;
org $81FA77
	miscGFXload_mummyExit:
                       dw $0100,$6A00                       ;81FA77|        |      ;
                       dl mummyExitGFXdata                  ;81FA7B|        |FDF41D;
                       dw $FFFF                             ;81FA7E|        |      ;

org $81FACC   
	miscGFX_tourchLoad:
                       dw $0100,$6A00                       ;81FACC|        |      ;
                       dl deathExitGFXdata                  ;81FAD0|        |FDFB5D;
                       dw $FFFF                             ;81FAD3|        |      ;

org $81F9DC
	miscGFXload_something:
                       dw $0103,$0000                       ;81F9DC|        |      ;
                       dl mostlyEmptySpaceGFXdata           ;81F9E0|        |FDFEFD;
                       dw $FFFF                             ;81F9E3|        |      ;

org $81FA0F
	whipGFXtransitionReloadPointer:
                       dw whipLeatherLimpGFXsrcDesPointer   ;81FA0F|        |81B411;
                       dw whipChainLimpGFXsrcDesPointer     ;81FA11|        |81B424;
                       dw whipChainLimpGFXsrcDesPointer     ;81FA13|        |81B424;


org $81B3D9			; miscGFXload
	englishFontGFXsrcDesPointer:
                       dw $0000,$5000                       ;81B3D9|        |      ;
                       dl fontGFXdata2bpp                   ;81B3DD|        |F3C6FD;
                       dw $FFFF                             ;81B3E0|        |      ;
                                                            ;      |        |      ;
	mainEquipmentGFXsrcDesPointer:
                       dw $0000,$6200                       ;81B3E2|        |      ;
                       dl dataGFXSpritesEquipment           ;81B3E6|        |F3CA5D;
                       dw $FFFF                             ;81B3E9|        |      ;
                                                            ;      |        |      ;
	whipLeatherGFXsrcDesPointer:
                       dw $0100,$6200                       ;81B3EB|        |      ;
                       dl whipLeatherStrightGFXdata         ;81B3EF|        |F3DABD;
                       dw $6300                             ;81B3F2|        |      ;
                       dl whipLeatherLimpGFXdata            ;81B3F4|        |F3DB9D;
                       dw $69C0                             ;81B3F7|        |      ;
                       dl whipLeatherNoWhipGFXdata          ;81B3F9|        |F3DC7D;
                       dw $FFFF                             ;81B3FC|        |      ;
                                                            ;      |        |      ;
	whipChainGFXsrcDesPointer:
                       dw $0100,$6200                       ;81B3FE|        |      ;
                       dl whipChainStrightGFXdata           ;81B402|        |F3DCFD;
                       dw $6300                             ;81B405|        |      ;
                       dl whipChainLimphGFXdata             ;81B407|        |F3DDDD;
                       dw $69C0                             ;81B40A|        |      ;
                       dl whipChainNoWhipGFXdata            ;81B40C|        |F3DEBD;
                       dw $FFFF                             ;81B40F|        |      ;
                                                            ;      |        |      ;
	whipLeatherLimpGFXsrcDesPointer:
                       dw $0000,$6200                       ;81B411|        |      ;
                       dl whipLeatherStrightGFXdata         ;81B415|        |F3DABD;
                       dw $6300                             ;81B418|        |      ;
                       dl whipLeatherLimpGFXdata            ;81B41A|        |F3DB9D;
                       dw $69C0                             ;81B41D|        |      ;
                       dl whipLeatherNoWhipGFXdata          ;81B41F|        |F3DC7D;
                       dw $FFFF                             ;81B422|        |      ;
                                                            ;      |        |      ;
	whipChainLimpGFXsrcDesPointer:
                       dw $0000,$6200                       ;81B424|        |      ;
                       dl whipChainStrightGFXdata           ;81B428|        |F3DCFD;
                       dw $6300                             ;81B42B|        |      ;
                       dl whipChainLimphGFXdata             ;81B42D|        |F3DDDD;
                       dw $69C0                             ;81B430|        |      ;
                       dl whipChainNoWhipGFXdata            ;81B432|        |F3DEBD;
                       dw $FFFF                             ;81B435|        |      ;
                                                            ;      |        |      ;
	some05GFXsrcDesPointer:
                       dw $0003,$0000                       ;81B437|        |      ;
                       dl castleMap1Mode7Tilemap            ;81B43B|        |F3DF3D;
                       dw $FFFF                             ;81B43E|        |      ;
                                                            ;      |        |      ;
	some06GFXsrcDesPointer:
                       dw $0003,$0000                       ;81B440|        |      ;
                       dl castleMap2Mode7Tilemap            ;81B444|        |F49CFD;
                       dw $FFFF                             ;81B447|        |      ;
                                                            ;      |        |      ;
	some07GFXsrcDesPointer:
                       dw $0103,$0000                       ;81B449|        |      ;
                       dl someDataThatGotExpanded00         ;81B44D|        |F4DCFD;
                       dw $1000                             ;81B450|        |      ;
                       dl someDataThatGotExpanded01         ;81B452|        |F4ED5D;
                       dw $FFFF                             ;81B455|        |      ;
                                                            ;      |        |      ;
	some08GFXsrcDesPointer:
                       dw $0103,$0000                       ;81B457|        |      ;
                       dl someDataThatGotExpanded02         ;81B45B|        |F4FDBD;
                       dw $1000                             ;81B45E|        |      ;
                       dl someDataThatGotExpanded03         ;81B460|        |F58E1D;
                       dw $FFFF                             ;81B463|        |      ;
                                                            ;      |        |      ;
	some09GFXsrcDesPointer:
                       dw $0000,$4800                       ;81B465|        |      ;
                       dl someDataThatGotExpanded04         ;81B469|        |F59E7D;
                       dw $4000                             ;81B46C|        |      ;
                       dl nameScreenGFXdataBorders          ;81B46E|        |F5A6DD;
                       dw $5180                             ;81B471|        |      ;
                       dl nameScreenBigFontsGFXdata         ;81B473|        |F5AADD;
                       dw $6A00                             ;81B476|        |      ;
                       dl mapScreenBordersBatDotsGFXdata    ;81B478|        |F5B49D;
                       dw $FFFF                             ;81B47B|        |      ;
                                                            ;      |        |      ;
	some0aGFXsrcDesPointer:
                       dw $0000,$2000                       ;81B47D|        |      ;		ending 
                       dl endingScreenTileData00            ;81B481|        |F5C3FD;
                       dw $3000                             ;81B484|        |      ;
                       dl endingScreenTileData01            ;81B486|        |F5E45D;
                       dw $6000                             ;81B489|        |      ;
                       dl endingScreenSpritesData           ;81B48B|        |F5EFFD;
                       dw $0000                             ;81B48E|        |      ;
                       dl probablyEndingScreenBlockMapData  ;81B490|        |F684BD;
                       dw $1000                             ;81B493|        |      ;
                       dl probablyEndingScreenSceneMapData  ;81B495|        |F6951D;
                       dw $FFFF                             ;81B498|        |      ;
                                                            ;      |        |      ;
	some0bGFXsrcDesPointer:
                       dw $0100,$5180                       ;81B49A|        |      ;		ending 
                       dl nameScreenBigFontsGFXdata         ;81B49E|        |F5AADD;
                       dw $FFFF                             ;81B4A1|        |      ;
                                                            ;      |        |      ;
	some0cGFXsrcDesPointer:
                       dw $0000,$5000                       ;81B4A3|        |      ;
                       dl fontGFXdata2bpp                   ;81B4A7|        |F3C6FD;
                       dw $FFFF                             ;81B4AA|        |      ;
                                                            ;      |        |      ;
	simonSpriteSheetLoad:
                       dw $0001                             ;81B4AC|        |      ;
                       dl $7F0000                           ;81B4AE|        |      ;
                       dl simonSpriteData00                 ;81B4B1|        |F6A57D;
                       dl $7F2000                           ;81B4B4|        |      ;
                       dl simonSpriteData01                 ;81B4B7|        |F6C5FD;
                       dl $7F4000                           ;81B4BA|        |      ;
                       dl simonSpriteData02                 ;81B4BD|        |F6E65D;
                       dl $7F6000                           ;81B4C0|        |      ;
                       dl simonSpriteData03                 ;81B4C3|        |F786BD;
                       dl $7F8000                           ;81B4C6|        |      ;
                       dl simonSpriteData04                 ;81B4C9|        |F7A71D;
                       dl $7FA000                           ;81B4CC|        |      ;
                       dl simonSpriteData05                 ;81B4CF|        |F7C77D;
                       dl $7FC000                           ;81B4D2|        |      ;
                       dl simonSpriteData06                 ;81B4D5|        |F7E7DD;
                       dl $7FE000                           ;81B4D8|        |      ;
                       dl animatedTilesGFXdataWater00       ;81B4DB|        |F8883D;
                       dl $7FF800                           ;81B4DE|        |      ;
                       dl miscDataProbablyTilemaping        ;81B4E1|        |F89B9D;
                       dw $FFFF                             ;81B4E4|        |      ;
                                                            ;      |        |      ;
	some0eGFXsrcDesPointer:
                       dw $0000,$2000                       ;81B4E6|        |      ; option Menu 
                       dl nameScreenBorderGFXdata02         ;81B4EA|        |F89F1D;
                       dw $0000                             ;81B4ED|        |      ;
                       dl probablyMoreTilemapDataTitlescreen01;81B4EF|        |F8BA7D;
                       dw $5000                             ;81B4F2|        |      ;
                       dl fontGFXdata2bpp                   ;81B4F4|        |F3C6FD;
                       dw $5180                             ;81B4F7|        |      ;
                       dl nameScreenBigFontsGFXdata         ;81B4F9|        |F5AADD;
                       dw $6000                             ;81B4FC|        |      ;
                       dl selectionFlameSpriteGFXdata       ;81B4FE|        |F8C2DD;
                       dw $FFFF                             ;81B501|        |      ;
                                                            ;      |        |      ;
	flameSprOptionsGFXsrcDesPointer:
                       dw $0000,$6000                       ;81B503|        |      ;
                       dl selectionFlameSpriteGFXdata       ;81B507|        |F8C2DD;
                       dw $FFFF                             ;81B50A|        |      ;
                                                            ;      |        |      ;
	some10GFXsrcDesPointer:
                       dw $0000,$2000                       ;81B50C|        |      ;	game over
                       dl titleScreenCastlevaniaLogoGFXdata ;81B510|        |F8C67D;
                       dw $5000                             ;81B513|        |      ;
                       dl fontGFXdata2bpp                   ;81B515|        |F3C6FD;
                       dw $FFFF                             ;81B518|        |      ;
                                                            ;      |        |      ;
	miscPW_GFX_load:
                       dw $0000,$2000                       ;81B51A|        |      ; password screen 
                       dl passwordScreenTileGFXdata         ;81B51E|        |F8E6DD;
                       dw $0000                             ;81B521|        |      ;
                       dl moreTilemapDataIshouldFigureOut   ;81B523|        |F9873D;
                       dw $5000                             ;81B526|        |      ;
                       dl fontGFXdata2bpp                   ;81B528|        |F3C6FD;
                       dw $6200                             ;81B52B|        |      ;
                       dl dataGFXSpritesEquipment           ;81B52D|        |F3CA5D;
                       dw $6A00                             ;81B530|        |      ;
                       dl someBorderGFXdata                 ;81B532|        |F98F9D;
                       dw $FFFF                             ;81B535|        |      ;
                                                            ;      |        |      ;
	some12GFXsrcDesPointer:
                       dw $0000,$5000                       ;81B537|        |      ;
                       dl japaneseFontsGFXdata              ;81B53B|        |F9923D;
                       dw $5000                             ;81B53E|        |      ;
                       dl fontGFXdata2bpp                   ;81B540|        |F3C6FD;
                       dw $FFFF                             ;81B543|        |      ;
                                                            ;      |        |      ;
	some13GFXsrcDesPointer:
                       dw $0000,$2000                       ;81B545|        |      ;	intro text 
                       dl introGraveTileGFXdata00           ;81B549|        |F99A9D;
                       dw $3000                             ;81B54C|        |      ;
                       dl introGraveTileGFXdata01           ;81B54E|        |F9BAFD;
                       dw $4000                             ;81B551|        |      ;
                       dl levelGFXStageB_tower_BG_Clouds    ;81B553|        |E59E1D;
                       dw $5000                             ;81B556|        |      ;
                       dl fontGFXdata2bpp                   ;81B558|        |F3C6FD;
                       dw $5180                             ;81B55B|        |      ;
                       dl introGraveTileGFXdata02           ;81B55D|        |F9DB7D;
                       dw $6000                             ;81B560|        |      ;
                       dl introGraveTileGFXdata03           ;81B562|        |F9DC1D;
                       dw $FFFF                             ;81B565|        |      ;
                                                            ;      |        |      ;
	some14GFXsrcDesPointer:
                       dw $0001                             ;81B567|        |      ;	intro text
                       dl $7E6000                           ;81B569|        |      ;
                       dl tilemapDataProbablyGravyardScene  ;81B56C|        |F9E7FD;
                       dl $7EC000                           ;81B56F|        |      ;
                       dl moreTilemapDataProbablyGravyardIguess;81B572|        |F9F17D;
                       dl $7E8000                           ;81B575|        |      ;
                       dl mightBeTilemapDataGraveExplosion00;81B578|        |F9FBDD;
                       dl $7E8080                           ;81B57B|        |      ;
                       dl mightBeTilemapDataGraveExplosion00;81B57E|        |F9FBDD;
                       dl $7E8100                           ;81B581|        |      ;
                       dl mightBeTilemapDataGraveExplosion00;81B584|        |F9FBDD;
                       dl $7E8180                           ;81B587|        |      ;
                       dl mightBeTilemapDataGraveExplosion00;81B58A|        |F9FBDD;
                       dl $7E8200                           ;81B58D|        |      ;
                       dl mightBeTilemapDataGraveExplosion00;81B590|        |F9FBDD;
                       dl $7E8280                           ;81B593|        |      ;
                       dl mightBeTilemapDataGraveExplosion01;81B596|        |F9FCDD;
                       dl $7EE000                           ;81B599|        |      ;
                       dl mightBeTilemapDataGraveExplosion02;81B59C|        |F9FE3D;
                       dl $7EF000                           ;81B59F|        |      ;
                       dl mightBeTilemapDataGraveExplosion03;81B5A2|        |F9FF9D;
                       dw $FFFF                             ;81B5A5|        |      ;
                                                            ;      |        |      ;
	titleScreenGFX_tilmapLoad:
                       dw $0000,$2000                       ;81B5A7|        |      ; title screen 
                       dl titleScreenCastlevaniaLogoGFXdata ;81B5AB|        |F8C67D;
                       dw $3000                             ;81B5AE|        |      ;
                       dl titleScreenLogoBGwallTileData00   ;81B5B0|        |FA80FD;
                       dw $4000                             ;81B5B3|        |      ;
                       dl titleScreenLogoBGwallTileData01   ;81B5B5|        |FAA15D;
                       dw $5000                             ;81B5B8|        |      ;
                       dl fontGFXdata2bpp                   ;81B5BA|        |F3C6FD;
                       dw $5180                             ;81B5BD|        |      ;
                       dl introGraveTileGFXdata02           ;81B5BF|        |F9DB7D;
                       dw $0000                             ;81B5C2|        |      ;
                       dl probablyTitleScreenBGBlockmapData ;81B5C4|        |FAAF7D;
                       dw $1000                             ;81B5C7|        |      ;
                       dl probablyTitleScreenBGSceneData    ;81B5C9|        |FAB7DD;
                       dw $FFFF                             ;81B5CC|        |      ;
                                                            ;      |        |      ;
	some16GFXsrcDesPointer:
                       dw $0000,$6000                       ;81B5CE|        |      ;
                       dl titleScreenSpriteGFXdata          ;81B5D2|        |FAC83D;
                       dw $FFFF                             ;81B5D5|        |      ;
                                                            ;      |        |      ;
	some17GFXsrcDesPointer:
                       dw $0000,$2000                       ;81B5D7|        |      ;
                       dl introScreenCastleGFXdata          ;81B5DB|        |FADF1D; not sure or what bank..
                       dw $3000                             ;81B5DE|        |      ;
                       dl someOtherTMdata                   ;81B5E0|        |FAFF7D;
                       dw $4000                             ;81B5E3|        |      ;
                       dl levelGFXStageB_tower_BG_Clouds    ;81B5E5|        |E59E1D;
                       dw $0000                             ;81B5E8|        |      ;
                       dl someOtherTMdata01                 ;81B5EA|        |FB9FDD;
                       dw $1000                             ;81B5ED|        |      ;
                       dl someOtherTMdata02                 ;81B5EF|        |FBB03D;
                       dw $6000                             ;81B5F2|        |      ;
                       dl introSimonWhipingGFXdata          ;81B5F4|        |FBB89D;
                       dw $FFFF                             ;81B5F7|        |      ;
                                                            ;      |        |      ;
	musicData_18_srcDesPointer:
						dw $0002,$7F80                       ;81B5F9|        |      ;
						dl musicData_7f80                    ;81B5FD|        |FBCF3D;
						dw $FFFE,$5000                       ;81B600|        |      ;
						dl musicSample_00                      ;81B604|        |1DAD35; music BRR samples
						dw $2F80,$0400                       ;81B607|        |      ;
						dl musicEngine                       ;81B60B|        |FCCF9D;
						dw $FFFF                             ;81B60E|        |      ;
org $818B5D				; miscGFXload
	konamiGFXsrcDestPointer:
                       dw $0000,$2000                       ;818B5D|        |      ;
                       dl konamiLogoFirstScreenGFXData      ;818B61|        |F3A57D;
                       dw $1000                             ;818B64|        |      ;
                       dl konamiScreenBG2_tilemap           ;818B66|        |F3B9DD;
                       dw $0000                             ;818B69|        |      ;
                       dl konamiScreenBG1_tilemap           ;818B6B|        |F3C23D;
                       dw $0100                             ;818B6E|        |      ;
                       dl konamiScreemBG2_transparent       ;818B70|        |F3C49D;
                       dw $FFFF                             ;818B73|        |      ;
                                                            ;      |        |      ;
     konamiPalAnim_00:
                       db $01                               ;818B75|        |      ;	intro 
                       dw $0000                             ;818B76|        |      ;
                       dw konamiScreenDataPaletteData00     ;818B78|        |86C800;
                       dw $2260                             ;818B7A|        |      ;
                       dw konamiScreenDataPaletteData01     ;818B7C|        |86C822;
                       dw $2200                             ;818B7E|        |      ;
                       dw konamiScreenDataPaletteData01     ;818B80|        |86C822;
                       dw $2220                             ;818B82|        |      ;
                       dw konamiScreenDataPaletteData01     ;818B84|        |86C822;
                       dw $2240,$0000                       ;818B86|        |      ;
                                                            ;      |        |      ;
     konamiPalAnim_01:
                       db $01                               ;818B8A|        |      ;
                       dw $0000                             ;818B8B|        |      ;
                       dw konamiScreenDataPaletteData02     ;818B8D|        |86C844;
                       dw $2200,$0000                       ;818B8F|        |      ;
                                                            ;      |        |      ;
     konamiPalAnim_02:
                       db $01                               ;818B93|        |      ;
                       dw $0000                             ;818B94|        |      ;
                       dw konamiScreenDataPaletteData03     ;818B96|        |86C866;
                       dw $2220,$0000                       ;818B98|        |      ;
                                                            ;      |        |      ;
     konamiPalAnim_03:
                       db $01                               ;818B9C|        |      ;
                       dw $0000                             ;818B9D|        |      ;
                       dw konamiScreenDataPaletteData04     ;818B9F|        |86C888;
                       dw $2240,$0000                       ;818BA1|        |      ;

org $808092					; music engine load 
        LDX.W #musicData_18_srcDesPointer  				 ;808092|A2F9B5  |      ;		#$B5F9      
org $808112
        LDX.W #simonSpriteSheetLoad                       ;808112|A2ACB4  |      ;		#$B4AC  
org $809907
		LDX.W #konamiGFXsrcDestPointer                       ;809907|A25D8B  |      ; konamiGFX pointer #$8B5D   
org $809523
        LDX.W #mainEquipmentGFXsrcDesPointer                      ;809523|A2E2B3  |      ;	#$B3E2   
org $809523
		LDX.W #mainEquipmentGFXsrcDesPointer                        ;809523|A2E2B3  |      ;	#$B3E2  
org $809857
		LDX.W #mainEquipmentGFXsrcDesPointer                      ;809857|A2E2B3  |      ; load equipment/candle GFX #$B3E2 
org $809399
        LDX.W #titleScreenGFX_tilmapLoad                     ;809399|A2A7B5  |      ;		#$B5A7    
org $809AA0		
		LDX.W #some12GFXsrcDesPointer                     ;809AA0|A237B5  |      ;		#$B537    
org $809C81
		LDX.W #some09GFXsrcDesPointer                      ;809C81|A265B4  |      ;         #$B465         
org $809C90
		LDX.W #some05GFXsrcDesPointer                       ;809C90|A237B4  |      ;		#$B437  
org $809C97
		LDX.W #some07GFXsrcDesPointer                       ;809C97|A249B4  |      ;       #$B449  
org $809CB1
		LDX.W #some06GFXsrcDesPointer                       ;809CB1|A240B4  |      ;       #$B440  
org $809CB8
		LDX.W #some08GFXsrcDesPointer                       ;809CB8|A257B4  |      ;       #$B457  
org $80C64E
		LDX.W #some0cGFXsrcDesPointer                        ;80C64E|A2A3B4  |      ;		#$B4A3 
org $80DF11
        LDX.W #whipChainGFXsrcDesPointer                    ;80DF11|A2FEB3  |      ;	whip upgrade 	#$B3FE     
org $82FEDE   
		LDX.W #some17GFXsrcDesPointer                      ;82FEDE|A2D7B5  |      ;		#$B5D7 
org $838033        
		LDX.W #some0eGFXsrcDesPointer                      ;838033|A2E6B4  |      ;		#$B4E6   
org $838247
		LDX.W #miscPW_GFX_load                        ;838247|A21AB5  |      ;		#$B51A 
org $838489
		LDX.W #miscPW_GFX_load                         ;838489|A21AB5  |      ;		#$B51A  password
org $8385D1
		LDX.W #flameSprOptionsGFXsrcDesPointer                     ;8385D1|A203B5  |      ;		#$B503    
org $83DB01
		LDX.W #titleScreenGFX_tilmapLoad                   ;83DB01|A2A7B5  |      ;		#$B5A7      
org $83DB08
		LDX.W #some16GFXsrcDesPointer                      ;83DB08|A2CEB5  |      ;		#$B5CE   
org $83DF9C 
		LDX.W #viperSrcDestPointer                       ;83DF9C|A267E2  |      ;		#$E267   
org $83F4C0 
        LDX.W #slograDoor_GFX                     ;83F4C0|A243E8  |      ;		#$E843    
org $83FA6B                     
		LDX.W #some0aGFXsrcDesPointer                     ;83FA6B|A27DB4  |      ;		#$B47D    
org $83FBD2   
		LDX.W #some0bGFXsrcDesPointer                    ;83FBD2|A29AB4  |      ;		#$B49A     
org $85E713 
		LDX.W #koranotGFX_miscLoade                   ;85E713|A249F3  |      ;		#$F349      
org $85F1CA
		LDX.W #some13GFXsrcDesPointer                     ;85F1CA|A245B5  |      ;		#$B545    
org $85F1D1
		LDX.W #some14GFXsrcDesPointer                       ;85F1D1|A267B5  |      ;		#$B567  
org $86957F           
		LDX.W #miscGFXload_something                        ;86957F|A2DCF9  |      ;		#$F9DC 
org $86B5AD
		LDA.L whipGFXtransitionReloadPointer,X
org $86B975                    
		LDX.W #zapfStairsMiscLoad                      ;86B975|A219FA  |      ;	#$FA19   
org $86C107                      
		LDX.W #miscGFXload_mummyExit                       ;86C107|A277FA  |      ;		#$FA77  
org $86C227                       
		LDX.W #miscGFX_tourchLoad                        ;86C227|A2CCFA  |      ;		#$FACC 
org $8CFD3A                     
		LDX.W #some10GFXsrcDesPointer                       ;8CFD3A|A20CB5  |      ;	#$B50C  


org $FBCF3D
	musicData_7f80:
org $9DAD35
	musicSample_00:
org $FCCF9D
	musicEngine: 
org $F3B9DD
	konamiScreenBG2_tilemap:
org $F3C23D
	konamiScreenBG1_tilemap:
org $F3C49D
	konamiScreemBG2_transparent:	
org $F4DCFD
	someDataThatGotExpanded00:
org $F4ED5D                  
	someDataThatGotExpanded01:
org $F4FDBD                                                   
	someDataThatGotExpanded02:
org $F58E1D
	someDataThatGotExpanded03:
org $F59E7D
	someDataThatGotExpanded04:
org $F684BD
	probablyEndingScreenBlockMapData:
org $F6951D
	probablyEndingScreenSceneMapData:
org $F9E7FD
	tilemapDataProbablyGravyardScene:    
org $F9F17D
	moreTilemapDataProbablyGravyardIguess:   
org $F9FBDD
	mightBeTilemapDataGraveExplosion00:       
org $F9FCDD
	mightBeTilemapDataGraveExplosion01:   
org $F9FE3D
	mightBeTilemapDataGraveExplosion02:    
org $F9FF9D
	mightBeTilemapDataGraveExplosion03:
;org $F8BA7D
;	probablyMoreTilemapDataTitlescreen01:
org $F9873D
	moreTilemapDataIshouldFigureOut:
org $FB9FDD
	someOtherTMdata01:
org $FBB03D
	someOtherTMdata02:	
org $FAAF7D
	probablyTitleScreenBGBlockmapData:
org $FAB7DD
	probablyTitleScreenBGSceneData:
org $FAFF7D
    someOtherTMdata: 

}

{ ; -- palette ----------------------------------------------------- incbin ...
org $86C800							; can be moved!
 konamiScreenDataPaletteData00:
        dw $001F                             ;86C800|        |      ; size of palette data 
		incbin "GFX/misc/PAL_konamiScreen00.col"

    konamiScreenDataPaletteData01:
        dw $001F                             ;86C822|        |      ;
		incbin "GFX/misc/PAL_konamiScreen01.col"

    konamiScreenDataPaletteData02:
        dw $001F                             ;86C844|        |      ;
		incbin "GFX/misc/PAL_konamiScreen02.col"

    konamiScreenDataPaletteData03:
        dw $001F                             ;86C866|        |      ;
		incbin "GFX/misc/PAL_konamiScreen03.col"

    konamiScreenDataPaletteData04:
        dw $001F                             ;86C888|        |      ;
		incbin "GFX/misc/PAL_konamiScreen04.col"

    mainSpritePaletteData:
        dw $00DF                             ;86C8AA|        |      ;
		incbin "GFX/sprite/spritePAL_0_main.col"

    mainHUDpaletteData:
        dw $001D                             ;86C98C|        |      ;
		incbin "GFX/misc/PAL_HUD_FONT.col":($0002)-($0020) 

    titleScreenPaletteData01:
		dw $00DF                             ;86C9AC|        |      ;
		incbin "GFX/misc/PAL_titleScreen.col"

    introStoryScreenPaletteData00:
        dw $003F                             ;86CA8E|        |      ;
		incbin "GFX/misc/PAL_mapWater00.col":($0040)-($0080)

    introStoryScreenPaletteData01:
		dw $0007                             ;86CAD0|        |      ;
		incbin "GFX/misc/PAL_mapWater01_Anim.col"

    introStoryScreenPaletteData02:
		dw $0007                             ;86CADA|        |      ;
		incbin "GFX/misc/PAL_mapWater02_Anim.col"

    introStoryScreenPaletteData03:
		dw $0007                             ;86CAE4|        |      ;
		incbin "GFX/misc/PAL_mapWater03_Anim.col"

	introStoryScreenPaletteData04:
		dw $0007                             ;86CAEE|        |      ;
		incbin "GFX/misc/PAL_mapWater04_Anim.col"

	BGcolorLoadScreens:
		dw $0001                             ;86CAF8|        |      ; 
		incbin "GFX/misc/PAL_BG_color.col"

	introStoryScreenPaletteData06:
		dw $007F                             ;86CAFC|        |      ; 
		incbin "GFX/misc/PAL_PW_screenTiles.col"

	introStoryScreenPaletteData07:
		dw $0003                             ;86CB7E|        |      ; red
		incbin "GFX/misc/PAL_PW_screenRED.col"

	introStoryScreenPaletteData08:
		dw $009F                             ;86CB84|        |      ; title redGravyard lol 
		incbin "GFX/misc/PAL_titleCrittersSprite.col"

	titleScreenThunderPAL:
		dw $017F                             ;86CC26|        |      ;
		incbin "GFX/misc/PAL_titleScreenThunder.col"

	introStoryScreenPaletteData10:
		dw $001F                             ;86CDA8|        |      ;
		incbin "GFX/misc/PAL_nameScreenFlame.col"

	introStoryScreenPaletteData11:
		dw $005F                             ;86CDCA|        |      ;
		incbin "GFX/misc/PAL_nameScreenTiles.col"

	introStoryScreenPaletteData12:
		dw $001F                             ;86CE2C|        |      ;	same as namescreen Flame
		incbin "GFX/misc/PAL_ScreenFlame.col"						

	introStoryScreenPaletteData13:
		dw $013F                             ;86CE4E|        |      ;
		incbin "GFX/misc/PAL_introScreenWhip.col"

	introStoryScreenPaletteData14:
		dw $003F                             ;86CF90|        |      ;
		incbin "GFX/misc/PAL_mapScreenBorders.col"

	introStoryScreenPaletteData15:
		dw $007F                             ;86CFD2|        |      ; 
		incbin "GFX/misc/PAL_map_2_tiles.col":($00a0)-($0120)

	introStoryScreenPaletteData16:
		dw $00BF                             ;86D054|        |      ;
		incbin "GFX/misc/PAL_mapLogo.col"

	introStoryScreenPaletteData17:
		dw $00FF                             ;86D116|        |      ;
		incbin "GFX/misc/PAL_introGraveAnim_17.col"
	introAnimNight_17:
		incbin "GFX/misc/PAL_introGraveAnimNight_17.col"

	introStoryScreenPaletteData18:
		dw $003F                             ;86D218|        |      ;
		incbin "GFX/misc/PAL_introGraveStart.col"

	introStoryScreenPaletteData19:
;		dw $007B                             ;86D259|        |      ;	
		db $7B
	introPalettAnimTrickery:				 ;86D25A|        |      ;
		db $00
		incbin "GFX/misc/PAL_introGraveAnim_19.col"
	introAnimNight_19:
		incbin "GFX/misc/PAL_introGraveAnimNight_19.col"

	paletteDataSpriteStagel09_gold01:
		dw $001F                             ;86D4DA|        |      ; 
		incbin "GFX/sprite/spritePAL_Stage9_gold01.col"

	morePaletteData00:
		dw $017F                             ;86D4FC|        |      ;
		incbin "GFX/misc/PAL_endingTiles.col"

	paletteDataMain0500:
		dw $001F                             ;86D67E|        |      ;
		incbin "GFX/sprite/bosses/PAL_koranot_00.col"

	paletteDataMain0501:
		dw $001F                             ;86D6A0|        |      ;
		incbin "GFX/sprite/bosses/PAL_koranot_01.col"

	paletteDataMain0502:
		dw $001F                             ;86D6C2|        |      ;
		incbin "GFX/sprite/bosses/PAL_koranot_02.col"

	paletteDataMain0503:
		dw $001F                             ;86D6E4|        |      ; unused?? 
		incbin "GFX/misc/unused/unused_paletteDataMain0503.col"

	paletteDataMain0504:
		dw $001F                             ;86D706|        |      ;
		incbin "GFX/misc/unused/unused_paletteDataMain0504.col"

	paletteDataMain0505:
		dw $001F                             ;86D728|        |      ;
		incbin "GFX/misc/unused/unused_paletteDataMain0505.col"

	paletteDataMain0506:
		dw $001F                             ;86D74A|        |      ;
		incbin "GFX/misc/unused/unused_paletteDataMain0506.col"

	paletteDataMain07:
		dw $001F                             ;86D76C|        |      ;
		incbin "GFX/misc/unused/unused_paletteDataMain07.col"

	paletteDataMain0508:
		dw $001F                             ;86D78E|        |      ;
		incbin "GFX/misc/unused/unused_paletteDataMain0508.col"

	paletteDataMain0509:
		dw $001F                             ;86D7B0|        |      ;
		incbin "GFX/misc/unused/unused_paletteDataMain0509.col"

	paletteDataMain0510:
		dw $001F                             ;86D7D2|        |      ;
		incbin "GFX/misc/unused/unused_paletteDataMain0510.col"

	paletteDataMain0511:
		dw $001F                             ;86D7F4|        |      ;
		incbin "GFX/misc/unused/unused_paletteDataMain0511.col"

	paletteDataMain0512:
		dw $003F                             ;86D816|        |      ;
		incbin "GFX/sprite/bosses/PAL_dancer.col"

	paletteDataBossRowdin0513:
		dw $003F                             ;86D858|        |      ;
		incbin "GFX/sprite/bosses/PAL_rowdin.col"

	paletteDataMain0514:
		dw $001F                             ;86D89A|        |      ;
		incbin "GFX/sprite/bosses/PAL_zapfBat_00.col"

	paletteDataMain0515:
		dw $001F                             ;86D8BC|        |      ;
		incbin "GFX/sprite/bosses/PAL_zapfBat_01.col"

	paletteDataMain0516:
		dw $005F                             ;86D8DE|        |      ;
		incbin "GFX/misc/unused/unused_paletteDataMain0516.col"

	morePaletteBossGetHitColor01:
		dw $003F                             ;86D940|        |      ;
		incbin "GFX/sprite/bosses/bossGetHitColor01.col"

	morePaletteData02:
        dw $001F                             ;86D982|        |      ;
		incbin "GFX/sprite/bosses/PAL_medusa_01.col"

	morePaletteData03:
		dw $005F                             ;86D9A4|        |      ;
		incbin "GFX/sprite/bosses/PAL_medusa_02.col"

	morePaletteData04:
		dw $001F                             ;86DA06|        |      ;
		incbin "GFX/sprite/bosses/PAL_medusa_00.col"

	morePaletteData05:
		dw $005F                             ;86DA28|        |      ;
		incbin "GFX/sprite/bosses/PAL_viper.col"

	morePaletteData06:
		dw $005F                             ;86DA8A|        |      ;
		incbin "GFX/sprite/bosses/PAL_puwexil_00.col"

	morePaletteData07:
		dw $001F                             ;86DAEC|        |      ;
		incbin "GFX/sprite/bosses/PAL_puwexil_01.col"

	morePaletteData08:
		dw $001F                             ;86DB0E|        |      ;
		incbin "GFX/sprite/bosses/PAL_frank_bottle_00.col"

	morePaletteData09:
		dw $001F                             ;86DB30|        |      ;
		incbin "GFX/sprite/bosses/PAL_frank_bottle_01.col"

	morePaletteData10:
		dw $001F                             ;86DB52|        |      ;
		incbin "GFX/sprite/bosses/PAL_frank.col"

	morePaletteData11:
		dw $001F                             ;86DB74|        |      ;
		incbin "GFX/sprite/bosses/PAL_frank_bottle_02.col"

	morePaletteData12:
		dw $005F                             ;86DB96|        |      ;
		incbin "GFX/sprite/bosses/PAL_gaibone_00.col"

	morePaletteData13:
		dw $005F                             ;86DBF8|        |      ;
		incbin "GFX/sprite/bosses/PAL_gaibone_01.col"

	morePaletteData14:
		dw $005F                             ;86DC5A|        |      ;
		incbin "GFX/sprite/bosses/PAL_slogra_00.col"

	moreSingleColorLoad00:
        dw $0001                             ;86DCBC|        |      ;
		incbin "GFX/sprite/bosses/PAL_slogra_singlCo_00.col"

	moreSingleColorLoad01:
        dw $0001                             ;86DCC0|        |      ;
		incbin "GFX/misc/unused/unused_moreSingleColorLoad01.col"

	morePaletteData15:
		dw $005F                             ;86DCC4|        |      ;
		incbin "GFX/sprite/bosses/PAL_slogra_01.col"

	morePaletteData16:
		dw $005F                             ;86DD26|        |      ;
		incbin "GFX/sprite/bosses/PAL_grakul.col"

	morePaletteData17:
		dw $001F                             ;86DD88|        |      ;
		incbin "GFX/sprite/bosses/PAL_mummy_00.col"

	morePaletteData18:
		dw $001F                             ;86DDAA|        |      ;
		incbin "GFX/sprite/bosses/PAL_mummy_01.col"

	paletteDataBossDeath_19:
		dw $005F                             ;86DDCC|        |      ;
		incbin "GFX/sprite/bosses/PAL_death.col"

	moreSingleColorLoad02:
		dw $0001                             ;86DE2E|        |      ;
		incbin "GFX/sprite/bosses/PAL_death_singlCo_00.col"

	moreSingleColorLoad03:
		dw $0003                             ;86DE32|        |      ;
		incbin "GFX/sprite/bosses/PAL_death_singlCo_01.col"

	paletteDataSpriteStagel0B_drac01:
		dw $003F                             ;86DE38|        |      ;
		incbin "GFX/sprite/bosses/PAL_drac01.col"

	paletteDataAnimationXX08:
		dw $0001                             ;86DE7A|        |      ;
		incbin "GFX/sprite/bosses/PAL_drac_A0.col"

	paletteDataSpriteStagel05_castlEntrance:
		dw $001F                             ;86DE7E|        |      ;
		incbin "GFX/sprite/spritePAL_Stage5_castlEntrance.col"

	paletteDataStage1Beginning:
		dw $009F                             ;86DEA0|        |      ; 
		incbin "GFX/tiles/lvlGFX_stage1_entrance.col"

	paletteDataSpriteStage1Beginning:
		dw $003F                             ;86DF42|        |      ;
		incbin "GFX/sprite/spritePAL_0.col"

	paletteDataTilesStagel01_Garden:
		dw $00BF                             ;86DF84|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage1_Garden.col"

	paletteDataSpriteStagel01_Garden:
		dw $001F                             ;86E046|        |      ;
		incbin "GFX/sprite/spritePAL_Stage1_Garden.col"

	paletteDataAnimationStagel01_Garden00:
		dw $0003                             ;86E068|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_1_Garden00.col"

	paletteDataAnimationStagel01_Garden01:
		dw $0003                             ;86E06E|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_1_Garden01.col"

	paletteDataTilesStagel01_Castle:
		dw $00BF                             ;86E074|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage1_Castle.col"

	paletteDataSpriteStagel01_Castle:
		dw $001F                             ;86E136|        |      ;
		incbin "GFX/sprite/spritePAL_Stage1_Castle.col"

	paletteDataAnimationStagel01_Castle00:
		dw $0005                             ;86E158|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_1_Castle00.col"

	paletteDataAnimationStagel01_Castle01:
		dw $0005                             ;86E160|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_1_Castle01.col"

	paletteDataAnimationStagel01_Castle02:
		dw $0005                             ;86E168|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_1_Castle02.col"

	paletteDataTilesStagel01_Stable:
		dw $00BF                             ;86E170|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage1_Stable.col"

	paletteDataSpriteTilesStagel01_Stable:
		dw $003F                             ;86E232|        |      ;
		incbin "GFX/sprite/spritePAL_Stage1_Stable.col"

	paletteDataTilesStagel02_graveyard:
		dw $009F                             ;86E274|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage2_graveyard.col"

	paletteDataSpriteStagel02_graveyard:
		dw $001F                             ;86E316|        |      ;
		incbin "GFX/sprite/spritePAL_Stage2_graveyard.col"

	paletteDataTilesStagel02_swamp00:
		dw $00BF                             ;86E338|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage2_swamp00.col"

	paletteDataSpriteStagel02_swamp:
		dw $001F                             ;86E3FA|        |      ;
		incbin "GFX/sprite/spritePAL_Stage2_swamp.col"

	paletteDataAnimationStagel02_Swamp00:
		dw $000B                             ;86E41C|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_Swamp00.col"

	paletteDataAnimationStagel02_Swamp01:
		dw $000B                             ;86E42A|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_Swamp01.col"

	paletteDataAnimationStagel02_Swamp02:
		dw $000B                             ;86E438|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_Swamp02.col"

	paletteDataAnimationStagel02_Swamp03:
		dw $000B                             ;86E446|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_Swamp03.col"

	paletteDataAnimationStagel02_Swamp04:
		dw $000B                             ;86E454|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_Swamp04.col"

	paletteDataAnimationStagel02_Swamp05:
		dw $000B                             ;86E462|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_Swamp05.col"

	paletteDataTilesStagel02_waterSlide00:
		dw $00DF                             ;86E470|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage2_waterSlide00.col"

	paletteDataAnimationWaterSlide00:
		dw $000B                             ;86E552|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_WaterSlide00.col"

	paletteDataAnimationWaterSlide01:
		dw $000B                             ;86E560|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_WaterSlide01.col"

	paletteDataAnimationWaterSlide02:
		dw $000B                             ;86E56E|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_WaterSlide02.col"

	paletteDataAnimationWaterSlide03:
		dw $000B                             ;86E57C|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_WaterSlide03.col"

	paletteDataAnimationWaterSlide04:
		dw $000B                             ;86E58A|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_WaterSlide04.col"

	paletteDataAnimationWaterSlide05:
		dw $000B                             ;86E598|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_WaterSlide05.col"

	paletteDataAnimationWaterSlide10:
		dw $0003                             ;86E5A6|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_WaterSlide10.col"

	paletteDataAnimationWaterSlide11:
		dw $0003                             ;86E5AC|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_2_WaterSlide11.col"

	paletteDataSpriteStagel02_waterSlide:
		dw $001F                             ;86E5B2|        |      ;
		incbin "GFX/sprite/spritePAL_Stage2_waterSlide.col"

	paletteDataTilesStagel03_cave:
		dw $005F                             ;86E5D4|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage3_cave.col"

	paletteDataTileStagel03_cave00:
		dw $001F                             ;86E636|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage3_cave00.col"

	paletteDataSpriteStagel03_cave00:
		dw $001F                             ;86E658|        |      ;
		incbin "GFX/sprite/spritePAL_Stage3_cave00.col"

	paletteDataTilesStagel03_waterfall:
		dw $00BF                             ;86E67A|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage3_waterfall.col"

	paletteDataSpritesStagel03_waterfall:
		dw $001F                             ;86E73C|        |      ;
		incbin "GFX/sprite/spritePAL_Stage3_waterfall.col"

	paletteDataAnimationWaterfall00:
		dw $0009                             ;86E75E|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_3_waterFall_00.col"

	paletteDataAnimationWaterfal01:
		dw $0009                             ;86E76A|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_3_waterFall_01.col"

	paletteDataTilesStagel03_aquaduct:
		dw $00BF                             ;86E776|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage3_aquaduct.col"

	paletteDataSpriteStagel03_aquaduct:
		dw $001F                             ;86E838|        |      ;
		incbin "GFX/sprite/spritePAL_Stage3_aquaduct.col"

	paletteDataAnimationAquaduct00:
		dw $0009                             ;86E85A|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_3_Aquaduct00.col"

	paletteDataAnimationAquaduct01:
		dw $0009                             ;86E866|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_3_Aquaduct01.col"

	paletteDataAnimationAquaduct02:
		dw $0009                             ;86E872|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_3_Aquaduct02.col"

	paletteDataAnimationAquaduct03:
		dw $0009                             ;86E87E|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_3_Aquaduct03.col"

	paletteDataAnimationAquaduct04:
		dw $0009                             ;86E88A|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_3_Aquaduct04.col"

	paletteDataTilesStagel04_SkullTower:
		dw $009F                             ;86E896|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage4_SkullTower.col"

	paletteDataSpriteStagel04_SkullTower:
		dw $001F                             ;86E938|        |      ;
		incbin "GFX/sprite/spritePAL_Stage4_SkullTower.col"

	paletteDataAnimationSkullTower00:
		dw $0001                             ;86E95A|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_4_SkullTower00.col"

	paletteDataTilesStagel04_RotatingRoom:
		dw $003F                             ;86E95E|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage4_RotatingRoom.col"

	paletteDataSprtieStagel04_RotatingRoom:
		dw $001F                             ;86E9A0|        |      ;
		incbin "GFX/sprite/spritePAL_Stage4_RotatingRoom.col"

	paletteDataTilesStagel04_washingmachine:
		dw $007F                             ;86E9C2|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage4_washingmachine.col"

	paletteDataSpriteStagel04_washingmachine:
		dw $001F                             ;86EA44|        |      ;
		incbin "GFX/sprite/spritePAL_Stage4_washingmachine.col"

	paletteDataTilesStagel04_koranotQuater:
		dw $00BF                             ;86EA66|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage4_koranotQuater.col"

	paletteDataSprtieStagel04_koranotQuater:
		dw $001F                             ;86EB28|        |      ;
		incbin "GFX/sprite/spritePAL_Stage4_koranotQuater.col"

	paletteDataTilesStagel05_blueGune:
		dw $00BF                             ;86EB4A|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage5_blueGune.col"
	
	paletteDataAnimationBlueGune:
		dw $0005                             ;86EC0C|        |      ;		
		incbin "GFX/tiles/lvlPAL_Anim_5_BlueGune.col"
	
	paletteDataTilesStagel05_castlEntrance:
		dw $007F                             ;86EC14|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage5_castlEntrance.col"

	paletteDataAnimationCastleEntrance:
		dw $0001                             ;86EC96|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_6_CastleEntrance.col"

	paletteDataTilesStagel06_castleEntrance:
		dw $009F                             ;86EC9A|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage6_castleEntrance.col"

	paletteDataTilesStagel06_chandelire:
		dw $005F                             ;86ED3C|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage6_chandelire.col"

	paletteDataSpriteStagel06_chandelire:
		dw $001F                             ;86ED9E|        |      ;
		incbin "GFX/sprite/spritePAL_Stage6_chandelire.col"

	paletteDataAnimationChandelires:
		dw $0001                             ;86EDC0|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_6_Chandelires.col"

	paletteDataTilesStagel06_middle:
		dw $00BF                             ;86EDC4|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage6_middle.col"

	paletteDataSpritesStagel06_middle:
		dw $001F                             ;86EE86|        |      ;
		incbin "GFX/sprite/spritePAL_Stage6_middle.col"

	paletteDataAnimationCastleMiddle:
		dw $0003                             ;86EEA8|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_6_CastleMiddle.col"

	paletteDataTilesStagel06_danceQuater:
		dw $00BF                             ;86EEAE|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage6_danceQuater.col"

	paletteDataAnimationLiberarry00:
		dw $0005                             ;86EF70|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_7_Liberarry00.col"

	paletteDataAnimationLiberarry01:
		dw $0005                             ;86EF78|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_7_Liberarry01.col"

	paletteDataTilesStagel07_liberarry:
		dw $00BF                             ;86EF80|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage7_liberarry.col"

	paletteDataSpriteStagel07_liberarry:
		dw $001F                             ;86F042|        |      ;
		incbin "GFX/sprite/spritePAL_Stage7_liberarry.col"

	paletteDataAnimationDungeon00:
		dw $0003                             ;86F064|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_8_Dungeon00.col"

	paletteDataTilesStagel08_dungeon:
		dw $009F                             ;86F06A|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage8_dungeon1.col"

	paletteDataSpriteStagel08_dungeon:
		dw $001F                             ;86F10C|        |      ;
		incbin "GFX/sprite/spritePAL_Stage8_dungeon2.col"

	paletteDataAnimationDungeon01:
		dw $0001                             ;86F12E|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_8_Dungeon01.col"

	paletteDataTilesStage08_dungeon:
		dw $009F                             ;86F132|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage8_dungeon.col"

	paletteDataAnimationGold00:
		dw $0005                             ;86F1D4|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_9_Gold00.col"

	paletteDataAnimationGold01:
		dw $0005                             ;86F1DC|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_9_Gold01.col"

	paletteDataAnimationGold02:
		dw $0005                             ;86F1E4|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_9_Gold02.col"

	paletteDataSpriteStage08_dungeon:
		dw $001F                             ;86F1EC|        |      ;
		incbin "GFX/sprite/spritePAL_Stage8_dungeon.col"

	paletteDataTilesStagel08_frankQuater:
		dw $00BF                             ;86F20E|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage8_frankQuater.col"

	paletteDataSpriteStagel08_frankQuater:
		dw $001F                             ;86F2D0|        |      ;
		incbin "GFX/sprite/spritePAL_Stage8_frankQuater.col"

	paletteDataTilesStagel09_gold:
		dw $009F                             ;86F2F2|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage9_gold.col"

	paletteDataSpriteStagel09_gold00:
		dw $001F                             ;86F394|        |      ;
		incbin "GFX/sprite/spritePAL_Stage9_gold00.col"

	paletteDataAnimationClockTower00:
		dw $0001                             ;86F3B6|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_A_ClockTowerB00.col"

	paletteDataAnimationClockTower01:
		dw $0001                             ;86F3BA|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_A_ClockTowerB01.col"

	paletteDataAnimationClockTower02:
		dw $0001                             ;86F3BE|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_A_ClockTowerB02.col"

	paletteDataAnimationClockTower03:
		dw $0003                             ;86F3C2|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_A_ClockTowerB03.col"

	paletteDataAnimationClockTower04:
		dw $0003                             ;86F3C8|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_A_ClockTowerB04.col"

	paletteDataAnimationClockTower05:
		dw $0003                             ;86F3CE|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_A_ClockTowerB05.col"

	paletteDataTilesStagel09_zapfBatQuater:
		dw $009F                             ;86F3D4|        |      ;
		incbin "GFX/tiles/lvlPAL_Stage9_zapfBatQuater.col"

	paletteDataSpriteStagel09_zapfBatQuater00:
		dw $001F                             ;86F476|        |      ;
		incbin "GFX/sprite/spritePAL_Stage9_zapfBatQuater00.col"

	paletteDataAnimationXX00:
		dw $0003                             ;86F498|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_9_GoldTwinkel00.col"

	paletteDataAnimationXX01:
		dw $0003                             ;86F49E|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_9_GoldTwinkel01.col"

	paletteDataAnimationXX02:
		dw $0003                             ;86F4A4|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_9_GoldTwinkel02.col"

	paletteDataAnimationXX03:
		dw $001F                             ;86F4AA|        |      ;
		incbin "GFX/sprite/bosses/PAL_zapfBat_stones_GFXsuckhole.col"

	paletteDataAnimationXX04:
		dw $001F                             ;86F4CC|        |      ;
		incbin "GFX/sprite/bosses/PAL_zapfBat_A0.col"

	paletteDataAnimationXX05:
		dw $001F                             ;86F4EE|        |      ;
		incbin "GFX/sprite/bosses/PAL_zapfBat_A1.col"

	paletteDataAnimationXX06:
		dw $001F                             ;86F510|        |      ;
		incbin "GFX/sprite/bosses/PAL_zapfBat_A2.col"

	paletteDataAnimationXX07:
		dw $001F                             ;86F532|        |      ;
		incbin "GFX/sprite/bosses/PAL_zapfBat_A3.col"

	paletteDataStagel0A_clockTower:
		dw $00DF                             ;86F554|        |      ;
		incbin "GFX/tiles/lvlPAL_StageA_clockTower.col"

	paletteDataSpriteStagel0A_clockTower:
		dw $001F                             ;86F636|        |      ;
		incbin "GFX/sprite/spritePAL_StageA_clockTower.col"

	paletteDataAnimation00ClockTower00:
		dw $0013                             ;86F658|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_A_ClockTower00.col"

	paletteDataAnimation00ClockTower01:
		dw $0013                             ;86F66E|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_A_ClockTower01.col"

	paletteDataAnimation00ClockTower02:
		dw $0013                             ;86F684|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_A_ClockTower02.col"

	paletteDataTilesStagel0A_mummyQuater:
		dw $007F                             ;86F69A|        |      ;
		incbin "GFX/tiles/lvlPAL_StageA_mummyQuater.col"

	paletteDataAnimation00ClockTower03:
		dw $0005                             ;86F71C|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_A_ClockTower03.col"

	paletteDataAnimation00ClockTower04:
		dw $0005                             ;86F724|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_A_ClockTower04.col"

	paletteDataAnimation00ClockTower05:
		dw $0005                             ;86F72C|        |      ;
		incbin "GFX/tiles/lvlPAL_Anim_A_ClockTower05.col"

	paletteDataSprtieStagel0A_mummyQuater:
		dw $001F                             ;86F734|        |      ;
		incbin "GFX/sprite/spritePAL_StageA_mummyQuater.col"

	paletteDataTilesStagel0B_bridge:
		dw $00DF                             ;86F756|        |      ;
		incbin "GFX/tiles/lvlPAL_StageB_bridge.col"

	paletteDataSpriteStagel0B_bridge:
		dw $001F                             ;86F838|        |      ;
		incbin "GFX/sprite/spritePAL_StageB_bridge.col"

	paletteDataTilesStagel0B_tower:
		dw $00DF                             ;86F85A|        |      ;
		incbin "GFX/tiles/lvlPAL_StageB_tower.col"

	paletteDataSpriteStagel0B_tower:
		dw $001F                             ;86F93C|        |      ;
		incbin "GFX/sprite/spritePAL_StageB_tower.col"

	paletteDataTilesStagel0B_slogra:
		dw $00DF                             ;86F95E|        |      ;
		incbin "GFX/tiles/lvlPAL_StageB_slogra.col"

	paletteDataSpriteStagel0B_slogra:
		dw $001F                             ;86FA40|        |      ;
		incbin "GFX/sprite/spritePAL_StageB_slogra.col"

	paletteDataTilesStagel0B_gaibone:
		dw $00DF                             ;86FA62|        |      ;
		incbin "GFX/tiles/lvlPAL_StageB_gaibone.col"

	paletteDataTilesStagel0B_death:
		dw $00BF                             ;86FB44|        |      ;
		incbin "GFX/tiles/lvlPAL_StageB_death.col"

	paletteDataSpriteStagel0B_death:
		dw $001F                             ;86FC06|        |      ;
		incbin "GFX/sprite/bosses/PAL_death_sprite_tourch.col"

	paletteDataSpriteStagel0B_extra_death:
		dw $001F                             ;86FC28|        |      ;
		incbin "GFX/sprite/bosses/PAL_death_tiles_tourch.col"

	paletteDataAnimationXX0f:
		dw $001F                             ;86FC4A|        |      ;
		incbin "GFX/sprite/bosses/PAL_death_tiles_tourch_02.col"

	paletteDataTilesStagel0B_drac:
		dw $009F                             ;86FC6C|        |      ;
		incbin "GFX/tiles/lvlPAL_StageB_drac.col"

	paletteDataSpriteStagel0B_drac00:
		dw $003F                             ;86FD0E|        |      ;
		incbin "GFX/sprite/bosses/PAL_drac00.col"

	paletteDataSpriteStagel0B_tower00:
		dw $001F                             ;86FD50|        |      ;
		incbin "GFX/sprite/spritePAL_StageB_tower00.col"

}

{ ; -- data bank81, palette, GFX, - pointers -----------------------

org $8693E7
	palettePointerForEachLevel:
        dw paletteTilesStage01              ;8693E7|        |81F68D;
        dw paletteTilesStagel01_Garden       ;8693E9|        |81F69A;
        dw paletteTilesStagel01_Castle       ;8693EB|        |81F6A7;
        dw paletteTilesStagel01_Castle       ;8693ED|        |81F6A7;
        dw paletteTilesStagel01_Castle       ;8693EF|        |81F6A7;
        dw paletteTilesStagel01_Stable       ;8693F1|        |81F6B4;
        dw paletteTilesStagel01_Stable       ;8693F3|        |81F6B4;
        dw paletteTilesStagel01_Stable       ;8693F5|        |81F6B4;
        dw paletteTilesStagel02_graveyard    ;8693F7|        |81F6C1;
        dw paletteTilesStagel02_swamp        ;8693F9|        |81F6CE;
        dw paletteTilesStagel02_waterSlide   ;8693FB|        |81F6DB;
        dw paletteTilesStagel02_waterSlide   ;8693FD|        |81F6DB;
        dw paletteTilesStagel03_cave         ;8693FF|        |81F6E8;
        dw paletteTilesStagel03_waterfall    ;869401|        |81F6F9;
        dw paletteTilesStagel03_aquaduct     ;869403|        |81F706;
        dw paletteTilesStagel03_aquaduct     ;869405|        |81F706;
        dw paletteTilesStagel03_aquaduct     ;869407|        |81F706;
        dw paletteTilesStagel03_aquaduct     ;869409|        |81F706;
        dw paletteTilesStagel04_SkullTower   ;86940B|        |81F713;
        dw paletteTilesStagel04_SkullTower   ;86940D|        |81F713;
        dw paletteTilesStagel04_SkullTower   ;86940F|        |81F713;
        dw paletteTilesStagel04_RotatingRoom ;869411|        |81F720;
        dw paletteTilesStagel04_washingmachine;869413|        |81F72D;
        dw paletteTilesStagel04_koranotQuater;869415|        |81F73A;
        dw paletteTilesStagel05_blueGune     ;869417|        |81F747;
        dw paletteTilesStagel05_castlEntrance;869419|        |81F750;
        dw paletteTilesStagel06_castleEntrance;86941B|        |81F759;
        dw paletteTilesStagel06_chandelire   ;86941D|        |81F766;
        dw paletteTilesStagel06_middle       ;86941F|        |81F773;
        dw paletteTilesStagel06_middle       ;869421|        |81F773;
        dw paletteTilesStagel06_middle       ;869423|        |81F773;
        dw paletteTilesStagel06_danceQuater  ;869425|        |81F780;
        dw paletteTilesStagel06_danceQuater  ;869427|        |81F780;
        dw paletteTilesStagel06_danceQuater  ;869429|        |81F780;
        dw paletteTilesStagel06_danceQuater  ;86942B|        |81F780;
        dw paletteTilesStagel07_liberarry    ;86942D|        |81F789;
        dw paletteTilesStagel07_liberarry    ;86942F|        |81F789;
        dw paletteTilesStagel07_liberarry    ;869431|        |81F789;
        dw paletteTilesStagel07_graqulsQuater;869433|        |81F796;
        dw paletteTilesStagel07_graqulsQuater;869435|        |81F796;
        dw paletteTilesStagel07_graqulsQuater;869437|        |81F796;
        dw paletteTilesStagel07_graqulsQuater;869439|        |81F796;
        dw paletteTilesStagel08_dungeon      ;86943B|        |81F7A3;
        dw paletteTilesStagel08_dungeon      ;86943D|        |81F7A3;
        dw paletteTilesStagel08_frankQuater  ;86943F|        |81F7B0;
        dw paletteTilesStagel08_frankQuater  ;869441|        |81F7B0;
        dw paletteTilesStagel09_gold         ;869443|        |81F7BD;
        dw paletteTilesStagel09_gold         ;869445|        |81F7BD;
        dw paletteTilesStagel09_gold         ;869447|        |81F7BD;
        dw paletteTilesStagel09_zapfBatQuater;869449|        |81F7CE;
        dw paletteTilesStagel09_zapfBatQuater;86944B|        |81F7CE;
        dw paletteTilesStagel09_zapfBatQuater;86944D|        |81F7CE;
        dw paletteTilesStagel09_zapfBatQuater;86944F|        |81F7CE;
        dw paletteTilesStagel09_zapfBatQuater;869451|        |81F7CE;
        dw paletteTilesStagel09_zapfBatQuater;869453|        |81F7CE;
        dw paletteTilesStagel0A_clockTower   ;869455|        |81F7DF;
        dw paletteTilesStagel0A_clockTower   ;869457|        |81F7DF;
        dw paletteTilesStagel0A_clockTower   ;869459|        |81F7DF;
        dw paletteTilesStagel0A_clockTower   ;86945B|        |81F7DF;
        dw paletteTilesStagel0A_mummyQuater  ;86945D|        |81F7EC;
        dw paletteTilesStagel0B_bridge       ;86945F|        |81F7F9;
        dw paletteTilesStagel0B_bridge       ;869461|        |81F7F9;
        dw paletteTilesStagel0B_tower        ;869463|        |81F806;
        dw paletteTilesStagel0B_slogra       ;869465|        |81F817;
        dw paletteTilesStagel0B_gaibone      ;869467|        |81F824;
        dw paletteTilesStagel0B_death        ;869469|        |81F82D;
        dw paletteTilesStagel0B_drac         ;86946B|        |81F83A;
        dw paletteTilesStagel0B_drac         ;86946D|        |81F83A;
                                                            ;      |        |      ;
	paletteAnimationPointerForEachLevel:
        dw paletteNoAnimationEmpty           ;86946F|        |8186F5;
        dw paletteAnimationStagel01_Garden   ;869471|        |81F84B;
        dw paletteNoAnimationEmpty           ;869473|        |8186F5;
        dw paletteAnimationStagel01_Castle   ;869475|        |81F858;
        dw paletteNoAnimationEmpty           ;869477|        |8186F5;
        dw paletteNoAnimationEmpty           ;869479|        |8186F5;
        dw paletteNoAnimationEmpty           ;86947B|        |8186F5;
        dw paletteNoAnimationEmpty           ;86947D|        |8186F5;
        dw paletteNoAnimationEmpty           ;86947F|        |8186F5;
        dw paletteAnimationStagel02_Swamp    ;869481|        |81F869;
        dw paletteAnimationWaterSlide1       ;869483|        |81F886;
        dw paletteAnimationWaterSlide1       ;869485|        |81F886;
        dw paletteNoAnimationEmpty           ;869487|        |8186F5;
        dw paletteAnimationCave              ;869489|        |81F8F0;
        dw paletteAnimationAquaduct          ;86948B|        |81F8FD;
        dw paletteAnimationAquaduct          ;86948D|        |81F8FD;
        dw paletteAnimationAquaduct          ;86948F|        |81F8FD;
        dw paletteAnimationAquaduct          ;869491|        |81F8FD;
        dw paletteAnimationSkullTower00      ;869493|        |81F916;
        dw paletteAnimationSkullTower00      ;869495|        |81F916;
        dw paletteAnimationSkullTower01      ;869497|        |81F91E;
        dw paletteNoAnimationEmpty           ;869499|        |8186F5;
        dw paletteNoAnimationEmpty           ;86949B|        |8186F5;
        dw paletteNoAnimationEmpty           ;86949D|        |8186F5;
        dw paletteAnimationBlueGune          ;86949F|        |81F926;
        dw paletteAnimationCastleEntrance    ;8694A1|        |81F92E;
        dw paletteNoAnimationEmpty           ;8694A3|        |8186F5;
        dw paletteAnimationChandelires       ;8694A5|        |81F936;
        dw paletteAnimationCastleMiddle      ;8694A7|        |81F93E;
        dw paletteNoAnimationEmpty           ;8694A9|        |8186F5;
        dw paletteNoAnimationEmpty           ;8694AB|        |8186F5;
        dw paletteNoAnimationEmpty           ;8694AD|        |8186F5;
        dw paletteAnimationLiberarry         ;8694AF|        |81F946;
        dw paletteNoAnimationEmpty           ;8694B1|        |8186F5;
        dw paletteNoAnimationEmpty           ;8694B3|        |8186F5;
        dw paletteAnimationDungeon00         ;8694B5|        |81F95F;
        dw paletteAnimationDungeon00         ;8694B7|        |81F95F;
        dw paletteAnimationDungeon00         ;8694B9|        |81F95F;
        dw paletteAnimationDungeon01         ;8694BB|        |81F967;
        dw paletteAnimationDungeon01         ;8694BD|        |81F967;
        dw paletteAnimationDungeon01         ;8694BF|        |81F967;
        dw paletteAnimationDungeon01         ;8694C1|        |81F967;
        dw paletteAnimationGold00            ;8694C3|        |81F96F;
        dw paletteAnimationGold00            ;8694C5|        |81F96F;
        dw paletteNoAnimationEmpty           ;8694C7|        |8186F5;
        dw paletteNoAnimationEmpty           ;8694C9|        |8186F5;
        dw paletteAnimationClockGold01       ;8694CB|        |81F980;
        dw paletteAnimationClockGold01       ;8694CD|        |81F980;
        dw paletteAnimationClockGold01       ;8694CF|        |81F980;
        dw paletteAnim_goldTwinkle_02                ;8694D1|        |81F9A5;
        dw paletteAnim_goldTwinkle_02                ;8694D3|        |81F9A5;
        dw paletteAnim_goldTwinkle_02                ;8694D5|        |81F9A5;
        dw paletteAnim_goldTwinkle_02                ;8694D7|        |81F9A5;
        dw paletteAnim_goldTwinkle_02                ;8694D9|        |81F9A5;
        dw paletteAnim_goldTwinkle_02                ;8694DB|        |81F9A5;
        dw paletteAnimationClockTower00      ;8694DD|        |81F9BA;
        dw paletteAnimationClockTower00      ;8694DF|        |81F9BA;
        dw paletteAnimationClockTower00      ;8694E1|        |81F9BA;
        dw paletteAnimationClockTower00      ;8694E3|        |81F9BA;
        dw paletteAnimationClockTower01      ;8694E5|        |81F9CB;
        dw paletteNoAnimationEmpty           ;8694E7|        |8186F5;
        dw paletteNoAnimationEmpty           ;8694E9|        |8186F5;
        dw paletteNoAnimationEmpty           ;8694EB|        |8186F5;
        dw paletteNoAnimationEmpty           ;8694ED|        |8186F5;
        dw paletteNoAnimationEmpty           ;8694EF|        |8186F5;
        dw paletteNoAnimationEmpty           ;8694F1|        |8186F5;
        dw paletteNoAnimationEmpty           ;8694F3|        |8186F5;
        dw paletteNoAnimationEmpty           ;8694F5|        |8186F5;
                                                            ;      |        |      ;
paletteDataBGcolor4EachLevel:
		incbin "GFX/tiles/BG_colors4Levels.col"


org $8186F5
	paletteNoAnimationEmpty:
        dw $0000                             ;8186F5|        |      ;
	titleScreenPalettePointers:
        db $01                               ;8186F7|        |      ;	map scene or title 
        dw $0000                             ;8186F8|        |      ;
        dw BGcolorLoadScreens     ;8186FA|        |86CAF8;
        dw $2200                             ;8186FC|        |      ;
        dw mainHUDpaletteData                ;8186FE|        |86C98C;
        dw $2202                             ;818700|        |      ;
        dw titleScreenPaletteData01          ;818702|        |86C9AC;
        dw $2220                             ;818704|        |      ;
        dw introStoryScreenPaletteData08     ;818706|        |86CB84;
        dw $2300,$0000                       ;818708|        |      ;
                                                            ;      |        |      ;
	paletteMainPointer01:
        db $01                               ;81870C|        |      ;
        dw $0000                             ;81870D|        |      ;
        dw titleScreenThunderPAL     ;81870F|        |86CC26;
        dw $2220,$0000                       ;818711|        |      ;
                                                            ;      |        |      ;
	paletteMainSpriteAndHUDpointer:
        db $01                               ;818715|        |      ;
        dw $0000                             ;818716|        |      ;
        dw mainHUDpaletteData                ;818718|        |86C98C;		main 
        dw $2202                             ;81871A|        |      ;
        dw mainSpritePaletteData             ;81871C|        |86C8AA;
        dw $2300,$0000                       ;81871E|        |      ;
                                                            ;      |        |      ;
	nameScreenPalette:
        db $01                               ;818722|        |      ;	options Menu 
        dw $0000                             ;818723|        |      ;
        dw BGcolorLoadScreens     ;818725|        |86CAF8;
        dw $2200                             ;818727|        |      ;
        dw mainHUDpaletteData                ;818729|        |86C98C;
        dw $2202                             ;81872B|        |      ;
        dw introStoryScreenPaletteData10     ;81872D|        |86CDA8;
        dw $2220                             ;81872F|        |      ;
        dw introStoryScreenPaletteData11     ;818731|        |86CDCA;
        dw $2240                             ;818733|        |      ;
        dw introStoryScreenPaletteData12     ;818735|        |86CE2C;
        dw $2300,$0000                       ;818737|        |      ;
                                                            ;      |        |      ;
	introWhipPalettePointers:
        db $01                               ;81873B|        |      ;
        dw $0000                             ;81873C|        |      ;
        dw introStoryScreenPaletteData13     ;81873E|        |86CE4E;
        dw $2200,$0000                       ;818740|        |      ;
                                                            ;      |        |      ;
	PWscreenPalettePointers:
        db $01                               ;818744|        |      ;	password 
        dw $0000                             ;818745|        |      ;
        dw BGcolorLoadScreens     			;818747|        |86CAF8;
        dw $2200                             ;818749|        |      ;
        dw mainHUDpaletteData                ;81874B|        |86C98C;
        dw $2202                             ;81874D|        |      ;
        dw introStoryScreenPaletteData06     ;81874F|        |86CAFC;
        dw $2240                             ;818751|        |      ;
        dw mainSpritePaletteData             ;818753|        |86C8AA;
        dw $2300                             ;818755|        |      ;
        dw introStoryScreenPaletteData07     ;818757|        |86CB7E;
        dw $23E0,$0000                       ;818759|        |      ;
                                                            ;      |        |      ;
	paletteLoadKoranot00: ; paletteMainPointer05:
        db $01                               ;81875D|        |      ;
        dw $0000                             ;81875E|        |      ;
        dw paletteDataMain0500               ;818760|        |86D67E;
        dw $22E0                             ;818762|        |      ;
        dw paletteDataMain0502               ;818764|        |86D6C2;
        dw $23A0                             ;818766|        |      ;
        dw paletteDataMain0500               ;818768|        |86D67E;
        dw $23E0,$0000                       ;81876A|        |      ;
                                                            ;      |        |      ;
	paletteMainPointer06:
        db $01                               ;81876E|        |      ;
        dw $0000                             ;81876F|        |      ;
        dw introStoryScreenPaletteData14     ;818771|        |86CF90;
        dw $2200                             ;818773|        |      ;
        dw introStoryScreenPaletteData00     ;818775|        |86CA8E;
        dw $2240                             ;818777|        |      ;
        dw introStoryScreenPaletteData16     ;818779|        |86D054;
        dw $2320,$0000                       ;81877B|        |      ;
                                                            ;      |        |      ;
	paletteMainPointer07:
        db $01                               ;81877F|        |      ;
        dw $0000                             ;818780|        |      ;
        dw introStoryScreenPaletteData14     ;818782|        |86CF90;
        dw $2200                             ;818784|        |      ;
        dw introStoryScreenPaletteData15     ;818786|        |86CFD2;
        dw $22A0                             ;818788|        |      ;
        dw introStoryScreenPaletteData16     ;81878A|        |86D054;
        dw $2320,$0000                       ;81878C|        |      ;
                                                            ;      |        |      ;
	paletteMainPointer08:
        db $01                               ;818790|        |      ;
        dw $8004                             ;818791|        |      ;
        dw introStoryScreenPaletteData01     ;818793|        |86CAD0;
        dw $2258                             ;818795|        |      ;
        dw introStoryScreenPaletteData02     ;818797|        |86CADA;
        dw $2258                             ;818799|        |      ;
        dw introStoryScreenPaletteData03     ;81879B|        |86CAE4;
        dw $2258                             ;81879D|        |      ;
        dw introStoryScreenPaletteData04     ;81879F|        |86CAEE;
        dw $2258,$0000                       ;8187A1|        |      ;
                                                            ;      |        |      ;
	paletteMainPointer09:
        db $01                               ;8187A5|        |      ;	; intro text 
        dw $0000                             ;8187A6|        |      ;
        dw introStoryScreenPaletteData17     ;8187A8|        |86D116;
        dw $2200                             ;8187AA|        |      ;
        dw mainHUDpaletteData                ;8187AC|        |86C98C;
        dw $2202                             ;8187AE|        |      ;
        dw introStoryScreenPaletteData18     ;8187B0|        |86D218;
        dw $2320,$0000                       ;8187B2|        |      ;
                                                            ;      |        |      ;
	paletteMainPointer0a:
        db $01                               ;8187B6|        |      ;	ending 
        dw $0000                             ;8187B7|        |      ;
        dw morePaletteData00                 ;8187B9|        |86D4FC;
        dw $2200,$0000                       ;8187BB|        |      ;

		
org $81F68D		
	paletteTilesStage01:
        db $01                               ;81F68D|        |      ;
        dw $0000                             ;81F68E|        |      ;
        dw paletteDataStage1Beginning        ;81F690|        |86DEA0;
        dw $2240                             ;81F692|        |      ; WRAM Dest The whole section will update CGRAM
        dw paletteDataSpriteStage1Beginning  ;81F694|        |86DF42;
        dw $23C0,$0000                       ;81F696|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel01_Garden:
        db $01                               ;81F69A|        |      ;
        dw $0000                             ;81F69B|        |      ;
        dw paletteDataTilesStagel01_Garden   ;81F69D|        |86DF84;
        dw $2240                             ;81F69F|        |      ;
        dw paletteDataSpriteStagel01_Garden  ;81F6A1|        |86E046;
        dw $23E0,$0000                       ;81F6A3|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel01_Castle:
        db $01                               ;81F6A7|        |      ;
        dw $0000                             ;81F6A8|        |      ;
        dw paletteDataTilesStagel01_Castle   ;81F6AA|        |86E074;
        dw $2240                             ;81F6AC|        |      ;
        dw paletteDataSpriteStagel01_Castle  ;81F6AE|        |86E136;
        dw $23E0,$0000                       ;81F6B0|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel01_Stable:
        db $01                               ;81F6B4|        |      ;
        dw $0000                             ;81F6B5|        |      ;
        dw paletteDataTilesStagel01_Stable   ;81F6B7|        |86E170;
        dw $2240                             ;81F6B9|        |      ;
        dw paletteDataSpriteTilesStagel01_Stable;81F6BB|        |86E232;
        dw $23C0,$0000                       ;81F6BD|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel02_graveyard:
        db $01                               ;81F6C1|        |      ;
        dw $0000                             ;81F6C2|        |      ;
        dw paletteDataTilesStagel02_graveyard;81F6C4|        |86E274;
        dw $2240                             ;81F6C6|        |      ;
        dw paletteDataSpriteStagel02_graveyard;81F6C8|        |86E316;
        dw $23E0,$0000                       ;81F6CA|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel02_swamp:
        db $01                               ;81F6CE|        |      ;
        dw $0000                             ;81F6CF|        |      ;
        dw paletteDataTilesStagel02_swamp00  ;81F6D1|        |86E338;
        dw $2240                             ;81F6D3|        |      ;
        dw paletteDataSpriteStagel02_swamp   ;81F6D5|        |86E3FA;
        dw $23E0,$0000                       ;81F6D7|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel02_waterSlide:
        db $01                               ;81F6DB|        |      ;
        dw $0000                             ;81F6DC|        |      ;
        dw paletteDataTilesStagel02_waterSlide00;81F6DE|        |86E470;
        dw $2220                             ;81F6E0|        |      ;
        dw paletteDataSpriteStagel02_waterSlide;81F6E2|        |86E5B2;
        dw $23E0,$0000                       ;81F6E4|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel03_cave:
        db $01                               ;81F6E8|        |      ;
        dw $0000                             ;81F6E9|        |      ;
        dw paletteDataTilesStagel03_cave     ;81F6EB|        |86E5D4;
        dw $2220                             ;81F6ED|        |      ;
        dw paletteDataTileStagel03_cave00    ;81F6EF|        |86E636;
        dw $22C0                             ;81F6F1|        |      ;
        dw paletteDataSpriteStagel03_cave00  ;81F6F3|        |86E658;
        dw $23E0,$0000                       ;81F6F5|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel03_waterfall:
        db $01                               ;81F6F9|        |      ;
        dw $0000                             ;81F6FA|        |      ;
        dw paletteDataTilesStagel03_waterfall;81F6FC|        |86E67A;
        dw $2220                             ;81F6FE|        |      ;
        dw paletteDataSpritesStagel03_waterfall;81F700|        |86E73C;
        dw $23E0,$0000                       ;81F702|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel03_aquaduct:
        db $01                               ;81F706|        |      ;
        dw $0000                             ;81F707|        |      ;
        dw paletteDataTilesStagel03_aquaduct ;81F709|        |86E776;
        dw $2240                             ;81F70B|        |      ;
        dw paletteDataSpriteStagel03_aquaduct;81F70D|        |86E838;
        dw $23E0,$0000                       ;81F70F|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel04_SkullTower:
        db $01                               ;81F713|        |      ;
        dw $0000                             ;81F714|        |      ;
        dw paletteDataTilesStagel04_SkullTower;81F716|        |86E896;
        dw $2240                             ;81F718|        |      ;
        dw paletteDataSpriteStagel04_SkullTower;81F71A|        |86E938;
        dw $23E0,$0000                       ;81F71C|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel04_RotatingRoom:
        db $01                               ;81F720|        |      ;
        dw $0000                             ;81F721|        |      ;

if !mapEdit == 1
		dw $F7C0
else 		
		dw paletteDataTilesStagel04_RotatingRoom;81F723|        |86E95E;
endif  
		dw $2240                             ;81F725|        |      ;
        dw paletteDataSprtieStagel04_RotatingRoom;81F727|        |86E9A0;
        dw $23E0,$0000                       ;81F729|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel04_washingmachine:
        db $01                               ;81F72D|        |      ;
        dw $0000                             ;81F72E|        |      ;
        dw paletteDataTilesStagel04_washingmachine;81F730|        |86E9C2;
        dw $2240                             ;81F732|        |      ;
        dw paletteDataSpriteStagel04_washingmachine;81F734|        |86EA44;
        dw $23E0,$0000                       ;81F736|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel04_koranotQuater:
        db $01                               ;81F73A|        |      ;
        dw $0000                             ;81F73B|        |      ;
        dw paletteDataTilesStagel04_koranotQuater;81F73D|        |86EA66;
        dw $2220                             ;81F73F|        |      ;
        dw paletteDataSprtieStagel04_koranotQuater;81F741|        |86EB28;
        dw $23E0,$0000                       ;81F743|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel05_blueGune:
        db $01                               ;81F747|        |      ;
        dw $0000                             ;81F748|        |      ;
        dw paletteDataTilesStagel05_blueGune ;81F74A|        |86EB4A;
        dw $2240,$0000                       ;81F74C|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel05_castlEntrance:
        db $01                               ;81F750|        |      ;
        dw $0000                             ;81F751|        |      ;
        dw paletteDataTilesStagel05_castlEntrance;81F753|        |86EC14;
        dw $2240,$0000                       ;81F755|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel06_castleEntrance:
        db $01                               ;81F759|        |      ;
        dw $0000                             ;81F75A|        |      ;
        dw paletteDataTilesStagel06_castleEntrance;81F75C|        |86EC9A;
        dw $2220                             ;81F75E|        |      ;
        dw paletteDataSpriteStagel05_castlEntrance;81F760|        |86DE7E;
        dw $23A0,$0000                       ;81F762|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel06_chandelire:
        db $01                               ;81F766|        |      ;
        dw $0000                             ;81F767|        |      ;
        dw paletteDataTilesStagel06_chandelire;81F769|        |86ED3C;
        dw $2240                             ;81F76B|        |      ;
        dw paletteDataSpriteStagel06_chandelire;81F76D|        |86ED9E;
        dw $23E0,$0000                       ;81F76F|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel06_middle:
        db $01                               ;81F773|        |      ;
        dw $0000                             ;81F774|        |      ;
        dw paletteDataTilesStagel06_middle   ;81F776|        |86EDC4;
        dw $2240                             ;81F778|        |      ;
        dw paletteDataSpritesStagel06_middle ;81F77A|        |86EE86;
        dw $23E0,$0000                       ;81F77C|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel06_danceQuater:
        db $01                               ;81F780|        |      ;
        dw $0000                             ;81F781|        |      ;
        dw paletteDataTilesStagel06_danceQuater;81F783|        |86EEAE;
        dw $2240,$0000                       ;81F785|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel07_liberarry:
        db $01                               ;81F789|        |      ;
        dw $0000                             ;81F78A|        |      ;
        dw paletteDataTilesStagel07_liberarry;81F78C|        |86EF80;
        dw $2240                             ;81F78E|        |      ;
        dw paletteDataSpriteStagel07_liberarry;81F790|        |86F042;
        dw $23E0,$0000                       ;81F792|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel07_graqulsQuater:
        db $01                               ;81F796|        |      ;
        dw $0000                             ;81F797|        |      ;
        dw paletteDataTilesStagel08_dungeon  ;81F799|        |86F06A;
        dw $2220                             ;81F79B|        |      ;
        dw paletteDataSpriteStagel08_dungeon ;81F79D|        |86F10C;
        dw $23E0,$0000                       ;81F79F|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel08_dungeon:
        db $01                               ;81F7A3|        |      ;
        dw $0000                             ;81F7A4|        |      ;
        dw paletteDataTilesStage08_dungeon   ;81F7A6|        |86F132;
        dw $2240                             ;81F7A8|        |      ;
        dw paletteDataSpriteStage08_dungeon  ;81F7AA|        |86F1EC;
        dw $23E0,$0000                       ;81F7AC|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel08_frankQuater:
        db $01                               ;81F7B0|        |      ;
        dw $0000                             ;81F7B1|        |      ;
        dw paletteDataTilesStagel08_frankQuater;81F7B3|        |86F20E;
        dw $2240                             ;81F7B5|        |      ;
        dw paletteDataSpriteStagel08_frankQuater;81F7B7|        |86F2D0;
        dw $23E0,$0000                       ;81F7B9|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel09_gold:
        db $01                               ;81F7BD|        |      ;
        dw $0000                             ;81F7BE|        |      ;
        dw paletteDataTilesStagel09_gold     ;81F7C0|        |86F2F2;
        dw $2220                             ;81F7C2|        |      ;
        dw paletteDataSpriteStagel09_gold00  ;81F7C4|        |86F394;
        dw $23E0                             ;81F7C6|        |      ;
        dw paletteDataSpriteStagel09_gold01  ;81F7C8|        |86D4DA;
        dw $2380,$0000                       ;81F7CA|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel09_zapfBatQuater:
        db $01                               ;81F7CE|        |      ;
        dw $0000                             ;81F7CF|        |      ;
        dw paletteDataTilesStagel09_zapfBatQuater;81F7D1|        |86F3D4;
        dw $2240                             ;81F7D3|        |      ;
        dw paletteDataSpriteStagel09_zapfBatQuater00;81F7D5|        |86F476;
        dw $23E0                             ;81F7D7|        |      ;
        dw paletteDataSpriteStagel09_gold01  ;81F7D9|        |86D4DA;
        dw $2380,$0000                       ;81F7DB|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel0A_clockTower:
        db $01                               ;81F7DF|        |      ;
        dw $0000                             ;81F7E0|        |      ;
        dw paletteDataStagel0A_clockTower    ;81F7E2|        |86F554;
        dw $2220                             ;81F7E4|        |      ;
        dw paletteDataSpriteStagel0A_clockTower;81F7E6|        |86F636;
        dw $23E0,$0000                       ;81F7E8|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel0A_mummyQuater:
        db $01                               ;81F7EC|        |      ;
        dw $0000                             ;81F7ED|        |      ;
        dw paletteDataTilesStagel0A_mummyQuater;81F7EF|        |86F69A;
        dw $2240                             ;81F7F1|        |      ;
        dw paletteDataSprtieStagel0A_mummyQuater;81F7F3|        |86F734;
        dw $23E0,$0000                       ;81F7F5|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel0B_bridge:
        db $01                               ;81F7F9|        |      ;
        dw $0000                             ;81F7FA|        |      ;
        dw paletteDataTilesStagel0B_bridge   ;81F7FC|        |86F756;
        dw $2220                             ;81F7FE|        |      ;
        dw paletteDataSpriteStagel0B_bridge  ;81F800|        |86F838;
        dw $23E0,$0000                       ;81F802|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel0B_tower:
        db $01                               ;81F806|        |      ;
        dw $0000                             ;81F807|        |      ;
        dw paletteDataTilesStagel0B_tower    ;81F809|        |86F85A;
        dw $2220                             ;81F80B|        |      ;
        dw paletteDataSpriteStagel0B_tower00 ;81F80D|        |86FD50;
        dw $23A0                             ;81F80F|        |      ;
        dw paletteDataSpriteStagel0B_tower   ;81F811|        |86F93C;
        dw $23E0,$0000                       ;81F813|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel0B_slogra:
        db $01                               ;81F817|        |      ;
        dw $0000                             ;81F818|        |      ;
        dw paletteDataTilesStagel0B_slogra   ;81F81A|        |86F95E;
        dw $2220                             ;81F81C|        |      ;
        dw paletteDataSpriteStagel0B_slogra  ;81F81E|        |86FA40;
        dw $23E0,$0000                       ;81F820|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel0B_gaibone:
        db $01                               ;81F824|        |      ;
        dw $0000                             ;81F825|        |      ;
        dw paletteDataTilesStagel0B_gaibone  ;81F827|        |86FA62;
        dw $2220,$0000                       ;81F829|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel0B_death:
        db $01                               ;81F82D|        |      ;
        dw $0000                             ;81F82E|        |      ;
        dw paletteDataTilesStagel0B_death    ;81F830|        |86FB44;
        dw $2220                             ;81F832|        |      ;
        dw paletteDataSpriteStagel0B_death   ;81F834|        |86FC06;
        dw $23E0,$0000                       ;81F836|        |      ;
                                                            ;      |        |      ;
	paletteTilesStagel0B_drac:
        db $01                               ;81F83A|        |      ;
        dw $0000                             ;81F83B|        |      ;
        dw paletteDataTilesStagel0B_drac     ;81F83D|        |86FC6C;
        dw $2220                             ;81F83F|        |      ;
        dw paletteDataSpriteStagel0B_drac00  ;81F841|        |86FD0E;
        dw $22C0                             ;81F843|        |      ;
        dw paletteDataSpriteStagel0B_drac01  ;81F845|        |86DE38;
        dw $23A0,$0000                       ;81F847|        |      ;
                                                            ;      |        |      ;
	paletteAnimationStagel01_Garden:
        db $01                               ;81F84B|        |      ;
        dw $8004                             ;81F84C|        |      ;
        dw paletteDataAnimationStagel01_Garden00;81F84E|        |86E068;
        dw $22DC                             ;81F850|        |      ;
        dw paletteDataAnimationStagel01_Garden01;81F852|        |86E06E;
        dw $22DC,$0000                       ;81F854|        |      ;
                                                            ;      |        |      ;
	paletteAnimationStagel01_Castle:
        db $01                               ;81F858|        |      ;
        dw $8010                             ;81F859|        |      ;
        dw paletteDataAnimationStagel01_Castle00;81F85B|        |86E158;
        dw $22C6                             ;81F85D|        |      ;
        dw paletteDataAnimationStagel01_Castle01;81F85F|        |86E160;
        dw $22C6                             ;81F861|        |      ;
        dw paletteDataAnimationStagel01_Castle02;81F863|        |86E168;
        dw $22C6,$0000                       ;81F865|        |      ;
                                                            ;      |        |      ;
	paletteAnimationStagel02_Swamp:
        db $01                               ;81F869|        |      ;
        dw $8010                             ;81F86A|        |      ;
        dw paletteDataAnimationStagel02_Swamp00;81F86C|        |86E41C;
        dw $22C4                             ;81F86E|        |      ;
        dw paletteDataAnimationStagel02_Swamp01;81F870|        |86E42A;
        dw $22C4                             ;81F872|        |      ;
        dw paletteDataAnimationStagel02_Swamp02;81F874|        |86E438;
        dw $22C4                             ;81F876|        |      ;
        dw paletteDataAnimationStagel02_Swamp03;81F878|        |86E446;
        dw $22C4                             ;81F87A|        |      ;
        dw paletteDataAnimationStagel02_Swamp04;81F87C|        |86E454;
        dw $22C4                             ;81F87E|        |      ;
        dw paletteDataAnimationStagel02_Swamp05;81F880|        |86E462;
        dw $22C4,$0000                       ;81F882|        |      ;
                                                            ;      |        |      ;
	paletteAnimationWaterSlide1:
        db $01                               ;81F886|        |      ;
        dw $8001                             ;81F887|        |      ;
        dw paletteDataAnimationWaterSlide00  ;81F889|        |86E552;
        dw $22E4                             ;81F88B|        |      ;
        dw paletteDataAnimationWaterSlide10  ;81F88D|        |86E5A6;
        dw $2294                             ;81F88F|        |      ;
        dw paletteDataAnimationWaterSlide01  ;81F891|        |86E560;
        dw $22E4                             ;81F893|        |      ;
        dw paletteDataAnimationWaterSlide11  ;81F895|        |86E5AC;
        dw $2294                             ;81F897|        |      ;
        dw paletteDataAnimationWaterSlide02  ;81F899|        |86E56E;
        dw $22E4                             ;81F89B|        |      ;
        dw paletteDataAnimationWaterSlide10  ;81F89D|        |86E5A6;
        dw $2294                             ;81F89F|        |      ;
        dw paletteDataAnimationWaterSlide03  ;81F8A1|        |86E57C;
        dw $22E4                             ;81F8A3|        |      ;
        dw paletteDataAnimationWaterSlide11  ;81F8A5|        |86E5AC;
        dw $2294                             ;81F8A7|        |      ;
        dw paletteDataAnimationWaterSlide04  ;81F8A9|        |86E58A;
        dw $22E4                             ;81F8AB|        |      ;
        dw paletteDataAnimationWaterSlide10  ;81F8AD|        |86E5A6;
        dw $2294                             ;81F8AF|        |      ;
        dw paletteDataAnimationWaterSlide05  ;81F8B1|        |86E598;
        dw $22E4                             ;81F8B3|        |      ;
        dw paletteDataAnimationWaterSlide11  ;81F8B5|        |86E5AC;
        dw $2294,$0000                       ;81F8B7|        |      ;
                                                            ;      |        |      ;
   paletteAnimationWaterSlide2:
        db $01                               ;81F8BB|        |      ;
        dw $8001                             ;81F8BC|        |      ;
        dw paletteDataAnimationWaterSlide11  ;81F8BE|        |86E5AC;
        dw $2294                             ;81F8C0|        |      ;
        dw paletteDataAnimationWaterSlide05  ;81F8C2|        |86E598;
        dw $22E4                             ;81F8C4|        |      ;
        dw paletteDataAnimationWaterSlide10  ;81F8C6|        |86E5A6;
        dw $2294                             ;81F8C8|        |      ;
        dw paletteDataAnimationWaterSlide04  ;81F8CA|        |86E58A;
        dw $22E4                             ;81F8CC|        |      ;
        dw paletteDataAnimationWaterSlide11  ;81F8CE|        |86E5AC;
        dw $2294                             ;81F8D0|        |      ;
        dw paletteDataAnimationWaterSlide03  ;81F8D2|        |86E57C;
        dw $22E4                             ;81F8D4|        |      ;
        dw paletteDataAnimationWaterSlide10  ;81F8D6|        |86E5A6;
        dw $2294                             ;81F8D8|        |      ;
        dw paletteDataAnimationWaterSlide02  ;81F8DA|        |86E56E;
        dw $22E4                             ;81F8DC|        |      ;
        dw paletteDataAnimationWaterSlide11  ;81F8DE|        |86E5AC;
        dw $2294                             ;81F8E0|        |      ;
        dw paletteDataAnimationWaterSlide01  ;81F8E2|        |86E560;
        dw $22E4                             ;81F8E4|        |      ;
        dw paletteDataAnimationWaterSlide10  ;81F8E6|        |86E5A6;
        dw $2294                             ;81F8E8|        |      ;
        dw paletteDataAnimationWaterSlide00  ;81F8EA|        |86E552;
        dw $22E4,$0000                       ;81F8EC|        |      ;
                                                            ;      |        |      ;
	paletteAnimationCave:
        db $01                               ;81F8F0|        |      ;
        dw $8008                             ;81F8F1|        |      ;
        dw paletteDataAnimationWaterfall00   ;81F8F3|        |86E75E;
        dw $2296                             ;81F8F5|        |      ;
        dw paletteDataAnimationWaterfal01    ;81F8F7|        |86E76A;
        dw $2296,$0000                       ;81F8F9|        |      ;
                                                            ;      |        |      ;
	paletteAnimationAquaduct:
        db $01                               ;81F8FD|        |      ;
        dw $8008                             ;81F8FE|        |      ;
        dw paletteDataAnimationAquaduct00    ;81F900|        |86E85A;
        dw $22A4                             ;81F902|        |      ;
        dw paletteDataAnimationAquaduct01    ;81F904|        |86E866;
        dw $22A4                             ;81F906|        |      ;
        dw paletteDataAnimationAquaduct02    ;81F908|        |86E872;
        dw $22A4                             ;81F90A|        |      ;
        dw paletteDataAnimationAquaduct03    ;81F90C|        |86E87E;
        dw $22A4                             ;81F90E|        |      ;
        dw paletteDataAnimationAquaduct04    ;81F910|        |86E88A;
        dw $22A4,$0000                       ;81F912|        |      ;
                                                            ;      |        |      ;
	paletteAnimationSkullTower00:
        dw $0004                             ;81F916|        |      ;
        dw paletteDataAnimationSkullTower00  ;81F918|        |86E95A;
        dw $227E,$0000                       ;81F91A|        |      ;
                                                            ;      |        |      ;
	paletteAnimationSkullTower01:
        dw $0104                             ;81F91E|        |      ;
        dw paletteDataAnimationSkullTower00  ;81F920|        |86E95A;
        dw $227E,$0000                       ;81F922|        |      ;
                                                            ;      |        |      ;
	paletteAnimationBlueGune:
        dw $0104                             ;81F926|        |      ;
        dw paletteDataAnimationBlueGune      ;81F928|        |86EC0C;
        dw $2294,$0000                       ;81F92A|        |      ;
                                                            ;      |        |      ;
	paletteAnimationCastleEntrance:
        dw $0104                             ;81F92E|        |      ;
        dw paletteDataAnimationCastleEntrance;81F930|        |86EC96;
        dw $225A,$0000                       ;81F932|        |      ;
                                                            ;      |        |      ;
	paletteAnimationChandelires:
        dw $0104                             ;81F936|        |      ;
        dw paletteDataAnimationChandelires   ;81F938|        |86EDC0;
        dw $2240,$0000                       ;81F93A|        |      ;
                                                            ;      |        |      ;
	paletteAnimationCastleMiddle:
        dw $0104                             ;81F93E|        |      ;
        dw paletteDataAnimationCastleMiddle  ;81F940|        |86EEA8;
        dw $2256,$0000                       ;81F942|        |      ;
                                                            ;      |        |      ;
	paletteAnimationLiberarry:
        db $01                               ;81F946|        |      ;
        dw $8002                             ;81F947|        |      ;
        dw paletteDataAnimationLiberarry00   ;81F949|        |86EF70;
        dw $2262                             ;81F94B|        |      ;
        dw paletteDataAnimationLiberarry01   ;81F94D|        |86EF78;
        dw $2262                             ;81F94F|        |      ;
        dw paletteDataAnimationLiberarry00   ;81F951|        |86EF70;
        dw $2262                             ;81F953|        |      ;
        dw paletteDataAnimationLiberarry00   ;81F955|        |86EF70;
        dw $2262                             ;81F957|        |      ;
        dw paletteDataAnimationLiberarry00   ;81F959|        |86EF70;
        dw $2262,$0000                       ;81F95B|        |      ;
                                                            ;      |        |      ;
	paletteAnimationDungeon00:
        dw $0104                             ;81F95F|        |      ;
        dw paletteDataAnimationDungeon00     ;81F961|        |86F064;
        dw $229A,$0000                       ;81F963|        |      ;
                                                            ;      |        |      ;
	paletteAnimationDungeon01:
        dw $0104                             ;81F967|        |      ;
        dw paletteDataAnimationDungeon01     ;81F969|        |86F12E;
        dw $227E,$0000                       ;81F96B|        |      ;
                                                            ;      |        |      ;
	paletteAnimationGold00:
        db $01                               ;81F96F|        |      ;
        dw $8008                             ;81F970|        |      ;
        dw paletteDataAnimationGold00        ;81F972|        |86F1D4;
        dw $22BA                             ;81F974|        |      ;
        dw paletteDataAnimationGold01        ;81F976|        |86F1DC;
        dw $22BA                             ;81F978|        |      ;
        dw paletteDataAnimationGold02        ;81F97A|        |86F1E4;
        dw $22BA,$0000                       ;81F97C|        |      ;
                                                            ;      |        |      ;
	paletteAnimationClockGold01:
        db $01                               ;81F980|        |      ;
        dw $8006                             ;81F981|        |      ;
        dw paletteDataAnimationClockTower00  ;81F983|        |86F3B6;
        dw $2256                             ;81F985|        |      ;
        dw paletteDataAnimationClockTower03  ;81F987|        |86F3C2;
        dw $229C                             ;81F989|        |      ;
        dw paletteDataAnimationClockTower01  ;81F98B|        |86F3BA;
        dw $2256                             ;81F98D|        |      ;
        dw paletteDataAnimationClockTower04  ;81F98F|        |86F3C8;
        dw $229C                             ;81F991|        |      ;
        dw paletteDataAnimationClockTower02  ;81F993|        |86F3BE;
        dw $2256                             ;81F995|        |      ;
        dw paletteDataAnimationClockTower05  ;81F997|        |86F3CE;
        dw $229C                             ;81F999|        |      ;
        dw paletteDataAnimationClockTower01  ;81F99B|        |86F3BA;
        dw $2256                             ;81F99D|        |      ;
        dw paletteDataAnimationClockTower04  ;81F99F|        |86F3C8;
        dw $229C,$0000                       ;81F9A1|        |      ;
                                                            ;      |        |      ;
   paletteAnim_goldTwinkle_02:
        db $01                               ;81F9A5|        |      ;
        dw $8006                             ;81F9A6|        |      ;
        dw paletteDataAnimationXX00          ;81F9A8|        |86F498;
        dw $227C                             ;81F9AA|        |      ;
        dw paletteDataAnimationXX01          ;81F9AC|        |86F49E;
        dw $227C                             ;81F9AE|        |      ;
        dw paletteDataAnimationXX02          ;81F9B0|        |86F4A4;
        dw $227C                             ;81F9B2|        |      ;
        dw paletteDataAnimationXX01          ;81F9B4|        |86F49E;
        dw $227C,$0000                       ;81F9B6|        |      ;
                                                            ;      |        |      ;
	paletteAnimationClockTower00:
        db $01                               ;81F9BA|        |      ;
        dw $800A                             ;81F9BB|        |      ;
        dw paletteDataAnimation00ClockTower00;81F9BD|        |86F658;
        dw $2282                             ;81F9BF|        |      ;
        dw paletteDataAnimation00ClockTower01;81F9C1|        |86F66E;
        dw $2282                             ;81F9C3|        |      ;
        dw paletteDataAnimation00ClockTower02;81F9C5|        |86F684;
        dw $2282,$0000                       ;81F9C7|        |      ;
                                                            ;      |        |      ;
	paletteAnimationClockTower01:
        db $01                               ;81F9CB|        |      ;
        dw $8008                             ;81F9CC|        |      ;
        dw paletteDataAnimation00ClockTower03;81F9CE|        |86F71C;
        dw $22BA                             ;81F9D0|        |      ;
        dw paletteDataAnimation00ClockTower04;81F9D2|        |86F724;
        dw $22BA                             ;81F9D4|        |      ;
        dw paletteDataAnimation00ClockTower05;81F9D6|        |86F72C;
        dw $22BA,$0000                       ;81F9D8|        |      ;		

org $81F3DA
	setPaletteNightIntroAfterThunder:
        dw introAnimNight_19                 ;81F3DA|        |86D4BA;
        dw introAnimNight_19                 ;81F3DC|        |86D4BA;
        dw introAnimNight_17                 ;81F3DE|        |86D1B8;
        dw introAnimNight_19                 ;81F3E0|        |86D4BA;
org $85F2E8
		LDX.W setPaletteNightIntroAfterThunder,Y;85F2E8|BEDAF3  |81F3DA;

org $809AB2                   
		LDY.W #paletteMainSpriteAndHUDpointer                        ;809AB2|A01587  |      ;		#$8715 
org $8099EF                      
		LDY.W #konamiPalAnim_01                      ;8099EF|A08A8B  |      ;		#$8B8A   
org $8099C0
		LDY.W #konamiPalAnim_03                     ;8099C0|A09C8B  |      ;		#$8B9C    
org $8099A4                     
		LDY.W #konamiPalAnim_02                       ;8099A4|A0938B  |      ;	#$8B93   
org $8093A0 
		LDY.W #titleScreenPalettePointers                      ;8093A0|A0F786  |      ;	#$86F7   
org $80990E                    
		LDY.W #konamiPalAnim_00                        ;80990E|A0758B  |      ;	#$8B75 
org $809C9E
        LDY.W #paletteMainPointer06                       ;809C9E|A06E87  |      ;	#$876E  
org $809CA5                     
		LDY.W #paletteMainPointer08                        ;809CA5|A09087  |      ;	#$8790 
org $809CBF                     
		LDY.W #paletteMainPointer07                      ;809CBF|A07F87  |      ;		#$877F   

org $82FEE5
		LDY.W #introWhipPalettePointers                       ;82FEE5|A03B87  |      ;		#$873B   clear menu Title? 


org $83803A
        LDY.W #nameScreenPalette                       ;83803A|A02287  |      ;	#$8722  
org $83824E                      
		LDY.W #PWscreenPalettePointers                    ;83824E|A04487  |      ;		#$8744     
org $838490      
		LDY.W #PWscreenPalettePointers                      ;838490|A04487  |      ;		#$8744    
org $8385D8                      
		LDY.W #nameScreenPalette                       ;8385D8|A02287  |      ;		#$8722  


org $83DB0F     	; title cinematic 
		LDY.W #titleScreenPalettePointers                      ;83DB0F|A0F786  |      ;		#$86F7   
org $83DC04
        LDY.W #titleScreenPalettePointers                       ;83DC04|A0F786  |      ;		#$86F7  
org $83DC10      
		LDY.W #paletteMainPointer01                        ;83DC10|A00C87  |      ;		#$870C 
org $83DC37 
		LDY.W #titleScreenPalettePointers                       ;83DC37|A0F786  |      ;		#$86F7  
org $83E14A
        LDA.W watterCurrentPaletteAnim,Y     			;83E14A|B985E2  |81E285;

org $81E285
    watterCurrentPaletteAnim:    
		dw paletteAnimationWaterSlide1       ;81E285|        |81F886;    
		dw paletteAnimationWaterSlide2        ;81E287|        |81F8BB;

org $83FA72                      
		LDY.W #paletteMainPointer0a                       ;83FA72|A0B687  |      ; ending sequence 	#$87B6  

org $85F1D8
        LDY.W #paletteMainPointer09                        ;85F1D8|A0A587  |      ;		#$87A5 

org $85F25E
		ADC.W #introPalettAnimTrickery                        ;85F25E|695AD2  |      ;	#$D25A red BG is cool though 

org $81FA22
	paletteLoadSomething01:
        db $01                               ;81FA22|        |      ;
        dw $0000                             ;81FA23|        |      ;
        dw paletteDataAnimationXX03          ;81FA25|        |86F4AA;
        dw $23E0,$0000

org $85F1D8
		LDY.W #paletteLoadMapScreen                       ;85F1D8|A0A587  |      ;	#$87A5  	map screen
org $8187A5
	paletteLoadMapScreen:
        db $01                               ;8187A5|        |      ;
        dw $0000                             ;8187A6|        |      ;
        dw introStoryScreenPaletteData17     ;8187A8|        |86D116;
        dw $2200                             ;8187AA|        |      ;
        dw mainHUDpaletteData                ;8187AC|        |86C98C;
        dw $2202                             ;8187AE|        |      ;
        dw introStoryScreenPaletteData18     ;8187B0|        |86D218;
        dw $2320,$0000                       ;8187B2|        |      ;
org $8CFD48
		LDY.W #titleScreenPalettePointers                         ;8CFD48|A0F786  |      ;		#$86F7

org $86B5D2
	palleteLoad4Levels:
		LDY.W #paletteMainSpriteAndHUDpointer                       ;86B5D2|A01587  |      ;	#$8715 

{ ; -- bosses ------------------------------------------
   
org $82D718		; rowdin 		
		LDY.W #bossRowdinPalettePointer00                        ;82D718|A087C6  |      ; palettePointerID #$C687 
org $82DF14             
		LDY.W #bossRowdinPalettePointer01                        ;82DF14|A090C6  |      ;  #$C690 
org $82DF30            
		LDY.W #bossRowdinPalettePointer02                         ;82DF30|A09DC6  |      ;  #$C69D
org $81C687
	bossRowdinPalettePointer00: 
		db $01                               ;81C687|        |      ; 
        dw $0000                             ;81C688|        |      ;  
        dw paletteDataBossRowdin0513         ;81C68A|        |86D858;  
        dw $23A0,$0000                       ;81C68C|        |      ;  
    
	bossRowdinPalettePointer01:    
		db $01                               ;81C690|        |      ;  
        dw $0401                             ;81C691|        |      ;  
        dw morePaletteBossGetHitColor01      ;81C693|        |86D940;  
        dw $23A0                             ;81C695|        |      ;  
        dw paletteDataBossRowdin0513         ;81C697|        |86D858;  
        dw $23A0,$0000                       ;81C699|        |      ;  
    
	bossRowdinPalettePointer02:	
		db $01                               ;81C69D|        |      ;          
		dw $0C01                             ;81C69E|        |      ;  
        dw morePaletteBossGetHitColor01      ;81C6A0|        |86D940;  
        dw $23A0                             ;81C6A2|        |      ;  
        dw paletteDataBossRowdin0513         ;81C6A4|        |86D858;  
        dw $23A0,$0000                       ;81C6A6|        |      ;  

org $82E308			; viper 
        LDY.W #bossViperPaletteLoad01                      ;82E308|A07BC7  |      ;  #$C77B   
org $82E40C        
		LDY.W #bossViperPaletteLoad00                     ;82E40C|A072C7  |      ;  #$C772 
org $81C772
	bossViperPaletteLoad00: 
		db $01                               ;81C772|        |      ;  
        dw $0000                             ;81C773|        |      ;  
        dw morePaletteData05                 ;81C775|        |86DA28;  
        dw $2380,$0000                       ;81C777|        |      ;  
    
	bossViperPaletteLoad01:	
		db $01                               ;81C77B|        |      ;  
        dw $0401                             ;81C77C|        |      ;  
        dw morePaletteBossGetHitColor01      ;81C77E|        |86D940;  
        dw $23A0                             ;81C780|        |      ;  
        dw morePaletteData05                 ;81C782|        |86DA28;  
        dw $2380,$0000                       ;81C784|        |      ;  


org $82EC4B		; medusa 
        LDY.W #bossMedusaPaletteLoad04                        		;82EC4B|A0B4CB  |      ;  #$CBB4 
org $82ED9A
		LDY.W #bossMedusaPaletteLoad01                        ;82ED9A|A091CB  |      ;  #$CB91 
org $82F04C    
		LDY.W #bossMedusaPaletteLoad00                         ;82F04C|A088CB  |      ;  #$CB88
org $82F0A3
		LDY.W #bossMedusaPaletteLoad01                        ;82F0A3|A091CB  |      ;  #$CB91 
org $82F0DF          
		LDY.W #bossMedusaPaletteLoad02                       ;82F0DF|A09ACB  |      ;  #$CB9A  
org $82F0E9 
		LDY.W #bossMedusaPaletteLoad01                         ;82F0E9|A091CB  |      ;  #$CB91
org $82F132
		LDY.W #bossMedusaPaletteLoad03                   ;82F132|A0A7CB  |      ;  #$CBA7      

org $81CB88
	bossMedusaPaletteLoad00: 
		db $01                               ;81CB88|        |      ;  simon stone 
        dw $0000                             ;81CB89|        |      ;  
        dw morePaletteData04                 ;81CB8B|        |86DA06;  
        dw $2300,$0000                       ;81CB8D|        |      ;  
    
	bossMedusaPaletteLoad01:   
		db $01                               ;81CB91|        |      ;  
        dw $0000                             ;81CB92|        |      ;  
        dw morePaletteData02                 ;81CB94|        |86D982;  
        dw $2300,$0000                       ;81CB96|        |      ;  
                                                            ;      |        |      ;  
	bossMedusaPaletteLoad02: 
		db $01                               ;81CB9A|        |      ;  
        dw $8002                             ;81CB9B|        |      ;  
        dw morePaletteBossGetHitColor01      ;81CB9D|        |86D940;  
        dw $23A0                             ;81CB9F|        |      ;  
        dw morePaletteData03                 ;81CBA1|        |86D9A4;  
        dw $2380,$0000                       ;81CBA3|        |      ;  
                                                            ;      |        |      ;  
	bossMedusaPaletteLoad03: 
		db $01                               ;81CBA7|        |      ;  
        dw $0401                             ;81CBA8|        |      ;  
        dw morePaletteBossGetHitColor01      ;81CBAA|        |86D940;  
        dw $23A0                             ;81CBAC|        |      ;  
        dw morePaletteData03                 ;81CBAE|        |86D9A4;  
        dw $2380,$0000                       ;81CBB0|        |      ;  
                                                            ;      |        |      ;  
	bossMedusaPaletteLoad04: 
		db $01                               ;81CBB4|        |      ;  
        dw $0000                             ;81CBB5|        |      ;  
        dw morePaletteData03                 ;81CBB7|        |86D9A4;  
        dw $2380,$0000                       ;81CBB9|        |      ;  


org $82F235    ; puwexil                
		LDY.W #bossPuwexilPaletteLoad02                         ;82F235|A00CCC  |      ; #$CC0C 
org $82F266 
		LDY.W #bossPuwexilPaletteLoad01                        ;82F266|A0FFCB  |      ;  #$CBFF 
org $82F282
        LDY.W #bossPuwexilPaletteLoad00                       ;82F282|A0F7CB  |      ;  #$CBF7  

org $81CBF7
	bossPuwexilPaletteLoad00:
        dw $0403                             ;81CBF7|        |      ;
        dw morePaletteData06                 ;81CBF9|        |86DA8A;
        dw $2380,$0000                       ;81CBFB|        |      ;
 
	bossPuwexilPaletteLoad01:
		db $01                               ;81CBFF|        |      ;
		dw $0401                             ;81CC00|        |      ;
		dw morePaletteData07                 ;81CC02|        |86DAEC;
		dw $23A0                             ;81CC04|        |      ;
		dw morePaletteData06                 ;81CC06|        |86DA8A;
		dw $2380,$0000                       ;81CC08|        |      ;

	bossPuwexilPaletteLoad02:
        db $01                               ;81CC0C|        |      ;
        dw $8002                             ;81CC0D|        |      ;
        dw morePaletteData07                 ;81CC0F|        |86DAEC;
        dw $23A0                             ;81CC11|        |      ;
        dw morePaletteData06                 ;81CC13|        |86DA8A;
        dw $2380,$0000                       ;81CC15|        |      ;

org $838857			; grakul 
        LDY.W #bossGrakulPaletteLoad00                      ;838857|A0ABD2  |      ;		#$D2AB   
org $8391A6
		LDY.W #bossGrakulPaletteLoad01                   ;8391A6|A0B4D2  |      ;		#$D2B4      
org $8391F9                     
		LDY.W #bossGrakulPaletteLoad01                       ;8391F9|A0B4D2  |      ;		 #$D2B4 
org $81D2AB		
	bossGrakulPaletteLoad00:
        db $01                               ;81D2AB|        |      ;
        dw $0000                             ;81D2AC|        |      ;
        dw morePaletteData16                 ;81D2AE|        |86DD26;
        dw $2380,$0000                       ;81D2B0|        |      ;
    
	bossGrakulPaletteLoad01:
        db $01                               ;81D2B4|        |      ;
        dw $0202                             ;81D2B5|        |      ;
        dw morePaletteBossGetHitColor01      ;81D2B7|        |86D940;
        dw $2380                             ;81D2B9|        |      ;
        dw morePaletteData16                 ;81D2BB|        |86DD26;
        dw $2380                             ;81D2BD|        |      ;		

org $8392AE			; frank 
        LDY.W #bossFrankPaletteLoad00                      ;8392AE|A025D5  |      ;	#$D525   
org $8392B8    
		LDY.W #bossFrankPaletteLoad01                       ;8392B8|A02BD5  |      ;		#$D52B  
org $8393D2                     
		LDY.W #bossFrankPaletteLoad02_bottle1                      ;8393D2|A03CD5  |      ;	bottle 1	#$D53C   
org $8393ED                      
		LDY.W #bossFrankPaletteLoad03_bottle2                       ;8393ED|A045D5  |      ;	bottle 2	#$D545  
org $839408   
        LDY.W #bossFrankPaletteLoad04_bottle3                        ;839408|A04ED5  |      ;	bottle 3	#$D54E 
org $839A62                      
		LDY.W #bossFrankPaletteLoad05_hit                       ;839A62|A057D5  |      ;	get hit 	#$D557  
org $839A95                    
		LDY.W #bossFrankPaletteLoad06_death                       ;839A95|A080D5  |      ;	death 	#$D580  

org $81D525
	bossFrankPaletteLoad00:
        dw $0203                             ;81D525|        |      ;
        dw morePaletteData10                 ;81D527|        |86DB52;
        dw $23C0                             ;81D529|        |      ;

	bossFrankPaletteLoad01:
        db $01                               ;81D52B|        |      ;
        dw $0000                             ;81D52C|        |      ;
        dw morePaletteData08                 ;81D52E|        |86DB0E;
        dw $2380                             ;81D530|        |      ;
        dw morePaletteData09                 ;81D532|        |86DB30;
        dw $23A0                             ;81D534|        |      ;
        dw morePaletteData11                 ;81D536|        |86DB74;
        dw $23E0,$0000                       ;81D538|        |      ;
  
	bossFrankPaletteLoad02_bottle1:
        db $01                               ;81D53C|        |      ;
        dw $0000                             ;81D53D|        |      ;
        dw morePaletteData09                 ;81D53F|        |86DB30;
        dw $23E0,$0000                       ;81D541|        |      ;

	bossFrankPaletteLoad03_bottle2:
        db $01                               ;81D545|        |      ;
        dw $0000                             ;81D546|        |      ;
        dw morePaletteData08                 ;81D548|        |86DB0E;
        dw $23E0,$0000                       ;81D54A|        |      ;
 
	bossFrankPaletteLoad04_bottle3:
        db $01                               ;81D54E|        |      ;
        dw $0000                             ;81D54F|        |      ;
        dw morePaletteData11                 ;81D551|        |86DB74;
        dw $23E0,$0000                       ;81D553|        |      ;

	bossFrankPaletteLoad05_hit:
        db $01                               ;81D557|        |      ;
        dw $0002                             ;81D558|        |      ;
        dw morePaletteBossGetHitColor01      ;81D55A|        |86D940;
        dw $23A0                             ;81D55C|        |      ;
        dw morePaletteData10                 ;81D55E|        |86DB52;
        dw $23C0                             ;81D560|        |      ;
        dw morePaletteBossGetHitColor01      ;81D562|        |86D940;
        dw $23A0                             ;81D564|        |      ;
        dw morePaletteData10                 ;81D566|        |86DB52;
        dw $23C0                             ;81D568|        |      ;
        dw morePaletteData08                 ;81D56A|        |86DB0E;
        dw $2380                             ;81D56C|        |      ;
        dw morePaletteData09                 ;81D56E|        |86DB30;
        dw $23A0,$0000                       ;81D570|        |      ;

	somePaletteLoadMayBeBoss14:
        dw $0102,$2380,$23A0,$23C0           ;81D574|        |      ;	not palette?! FIXME 
        dw $23E0,$0000                       ;81D57C|        |      ;

	bossFrankPaletteLoad06_death:
        db $01                               ;81D580|        |      ;
        dw $0802                             ;81D581|        |      ;
        dw morePaletteBossGetHitColor01      ;81D583|        |86D940;
        dw $23A0                             ;81D585|        |      ;
        dw morePaletteData10                 ;81D587|        |86DB52;
        dw $23C0                             ;81D589|        |      ;
        dw morePaletteBossGetHitColor01      ;81D58B|        |86D940;
        dw $23A0                             ;81D58D|        |      ;
        dw morePaletteData10                 ;81D58F|        |86DB52;
        dw $23C0                             ;81D591|        |      ;
        dw morePaletteData08                 ;81D593|        |86DB0E;
        dw $2380                             ;81D595|        |      ;
        dw morePaletteData09                 ;81D597|        |86DB30;
        dw $23A0                             ;81D599|        |      ;


org $839C17			 ; gaibone 
        LDY.W #bossGaibonPaletteLoad00                     ;839C17|A097D6  |      ;	gaibone #$D697    
org $83A3A3
        LDY.W #bossGaibonPaletteLoad01                      ;83A3A3|A0A0D6  |      ;	#$D6A0   
org $83A3C2 
		LDY.W #bossGaibonPaletteLoad02                        ;83A3C2|A0ADD6  |      ;	#$D6AD 
org $83A3EA         
		LDY.W #bossGaibonPaletteLoad03                        ;83A3EA|A0BAD6  |      ;	#$D6BA 

org $81D697
	bossGaibonPaletteLoad00:
        db $01                               ;81D697|        |      ;
        dw $0000                             ;81D698|        |      ;
        dw morePaletteData13                 ;81D69A|        |86DBF8;
        dw $2380,$0000                       ;81D69C|        |      ;

	bossGaibonPaletteLoad01:
        db $01                               ;81D6A0|        |      ;
        dw $0302                             ;81D6A1|        |      ;
        dw morePaletteBossGetHitColor01      ;81D6A3|        |86D940;
        dw $23A0                             ;81D6A5|        |      ;
        dw morePaletteData13                 ;81D6A7|        |86DBF8;
        dw $2380,$0000                       ;81D6A9|        |      ;
  
	bossGaibonPaletteLoad02:
        db $01                               ;81D6AD|        |      ;
        dw $0302                             ;81D6AE|        |      ;
        dw morePaletteBossGetHitColor01      ;81D6B0|        |86D940;
        dw $23A0                             ;81D6B2|        |      ;
        dw morePaletteData12                 ;81D6B4|        |86DB96;
        dw $2380,$0000                       ;81D6B6|        |      ;

	bossGaibonPaletteLoad03:
        db $01                               ;81D6BA|        |      ;
        dw $0802                             ;81D6BB|        |      ;
        dw morePaletteBossGetHitColor01      ;81D6BD|        |86D940;
        dw $23A0                             ;81D6BF|        |      ;
        dw morePaletteData12                 ;81D6C1|        |86DB96;
        dw $2380,$0000                       ;81D6C3|        |      ;

		

org $83A4B9			; death 
        LDY.W #bossDeathPaletteLoad02                     ;83A4B9|A0BDD7  |      ;	#$D7BD    
org $83A4F8
		LDY.W #bossDeathPaletteLoad00                       ;83A4F8|A0ADD7  |      ;	#$D7AD  
org $83A502
		LDY.W #bossDeathPaletteLoad01                       ;83A502|A0B5D7  |      ;		#$D7B5  
org $83A877
        LDY.W #bossDeathPaletteLoad03                       ;83A877|A0D3D7  |      ;	#$D7D3  
org $83A8B5
        LDY.W #bossDeathPaletteLoad04                      ;83A8B5|A0C6D7  |      ;	#$D7C6   
org $83ADAF      
		LDY.W #bossDeathPaletteLoad04                      ;83ADAF|A0C6D7  |      ;	#$D7C6   
org $86C2A4
        LDY.W #tourchAfterDeathPaletteLoad                    ;86C2A4|A0D5FA  |      ;	#$FAD5     

org $81FAD5	
	tourchAfterDeathPaletteLoad:
        db $01                               ;81FAD5|        |      ;
        dw $8001                             ;81FAD6|        |      ;
        dw paletteDataSpriteStagel0B_extra_death;81FAD8|        |86FC28;
        dw $2280                             ;81FADA|        |      ;
        dw paletteDataAnimationXX0f          ;81FADC|        |86FC4A;
        dw $2280,$0000                       ;81FADE|        |      ;

org $81D7AD
	bossDeathPaletteLoad00:
        dw $0104                             ;81D7AD|        |      ;
        dw moreSingleColorLoad02             ;81D7AF|        |86DE2E;
        dw $2382,$0000                       ;81D7B1|        |      ;
   
	bossDeathPaletteLoad01:
        dw $0004                             ;81D7B5|        |      ;
        dw moreSingleColorLoad03             ;81D7B7|        |86DE32;
        dw $238E,$0000                       ;81D7B9|        |      ;
  
	bossDeathPaletteLoad02:
        db $01                               ;81D7BD|        |      ;
        dw $0000                             ;81D7BE|        |      ;
        dw paletteDataBossDeath_19           ;81D7C0|        |86DDCC;
        dw $2380,$0000                       ;81D7C2|        |      ;

	bossDeathPaletteLoad04:
        db $01                               ;81D7C6|        |      ;
        dw $0202                             ;81D7C7|        |      ;
        dw morePaletteBossGetHitColor01      ;81D7C9|        |86D940;
        dw $2380                             ;81D7CB|        |      ;
        dw paletteDataBossDeath_19           ;81D7CD|        |86DDCC;
        dw $2380,$0000                       ;81D7CF|        |      ;

	bossDeathPaletteLoad03:
        dw $0102,$2380,$0000                 ;81D7D3|        |      ;


org $83B052			; mummy
        LDY.W #bossMummyPalettLoad00                      ;83B052|A043DA  |      ;		#$DA43   
org $83B0EA
        LDY.W #bossMummyPalettLoad02                       ;83B0EA|A059DA  |      ;		#$DA59  
org $83B58C
		LDY.W #bossMummyPalettLoad01                       ;83B58C|A04CDA  |      ;		#$DA4C  

org $81DA43		
	bossMummyPalettLoad00:
        db $01                               ;81DA43|        |      ;
        dw $0000                             ;81DA44|        |      ;
        dw morePaletteData17                 ;81DA46|        |86DD88;
        dw $2380,$0000                       ;81DA48|        |      ;

	bossMummyPalettLoad01:
        db $01                               ;81DA4C|        |      ;
        dw $0202                             ;81DA4D|        |      ;
        dw morePaletteBossGetHitColor01      ;81DA4F|        |86D940;
        dw $2380
		dw morePaletteData17
		dw $2380,$0000           			;81DA51|        |      ;

	bossMummyPalettLoad02:
        db $01                               ;81DA59|        |      ;
        dw $0302                             ;81DA5A|        |      ;
        dw morePaletteData18                 ;81DA5C|        |86DDAA;
        dw $2380                             ;81DA5E|        |      ;
        dw morePaletteData17                 ;81DA60|        |86DD88;
        dw $2380,$0000                       ;81DA62|        |      ;		
		

org $83B686			; slogra 	
        LDY.W #bossSlograPaletteLoad03                        ;83B686|A047DC  |      ;		#$DC47 
org $83BDC5		
		LDY.W #bossSlograPaletteLoad02                      ;83BDC5|A03ADC  |      ;	#$DC3A   
org $83BDCF
		LDY.W #bossSlograPaletteLoad02                      ;83BDCF|A03ADC  |      ;	#$DC3A   
org $83BDD9		
		LDY.W #bossSlograPaletteLoad02                    ;83BDD9|A03ADC  |      ;	#$DC3A     
org $83BF3C		
        LDY.W #bossSlograPaletteLoad04                       ;83BF3C|A050DC  |      ;	#$DC50  	

org $83BF46			; slogra second face 
        LDY.W #bossSlograPaletteLoad00                      ;83BF46|A02ADC  |      ;		#$DC2A   
org $83BF50
		LDY.W #bossSlograPaletteLoad01                      ;83BF50|A032DC  |      ;		#$DC32   
org $83BFB5
        LDY.W #bossSlograPaletteLoad03                          ;83BFB5|A047DC  |      ;		init second face #$DC47 
org $83BFCA       
		LDY.W #bossSlograPaletteLoad05                       ;83BFCA|A05DDC  |      ;	#$DC5D  
	
org $81DC2A
	bossSlograPaletteLoad00:
        dw $0004                             ;81DC2A|        |      ;
        dw moreSingleColorLoad00             ;81DC2C|        |86DCBC;
        dw $238A,$0000                       ;81DC2E|        |      ;

	bossSlograPaletteLoad01:
        dw $0004                             ;81DC32|        |      ;
        dw moreSingleColorLoad00             ;81DC34|        |86DCBC;
        dw $23AA,$0000                       ;81DC36|        |      ;

	bossSlograPaletteLoad02:
        db $01                               ;81DC3A|        |      ;
        dw $0403                             ;81DC3B|        |      ;
        dw morePaletteData15                 ;81DC3D|        |86DCC4;
        dw $2380                             ;81DC3F|        |      ;
        dw morePaletteData14                 ;81DC41|        |86DC5A;
        dw $2380,$0000                       ;81DC43|        |      ;

	bossSlograPaletteLoad03:
        db $01                               ;81DC47|        |      ;
        dw $0000                             ;81DC48|        |      ;
        dw morePaletteData14                 ;81DC4A|        |86DC5A;
        dw $2380,$0000                       ;81DC4C|        |      ;
 
	bossSlograPaletteLoad04:
        db $01                               ;81DC50|        |      ;
        dw $0202                             ;81DC51|        |      ;
        dw morePaletteBossGetHitColor01      ;81DC53|        |86D940;
        dw $2380                             ;81DC55|        |      ;
        dw morePaletteData15                 ;81DC57|        |86DCC4;
        dw $2380,$0000                       ;81DC59|        |      ;

	bossSlograPaletteLoad05:
        db $01                               ;81DC5D|        |      ;
        dw $4002                             ;81DC5E|        |      ;
        dw morePaletteBossGetHitColor01      ;81DC60|        |86D940;
        dw $2380                             ;81DC62|        |      ;
        dw morePaletteData15                 ;81DC64|        |86DCC4;
        dw $2380                             ;81DC66|        |      ;
        dw $0000                             ;81DC68|        |      ;
	
		
org $83C055			; dracula 		
		LDY.W #bossDracPaletteLoad                  ;83C055|A018DF  |      ;		#$DF18       

org $81DF18
	bossDracPaletteLoad:
        db $01                               ;81DF18|        |      ;
        dw $0000                             ;81DF19|        |      ;
        dw paletteDataSpriteStagel0B_drac01  ;81DF1B|        |86DE38;
        dw $23A0                             ;81DF1D|        |      ;
        dw paletteDataAnimationXX08          ;81DF1F|        |86DE7A;
        dw $2200,$0000                       ;81DF21|        |      ;


org $85D5A9				; zapfBat 
        LDY.W #zapfBatPaletteLoad02                      ;85D5A9|A03DF2  |      ;		#$F23D   
org $85D5FF
		LDY.W #zapfBatPaletteLoad00                        ;85D5FF|A023F2  |      ;		#$F223 
org $85D62C
		LDY.W #zapfBatPaletteLoad01                       ;85D62C|A030F2  |      ;    #$F230  
org $85DD28
		LDY.W #zapfBatPaletteLoad03                       ;85DD28|A046F2  |      ;	#$F246  
org $86B97C
        LDY.W #paletteLoadSomething01                         ;86B97C|A022FA  |      ;		#$FA22	zapfroom


org $81F223
	zapfBatPaletteLoad00:
        db $01                               ;81F223|        |      ;
        dw $0302                             ;81F224|        |      ;
        dw paletteDataAnimationXX05          ;81F226|        |86F4EE;
        dw $22A0                             ;81F228|        |      ;
        dw paletteDataAnimationXX04          ;81F22A|        |86F4CC;
        dw $22A0,$0000                       ;81F22C|        |      ;
                                                            ;      |        |      ;
	zapfBatPaletteLoad01:
        db $01                               ;81F230|        |      ;
        dw $0000                             ;81F231|        |      ;
        dw paletteDataAnimationXX06          ;81F233|        |86F510;
        dw $2260                             ;81F235|        |      ;
        dw paletteDataAnimationXX07          ;81F237|        |86F532;
        dw $2260,$0000                       ;81F239|        |      ;
                                                            ;      |        |      ;
	zapfBatPaletteLoad02:					
        db $01                               ;81F23D|        |      ;
        dw $0000                             ;81F23E|        |      ;
        dw paletteDataMain0514               ;81F240|        |86D89A;
        dw $2380,$0000                       ;81F242|        |      ;
                                                            ;      |        |      ;
	zapfBatPaletteLoad03:
        db $01                               ;81F246|        |      ;
        dw $0002                             ;81F247|        |      ;
        dw paletteDataMain0515               ;81F249|        |86D8BC;
        dw $2380                             ;81F24B|        |      ;
        dw paletteDataMain0514               ;81F24D|        |86D89A;
        dw $2380                             ;81F24F|        |      ;
        dw paletteDataMain0515               ;81F251|        |86D8BC;
        dw $2380                             ;81F253|        |      ;
        dw paletteDataMain0514               ;81F255|        |86D89A;
        dw $2380,$0000                       ;81F257|        |      ;


org $85DEA2				; dancer 
		LDY.W #bossDancerPaletteLoad00                       ;85DEA2|A0A3F2  |      ;	#$F2A3  
org $85E25B
        LDY.W #bossDancerPaletteLoad01                      ;85E25B|A0ABF2  |      ;	#$F2AB   

org $81F2A3
	bossDancerPaletteLoad00:
        dw $0104                             ;81F2A3|        |      ;
        dw paletteDataMain0512               ;81F2A5|        |86D816;
        dw $2380,$0000                       ;81F2A7|        |      ;

	bossDancerPaletteLoad01:
        db $01                               ;81F2AB|        |      ;
        dw $0202                             ;81F2AC|        |      ;
        dw morePaletteBossGetHitColor01      ;81F2AE|        |86D940;
        dw $2380                             ;81F2B0|        |      ;
        dw paletteDataMain0512               ;81F2B2|        |86D816;
        dw $2380,$0000                       ;81F2B4|        |      ;


org $85E757				; koranot 
		LDY.W #paletteLoadKoranot00                      ;85E757|A05D87  |      ;	#$875D   
org $85E75E
		LDY.W #paletteLoadKoranot01                     ;85E75E|A08BF3  |      ;		#$F38B    
org $85E7D9                    
		LDY.W #paletteLoadKoranot02                        ;85E7D9|A091F3  |      ;	#$F391 

org $81F38B
	paletteLoadKoranot01:
        dw $0802,$2220,$2240                 ;81F38B|        |      ;
                                                            ;      |        |      ;
	paletteLoadKoranot02:
        dw $0403                             ;81F391|        |      ;
        dw paletteDataMain0501           	;81F393|        |86D6A0;
        dw $2240                             ;81F395|        |      ;
        db $00,$00,$00                       ;81F397|        |      ;
                                                            ;      |        |      ;

}	



}		