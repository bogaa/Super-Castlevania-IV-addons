; content: 
; enemyHealth 
; DamageTable
; ...

org $808103
writeButtonMappingDefaults: 	;  store button defaults
	LDA.W #$8000                       
    STA.B RAM_buttonMapJump              
    LDA.W #$4000                         
    STA.B RAM_buttonMapWhip              
    LDA.W #$0010                         
    STA.B RAM_buttonMapSubWep            

org $85C7BE 
BGTranperantSetting:			; stored to $44
	dw $0001		;lvl 0
	dw $0000        ;lvl 1
	dw $0000        ;lvl 2
	dw $0000        ;lvl 3
	dw $0000        ;lvl 4
	dw $0000        ;lvl 5
	dw $0000        ;lvl 6
	dw $0000        ;lvl 7
	dw $0000        ;lvl 8
	dw $0001        ;lvl 9
	dw $0001        ;lvl a
	dw $0001        ;lvl b
	dw $0000        ;lvl c
	dw $0001        ;lvl d
	dw $0001        ;lvl e
	dw $0001        ;lvl f
	dw $0001        ;lvl 10
	dw $0001        ;lvl 11
	dw $0000        ;lvl 12
	dw $0000        ;lvl 13
	dw $0000        ;lvl 14
	dw $0000        ;lvl 15
	dw $0002        ;lvl 16
	dw $0000        ;lvl 17
	dw $0000        ;lvl 18
	dw $0000        ;lvl 19
	dw $0000        ;lvl 1a
	dw $0000        ;lvl 1b
	dw $0000        ;lvl 1c
	dw $0000        ;lvl 1d
	dw $0000        ;lvl 1e
	dw $0000        ;lvl 1f
	dw $0000        ;lvl 20
	dw $0004        ;lvl 21
	dw $0000        ;lvl 22
	dw $0000        ;lvl 23
	dw $0000        ;lvl 24
	dw $0000        ;lvl 25
	dw $0000        ;lvl 26
	dw $0000        ;lvl 27
	dw $0000        ;lvl 28
	dw $0000        ;lvl 29
	dw $0001        ;lvl 2a
	dw $0001        ;lvl 2b
	dw $0000        ;lvl 2c
	dw $0001        ;lvl 2d
	dw $000A        ;lvl 2e
	dw $000A        ;lvl 2f
	dw $000A        ;lvl 30
	dw $0000        ;lvl 31
	dw $0000        ;lvl 32
	dw $0000        ;lvl 33
	dw $0000        ;lvl 34
	dw $0000        ;lvl 35
	dw $0000        ;lvl 36
	dw $0000        ;lvl 37
	dw $0000        ;lvl 38
	dw $0000        ;lvl 39
	dw $0000        ;lvl 3a
	dw $0000        ;lvl 3b
	dw $0000        ;lvl 3c
	dw $0000        ;lvl 3d
	dw $0001        ;lvl 3e
	dw $0000        ;lvl 3f
	dw $0000        ;lvl 41
	dw $0000        ;lvl 42
	dw $0000        ;lvl 43
    dw $0000        ;lvl 44

org $85C846
ScrollSettingsBG:
	dw $0005     ;lvl 0
	dw $0000     ;lvl 1
	dw $8001     ;lvl 2
	dw $8003     ;lvl 3
	dw $8001     ;lvl 4
	dw $8004     ;lvl 5
	dw $800A     ;lvl 6
	dw $8004     ;lvl 7
	dw $0002     ;lvl 8
	dw $0010     ;lvl 9
	dw $000B     ;lvl a
	dw $0006     ;lvl b
	dw $000C     ;lvl c
	dw $0013     ;lvl d
	dw $0014     ;lvl e
	dw $0000     ;lvl f
	dw $0000     ;lvl 10
	dw $0009     ;lvl 11
	dw $0000     ;lvl 12
	dw $0000     ;lvl 13
	dw $0000     ;lvl 14
	dw $8008     ;lvl 15
	dw $0007     ;lvl 16
	dw $0006     ;lvl 17
	dw $0015     ;lvl 18
	dw $0000     ;lvl 19
	dw $0016     ;lvl 1a
	dw $8008     ;lvl 1b
	dw $0000     ;lvl 1c
	dw $0000     ;lvl 1d
	dw $0000     ;lvl 1e
	dw $0000     ;lvl 1f
	dw $0017     ;lvl 20
	dw $0000     ;lvl 21
	dw $0021     ;lvl 22
	dw $0000     ;lvl 23
	dw $0000     ;lvl 24
	dw $0000     ;lvl 25
	dw $0000     ;lvl 26
	dw $0000     ;lvl 27
	dw $0000     ;lvl 28
	dw $0000     ;lvl 29
	dw $001A     ;lvl 2a
	dw $001A     ;lvl 2b
	dw $0000     ;lvl 2c
	dw $001A     ;lvl 2d
	dw $001B     ;lvl 2e
	dw $001B     ;lvl 2f
	dw $001B     ;lvl 30
	dw $0000     ;lvl 31
	dw $0000     ;lvl 32
	dw $0000     ;lvl 33
	dw $0000     ;lvl 34
	dw $0000     ;lvl 35
	dw $0000     ;lvl 36
	dw $0000     ;lvl 37
	dw $0000     ;lvl 38
	dw $0000     ;lvl 39
	dw $0000     ;lvl 3a
	dw $001F     ;lvl 3b
	dw $001D     ;lvl 3c
	dw $001E     ;lvl 3d
	dw $0000     ;lvl 3e
	dw $0023     ;lvl 3f
	dw $0023     ;lvl 41
	dw $0022     ;lvl 42
	dw $0025     ;lvl 43
	dw $0025     ;lvl 44

org $85ca82		;tileAnimation 1
	dw $87C3    ;lvl 0
	dw $87C7    ;lvl 1
	dw $87BF    ;lvl 2
	dw $87BF    ;lvl 3
	dw $87BF    ;lvl 4
	dw $87BF    ;lvl 5
	dw $87CB    ;lvl 6
	dw $87BF    ;lvl 7
	dw $87BF    ;lvl 8
	dw $87CF    ;lvl 9
	dw $87D3    ;lvl a
	dw $87D3    ;lvl b
	dw $87BF    ;lvl c
	dw $87DB    ;lvl d
	dw $87DF    ;lvl e
	dw $87DF    ;lvl f
	dw $87DF    ;lvl 10
	dw $87DF    ;lvl 11
	dw $87BF    ;lvl 12
	dw $87BF    ;lvl 13
	dw $87BF    ;lvl 14
	dw $87BF    ;lvl 15
	dw $87BF    ;lvl 16
	dw $87BF    ;lvl 17
	dw $87E7    ;lvl 18
	dw $87EB    ;lvl 19
	dw $87BF    ;lvl 1a
	dw $87BF    ;lvl 1b
	dw $87BF    ;lvl 1c
	dw $87BF    ;lvl 1d
	dw $87BF    ;lvl 1e
	dw $87BF    ;lvl 1f
	dw $87BF    ;lvl 20
	dw $87BF    ;lvl 21
	dw $87BF    ;lvl 22
	dw $87BF    ;lvl 23
	dw $87BF    ;lvl 24
	dw $87BF    ;lvl 25
	dw $87BF    ;lvl 26
	dw $87BF    ;lvl 27
	dw $87BF    ;lvl 28
	dw $87BF    ;lvl 29
	dw $87EF    ;lvl 2a
	dw $87EF    ;lvl 2b
	dw $87BF    ;lvl 2c
	dw $87F7    ;lvl 2d
	dw $87BF    ;lvl 2e
	dw $87BF    ;lvl 2f
	dw $87BF    ;lvl 30
	dw $87BF    ;lvl 31
	dw $87BF    ;lvl 32
	dw $87BF    ;lvl 33
	dw $87BF    ;lvl 34
	dw $87BF    ;lvl 35
	dw $87BF    ;lvl 36
	dw $87FB    ;lvl 37
	dw $87FB    ;lvl 38
	dw $87FB    ;lvl 39
	dw $87FB    ;lvl 3a
	dw $87BF    ;lvl 3b
	dw $87BF    ;lvl 3c
	dw $87BF    ;lvl 3d
	dw $87BF    ;lvl 3e
	dw $87BF    ;lvl 3f
	dw $87BF    ;lvl 41
	dw $87BF    ;lvl 42
	dw $87BF    ;lvl 43
	dw $87BF	;lvl 44
	

org $85cb0a		;tileAnimation 2
	dw $87BF	;lvl 0
	dw $87BF    ;lvl 1
	dw $87BF    ;lvl 2
	dw $87BF    ;lvl 3
	dw $87BF    ;lvl 4
	dw $87BF    ;lvl 5
	dw $87BF    ;lvl 6
	dw $87BF    ;lvl 7
	dw $87BF    ;lvl 8
	dw $87BF    ;lvl 9
	dw $87BF    ;lvl a
	dw $87BF    ;lvl b
	dw $87BF    ;lvl c
	dw $87BF    ;lvl d
	dw $87E3    ;lvl e
	dw $87E3    ;lvl f
	dw $87E3    ;lvl 10
	dw $87E3    ;lvl 11
	dw $87BF    ;lvl 12
	dw $87BF    ;lvl 13
	dw $87BF    ;lvl 14
	dw $87BF    ;lvl 15
	dw $87BF    ;lvl 16
	dw $87BF    ;lvl 17
	dw $87BF    ;lvl 18
	dw $87BF    ;lvl 19
	dw $87BF    ;lvl 1a
	dw $87BF    ;lvl 1b
	dw $87BF    ;lvl 1c
	dw $87BF    ;lvl 1d
	dw $87BF    ;lvl 1e
	dw $87BF    ;lvl 1f
	dw $87BF    ;lvl 20
	dw $87BF    ;lvl 21
	dw $87BF    ;lvl 22
	dw $87BF    ;lvl 23
	dw $87BF    ;lvl 24
	dw $87BF    ;lvl 25
	dw $87BF    ;lvl 26
	dw $87BF    ;lvl 27
	dw $87BF    ;lvl 28
	dw $87BF    ;lvl 29
	dw $87F3    ;lvl 2a
	dw $87F3    ;lvl 2b
	dw $87BF    ;lvl 2c
	dw $87BF    ;lvl 2d
	dw $87BF    ;lvl 2e
	dw $87BF    ;lvl 2f
	dw $87BF    ;lvl 30
	dw $87BF    ;lvl 31
	dw $87BF    ;lvl 32
	dw $87BF    ;lvl 33
	dw $87BF    ;lvl 34
	dw $87BF    ;lvl 35
	dw $87BF    ;lvl 36
	dw $87FF    ;lvl 37
	dw $87FF    ;lvl 38
	dw $87FF    ;lvl 39
	dw $87FF    ;lvl 3a
	dw $87BF    ;lvl 3b
	dw $87BF    ;lvl 3c
	dw $87BF    ;lvl 3d
	dw $87BF    ;lvl 3e
	dw $87BF    ;lvl 3f
	dw $87BF    ;lvl 41
	dw $87BF    ;lvl 42
	dw $87BF    ;lvl 43
	dw $87BF    ;lvl 44
	
org $86946f 	;palette Animation 	(..1f869 palette data pointer)
	dw $86F5	;lvl 0
	dw $F84B    ;lvl 1
	dw $86F5    ;lvl 2
	dw $F858    ;lvl 3
	dw $86F5    ;lvl 4
	dw $86F5    ;lvl 5
	dw $86F5    ;lvl 6
	dw $86F5    ;lvl 7
	dw $86F5    ;lvl 8
	dw $F869    ;lvl 9
	dw $F886    ;lvl a
	dw $F886    ;lvl b
	dw $86F5    ;lvl c
	dw $F8F0    ;lvl d
	dw $F8FD    ;lvl e
	dw $F8FD    ;lvl f
	dw $F8FD    ;lvl 10
	dw $F8FD    ;lvl 11
	dw $F916    ;lvl 12
	dw $F916    ;lvl 13
	dw $F91E    ;lvl 14
	dw $86F5    ;lvl 15
	dw $86F5    ;lvl 16
	dw $86F5    ;lvl 17
	dw $F926    ;lvl 18
	dw $F92E    ;lvl 19
	dw $86F5    ;lvl 1a
	dw $F936    ;lvl 1b
	dw $F93E    ;lvl 1c
	dw $86F5    ;lvl 1d
	dw $86F5    ;lvl 1e
	dw $86F5    ;lvl 1f
	dw $F946    ;lvl 20
	dw $86F5    ;lvl 21
	dw $86F5    ;lvl 22
	dw $F95F    ;lvl 23
	dw $F95F    ;lvl 24
	dw $F95F    ;lvl 25
	dw $F967    ;lvl 26
	dw $F967    ;lvl 27
	dw $F967    ;lvl 28
	dw $F967    ;lvl 29
	dw $F96F    ;lvl 2a
	dw $F96F    ;lvl 2b
	dw $86F5    ;lvl 2c
	dw $86F5    ;lvl 2d
	dw $F980    ;lvl 2e
	dw $F980    ;lvl 2f
	dw $F980    ;lvl 30
	dw $F9A5    ;lvl 31
	dw $F9A5    ;lvl 32
	dw $F9A5    ;lvl 33
	dw $F9A5    ;lvl 34
	dw $F9A5    ;lvl 35
	dw $F9A5    ;lvl 36
	dw $F9BA    ;lvl 37
	dw $F9BA    ;lvl 38
	dw $F9BA    ;lvl 39
	dw $F9BA    ;lvl 3a
	dw $F9CB    ;lvl 3b
	dw $86F5    ;lvl 3c
	dw $86F5    ;lvl 3d
	dw $86F5    ;lvl 3e
	dw $86F5    ;lvl 3f
	dw $86F5    ;lvl 41
	dw $86F5    ;lvl 42
	dw $86F5    ;lvl 43
	dw $86F5    ;lvl 44

org $81A6EC
   whipDamageData: 
	dw $0020,$0008
	dw $0030,$000C           
    dw $0030,$000C 

org $81ab00		; HitBoxTable y x from Center
	dw $0808    ;
	dw $0808    ; ID 01 Projectile ??
	dw $0808    ; ID 02 Projectile Bone ??
	dw $0404    ; ID 03 Ring
	dw $0000    ; ID 04 PullBridge Mode7
	dw $0000    ; ID 05 simon go to other BG
	dw $0000    ; ID 06 fallingPlatform
	dw $0808    ; ID 07 Medusa
	dw $0808    ; ID $8 Ghost
	dw $0808    ; ID $9 SpinnyRoller 
	dw $080C    ; ID $a Dog
	dw $1408    ; ID $b BonePillar
	dw $0808    ; ID $c Bat
	dw $0808    ; ID $d OldMan with Dog
	dw $1008    ; ID $e UnusedCandle
	dw $0808    ; ID $f Book Bird
	dw $0808    ; ID $10 Bird
	dw $1808    ; ID $11 Skelly Walk
	dw $1808    ; ID $12 Skelly Bone
	dw $0000    ; ID $13 ??
	dw $0000    ; ID $14 Pillar Exit
	dw $0000    ; ID $15 Exit lvl
	dw $0810    ; ID $16 Crusher
	dw $0810    ; ID $17 Platform that Moves
	dw $0808    ; ID $18 Small Heart Candle
	dw $0808    ; ID $19 Heart
	dw $0808    ; ID $1a Dagger
	dw $0808    ; ID $1b Axe
	dw $0808    ; ID $1c HolyWater
	dw $0808    ; ID $1d Cross
	dw $0808    ; ID $1e StopWatch
	dw $0808    ; ID $1f Rosary
	dw $0808    ; ID $20 Potion
	dw $0808    ; ID $21 WhipUpgrade
	dw $0808    ; ID $22 Money (A2,E2)
	dw $0808    ; ID $23 Doble
	dw $0808    ; ID $24 Trible
	dw $0808    ; ID $25 Small Meat
	dw $0808    ; ID $26 Meat
	dw $0808    ; ID $27 Orb
	dw $0808    ; ID $28 One UP
	dw $0808    ; ID $29 ?? Type two disapearing Candle 
	dw $0000    ; ID $2a Bosses (Needs a other Document..)
	dw $0000    ; ID $2b IronGate 
	dw $0808    ; ID $2c Wall Women/corps
	dw $0808    ; ID $2d Small FLAME (EnemyKill)
	dw $0000    ; ID $2e Moon (sub1)RedBat (sub2)RedBat
	dw $0808    ; ID $2f Brackable Block Iteam!  NEEDS DOCUMENTATION (
	dw $0808    ; ID $30 Frog
	dw $1410    ; ID $31 Sword Knight
	dw $0C14    ; ID $32 Snake falling Vegies
	dw $0C08    ; ID $33 Coffine Snapping
	dw $0C08    ; ID $34 MudMan ID 78 sub2 ID 79 sub sub0
	dw $0C08    ; ID $35 Snake plant Salat
	dw $0C08    ; ID $36 (HighFiveSkelly) 
	dw $0808    ; ID $37 Crumbling block
	dw $0000    ; ID $38 EventAutoSpawner !Swarms!Dusa:s1+2+6(hard) Zo
	dw $1018    ; ID $39 Wiggeling on bridge handle sub0-4 TileAnimati
	dw $0000    ; ID $3a Falling wooden Bridge
	dw $0000    ; ID $3b Trap Turning Platform
	dw $180C    ; ID $3c leave man
	dw $0808    ; ID $3d BIG FLAME
	dw $1C0C    ; ID $3e gargyle
	dw $0404    ; ID $3f water drip sub0 sub1+ does damage
	dw $0000    ; ID $40 UNUSED TURNING PLATFORM
	dw $0000    ; ID $41 Camera look event (s editable in Propertie me
	dw $1020    ; ID $42 Table
	dw $0808    ; ID $43 Spider
	dw $1808    ; ID $44 Falling stalactit
	dw $0808    ; ID $45 ?? CANDLE INVISIBLE ITEM THAT CRASH GAME
	dw $0404    ; ID $46 Brackable Stair SUB 0-3!-3f Animated bg Skele
	dw $0000    ; ID $47 ?? MEDUSA OUT OF CANDLE THAT CRASHES THE GAME
	dw $0000    ; ID $48 Sub0 HydraBoss! Sub0, Sub1 water current!  Cu
	dw $0000    ; ID $49 Vines TileAnimation
	dw $0000    ; ID $4a Trap TurningSpikePlatform
	dw $0808    ; ID $4b LITTLE BATS UNUSED ENEMY 0 2 1 BONEPILLER
	dw $1808    ; ID $4c 0 2 FISHMAN SWIMMING 1FLYING SOMETHING
	dw $1020    ; ID $4d Chandalire Falling
	dw $0808    ; ID $4e Bat single diving after Simon
	dw $0404    ; ID $4f Sprite moving very fast to the felt
	dw $0404    ; ID $50 SPLASH?
	dw $1808    ; ID $51 FISHMAN JUMPING 
	dw $1808    ; ID $52 AxeKnight
	dw $0808    ; ID $53 AXE 0 2
	dw $1B0C    ; ID $54 Zombi Ghost Castle
	dw $0000    ; ID $55 NOTHING 1 CRASH SOUND? / Platform ..x100 y5d
	dw $1808    ; ID $56 Skelletone Whiping
	dw $0808    ; ID $57 HUNCHBACK 0 2
	dw $140C    ; ID $58 HARPIES 0 2
	dw $180C    ; ID $59 SpearKnight
	dw $1008    ; ID $5a Women Ghost
	dw $1008    ; ID $5b Man Ghost
	dw $0808    ; ID $5c Hands with skeleton knight
	dw $1008    ; ID $5d Bone Dragon SUB 0=nothing 18=small heart e2=G
	dw $1008    ; ID $5e Bone Dragon Left Side SUB19=Big heart 0=Nothi
	dw $0C0C    ; ID $5f Extoplasm Sub 1+2  
	dw $2004    ; ID $60 Falling Dagers
	dw $0810    ; ID $61 Swinging Spike Platform
	dw $0A10    ; ID $62 Rising Spike array Sub 0 1 2
	dw $0404    ; ID $63 Gold Platform Disapearing Sub 0-13, Tresure C
	dw $1010    ; ID $64 Destroyable block array with falling routine 
	dw $0808    ; ID $65 Falling Blocks that stack
	dw $0808    ; ID $66 SINGLE HAND 0 2
	dw $080E    ; ID $67 ??NOTHING
	dw $0000    ; ID $68 Skull Watching Sub 0-9 (80-89) y80 x1b8 208 2
	dw $1808    ; ID $69 Skeleton Red
	dw $0808    ; ID $6a ??FALLING SOMETHING 0 2
	dw $080C    ; ID $6b CandleDog
	dw $0000    ; ID $6c Skelly out of celling Sub 1 4 8 c 10 y30 x100
	dw $0202    ; ID $6d Fuzzyball
	dw $0404    ; ID $6e Grabing hand
	dw $0404    ; ID $6f Horse head normal
	dw $1008    ; ID $70 Grave Digingman 
	dw $0404    ; ID $71 Horse head upside down
	dw $0404    ; ID $72 eye eye
	dw $0808    ; ID $73 club guy
	dw $0404    ; ID $74 Caterpiller Lag Monster
	dw $0404    ; ID $75 Gargyle with shild
	dw $0404    ; ID $76 Dancing Couple
	dw $0404    ; ID $77 ?? INVISABLE SOMETHING STANDING STILL 0 2
	dw $0404    ; ID $78 Bridge Falling Mask 21-37? (Bracking when mov
	dw $0404    ; ID $79 ?? SMALL MUD MAN MASK? CRACK SOUND WHEN DUCKI
	dw $0000    ; ID $7a CarpetMonster Block event (used in every stag
	dw $0808    ; ID $7b Coffin Circle
	dw $0808    ; ID $7c Gear Big SUB 0, Gear Little SUB 2, Gear Force
	dw $0808    ; ID $7d Gear Spike SUB 20, Sub 0 Bridge final stage, 
	dw $0810    ; ID $7e Headless Knight
	dw $0810    ; ID $7f Rockman
	

org $81ac00		; enemyHealth Table
	dw $0000	;
	dw $0000	; ID 01 Projectile ??
	dw $0010	; ID 02 Projectile Bone ??
	dw $0000	; ID 03 Ring
	dw $0000	; ID 04 PullBridge Mode7
	dw $0000	; ID 05 simon go to other BG
	dw $0000	; ID 06 fallingPlatform
	dw $0010	; ID 07 Medusa
	dw $0060	; ID $8 Ghost
	dw $0060	; ID $9 SpinnyRoller 
	dw $0008	; ID $a Dog
	dw $0090	; ID $b BonePillar
	dw $0010	; ID $c Bat
	dw $0010	; ID $d OldMan with Dog
	dw $0000	; ID $e UnusedCandle
	dw $0010	; ID $f Book Bird
	dw $0008	; ID $10 Bird
	dw $0030	; ID $11 Skelly Walk
	dw $0030	; ID $12 Skelly Bone
	dw $0000	; ID $13 ??
	dw $0000	; ID $14 Pillar Exit
	dw $0000	; ID $15 Exit lvl
	dw $0000	; ID $16 Crusher
	dw $0000	; ID $17 Platform that Moves
	dw $0000	; ID $18 Small Heart Candle
	dw $0000	; ID $19 Heart
	dw $0000	; ID $1a Dagger
	dw $0000	; ID $1b Axe
	dw $0000	; ID $1c HolyWater
	dw $0000	; ID $1d Cross
	dw $0000	; ID $1e StopWatch
	dw $0000	; ID $1f Rosary
	dw $0000	; ID $20 Potion
	dw $0000	; ID $21 WhipUpgrade
	dw $0000	; ID $22 Money (A2,E2)
	dw $0000	; ID $23 Doble
	dw $0000	; ID $24 Trible
	dw $0000	; ID $25 Small Meat
	dw $0000	; ID $26 Meat
	dw $0000	; ID $27 Orb
	dw $0000	; ID $28 One UP
	dw $0000	; ID $29 ?? Type two disapearing Candle 
	dw $0000	; ID $2a Bosses (Needs a other Document..)
	dw $0000	; ID $2b IronGate 
	dw $0000	; ID $2c Wall Women/corps
	dw $0000	; ID $2d Small FLAME (EnemyKill)
	dw $0000	; ID $2e Moon (sub1)RedBat (sub2)RedBat
	dw $7FFF	; ID $2f Brackable Block Iteam!  NEEDS DOCUMENTATION (
	dw $0008	; ID $30 Frog
	dw $0060	; ID $31 Sword Knight
	dw $0030	; ID $32 Snake falling Vegies
	dw $0030	; ID $33 Coffine Snapping
	dw $0030	; ID $34 MudMan ID 78 sub2 ID 79 sub sub0
	dw $0030	; ID $35 Snake plant Salat
	dw $0030	; ID $36 (HighFiveSkelly) 
	dw $0000	; ID $37 Crumbling block
	dw $0000	; ID $38 EventAutoSpawner !Swarms!Dusa:s1+2+6(hard) Zo
	dw $0000	; ID $39 Wiggeling on bridge handle sub0-4 TileAnimati
	dw $0000	; ID $3a Falling wooden Bridge
	dw $0000	; ID $3b Trap Turning Platform
	dw $0040	; ID $3c leave man
	dw $0000	; ID $3d BIG FLAME
	dw $000A	; ID $3e gargyle
	dw $0000	; ID $3f water drip sub0 sub1+ does damage
	dw $0000	; ID $40 UNUSED TURNING PLATFORM
	dw $0000	; ID $41 Camera look event (s editable in Propertie me
	dw $0050	; ID $42 Table
	dw $0010	; ID $43 Spider
	dw $0000	; ID $44 Falling stalactit
	dw $0000	; ID $45 ?? CANDLE INVISIBLE ITEM THAT CRASH GAME
	dw $7FFF	; ID $46 Brackable Stair SUB 0-3!-3f Animated bg Skele
	dw $0000	; ID $47 ?? MEDUSA OUT OF CANDLE THAT CRASHES THE GAME
	dw $0000	; ID $48 Sub0 HydraBoss! Sub0, Sub1 water current!  Cu
	dw $0000	; ID $49 Vines TileAnimation
	dw $0000	; ID $4a Trap TurningSpikePlatform
	dw $0030	; ID $4b LITTLE BATS UNUSED ENEMY 0 2 1 BONEPILLER
	dw $0030	; ID $4c 0 2 FISHMAN SWIMMING 1FLYING SOMETHING
	dw $0000	; ID $4d Chandalire Falling
	dw $0010	; ID $4e Bat single diving after Simon
	dw $0010	; ID $4f Sprite moving very fast to the felt
	dw $0000	; ID $50 SPLASH?
	dw $0020	; ID $51 FISHMAN JUMPING 
	dw $0090	; ID $52 AxeKnight
	dw $0010	; ID $53 AXE 0 2
	dw $0010	; ID $54 Zombi Ghost Castle
	dw $0000	; ID $55 NOTHING 1 CRASH SOUND? / Platform ..x100 y5d
	dw $0040	; ID $56 Skelletone Whiping
	dw $0020	; ID $57 HUNCHBACK 0 2
	dw $0030	; ID $58 HARPIES 0 2
	dw $00B0	; ID $59 SpearKnight
	dw $0010	; ID $5a Women Ghost
	dw $0010	; ID $5b Man Ghost
	dw $0030	; ID $5c Hands with skeleton knight
	dw $0100	; ID $5d Bone Dragon SUB 0=nothing 18=small heart e2=G
	dw $0100	; ID $5e Bone Dragon Left Side SUB19=Big heart 0=Nothi
	dw $0060	; ID $5f Extoplasm Sub 1+2  
	dw $7FFF	; ID $60 Falling Dagers
	dw $7FFF	; ID $61 Swinging Spike Platform
	dw $7FFF	; ID $62 Rising Spike array Sub 0 1 2
	dw $0000	; ID $63 Gold Platform Disapearing Sub 0-13, Tresure C
	dw $7FFF	; ID $64 Destroyable block array with falling routine 
	dw $0004	; ID $65 Falling Blocks that stack
	dw $0020	; ID $66 SINGLE HAND 0 2
	dw $7FFF	; ID $67 ??NOTHING
	dw $7FFF	; ID $68 Skull Watching Sub 0-9 (80-89) y80 x1b8 208 2
	dw $0030	; ID $69 Skeleton Red
	dw $7FFF	; ID $6a ??FALLING SOMETHING 0 2
	dw $0030	; ID $6b CandleDog
	dw $0000	; ID $6c Skelly out of celling Sub 1 4 8 c 10 y30 x100
	dw $1400	; ID $6d Fuzzyball
	dw $0030	; ID $6e Grabing hand
	dw $0030	; ID $6f Horse head normal
	dw $0030	; ID $70 Grave Digingman 
	dw $0030	; ID $71 Horse head upside down
	dw $0030	; ID $72 eye eye
	dw $0030	; ID $73 club guy
	dw $0100	; ID $74 Caterpiller Lag Monster
	dw $0030	; ID $75 Gargyle with shild
	dw $0030	; ID $76 Dancing Couple
	dw $0030	; ID $77 ?? INVISABLE SOMETHING STANDING STILL 0 2
	dw $0030	; ID $78 Bridge Falling Mask 21-37? (Bracking when mov
	dw $0030	; ID $79 ?? SMALL MUD MAN MASK? CRACK SOUND WHEN DUCKI
	dw $0000	; ID $7a CarpetMonster Block event (used in every stag
	dw $0030	; ID $7b Coffin Circle
	dw $0000	; ID $7c Gear Big SUB 0, Gear Little SUB 2, Gear Force
	dw $0000	; ID $7d Gear Spike SUB 20, Sub 0 Bridge final stage, 
	dw $0030	; ID $7e Headless Knight
	dw $0070	; ID $7f Rockman
	
;org $81ad00	; HitAttributes ;22 normal 01,damage,02 whip destruct, 04 sub destruct,08empty?
	dw $0000	;
	dw $0047    ; ID 01 Projectile ??
	dw $0047    ; ID 02 Projectile Bone ??
	dw $0022    ; ID 03 Ring
	dw $0020    ; ID 04 PullBridge Mode7
	dw $0020    ; ID 05 simon go to other BG
	dw $0120    ; ID 06 fallingPlatform
	dw $0047    ; ID 07 Medusa
	dw $0047    ; ID $8 Ghost
	dw $0047    ; ID $9 SpinnyRoller 
	dw $0047    ; ID $a Dog
	dw $0047    ; ID $b BonePillar
	dw $0047    ; ID $c Bat
	dw $0047    ; ID $d OldMan with Dog
	dw $0026    ; ID $e UnusedCandle
	dw $0047    ; ID $f Book Bird
	dw $0047    ; ID $10 Bird
	dw $0047    ; ID $11 Skelly Walk
	dw $0047    ; ID $12 Skelly Bone
	dw $0020    ; ID $13 ??
	dw $0020    ; ID $14 Pillar Exit
	dw $0020    ; ID $15 Exit lvl
	dw $0020    ; ID $16 Crusher
	dw $0020    ; ID $17 Platform that Moves
	dw $0009    ; ID $18 Small Heart Candle
	dw $0009    ; ID $19 Heart
	dw $0009    ; ID $1a Dagger
	dw $0009    ; ID $1b Axe
	dw $0009    ; ID $1c HolyWater
	dw $0009    ; ID $1d Cross
	dw $0009    ; ID $1e StopWatch
	dw $0009    ; ID $1f Rosary
	dw $0009    ; ID $20 Potion
	dw $0009    ; ID $21 WhipUpgrade
	dw $0009    ; ID $22 Money (A2,E2)
	dw $0009    ; ID $23 Doble
	dw $0009    ; ID $24 Trible
	dw $0009    ; ID $25 Small Meat
	dw $0009    ; ID $26 Meat
	dw $0009    ; ID $27 Orb
	dw $0009    ; ID $28 One UP
	dw $0000    ; ID $29 ?? Type two disapearing Candle 
	dw $0020    ; ID $2a Bosses (Needs a other Document..)
	dw $0020    ; ID $2b IronGate 
	dw $0047    ; ID $2c Wall Women/corps
	dw $0000    ; ID $2d Small FLAME (EnemyKill)
	dw $0020    ; ID $2e Moon (sub1)RedBat (sub2)RedBat
	dw $0022    ; ID $2f Brackable Block Iteam!  NEEDS DOCUMENTATION (
	dw $0047    ; ID $30 Frog
	dw $0047    ; ID $31 Sword Knight
	dw $0047    ; ID $32 Snake falling Vegies
	dw $0047    ; ID $33 Coffine Snapping
	dw $0047    ; ID $34 MudMan ID 78 sub2 ID 79 sub sub0
	dw $0047    ; ID $35 Snake plant Salat
	dw $0047    ; ID $36 (HighFiveSkelly) 
	dw $0120    ; ID $37 Crumbling block
	dw $0020    ; ID $38 EventAutoSpawner !Swarms!Dusa:s1+2+6(hard) Zo
	dw $0001    ; ID $39 Wiggeling on bridge handle sub0-4 TileAnimati
	dw $0120    ; ID $3a Falling wooden Bridge
	dw $0120    ; ID $3b Trap Turning Platform
	dw $0000    ; ID $3c leave man
	dw $0000    ; ID $3d BIG FLAME
	dw $0047    ; ID $3e gargyle
	dw $0020    ; ID $3f water drip sub0 sub1+ does damage
	dw $0120    ; ID $40 UNUSED TURNING PLATFORM
	dw $0020    ; ID $41 Camera look event (s editable in Propertie me
	dw $0047    ; ID $42 Table
	dw $0047    ; ID $43 Spider
	dw $0021    ; ID $44 Falling stalactit
	dw $0001    ; ID $45 ?? CANDLE INVISIBLE ITEM THAT CRASH GAME
	dw $0020    ; ID $46 Brackable Stair SUB 0-3!-3f Animated bg Skele
	dw $0020    ; ID $47 ?? MEDUSA OUT OF CANDLE THAT CRASHES THE GAME
	dw $0020    ; ID $48 Sub0 HydraBoss! Sub0, Sub1 water current!  Cu
	dw $0020	; ID $49 Vines TileAnimation
    dw $0120    ; ID $4a Trap TurningSpikePlatform
    dw $0047    ; ID $4b LITTLE BATS UNUSED ENEMY 0 2 1 BONEPILLER
    dw $0047    ; ID $4c 0 2 FISHMAN SWIMMING 1FLYING SOMETHING
    dw $0021    ; ID $4d Chandalire Falling
    dw $0047    ; ID $4e Bat single diving after Simon
    dw $0047    ; ID $4f Sprite moving very fast to the felt
    dw $0000    ; ID $50 SPLASH?
    dw $0047    ; ID $51 FISHMAN JUMPING 
    dw $0047    ; ID $52 AxeKnight
    dw $0047    ; ID $53 AXE 0 2
    dw $0047    ; ID $54 Zombi Ghost Castle
    dw $0020    ; ID $55 NOTHING 1 CRASH SOUND? / Platform ..x100 y5d
    dw $0047    ; ID $56 Skelletone Whiping
    dw $0047    ; ID $57 HUNCHBACK 0 2
    dw $0047    ; ID $58 HARPIES 0 2
    dw $0047    ; ID $59 SpearKnight
    dw $0047    ; ID $5a Women Ghost
    dw $0047    ; ID $5b Man Ghost
    dw $0060    ; ID $5c Hands with skeleton knight
    dw $0020    ; ID $5d Bone Dragon SUB 0=nothing 18=small heart e2=G
    dw $0020    ; ID $5e Bone Dragon Left Side SUB19=Big heart 0=Nothi
    dw $00E7    ; ID $5f Extoplasm Sub 1+2  
    dw $0001    ; ID $60 Falling Dagers
    dw $0020    ; ID $61 Swinging Spike Platform
    dw $0021    ; ID $62 Rising Spike array Sub 0 1 2
    dw $0020    ; ID $63 Gold Platform Disapearing Sub 0-13, Tresure C
    dw $0022    ; ID $64 Destroyable block array with falling routine 
    dw $0020    ; ID $65 Falling Blocks that stack
    dw $0046    ; ID $66 SINGLE HAND 0 2
    dw $0000    ; ID $67 ??NOTHING
    dw $0020    ; ID $68 Skull Watching Sub 0-9 (80-89) y80 x1b8 208 2
    dw $0047    ; ID $69 Skeleton Red
    dw $0000    ; ID $6a ??FALLING SOMETHING 0 2
    dw $0047    ; ID $6b CandleDog
    dw $0020    ; ID $6c Skelly out of celling Sub 1 4 8 c 10 y30 x100
    dw $0047    ; ID $6d Fuzzyball
    dw $0047    ; ID $6e Grabing hand
    dw $0047    ; ID $6f Horse head normal
    dw $0047    ; ID $70 Grave Digingman 
    dw $0047    ; ID $71 Horse head upside down
    dw $0047    ; ID $72 eye eye
    dw $0047    ; ID $73 club guy
    dw $0047    ; ID $74 Caterpiller Lag Monster
    dw $0047    ; ID $75 Gargyle with shild
    dw $0047    ; ID $76 Dancing Couple
    dw $0047    ; ID $77 ?? INVISABLE SOMETHING STANDING STILL 0 2
    dw $0047    ; ID $78 Bridge Falling Mask 21-37? (Bracking when mov
    dw $0047    ; ID $79 ?? SMALL MUD MAN MASK? CRACK SOUND WHEN DUCKI
    dw $0020    ; ID $7a CarpetMonster Block event (used in every stag
    dw $0067    ; ID $7b Coffin Circle
    dw $0020    ; ID $7c Gear Big SUB 0, Gear Little SUB 2, Gear Force
    dw $0020    ; ID $7d Gear Spike SUB 20, Sub 0 Bridge final stage, 
    dw $0047    ; ID $7e Headless Knight
    dw $0047    ; ID $7f Rockman

;org $81ae00 	; Death Animation or respawn?
	db $2D,$2D,$2D,$2D,$2D,$2D,$2D,$07
	db $08,$2D,$0A,$0B,$0C,$0D,$2D,$2D
	db $10,$11,$12,$2D,$2D,$2D,$2D,$2D
	db $2D,$2D,$2D,$2D,$2D,$2D,$2D,$2D
	db $2D,$2D,$2D,$2D,$2D,$2D,$2D,$2D
	db $2D,$2D,$2D,$2D,$3D,$2D,$2D,$2D
	db $2D,$31,$32,$33,$34,$2D,$36,$2D
	db $2D,$2D,$2D,$2D,$3C,$2D,$3E,$2D
	db $2D,$2D,$2D,$2D,$2D,$2D,$2D,$2D
	db $2D,$2D,$2D,$2D,$4C,$2D,$2D,$2D
	db $2D,$51,$52,$2D,$54,$2D,$56,$3D
	db $3D,$59,$5A,$5A,$5C,$2D,$2D,$5F
	db $2D,$2D,$2D,$2D,$2D,$2D,$2D,$2D
	db $2D,$69,$2D,$2D,$2D,$2D,$6E,$2D
	db $70,$2D,$3D,$3D,$2D,$75,$3D,$3D
	db $78,$79,$2D,$3D,$2D,$2D,$7E,$2D
;org $81ae80		;??
	db $00,$00,$00,$00,$00,$00,$00,$02
	db $03,$00,$03,$07,$02,$0D,$00,$00
	db $07,$06,$06,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$0B,$04,$05,$04,$00,$04,$00
	db $00,$00,$00,$00,$04,$00,$04,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$08,$00,$00,$00
	db $00,$0B,$06,$00,$03,$00,$06,$00
	db $00,$04,$0A,$0A,$06,$00,$00,$02
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$06,$00,$00,$00,$00,$04,$00
	db $04,$00,$00,$00,$00,$03,$00,$00
	db $04,$04,$00,$00,$00,$00,$04,$00
	
;org $81af00		; DamageTable
	db $00   	;
	db $02   	; ID 01 Projectile ??
	db $02   	; ID 02 Projectile Bone ??
	db $02   	; ID 03 Ring
	db $01   	; ID 04 PullBridge Mode7
	db $01   	; ID 05 simon go to other BG
	db $01   	; ID 06 fallingPlatform
	db $01   	; ID 07 Medusa
	db $03   	; ID $8 Ghost
	db $03   	; ID $9 SpinnyRoller 
	db $04   	; ID $a Dog
	db $03   	; ID $b BonePillar
	db $03   	; ID $c Bat
	db $03   	; ID $d OldMan with Dog
	db $03   	; ID $e UnusedCandle
	db $03   	; ID $f Book Bird
	db $02   	; ID $10 Bird
	db $03   	; ID $11 Skelly Walk
	db $03   	; ID $12 Skelly Bone
	db $01   	; ID $13 ??
	db $01   	; ID $14 Pillar Exit
	db $01   	; ID $15 Exit lvl
	db $01   	; ID $16 Crusher
	db $01   	; ID $17 Platform that Moves
	db $00   	; ID $18 Small Heart Candle
	db $00   	; ID $19 Heart
	db $00   	; ID $1a Dagger
	db $00   	; ID $1b Axe
	db $00   	; ID $1c HolyWater
	db $00   	; ID $1d Cross
	db $00   	; ID $1e StopWatch
	db $00   	; ID $1f Rosary
	db $00   	; ID $20 Potion
	db $00   	; ID $21 WhipUpgrade
	db $00   	; ID $22 Money (A2,E2)
	db $00   	; ID $23 Doble
	db $00   	; ID $24 Trible
	db $00   	; ID $25 Small Meat
	db $00   	; ID $26 Meat
	db $00   	; ID $27 Orb
	db $00   	; ID $28 One UP
	db $00   	; ID $29 ?? Type two disapearing Candle 
	db $00   	; ID $2a Bosses (Needs a other Document..)
	db $00   	; ID $2b IronGate 
	db $02   	; ID $2c Wall Women/corps
	db $00   	; ID $2d Small FLAME (EnemyKill)
	db $00   	; ID $2e Moon (sub1)RedBat (sub2)RedBat
	db $00   	; ID $2f Brackable Block Iteam!  NEEDS DOCUMENTATION (
	db $02   	; ID $30 Frog
	db $03   	; ID $31 Sword Knight
	db $03   	; ID $32 Snake falling Vegies
	db $02   	; ID $33 Coffine Snapping
	db $04   	; ID $34 MudMan ID 78 sub2 ID 79 sub sub0
	db $03   	; ID $35 Snake plant Salat
	db $03   	; ID $36 (HighFiveSkelly) 
	db $00   	; ID $37 Crumbling block
	db $00   	; ID $38 EventAutoSpawner !Swarms!Dusa:s1+2+6(hard) Zo
	db $01   	; ID $39 Wiggeling on bridge handle sub0-4 TileAnimati
	db $00   	; ID $3a Falling wooden Bridge
	db $00   	; ID $3b Trap Turning Platform
	db $03   	; ID $3c leave man
	db $00   	; ID $3d BIG FLAME
	db $02   	; ID $3e gargyle
	db $02   	; ID $3f water drip sub0 sub1+ does damage
	db $00   	; ID $40 UNUSED TURNING PLATFORM
	db $00   	; ID $41 Camera look event (s editable in Propertie me
	db $02   	; ID $42 Table
	db $02   	; ID $43 Spider
	db $03   	; ID $44 Falling stalactit
	db $03   	; ID $45 ?? CANDLE INVISIBLE ITEM THAT CRASH GAME
	db $02   	; ID $46 Brackable Stair SUB 0-3!-3f Animated bg Skele
	db $00   	; ID $47 ?? MEDUSA OUT OF CANDLE THAT CRASHES THE GAME
	db $00   	; ID $48 Sub0 HydraBoss! Sub0, Sub1 water current!  Cu
	db $00   	; ID $49 Vines TileAnimation
	db $00   	; ID $4a Trap TurningSpikePlatform
	db $02   	; ID $4b LITTLE BATS UNUSED ENEMY 0 2 1 BONEPILLER
	db $03   	; ID $4c 0 2 FISHMAN SWIMMING 1FLYING SOMETHING
	db $03   	; ID $4d Chandalire Falling
	db $03   	; ID $4e Bat single diving after Simon
	db $03   	; ID $4f Sprite moving very fast to the felt
	db $00   	; ID $50 SPLASH?
	db $03   	; ID $51 FISHMAN JUMPING 
	db $03   	; ID $52 AxeKnight
	db $02   	; ID $53 AXE 0 2
	db $03   	; ID $54 Zombi Ghost Castle
	db $00   	; ID $55 NOTHING 1 CRASH SOUND? / Platform ..x100 y5d
	db $03   	; ID $56 Skelletone Whiping
	db $03   	; ID $57 HUNCHBACK 0 2
	db $03   	; ID $58 HARPIES 0 2
	db $03   	; ID $59 SpearKnight
	db $03   	; ID $5a Women Ghost
	db $03   	; ID $5b Man Ghost
	db $03   	; ID $5c Hands with skeleton knight
	db $03   	; ID $5d Bone Dragon SUB 0=nothing 18=small heart e2=G
	db $03   	; ID $5e Bone Dragon Left Side SUB19=Big heart 0=Nothi
	db $02   	; ID $5f Extoplasm Sub 1+2  
	db $02   	; ID $60 Falling Dagers
	db $FF   	; ID $61 Swinging Spike Platform
	db $FF   	; ID $62 Rising Spike array Sub 0 1 2
	db $00   	; ID $63 Gold Platform Disapearing Sub 0-13, Tresure C
	db $01   	; ID $64 Destroyable block array with falling routine 
	db $01   	; ID $65 Falling Blocks that stack
	db $00   	; ID $66 SINGLE HAND 0 2
	db $00   	; ID $67 ??NOTHING
	db $02   	; ID $68 Skull Watching Sub 0-9 (80-89) y80 x1b8 208 2
	db $04   	; ID $69 Skeleton Red
	db $00   	; ID $6a ??FALLING SOMETHING 0 2
	db $04   	; ID $6b CandleDog
	db $01   	; ID $6c Skelly out of celling Sub 1 4 8 c 10 y30 x100
	db $03   	; ID $6d Fuzzyball
	db $03   	; ID $6e Grabing hand
	db $03   	; ID $6f Horse head normal
	db $02   	; ID $70 Grave Digingman 
	db $03   	; ID $71 Horse head upside down
	db $03   	; ID $72 eye eye
	db $03   	; ID $73 club guy
	db $03   	; ID $74 Caterpiller Lag Monster
	db $03   	; ID $75 Gargyle with shild
	db $03   	; ID $76 Dancing Couple
	db $03   	; ID $77 ?? INVISABLE SOMETHING STANDING STILL 0 2
	db $03   	; ID $78 Bridge Falling Mask 21-37? (Bracking when mov
	db $03   	; ID $79 ?? SMALL MUD MAN MASK? CRACK SOUND WHEN DUCKI
	db $00   	; ID $7a CarpetMonster Block event (used in every stag
	db $03   	; ID $7b Coffin Circle
	db $03   	; ID $7c Gear Big SUB 0, Gear Little SUB 2, Gear Force
	db $FF   	; ID $7d Gear Spike SUB 20, Sub 0 Bridge final stage, 
	db $03   	; ID $7e Headless Knight
	db $03   	; ID $7f Rockman