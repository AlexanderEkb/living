; ---------------------------------------------------------------------------

CharData_t	struc ;	(sizeof=0x28)	; XREF:	SwitchScript+21t
					; WipeNonActiveChars+1At ...
CharFlags	db ?			; XREF:	HandlePlayer+11r
					; HandlePlayer:HandlePlayer_MarkPoleRemovedw ... ; enum CharFlags_t
CharFlags2	db ?			; XREF:	CalcDrawingVars+1Fw
					; CalcDrawingVars+23w ...
Scratchpad	db ?			; XREF:	HandlePlayer+170w
					; HandlePlayer:loc_404w ...
AltX		dw ?			; XREF:	__RealToAlt+4o
AltY		dw ?
AltAnimation	db ?			; enum Animations_t
AltFrame	db ?
AltObstacles	db ?
AltJumpPower	db ?			; XREF:	LoadChrData+6w
X		dw ?			; XREF:	HandlePlayer:loc_3E8r
					; HandlePlayer+169w ...
Y		dw ?			; XREF:	HandlePlayer+18Fw
					; HandlePlayer+192w ...
Animation	db ?			; XREF:	CalcAnimRect+3r
					; KillIfKicked-B17w ; enum Animations_t
Frame		db ?			; XREF:	_AdjustJumpPhase+15w
					; HandlePlayer+2ABw ...
Obstacles	db ?			; XREF:	HandlePlayer+69r
					; HandlePlayer:loc_2F6r ... ; enum Obstacles_t
JumpPower	db ?			; XREF:	HandlePlayer:loc_538w
					; sub_1095+Fr ...
HorizontalSpeed	db ?			; XREF:	HandlePlayer+B8r
					; HandlePlayer+D0r ...	; base 10 signed
VerticalSpeed	db ?			; XREF:	HandlePlayer+F6w
					; HandlePlayer+11Fr ... ; base	10 signed
AnimDelay	db ?			; XREF:	HandlePlayer:loc_456r
_2xCol		db ?
_AWidth2	db ?			; XREF:	_FindIntersections+3r
_4xRow		db ?
_AHeight2	db ?
_2xCol_2	db ?			; XREF:	DrawSquareBracketsr
_4xRow_2	db ?
XOffset		db ?
YOffset		db ?
AnimWidth	db ?
AnimHeight	db ?
field_20	dw ?			; XREF:	GetMotionPhase+Ar
					; Loc0EScript0+78Ew
CustomDataset	dw ?			; XREF:	SwitchScript+1Er
					; SwitchScript+21t ...
Positions	db ?			; XREF:	HandlePlayer:HandlePlayer_NotEatenr
					; HandlePlayer:HandlePlayer_NotInWaterr ... ; enum Positions_t
Order		db ?			; XREF:	AddNewChar:loc_3BFAw
					; AddNewChar+1Dr
FrameAddr	db ?
field_27	db ?
CharData_t	ends

; ---------------------------------------------------------------------------

LocationItem_t	struc ;	(sizeof=0x9)	; XREF:	CODE:8225r CODE:822Er	...
LI_Flags	db ?			; enum ItemFLags_t
LI_Anim		db ?			; XREF:	InFirstTemple+96o ; enum Animations_t
LI_Frame	db ?
LI_X		dw ?			; base 10
LI_Y		dw ?			; XREF:	CODE:80A2o ; base 10
LI_CDS		dw ?			; offset
LocationItem_t	ends

; ---------------------------------------------------------------------------

Location_t	struc ;	(sizeof=0x5)	; XREF:	CODE:Location0r
					; CODE:Location1r ...
LowerLeftExit	db ?
UpperLeftExit	db ?
UpperRightExit	db ?
LowerRightExit	db ?			; XREF:	ChangeLocation:FallingDowno
Count		db ?
Location_t	ends

; ---------------------------------------------------------------------------

Background_t	struc ;	(sizeof=0x4)	; XREF:	CODE:3FC2r CODE:stru_400Fr ...
Row		db ?
Col		db ?
Block		dw ?
Background_t	ends

; ---------------------------------------------------------------------------

Snd_Command_0	struc ;	(sizeof=0x1)
Opcode		db ?			; enum Snd_Opcodes_t
Snd_Command_0	ends

; ---------------------------------------------------------------------------

Snd_Command_2	struc ;	(sizeof=0x5)	; XREF:	CODE:Music_Phrase0r CODE:7D26r ...
Opcode		db ?			; enum Snd_Opcodes_t
Tone		dw ?			; base 10
Duration	dw ?			; base 10
Snd_Command_2	ends

; ---------------------------------------------------------------------------

Snd_Command_4	struc ;	(sizeof=0x3)	; XREF:	CODE:7D80r CODE:7E1Ar	...
Opcode		db ?			; enum Snd_Opcodes_t
Prescaler	dw ?			; base 10
Snd_Command_4	ends

; ---------------------------------------------------------------------------

Snd_Command_6	struc ;	(sizeof=0x3)	; XREF:	CODE:_Musicr CODE:7EA9r ...
Opcode		db ?			; enum Snd_Opcodes_t
Value		dw ?			; offset
Snd_Command_6	ends

; ---------------------------------------------------------------------------

Snd_Command_8	struc ;	(sizeof=0x1)	; XREF:	CODE:7E14r CODE:7EA5r	...
Opcode		db ?			; enum Snd_Opcodes_t
Snd_Command_8	ends

; ---------------------------------------------------------------------------

Snd_Command_A	struc ;	(sizeof=0x3)	; XREF:	CODE:7EAFr
Opcode		db ?			; enum Snd_Opcodes_t
Value		dw ?			; offset
Snd_Command_A	ends

; ---------------------------------------------------------------------------

Snd_Command_C	struc ;	(sizeof=0x4)	; XREF:	CODE:_Sound7r CODE:_Sound3r ...
Opcode		db ?			; enum Snd_Opcodes_t
Counter		db ?			; base 10
Modulation	dw ?			; offset
Snd_Command_C	ends

; ---------------------------------------------------------------------------

AnimationDesc_t	struc ;	(sizeof=0x5)	; XREF:	CODE:_RightMotionr
					; CODE:RightUpJumpr ...
AnimationDelay	db ?			; base 10
FirstFrame	db ?			; XREF:	HandlePlayer+38Do
					; HandlePlayer+392o ... ; base	10
LastFrame	db ?			; base 10
HorizontalSpeed	db ?			; base 16
VerticalSpeed	db ?			; base 16
AnimationDesc_t	ends

; ---------------------------------------------------------------------------

CustomDataSet_t	struc ;	(sizeof=0x9)	; XREF:	CODE:EyesDataSetr
					; CODE:MonkeyDataSetr ...
CDS_AnimDelay	db ?			; XREF:	DoEnemyAnimation+3r ; base 10
CDS_FrameLF	db ?			; base 10
CDS_FrameLL	db ?			; base 10
CDS_FrameRF	db ?			; base 10
CDS_FrameRL	db ?			; base 10
CharScript	dw ?			; XREF:	CallCustomScript+3o ; offset
_TargetSquare	dw ?
CustomDataSet_t	ends

; ---------------------------------------------------------------------------

EnemyShootingData_t struc ; (sizeof=0x3) ; XREF: CODE:8A88r CODE:8A94r ...
field_0		db ?
field_1		db ?
Projectile	db ?			; enum Animations_t
EnemyShootingData_t ends

; ---------------------------------------------------------------------------

EnemyAnimationRec_t struc ; (sizeof=0x3) ; XREF: CODE:8B4Er CODE:8B51r ...
Counter		db ?			; XREF:	_AnimateEnemy+29o ; base 16
HSpeed		db ?			; base 10
VSpeed		db ?			; base 10
EnemyAnimationRec_t ends

; ---------------------------------------------------------------------------

; enum DirectionFlag (width 1 byte)
LeftDirection	 = 80h
Negative	 = 80h

; ---------------------------------------------------------------------------

; enum Keys (bitfield)
Key_Up		 = 1
Key_Down	 = 2
Key_Left	 = 4
Key_Right	 = 8
Key_Fire	 = 10h
Key_Break	 = 20h
Key_Save	 = 80h
Pressed		 = 80h

; ---------------------------------------------------------------------------

; enum FiredWeapons (bitfield)
Rod		 = 10h
Bomb		 = 20h
Knife		 = 40h
Boomerang	 = 80h

; ---------------------------------------------------------------------------

; enum Animations_t (width 1 byte)
APlayer		 = 0
ABoomerang	 = 1
AKnife		 = 2
ABomb		 = 3
ARod		 = 4
ABonusScore	 = 5
AExplode	 = 6
ABird		 = 7
ABubbles	 = 8
AHungryPlant	 = 9
ASwitch		 = 0Ah
AScaryEyes	 = 0Bh
AMonkey		 = 0Ch
AMiner		 = 0Dh
ADartsman	 = 0Eh
ASpearman	 = 0Fh
AArcher		 = 10h
AStinkyIdol	 = 11h
ACoconut	 = 12h
APick		 = 13h
ADart		 = 14h
ASpear		 = 15h
AArrow		 = 16h
AStink		 = 17h
AWagon		 = 18h
AMineGas	 = 19h
AScorpion	 = 1Ah
ALizard		 = 1Bh
ABat		 = 1Ch
ABatonThrower	 = 1Dh
AMermaid	 = 1Eh
ABaton		 = 1Fh
AHeart		 = 20h
AWhirlwind	 = 21h
AVerticalArrow1	 = 22h
AVerticalArrow2	 = 23h
ADancingStatue	 = 24h
ALivingstone	 = 25h
AFlyingDevil	 = 26h
AStar		 = 27h
AGem		 = 28h
AFood		 = 29h
AWater		 = 2Ah
ASnake		 = 2Bh
ASpider		 = 2Ch
ARifleman	 = 2Dh
ABullet		 = 2Eh
ABigFish	 = 2Fh
ASmallFish	 = 30h
ACrocodile	 = 31h
ADrummer	 = 32h
ApieceOfGold2	 = 33h
AOperaSoft	 = 34h
ASupongo	 = 35h
APlayerPhrases	 = 36h
ALivingstonePhrases  = 37h

; ---------------------------------------------------------------------------

; enum Positions_t (bitfield)
PAtSwamp	 = 1
PJustKilled	 = 2
PAtWater	 = 4
PVerticalJump	 = 8
PLeftEdge	 = 10h
PRightEdge	 = 20h
PBottomEdge	 = 40h
PTopEdge	 = 80h

; ---------------------------------------------------------------------------

; enum CharFlags_t (bitfield) (width 1 byte)
CFSuspended	 = 4
CFDrawable	 = 8
CFRemoved	 = 10h
CF_0x20		 = 20h
CFRodJumping	 = 40h			; Relies to Alt-Real
CFActive	 = 80h

; ---------------------------------------------------------------------------

; enum CharFlags2_t (bitfield) (width 1	byte)
CF2DoNotDraw	 = 1

; ---------------------------------------------------------------------------

; enum Obstacles_t (bitfield) (width 1 byte)
OCanExit	 = 1
ORodJump	 = 2
OJustShoot	 = 4
OAtJump		 = 8
OAtLeft		 = 10h
OAtRight	 = 20h
OAtBottom	 = 40h
OAtTop		 = 80h

; ---------------------------------------------------------------------------

; enum GameFlags_t (bitfield)
GFReadyToFly	 = 1
GFScriptScene	 = 2
GFRiflemanRelated  = 4
GFPlayerIsDead	 = 8
GFCoconuted	 = 10h
GFEatenByPlant	 = 20h
GFSuspended	 = 80h

; ---------------------------------------------------------------------------

; enum SoundFlags_t (bitfield)
SFEnabled	 = 1
SFValidTone	 = 2
SFPause		 = 40h
SFContinue	 = 80h

; ---------------------------------------------------------------------------

; enum Snd_Opcodes_t
SND_STOP	 = 0
SND_PLAY	 = 2
SND_PAUSE	 = 4
SND_JSR		 = 6
SND_RET		 = 8
SND_JUMP	 = 0Ah
SND_MODULATE	 = 0Ch

; ---------------------------------------------------------------------------

; enum CGA
CGA_TilesPerRow	 = 28h

; ---------------------------------------------------------------------------

; enum Unusual_Locations
Temple_DancingStatue  =	1Ch
Dungeon_FloorOfCandles_1  = 2Dh
Dungeon_FloorOfCandles_2  = 2Fh
Dungeon_FloorOfCandles_3  = 31h
Dungeon_FloorOfCandles_4  = 32h
Temple_FinalScene  = 3Ch

; ---------------------------------------------------------------------------

; enum ItemFLags_t (bitfield)
IF_DoNotLoad	 = 80h

; ---------------------------------------------------------------------------

; enum UnusualTiles
TSwamp		 = 89h
TWater		 = 8Ah
TLog		 = 0D9h

;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2013 Hex-Rays, <support@hex-rays.com>	    |
; |			 Licensed to: Freeware version			    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	9D10B7884DE5428A93E4F0BBEB38F123

; File Name   :	D:\Work\Living\LIVIN1.com
; Format      :	MS-DOS COM-file
; Base Address:	0h Range: 100h-E100h Loaded length: E000h

		.8086
		.model tiny

; ===========================================================================

; Segment type:	Pure code
CODE		segment	byte public 'CODE'
		assume cs:CODE
		org 100h
		assume es:nothing, ss:nothing, ds:CODE

; =============== S U B	R O U T	I N E =======================================


		public start
start		proc near		; CODE XREF: SaveGameProcess+70j
					; DATA XREF: SaveGameProcess+53o
		push	cs
		sub	ax, ax
		push	ax
		mov	cs:StackPointer, sp
		mov	ax, cs
		add	ax, 0
		mov	es, ax
		assume es:CODE
		mov	ds, ax
		mov	ss, ax
		assume ss:CODE
		mov	si, offset KeysPressed ; Clears	memory region
		mov	word ptr [si], 0 ; From	KeyPressed var
		mov	di, (offset KeysPressed+1)
		mov	cx, 8F3h	; till end of segment
		cld
		rep movsb		; Finished
		call	SetVideoMode
		call	InitLivesAndWpn
		call	IfSpacePressed
		call	PrepareFooter_

Reset:					; CODE XREF: start+BAj
					; HandlePlayer+3CBj ...
		mov	sp, cs:StackPointer
		call	ClearData1
		call	PreparePlaceholders
		call	ConfigureHardware

loc_13E:
		call	StartMusic
		call	RespawnPickables
		mov	ah, 3Dh
		mov	Location, ah
		call	InitLivesAndWpn
		call	PreInit		; Clears StandbyFlag, GemsFound, StandbyModeCounter;
					; Sets GameOverFlag;
					; Initializes StandbyActionPointer;
		call	PrepareFooter
		call	InitFloatingLog
		call	DecodeLocationBackground
		call	LoadLocationData
		call	DrawWorldDifferences
		mov	ah, 0
		mov	cs:DemoTimer, ah

GameSuperLoop:				; CODE XREF: start+87j
		call	MainLoop
		mov	ah, StandbyFlag	; 0 if standby
					; 1 if game/demo
					; FF when standby round	is over
		cmp	ah, 0FFh
		jnz	short loc_175
		call	PreInit		; Clears StandbyFlag, GemsFound, StandbyModeCounter;
					; Sets GameOverFlag;
					; Initializes StandbyActionPointer;

loc_175:				; CODE XREF: start+70j
		cmp	cs:DemoTimer, 4
		jz	short PrepareToDemo ; Go to demo mode
		test	KeyD, Pressed
		jnz	short PrepareToDemo ; Go to demo mode
		call	IfSpacePressed
		jz	short GameSuperLoop
		mov	ah, 0
		jmp	short StartGame
; ---------------------------------------------------------------------------

PrepareToDemo:				; CODE XREF: start+7Bj	start+82j
		mov	ah, 1		; Go to	demo mode

StartGame:				; CODE XREF: start+8Bj
		mov	cs:DemoFlag, ah
		call	RewindDemoScript
		call	PrepareFooter_
		mov	ah, 6
		mov	Location, ah
		mov	ah, 1
		mov	StandbyFlag, ah	; Set it to 1
		xor	ah, ah
		mov	GameOverFlag, ah ; Clear it
		mov	Weapon,	ah	; 7 6 5	4 3 2 1	0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		mov	Temp, ah
		call	PreparePlaceholders

loc_1B7:
		call	PrepareToGameAlias
		jmp	Reset
start		endp


; =============== S U B	R O U T	I N E =======================================


InitLivesAndWpn	proc near		; CODE XREF: start+27p	start+4Ap
		mov	ah, 7
		mov	Lives, ah	; Initialized
		mov	bx, 0
		mov	word ptr Weapon, bx ; 7	6 5 4 3	2 1 0
InitLivesAndWpn	endp			; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired

; =============== S U B	R O U T	I N E =======================================


ClearCharDataAndScore proc near		; CODE XREF: PrepareToGame+3p
		call	ClearCharData
		mov	bx, 0
		mov	Score, bx
ClearCharDataAndScore endp


; =============== S U B	R O U T	I N E =======================================

; Clears list of active	objects,
; initializes it with Player' data;

ClearEnemiesTable proc near		; CODE XREF: GoToNewLocation+Dp
		mov	ah, 1
		mov	CharCount, ah
		mov	bx, offset PlayerData

loc_1DD:
		mov	Characters, bx
		mov	bx, 0
		mov	Character1, bx	; Terminate table
		mov	PlayerData.Order, ah
		retn
ClearEnemiesTable endp


; =============== S U B	R O U T	I N E =======================================

; Clears StandbyFlag, GemsFound, StandbyModeCounter;
; Sets GameOverFlag;
; Initializes StandbyActionPointer;

PreInit		proc near		; CODE XREF: start+4Dp	start+72p
		xor	ah, ah
		mov	StandbyFlag, ah	; State	= standby
		mov	GemsFound, ah	; Clear	it
		mov	StandbyModeCounter, ah ; Clear it
		inc	ah
		mov	GameOverFlag, ah ; Set it
		mov	bx, offset StandbyScript
		mov	StandbyActionPointer, bx
		retn
PreInit		endp


; =============== S U B	R O U T	I N E =======================================


ClearCharData	proc near		; CODE XREF: ClearCharDataAndScorep
		mov	bx, offset PlayerData
		mov	byte ptr [bx], 0
		mov	dx, offset PlayerData.CharFlags2
		mov	cx, 479
		xchg	si, bx
		xchg	di, dx
		cld
		rep movsb
		xchg	si, bx
		xchg	di, dx
		mov	bx, offset ChrData_End_Marker
		mov	byte ptr [bx], 0FFh
		retn
ClearCharData	endp


; =============== S U B	R O U T	I N E =======================================


ClearData1	proc near		; CODE XREF: start+35p
					; PrepareToGame+6p
		push	di
		push	si
		mov	si, offset GameFlags ; Clears memory region
		mov	byte ptr [si], 0 ; From	ds:ddb3
		mov	di, offset byte_DDB4 ; Length =	14h
		mov	cx, 20
		cld
		rep movsb
		pop	si
		pop	di
		retn
ClearData1	endp


; =============== S U B	R O U T	I N E =======================================


RespawnPickables proc near		; CODE XREF: start+41p
		mov	al, cl
		mov	cx, 13h
		mov	di, offset PickableItems

loc_243:				; CODE XREF: RespawnPickables+Fj
		mov	bx, [di]
		and	byte ptr [bx], CFSuspended or CFDrawable or CFRemoved or CF_0x20 or CFRodJumping or 3
		inc	di
		inc	di
		loop	loc_243
		mov	cl, al
		retn
RespawnPickables endp

; ---------------------------------------------------------------------------
StackPointer	dw 0F6h			; DATA XREF: start+4w start:Resetr

; =============== S U B	R O U T	I N E =======================================


PrepareToGameAlias proc	near		; CODE XREF: start:loc_1B7p
		call	PrepareToGame
PrepareToGameAlias endp


; =============== S U B	R O U T	I N E =======================================


MainLoop	proc near		; CODE XREF: start:GameSuperLoopp
					; MainLoop+2Dj
		mov	Timer0,	0
		call	HandleInput	; Poll keyboard	or load	demo step
		call	DecreaseFoodNWater
		call	DrawUsedWeapon
		call	RunLocationScripts ; Just executes scripts that	are attached to	current	loc
		call	HandlePlayer	; do player movements and handles death	cases
		call	RunChrScripts	; Just executes	scripts	of active characters
		call	ChangeLocation	; if in	exit position
		call	DrawCharacters
		call	CheckForBreakAndPause

loc_274:				; CODE XREF: MainLoop+25j
		cmp	Timer0,	3
		jb	short loc_274
		mov	ah, GameOverFlag
		or	ah, ah
		jz	short MainLoop
		retn
MainLoop	endp


; =============== S U B	R O U T	I N E =======================================

; do player movements and handles death	cases

HandlePlayer	proc near		; CODE XREF: MainLoop+11p

; FUNCTION CHUNK AT 029F SIZE 0000011D BYTES
; FUNCTION CHUNK AT 03D5 SIZE 000001A1 BYTES
; FUNCTION CHUNK AT 05F9 SIZE 00000026 BYTES
; FUNCTION CHUNK AT 063D SIZE 0000009E BYTES
; FUNCTION CHUNK AT 1226 SIZE 000000F8 BYTES

		mov	bx, offset GameFlags ; test 1st
		test	byte ptr [bx], GFScriptScene

loc_28A:				; test 80
		jz	short HandlePlayer_Continue
		retn
; ---------------------------------------------------------------------------

HandlePlayer_Continue:			; CODE XREF: HandlePlayer:loc_28Aj
		test	byte ptr [bx], GFSuspended ; test 80
		jz	short HandlePlayer_NotSuspended

HandlePlayer_RemovePole:		; CODE XREF: _Death+Cp	sub_10CF+Cp ...
		mov	si, offset PoleData
		test	[si+CharData_t.CharFlags], CFActive
		jnz	short HandlePlayer_MarkPoleRemoved
		retn
; ---------------------------------------------------------------------------

HandlePlayer_MarkPoleRemoved:		; CODE XREF: HandlePlayer+14j
		or	[si+CharData_t.CharFlags], CFRemoved
		retn
HandlePlayer	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR HandlePlayer

HandlePlayer_NotSuspended:		; CODE XREF: HandlePlayer+Cj
		mov	si, offset PlayerData
		test	byte ptr [bx], GFEatenByPlant
		jz	short HandlePlayer_NotEaten
		jmp	HandlePlayer_Eaten
; ---------------------------------------------------------------------------

HandlePlayer_NotEaten:			; CODE XREF: HandlePlayer+21j
		test	[si+CharData_t.Positions], PAtWater
		jz	short HandlePlayer_NotInWater
		jmp	DeathInWater
; ---------------------------------------------------------------------------

HandlePlayer_NotInWater:		; CODE XREF: HandlePlayer+2Aj
		test	[si+CharData_t.Positions], PAtSwamp
		jz	short HandlePlayer_NotInSwamp
		jmp	DeathInSwamp
; ---------------------------------------------------------------------------

HandlePlayer_NotInSwamp:		; CODE XREF: HandlePlayer+33j
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		mov	TileUnderPlayer, ah
		cmp	ah, TWater	; Water	tile
		jnz	short HandlePlayer_IfInSwamp
		jmp	DeathInWater
; ---------------------------------------------------------------------------

HandlePlayer_IfInSwamp:			; CODE XREF: HandlePlayer+42j
		cmp	ah, TSwamp	; Swamp
		jnz	short HandlePlayer_NotSinking
		jmp	DeathInSwamp
; ---------------------------------------------------------------------------

HandlePlayer_NotSinking:		; CODE XREF: HandlePlayer+4Aj
		call	UpdateObstacles
		test	[si+CharData_t.Positions], PJustKilled
		jz	short HandlePlayer_NoDangerOfDeath
		jmp	UsualDeath
; ---------------------------------------------------------------------------

HandlePlayer_NoDangerOfDeath:		; CODE XREF: HandlePlayer+56j
		mov	bx, offset GameFlags ; test 4th
		test	byte ptr [bx], GFCoconuted
		jz	short HandlePlayer_AliveAndPlaying
		jmp	HandlePlayer_Coconuted
; ---------------------------------------------------------------------------

HandlePlayer_AliveAndPlaying:		; CODE XREF: HandlePlayer+61j
		call	ServeFireKey
		test	[si+CharData_t.Obstacles], ORodJump
		jz	short loc_2F6
		jmp	HandlePlayer_DoPoleJump
; ---------------------------------------------------------------------------

loc_2F6:				; CODE XREF: HandlePlayer+6Dj
		test	[si+CharData_t.Obstacles], OJustShoot
		jz	short loc_2FF
		jmp	DoThrow
; ---------------------------------------------------------------------------

loc_2FF:				; CODE XREF: HandlePlayer+76j
		call	HandleJumpsAndDucks
		test	[si+CharData_t.Obstacles], OAtJump
		jz	short NotInJump
		jmp	Jump
; ---------------------------------------------------------------------------

NotInJump:				; CODE XREF: HandlePlayer+82j
		test	[si+CharData_t.Obstacles], OAtBottom
		jz	short InTheAir
		and	[si+CharData_t.Obstacles], not (OCanExit)
		mov	ah, byte ptr KeysPressed ; Left-right movements
		test	ah, Key_Right
		jz	short loc_321
		jmp	WalkRight
; ---------------------------------------------------------------------------

loc_321:				; CODE XREF: HandlePlayer+98j
		test	ah, Key_Left
		jz	short loc_329
		jmp	WalkLeft
; ---------------------------------------------------------------------------

loc_329:				; CODE XREF: HandlePlayer+A0j
		jmp	loc_5F9
; ---------------------------------------------------------------------------

InTheAir:				; CODE XREF: HandlePlayer+8Bj
		test	[si+CharData_t.Obstacles], OCanExit
		jnz	short loc_371
		test	[si+CharData_t.Positions], PBottomEdge
		jz	short loc_339
		retn
; ---------------------------------------------------------------------------

loc_339:				; CODE XREF: HandlePlayer+B2j
		mov	bx, offset FallingDownRight
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_345
		mov	bx, offset FallingDownLeft

loc_345:				; CODE XREF: HandlePlayer+BCj
		call	LoadAnimData	; BX = pointer to AnimData
					; Animation delay -> DL
					; Start	frame -> CL
					; End frame -> CH
					;
					; Updates CharData[SI].HSpeed and .VSpeed
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		jb	short loc_34E
		retn
; ---------------------------------------------------------------------------

loc_34E:				; CODE XREF: HandlePlayer+C7j
		mov	ah, [si+CharData_t.Obstacles]
		or	ah, [si+CharData_t.Positions]
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jnz	short loc_365
		test	ah, PRightEdge
		jz	short loc_36E
		mov	[si+CharData_t.HorizontalSpeed], 1
		jmp	short loc_36E
; ---------------------------------------------------------------------------

loc_365:				; CODE XREF: HandlePlayer+D4j
		test	ah, PLeftEdge
		jz	short loc_36E
		mov	[si+CharData_t.HorizontalSpeed], -1

loc_36E:				; CODE XREF: HandlePlayer+D9j
					; HandlePlayer+DFj ...
		jmp	DoCharMotion	; AltX += HSpeed
					; AltY += VSpeed
; ---------------------------------------------------------------------------

loc_371:				; CODE XREF: HandlePlayer+ACj
		call	_AdjustJumpPhase
		test	[si+CharData_t.Positions], PTopEdge
		jz	short loc_37E
		mov	[si+CharData_t.VerticalSpeed], 127

loc_37E:				; CODE XREF: HandlePlayer+F4j
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jnz	short loc_393
		test	[si+CharData_t.Obstacles], 20h
		jnz	short loc_3B7
		test	[si+CharData_t.Positions], PRightEdge
		jz	short loc_391
		retn
; ---------------------------------------------------------------------------

loc_391:				; CODE XREF: HandlePlayer+10Aj
		jmp	short loc_3A0
; ---------------------------------------------------------------------------

loc_393:				; CODE XREF: HandlePlayer+FEj
		test	[si+CharData_t.Obstacles], PLeftEdge
		jnz	short loc_3B7
		test	[si+CharData_t.Positions], PLeftEdge
		jz	short loc_3A0
		retn
; ---------------------------------------------------------------------------

loc_3A0:				; CODE XREF: HandlePlayer:loc_391j
					; HandlePlayer+119j
		call	ShiftHorizontally
		mov	ah, [si+CharData_t.VerticalSpeed]
		test	ah, 80h
		jz	short loc_3B2
		add	ah, 3
		mov	[si+CharData_t.VerticalSpeed], ah
		retn
; ---------------------------------------------------------------------------

loc_3B2:				; CODE XREF: HandlePlayer+125j
		mov	[si+CharData_t.VerticalSpeed], 7Fh
		retn
; ---------------------------------------------------------------------------

loc_3B7:				; CODE XREF: HandlePlayer+104j
					; HandlePlayer+113j
		and	[si+CharData_t.Obstacles], not OCanExit
		retn
; END OF FUNCTION CHUNK	FOR HandlePlayer

; =============== S U B	R O U T	I N E =======================================


_AdjustJumpPhase proc near		; CODE XREF: HandlePlayer:loc_371p
					; HandlePlayer+2B1j
		mov	bx, offset RightUpJump.LastFrame
		test	[si+CharData_t.HorizontalSpeed], 80h
		jz	short loc_3C8
		mov	bx, offset LeftUpJump.LastFrame

loc_3C8:				; CODE XREF: _AdjustJumpPhase+7j
		test	[si+CharData_t.VerticalSpeed], 80h
		jz	short loc_3CF
		dec	bx

loc_3CF:				; CODE XREF: _AdjustJumpPhase+10j
		mov	ah, [bx]
		mov	[si+CharData_t.Frame], ah
		retn
_AdjustJumpPhase endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR HandlePlayer

DeathInSwamp:				; CODE XREF: HandlePlayer+35j
					; HandlePlayer+4Cj
		test	[si+CharData_t.Positions], PAtSwamp
		jnz	short loc_3F8
		call	sub_10CF
		mov	dl, 1
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_3E8
		mov	dl, -1

loc_3E8:				; CODE XREF: HandlePlayer+160j
		mov	ah, byte ptr [si+(CharData_t.X+1)]
		add	ah, dl
		mov	byte ptr [si+(CharData_t.X+1)],	ah
		mov	byte ptr [si+CharData_t.X], 0
		mov	[si+CharData_t.Scratchpad], 20

loc_3F8:				; CODE XREF: HandlePlayer+155j
		mov	bx, offset SwampedRight
		call	LoadAnimData	; BX = pointer to AnimData
					; Animation delay -> DL
					; Start	frame -> CL
					; End frame -> CH
					;
					; Updates CharData[SI].HSpeed and .VSpeed
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		jb	short loc_404
		retn
; ---------------------------------------------------------------------------

loc_404:				; CODE XREF: HandlePlayer+17Dj
		dec	[si+CharData_t.Scratchpad]
		jnz	short locret_40C
		jmp	DecrementLives
; ---------------------------------------------------------------------------

locret_40C:				; CODE XREF: HandlePlayer+183j
		retn
; ---------------------------------------------------------------------------

DeathInWater:				; CODE XREF: HandlePlayer+2Cj
					; HandlePlayer+44j
		test	[si+CharData_t.Positions], PAtWater
		jnz	short loc_432
		inc	byte ptr [si+(CharData_t.Y+1)]
		inc	byte ptr [si+(CharData_t.Y+1)]
		or	[si+CharData_t.Positions], PAtWater
		call	AddCharacter	; SI = CharData
					; CF is	set if no room
		jb	short loc_432
		call	LoadPlayerPosition_Preserve_SI ; X -> DX
					; Y -> BX
					; Dir -> ZF (set if right)
		inc	dh
		dec	bh
		mov	ch, ABubbles
		mov	cl, 0
		xor	ah, ah
		call	InitCharAnim	; CH = AltAnimation
					; CL = AltFrame
					; DX = AltX
					; BX = AltY
					; AH = HorizontalSpeed

loc_432:				; CODE XREF: HandlePlayer+18Dj
					; HandlePlayer+19Cj
		mov	si, offset PlayerData
		mov	bx, offset DeathRight
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short AnimateDeadPlayer
		mov	bx, offset DeathLeft

AnimateDeadPlayer:			; CODE XREF: HandlePlayer+1B8j
		call	LoadAnimData	; BX = pointer to AnimData
					; Animation delay -> DL
					; Start	frame -> CL
					; End frame -> CH
					;
					; Updates CharData[SI].HSpeed and .VSpeed
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		jnb	short loc_44D
		or	ah, ah
		jnz	short loc_461

loc_44D:				; CODE XREF: HandlePlayer+1C3j
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		cmp	ah, TWater	; Water	tile
		jz	short loc_456
		retn
; ---------------------------------------------------------------------------

loc_456:				; CODE XREF: HandlePlayer+1CFj
		test	[si+CharData_t.AnimDelay], 1
		jnz	short loc_45D
		retn
; ---------------------------------------------------------------------------

loc_45D:				; CODE XREF: HandlePlayer+1D6j
		inc	byte ptr [si+(CharData_t.Y+1)]
		retn
; ---------------------------------------------------------------------------

loc_461:				; CODE XREF: HandlePlayer+1C7j
		mov	ah, ABubbles
		call	FindCharByAnimation ; AH = char's animation
					; If success
					;   DI = pointer to data struct
					;   CF = 0
					; else
					;   CF = 1
		jnb	short loc_46B
		jmp	DecrementLives
; ---------------------------------------------------------------------------

loc_46B:				; CODE XREF: HandlePlayer+1E2j
		or	byte ptr [di], CFRemoved
		jmp	DecrementLives
; ---------------------------------------------------------------------------

HandlePlayer_Eaten:			; CODE XREF: HandlePlayer+23j
		mov	bx, offset EatenRight
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_47D
		mov	bx, offset EatenLeft

loc_47D:				; CODE XREF: HandlePlayer+1F4j
		call	LoadAnimData	; BX = pointer to AnimData
					; Animation delay -> DL
					; Start	frame -> CL
					; End frame -> CH
					;
					; Updates CharData[SI].HSpeed and .VSpeed
		jmp	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
; ---------------------------------------------------------------------------

WalkRight:				; CODE XREF: HandlePlayer+9Aj
		mov	ah, 40h
		mov	byte ptr [si+CharData_t.Y], ah
		mov	ah, [si+CharData_t.Scratchpad]
		cmp	ah, 12
		jz	short loc_495
		inc	ah
		mov	[si+CharData_t.Scratchpad], ah

loc_495:				; CODE XREF: HandlePlayer+20Aj
		mov	bx, offset _RightMotion
		call	LoadAnimData	; BX = pointer to AnimData
					; Animation delay -> DL
					; Start	frame -> CL
					; End frame -> CH
					;
					; Updates CharData[SI].HSpeed and .VSpeed
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		jb	short IfAnimChanged0
		retn
; ---------------------------------------------------------------------------

IfAnimChanged0:				; CODE XREF: HandlePlayer+21Aj
		mov	ah, [si+CharData_t.Positions]
		or	ah, [si+CharData_t.Obstacles]
		test	ah, PRightEdge
		jz	short loc_4AD
		retn
; ---------------------------------------------------------------------------

loc_4AD:				; CODE XREF: HandlePlayer+226j
		inc	byte ptr [si+(CharData_t.X+1)]
		stc
		retn
; ---------------------------------------------------------------------------

WalkLeft:				; CODE XREF: HandlePlayer+A2j
		mov	ah, 40h
		mov	byte ptr [si+CharData_t.Y], ah
		mov	ah, [si+CharData_t.Scratchpad]
		cmp	ah, 12
		jz	short loc_4C4
		inc	ah
		mov	[si+CharData_t.Scratchpad], ah

loc_4C4:				; CODE XREF: HandlePlayer+239j
		mov	bx, offset _LeftMotion
		call	LoadAnimData	; BX = pointer to AnimData
					; Animation delay -> DL
					; Start	frame -> CL
					; End frame -> CH
					;
					; Updates CharData[SI].HSpeed and .VSpeed
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		jb	short IfAnimChanged1
		retn
; ---------------------------------------------------------------------------

IfAnimChanged1:				; CODE XREF: HandlePlayer+249j
		mov	ah, [si+CharData_t.Positions]
		or	ah, [si+CharData_t.Obstacles]
		test	ah, PLeftEdge
		jz	short loc_4DC
		retn
; ---------------------------------------------------------------------------

loc_4DC:				; CODE XREF: HandlePlayer+255j
		dec	byte ptr [si+(CharData_t.X+1)]
		stc
		retn
; ---------------------------------------------------------------------------

Jump:					; CODE XREF: HandlePlayer+84j
		test	[si+CharData_t.Positions], PVerticalJump
		jnz	short loc_538
		mov	ah, [si+CharData_t.Scratchpad]
		or	ah, ah
		jnz	short loc_4F8

loc_4EE:				; CODE XREF: HandlePlayer+282j
					; HandlePlayer+293j ...
		xor	ah, ah
		mov	[si+CharData_t.Scratchpad], ah
		and	[si+CharData_t.Obstacles], not (OAtJump)
		retn
; ---------------------------------------------------------------------------

loc_4F8:				; CODE XREF: HandlePlayer+268j
		dec	ah
		mov	[si+CharData_t.Scratchpad], ah
		mov	ah, [si+CharData_t.Obstacles]
		or	ah, [si+CharData_t.Positions]
		test	ah, PTopEdge
		jnz	short loc_4EE
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jnz	short loc_51E
		mov	ah, [si+CharData_t.Obstacles]
		or	ah, [si+CharData_t.Positions]
		test	ah, PRightEdge
		jnz	short loc_4EE
		mov	bx, offset RightUpJump
		jmp	short loc_52C
; ---------------------------------------------------------------------------

loc_51E:				; CODE XREF: HandlePlayer+288j
		mov	ah, [si+CharData_t.Obstacles]
		or	ah, [si+CharData_t.Positions]
		test	ah, PLeftEdge
		jnz	short loc_4EE
		mov	bx, offset LeftUpJump

loc_52C:				; CODE XREF: HandlePlayer+298j
		call	LoadAnimData	; BX = pointer to AnimData
					; Animation delay -> DL
					; Start	frame -> CL
					; End frame -> CH
					;
					; Updates CharData[SI].HSpeed and .VSpeed
		mov	[si+CharData_t.Frame], cl
		call	DoCharMotion	; AltX += HSpeed
					; AltY += VSpeed
		jmp	_AdjustJumpPhase
; ---------------------------------------------------------------------------

loc_538:				; CODE XREF: HandlePlayer+261j
		dec	[si+CharData_t.JumpPower]
		jz	short loc_53E
		retn
; ---------------------------------------------------------------------------

loc_53E:				; CODE XREF: HandlePlayer+2B7j
		and	[si+CharData_t.Positions], not (PVerticalJump)
		and	[si+CharData_t.Obstacles], not (OAtJump)
		retn
; ---------------------------------------------------------------------------

DoThrow:				; CODE XREF: HandlePlayer+78j
		mov	bx, offset ThrowRight
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_553
		mov	bx, offset ThrowLeft

loc_553:				; CODE XREF: HandlePlayer+2CAj
		call	LoadAnimData	; BX = pointer to AnimData
					; Animation delay -> DL
					; Start	frame -> CL
					; End frame -> CH
					;
					; Updates CharData[SI].HSpeed and .VSpeed
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		jb	short loc_55C
		retn
; ---------------------------------------------------------------------------

loc_55C:				; CODE XREF: HandlePlayer+2D5j
		or	ah, ah
		jnz	short loc_561
		retn
; ---------------------------------------------------------------------------

loc_561:				; CODE XREF: HandlePlayer+2DAj
		mov	[si+CharData_t.Frame], ah
		and	[si+CharData_t.Obstacles], not (OJustShoot)
		and	[si+CharData_t.Positions], not (PVerticalJump)
		call	FireWeapon
		xor	ah, ah
		mov	byte ptr Force,	ah
		retn
; END OF FUNCTION CHUNK	FOR HandlePlayer

; =============== S U B	R O U T	I N E =======================================


HandleJumpsAndDucks proc near		; CODE XREF: HandlePlayer:loc_2FFp
		test	[si+CharData_t.Obstacles], OAtJump
		jz	short loc_57D	; Up-down movements
		retn
; ---------------------------------------------------------------------------

loc_57D:				; CODE XREF: HandleJumpsAndDucks+4j
		mov	ah, byte ptr KeysPressed ; Up-down movements
		test	ah, Key_Up
		jz	short loc_5DA	; Up is	not held

Jump:
		test	[si+CharData_t.Obstacles], OAtBottom
		jnz	short Jumpin
		retn
; ---------------------------------------------------------------------------

Jumpin:					; CODE XREF: HandleJumpsAndDucks+14j
		mov	bx, offset RightUpJump
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_599
		mov	bx, offset LeftUpJump

loc_599:				; CODE XREF: HandleJumpsAndDucks+1Ej
		call	LoadAnimData	; BX = pointer to AnimData
					; Animation delay -> DL
					; Start	frame -> CL
					; End frame -> CH
					;
					; Updates CharData[SI].HSpeed and .VSpeed
		or	[si+CharData_t.Obstacles], OAtJump
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		mov	ah, [si+CharData_t.Scratchpad]
		or	ah, ah
		jz	short loc_5B0
		mov	bx, offset _Sound2
		jmp	PlaySound
; ---------------------------------------------------------------------------

loc_5B0:				; CODE XREF: HandleJumpsAndDucks+32j
		mov	ah, byte ptr [si+(CharData_t.Y+1)]
		sub	ah, 2
		jnb	short loc_5B9
		retn
; ---------------------------------------------------------------------------

loc_5B9:				; CODE XREF: HandleJumpsAndDucks+40j
		mov	cl, 1
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_5C3
		mov	cl, -1

loc_5C3:				; CODE XREF: HandleJumpsAndDucks+49j
		mov	[si+CharData_t.HorizontalSpeed], cl
		or	[si+CharData_t.Positions], PVerticalJump
		mov	[si+CharData_t.JumpPower], 8
		dec	byte ptr [si+(CharData_t.Y+1)]
		dec	byte ptr [si+(CharData_t.Y+1)]
		mov	bx, offset _Sound3
		jmp	PlaySound
; ---------------------------------------------------------------------------

loc_5DA:				; CODE XREF: HandleJumpsAndDucks+Ej
		test	ah, Key_Down
		jnz	short SitDown
		retn
; ---------------------------------------------------------------------------

SitDown:				; CODE XREF: HandleJumpsAndDucks+67j
		test	[si+CharData_t.Obstacles], OAtBottom
		jnz	short loc_5E7
		retn
; ---------------------------------------------------------------------------

loc_5E7:				; CODE XREF: HandleJumpsAndDucks+6Ej
		mov	bx, offset DuckRight
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_5F3
		mov	bx, offset DuckLeft

loc_5F3:				; CODE XREF: HandleJumpsAndDucks+78j
		call	LoadAnimData	; BX = pointer to AnimData
					; Animation delay -> DL
					; Start	frame -> CL
					; End frame -> CH
					;
					; Updates CharData[SI].HSpeed and .VSpeed
		jmp	PrepNextFrame	; CL = StartFrame
HandleJumpsAndDucks endp		; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR HandlePlayer

loc_5F9:				; CODE XREF: HandlePlayer:loc_329j
		mov	ah, byte ptr KeysPressed
		and	ah, Key_Up or Key_Down or Key_Left or Key_Right
		jz	short StopPlayer ; If no movmnt	keys are pressed...
		retn
; ---------------------------------------------------------------------------

StopPlayer:				; CODE XREF: HandlePlayer+37Cj
		mov	ah, 40h		; If no	movmnt keys are	pressed...
		mov	byte ptr [si+CharData_t.Y], ah
		xor	ah, ah
		mov	[si+CharData_t.Scratchpad], ah
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		mov	bx, offset _RightMotion.FirstFrame
		jz	short loc_619
		mov	bx, offset _LeftMotion.FirstFrame

loc_619:				; CODE XREF: HandlePlayer+390j
		mov	ah, [bx]
		mov	[si+CharData_t.Frame], ah
		retn
; END OF FUNCTION CHUNK	FOR HandlePlayer

; =============== S U B	R O U T	I N E =======================================

; BX = pointer to AnimData
; Animation delay -> DL
; Start	frame -> CL
; End frame -> CH
;
; Updates CharData[SI].HSpeed and .VSpeed

LoadAnimData	proc near		; CODE XREF: HandlePlayer:loc_345p
					; HandlePlayer+177p ...
		mov	dl, [bx]	; Delay
		inc	bx
		mov	cl, [bx]	; First	frame
		inc	bx
		mov	ch, [bx]	; Last frame
		inc	bx
		mov	ah, [bx]	; HSpeed
		or	ah, ah
		jz	short loc_631
		mov	[si+CharData_t.HorizontalSpeed], ah ; If not zero - update direction

loc_631:				; CODE XREF: LoadAnimData+Dj
		inc	bx
		mov	ah, [bx]	; VSpeed
		or	ah, ah
		jnz	short loc_639
		retn
; ---------------------------------------------------------------------------

loc_639:				; CODE XREF: LoadAnimData+17j
		mov	[si+CharData_t.VerticalSpeed], ah
		retn
LoadAnimData	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR HandlePlayer

DecrementLives:				; CODE XREF: HandlePlayer+185j
					; HandlePlayer+1E4j ...
		call	UpdateHats
		mov	ah, Lives	; Decrementing

loc_644:				; DATA XREF: INT09h_Vector+71w
					; INT09h_Vector+84w ...
		dec	ah
		mov	Lives, ah	; Decremented
		cmp	ah, 0FFh
		jnz	short Respawn
		jmp	Reset
; ---------------------------------------------------------------------------

Respawn:				; CODE XREF: HandlePlayer+3C9j
		mov	ah, 3Ch
		mov	FoodLevel, ah	; Initialize food counter
		mov	WaterLevel, ah	; Initialize water counter
		mov	si, offset PlayerData
		mov	[si+CharData_t.Obstacles], 0
		mov	[si+CharData_t.Positions], 0
		or	[si+CharData_t.CharFlags], CF_0x20
		call	DrawCharacters
		mov	si, offset PlayerData
		and	[si+CharData_t.CharFlags], not (CF_0x20)
		call	RestorePlayerCoords ;  and direction
		xor	ah, ah
		mov	GameFlags, ah	; clear
		mov	TileUnderPlayer, ah
		jmp	InitFloatingLog
; ---------------------------------------------------------------------------

UsualDeath:				; CODE XREF: HandlePlayer+58j
		test	[si+CharData_t.Obstacles], OAtBottom
		jnz	short loc_690
		mov	[si+CharData_t.VerticalSpeed], 7Fh
		jmp	DoCharMotion	; AltX += HSpeed
					; AltY += VSpeed
; ---------------------------------------------------------------------------

loc_690:				; CODE XREF: HandlePlayer+403j
		mov	bx, offset DeathRight
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_69C
		mov	bx, offset DeathLeft

loc_69C:				; CODE XREF: HandlePlayer+413j
		call	LoadAnimData	; BX = pointer to AnimData
					; Animation delay -> DL
					; Start	frame -> CL
					; End frame -> CH
					;
					; Updates CharData[SI].HSpeed and .VSpeed
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		jb	short loc_6A5
		retn
; ---------------------------------------------------------------------------

loc_6A5:				; CODE XREF: HandlePlayer+41Ej
		or	ah, ah
		jz	short locret_6AB
		jmp	short DecrementLives
; ---------------------------------------------------------------------------

locret_6AB:				; CODE XREF: HandlePlayer+423j
		retn
; ---------------------------------------------------------------------------

HandlePlayer_Coconuted:			; CODE XREF: HandlePlayer+63j
		test	[si+CharData_t.Obstacles], OAtBottom
		jnz	short loc_6B9
		mov	[si+CharData_t.VerticalSpeed], 7Fh
		jmp	DoCharMotion	; AltX += HSpeed
					; AltY += VSpeed
; ---------------------------------------------------------------------------

loc_6B9:				; CODE XREF: HandlePlayer+42Cj
		mov	bx, offset CoconutedRight
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_6C5
		mov	bx, offset CoconutedLeft

loc_6C5:				; CODE XREF: HandlePlayer+43Cj
		call	LoadAnimData	; BX = pointer to AnimData
					; Animation delay -> DL
					; Start	frame -> CL
					; End frame -> CH
					;
					; Updates CharData[SI].HSpeed and .VSpeed
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		jb	short loc_6CE
		retn
; ---------------------------------------------------------------------------

loc_6CE:				; CODE XREF: HandlePlayer+447j
		dec	[si+CharData_t.Scratchpad]
		jz	short loc_6D4
		retn
; ---------------------------------------------------------------------------

loc_6D4:				; CODE XREF: HandlePlayer+44Dj
		mov	bx, offset GameFlags ; clear GFCoconuted
		and	byte ptr [bx], not (GFCoconuted)
		retn
; END OF FUNCTION CHUNK	FOR HandlePlayer

; =============== S U B	R O U T	I N E =======================================


ServeFireKey	proc near		; CODE XREF: HandlePlayer:HandlePlayer_AliveAndPlayingp

; FUNCTION CHUNK AT 0721 SIZE 0000006C BYTES

		test	[si+CharData_t.Obstacles], ORodJump
		jz	short loc_6E2
		retn
; ---------------------------------------------------------------------------

loc_6E2:				; CODE XREF: ServeFireKey+4j
		test	[si+CharData_t.Obstacles], OJustShoot
		jz	short loc_6E9
		retn
; ---------------------------------------------------------------------------

loc_6E9:				; CODE XREF: ServeFireKey+Bj
		mov	ah, byte ptr KeysPressed
		test	ah, Key_Fire
		jz	short Firing

FireIsDown:				; 7 6 5	4 3 2 1	0
		mov	ah, Weapon	; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		test	ah, ARod
		jz	short IncreaseForce
		or	[si+CharData_t.Obstacles], ORodJump
		jmp	short PreparePoleJump
ServeFireKey	endp


; =============== S U B	R O U T	I N E =======================================


IncreaseForce	proc near		; CODE XREF: ServeFireKey+1Ej
					; HandlePlayer+FC0p

; FUNCTION CHUNK AT 323F SIZE 00000014 BYTES

		mov	ah, byte ptr Force
		or	ah, ah
		jnz	short loc_70C
		call	SetForceToZero

loc_70C:				; CODE XREF: IncreaseForce+6j
		mov	ah, byte ptr Force
		cmp	ah, 3Ch
		jb	short loc_716
		retn
; ---------------------------------------------------------------------------

loc_716:				; CODE XREF: IncreaseForce+12j
		inc	ah
		inc	ah
		mov	byte ptr Force,	ah
		jmp	DrawForce
IncreaseForce	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR ServeFireKey

Firing:					; CODE XREF: ServeFireKey+15j
		mov	ah, byte ptr Force ; If	Space is released
		or	ah, ah
		jnz	short Shoot	; If force isn't zero
		retn
; ---------------------------------------------------------------------------

Shoot:					; CODE XREF: ServeFireKey+4Cj
		mov	ah, [si+CharData_t.Obstacles]
		and	ah, not	(ORodJump or OJustShoot	or OAtJump)
		or	ah, OJustShoot
		mov	[si+CharData_t.Obstacles], ah
		mov	bx, offset ThrowRight.FirstFrame
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_742
		mov	bx, offset ThrowLeft.FirstFrame

loc_742:				; CODE XREF: ServeFireKey+62j
		mov	ah, [bx]
		mov	[si+CharData_t.Frame], ah
		retn
; ---------------------------------------------------------------------------

PreparePoleJump:			; CODE XREF: ServeFireKey+24j
		mov	bx, offset PoleDataLeft
		mov	PolePtr, bx
		call	LoadCharPosition ; SI points to	Char data
					; Fractional row-> BX
					; Fractional col-> DX
					; Dir -> ZF
					; (NZ -	left, Z	- right)

JumpToLeft:
		mov	cl, 7
		mov	ah, -5
		jnz	short PrepareJump

JumpToRight:
		mov	cx, offset PoleDataRight
		mov	PolePtr, cx
		mov	cl, 0
		mov	ah, 1

PrepareJump:				; CODE XREF: ServeFireKey+7Bj
		push	ax
		add	ah, dh
		mov	dh, ah
		push	cx
		mov	cx, 1C0h
		add	bx, cx
		pop	cx
		mov	ch, ARod
		pop	ax
		test	[si+CharData_t.Obstacles], OAtBottom
		jz	short CancelJump
		push	si
		mov	si, offset PoleData
		call	InitCharAnim	; CH = AltAnimation
					; CL = AltFrame
					; DX = AltX
					; BX = AltY
					; AH = HorizontalSpeed
		mov	ah, ARod
		call	AddNewChar	; Inserts new char into	location
					; according to given order
					; CL = order
					; SI points to CharData
		pop	si
		retn
; ---------------------------------------------------------------------------

CancelJump:				; CODE XREF: ServeFireKey+9Bj
		and	[si+CharData_t.Obstacles], not (ORodJump)
		jmp	SetForceToZero
; END OF FUNCTION CHUNK	FOR ServeFireKey

; =============== S U B	R O U T	I N E =======================================

; SI = CharData	ptr
; Tile under object -> AH

CalcTileUnderObject proc near		; CODE XREF: HandlePlayer:HandlePlayer_NotInSwampp
					; HandlePlayer:loc_44Dp ...
		mov	ah, [si+CharData_t.Obstacles]
		and	ah, not	(OAtLeft or OAtRight or	OAtBottom or OAtTop)
		mov	[si+CharData_t.Obstacles], ah
		call	CalcAnimRect
		call	UpdatePositionByte
		call	LoadCharPosition ; SI points to	Char data
					; Fractional row-> BX
					; Fractional col-> DX
					; Dir -> ZF
					; (NZ -	left, Z	- right)
		mov	cx, 32		; 1/8 of tile, i.e. 1 pixel
		add	bx, cx		; BX = Y+1 pixel
		mov	cx, AHeightInTiles
		add	bx, cx		; BX=Y+Height+1	pixel
		xchg	dx, bx		; DX=Y+Height+1	pixel
		mov	cx, AWidthInTiles
		shr	cx, 1		; CX = Width/2
		add	bx, cx		; BX=Y+Height+(1 pixel)+Width/2
		xchg	dx, bx		; <->
		mov	ch, bh		; CH = Bottom row
		mov	cl, dh		; CL = (Col + Width/2)
		call	GetTileAt	; CH = Row
					; CL = Col
					; Tile offset =	BX
		mov	ah, [bx]
		cmp	ah, 0A2h	; Ground, bricks, obstacles and
					; other	hard things
		jnb	short Obstacle
		retn
; ---------------------------------------------------------------------------

Obstacle:				; CODE XREF: CalcTileUnderObject+35j
		or	[si+CharData_t.Obstacles], OAtBottom
		retn
CalcTileUnderObject endp


; =============== S U B	R O U T	I N E =======================================


CalcAnimRect	proc near		; CODE XREF: CalcTileUnderObject+9p
		mov	bx, offset AnimRects
		mov	dl, [si+CharData_t.Animation]
		shl	dl, 1		; DL *=	2;
		mov	dh, 0
		add	bx, dx		; Offset in Anims table
		mov	dh, [bx]	; DH = Height in px
		inc	bx
		mov	dl, [bx]	; DL = Width in	px
		mov	bl, dh
		mov	bh, 0
		add	bx, bx
		add	bx, bx
		add	bx, bx
		add	bx, bx
		add	bx, bx		; bx=Height*32
		mov	AHeightInTiles,	bx
		mov	bh, 0
		mov	bl, dl
		add	bx, bx
		add	bx, bx
		add	bx, bx
		add	bx, bx
		add	bx, bx		; BX = Width*32
		mov	AWidthInTiles, bx
		retn
CalcAnimRect	endp


; =============== S U B	R O U T	I N E =======================================


UpdatePositionByte proc	near		; CODE XREF: CalcTileUnderObject+Cp
		mov	ah, [si+CharData_t.Positions]
		and	ah, not	(PLeftEdge or PRightEdge or PBottomEdge	or PTopEdge)
		mov	[si+CharData_t.Positions], ah
		mov	ah, byte ptr [si+(CharData_t.Y+1)]
		cmp	ah, 1
		jnb	short loc_814
		call	SetTopFlag

loc_814:				; CODE XREF: UpdatePositionByte+Fj
		mov	dx, AHeightInTiles
		mov	bh, byte ptr [si+(CharData_t.Y+1)]
		mov	bl, byte ptr [si+CharData_t.Y]
		add	bx, dx
		mov	dx, 1300h
		sbb	bx, dx
		jb	short loc_82A
		call	SetBottomFlag

loc_82A:				; CODE XREF: UpdatePositionByte+25j
		mov	bx, [si+CharData_t.X]
		mov	ah, bh
		cmp	ah, 1
		jnb	short loc_837
		call	SetLeftFlag	; or [si+24], 10h

loc_837:				; CODE XREF: UpdatePositionByte+32j
		mov	dx, AWidthInTiles
		add	bx, dx
Actually, BH = AnimWidth/8, i.e. width in TILE units
		mov	ah, 38
		sub	ah, bh
		jb	short loc_844
		retn
; ---------------------------------------------------------------------------

loc_844:				; CODE XREF: UpdatePositionByte+41j
		or	[si+CharData_t.Positions], PRightEdge
		retn
UpdatePositionByte endp


; =============== S U B	R O U T	I N E =======================================


SetTopFlag	proc near		; CODE XREF: UpdatePositionByte+11p
		or	[si+CharData_t.Positions], PTopEdge
		retn
SetTopFlag	endp


; =============== S U B	R O U T	I N E =======================================

; or [si+24], 10h

SetLeftFlag	proc near		; CODE XREF: UpdatePositionByte+34p
		or	[si+CharData_t.Positions], PLeftEdge
		retn
SetLeftFlag	endp


; =============== S U B	R O U T	I N E =======================================


SetBottomFlag	proc near		; CODE XREF: UpdatePositionByte+27p
		or	[si+CharData_t.Positions], PBottomEdge
		retn
SetBottomFlag	endp


; =============== S U B	R O U T	I N E =======================================


UpdateObstacles	proc near		; CODE XREF: HandlePlayer:HandlePlayer_NotSinkingp
OffsetB	= dl
Index =	di
OffsetW	= dx
Base = bx
		mov	ch, byte ptr [si+(CharData_t.Y+1)]
		mov	cl, byte ptr [si+(CharData_t.X+1)]
		call	GetTileAt	; CH = Row
					; CL = Col
					; Tile offset =	BX
		mov	ah, OAtLeft	; Obstacle flag
		mov	byte ptr Spare3, ah
		mov	Index, offset _Offsets-1 ; array
					; 00-40-80-ff
					; 03-43-83-ff
					; ff
					; 00-01-02-ff
		mov	dh, 0

loc_86C:				; CODE XREF: UpdateObstacles+26j
					; UpdateObstacles+32j ...
		push	Base
		inc	Index
		mov	ah, 0FFh
		mov	OffsetB, [Index]
		cmp	ah, OffsetB
		jz	short loc_88C
		add	Base, OffsetW
		mov	ah, [Base]
		cmp	ah, 0B9h	; Floor	in the last temple
		pop	Base
		jb	short loc_86C
		mov	ah, byte ptr Spare3
		or	ah, [si+CharData_t.Obstacles]
		mov	[si+CharData_t.Obstacles], ah
		jmp	short loc_86C
; ---------------------------------------------------------------------------

loc_88C:				; CODE XREF: UpdateObstacles+1Cj
		pop	Base
		mov	ah, byte ptr Spare3
		shl	ah, 1
		mov	byte ptr Spare3, ah
		jnb	short loc_86C
		retn
UpdateObstacles	endp


; =============== S U B	R O U T	I N E =======================================


PrepareToGame	proc near		; CODE XREF: PrepareToGameAliasp
					; PitFall+25p
		call	PreparePlaceholders
		call	ClearCharDataAndScore
		call	ClearData1
PrepareToGame	endp


; =============== S U B	R O U T	I N E =======================================


GoToNewLocation	proc near		; CODE XREF: ChangeLocation:loc_B7Fj
		call	Snd_TurnOffEx
		xor	ah, ah
		mov	byte_DDAF, ah
		mov	byte_DDB4, ah
		call	ClearEnemiesTable ; Clears list	of active objects,
					; initializes it with Player' data;
		call	DecodeLocationBackground
		call	LoadLocationData
		jmp	DrawWorldDifferences
GoToNewLocation	endp


; =============== S U B	R O U T	I N E =======================================


Loc0Script0	proc near		; DATA XREF: CODE:8241o

; FUNCTION CHUNK AT 08E6 SIZE 00000023 BYTES

		mov	ch, 10h
		mov	cl, 14h
		jmp	short loc_8E6
Loc0Script0	endp


; =============== S U B	R O U T	I N E =======================================


Loc1Script0	proc near		; DATA XREF: CODE:8268o CODE:827Bo ...
		mov	ch, 4
		mov	cl, 0FDh
		jmp	short _HandleFloatingLog
Loc1Script0	endp


; =============== S U B	R O U T	I N E =======================================


Loc2AScript0	proc near		; DATA XREF: CODE:8826o
		mov	ch, 10h
		mov	cl, 5
		jmp	short _HandleFloatingLog
Loc2AScript0	endp


; =============== S U B	R O U T	I N E =======================================


Loc26Script0	proc near		; DATA XREF: CODE:87A4o CODE:8808o
		mov	ch, 0Eh
		mov	cl, 0Ch
		jmp	short _HandleFloatingLog
Loc26Script0	endp


; =============== S U B	R O U T	I N E =======================================


Loc25Script0	proc near		; DATA XREF: CODE:8774o
		mov	ch, 0Eh
		mov	cl, 7
		jmp	short _HandleFloatingLog
Loc25Script0	endp


; =============== S U B	R O U T	I N E =======================================


Loc0Script1	proc near		; DATA XREF: CODE:8243o CODE:826Ao ...

; FUNCTION CHUNK AT 150D SIZE 000000C5 BYTES
; FUNCTION CHUNK AT 161A SIZE 00000039 BYTES

		mov	ah, _LogLeft
		or	ah, ah
		jz	short locret_8E5
		jmp	loc_150D
; ---------------------------------------------------------------------------

locret_8E5:				; CODE XREF: Loc0Script1+6j
		retn
Loc0Script1	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR Loc0Script0

loc_8E6:				; CODE XREF: Loc0Script0+4j
		mov	ah, TileUnderPlayer
		cmp	ah, 0D9h	; Log
		jz	short _HandleFloatingLog
		retn
; ---------------------------------------------------------------------------

_HandleFloatingLog:			; CODE XREF: Loc1Script0+4j
					; Loc2AScript0+4j ...
		mov	ah, _LogLeft
		or	ah, ah
		jz	short loc_8F9
		retn
; ---------------------------------------------------------------------------

loc_8F9:				; CODE XREF: Loc0Script0+3Aj
		mov	_FloatingLogPos, cx
		mov	ah, 1
		mov	_LogLeft, ah
		mov	ah, 5
		mov	_LogRight, ah
; END OF FUNCTION CHUNK	FOR Loc0Script0
; ---------------------------------------------------------------------------
WpnFlags	db 0C3h, 80h, 40h, 20h,	10h ; DATA XREF: DrawUsedWeapon+Do
					;   C3	       80	 40	 20	10
					; nothing - boomerang -	knife -	bomb - rod

; =============== S U B	R O U T	I N E =======================================


DrawUsedWeapon	proc near		; CODE XREF: MainLoop+Bp
					; HandleInput+48p

; FUNCTION CHUNK AT 3324 SIZE 00000037 BYTES

		mov	ah, Weapon	; 7 6 5	4 3 2 1	0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		and	ah, Rod	or Bomb	or Knife or Boomerang ;	0xF0
		mov	dl, ah		; DL = kind of fired weapons
		mov	ah, SelectedWeapon ; Changes when player press keys '1'...'4'
		mov	bx, offset WpnFlags ;	C3	   80	     40	     20	    10
					; nothing - boomerang -	knife -	bomb - rod
		mov	cl, ah
		mov	ch, 0		; CX = selected	weapon
		add	bx, cx		; Ptr to selected wpn
		mov	ah, [bx]	; AH = kind of selected	weapon
		and	ah, dl
		mov	ah, SelectedWeapon ; Changes when player press keys '1'...'4'
		jz	short NoMatch
		xor	ah, ah		; If selected doesn't match fired

NoMatch:				; CODE XREF: DrawUsedWeapon+1Ej
		or	ah, dl
		mov	Weapon,	ah	; 7 6 5	4 3 2 1	0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		jmp	Continue
DrawUsedWeapon	endp


; =============== S U B	R O U T	I N E =======================================


FireWeapon	proc near		; CODE XREF: HandlePlayer+2E8p
		mov	ah, Weapon	; 7 6 5	4 3 2 1	0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		and	ah, 0Fh
		jnz	short loc_943
		retn
; ---------------------------------------------------------------------------

loc_943:				; CODE XREF: FireWeapon+7j
		mov	dx, size CharData_t
		call	FindRecord	; AH = bit mask
					; DX = sizeof(record_t)
					; BX = result
		xchg	dx, bx
		mov	si, offset PlayerData
		add	si, dx
		test	[si+CharData_t.CharFlags], CFActive
		jz	short loc_956
		retn
; ---------------------------------------------------------------------------

loc_956:				; CODE XREF: FireWeapon+1Aj
		mov	bx, offset Weapon ; 7 6	5 4 3 2	1 0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		mov	ah, Weapon	; 7 6 5	4 3 2 1	0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		and	ah, 0Fh
		cmp	ah, ABoomerang
		jnz	short loc_9B0
		test	byte ptr [bx], Boomerang ; Upper nibble
		jz	short FireBoomerang
		retn
; ---------------------------------------------------------------------------

FireBoomerang:				; CODE XREF: FireWeapon+2Fj
		mov	ah, 84h
		mov	_BoomerangState, ah
		mov	ah, byte ptr Force
		shl	ah, 1
		neg	ah
		call	LoadPlayerPosition_Preserve_SI ; X -> DX
					; Y -> BX
					; Dir -> ZF (set if right)
		jnz	short loc_98E
		inc	dh
		inc	dh
		mov	ah, 1
		mov	_BoomerangState, ah
		mov	ah, byte ptr Force
		shl	ah, 1

loc_98E:				; CODE XREF: FireWeapon+43j
		inc	bh
		mov	ch, ABoomerang
		mov	cl, 0
		call	InitCharAnim	; CH = AltAnimation
					; CL = AltFrame
					; DX = AltX
					; BX = AltY
					; AH = HorizontalSpeed
		mov	ah, byte ptr Force
		shl	ah, 1
		mov	byte_DDEA, ah
		mov	byte_DDEB, ah
		mov	ah, ABoomerang
		call	AddNewChar	; Inserts new char into	location
					; according to given order
					; CL = order
					; SI points to CharData
		mov	bx, offset _Sound7
		jmp	PlaySound
; ---------------------------------------------------------------------------

loc_9B0:				; CODE XREF: FireWeapon+2Aj
		cmp	ah, AKnife
		jnz	short loc_9E7
		test	byte ptr [bx], Knife
		jz	short FireKnife
		retn
; ---------------------------------------------------------------------------

FireKnife:				; CODE XREF: FireWeapon+7Fj
		call	LoadPlayerPosition_Preserve_SI ; X -> DX
					; Y -> BX
					; Dir -> ZF (set if right)
		mov	cl, 1
		jnz	short loc_9C8
		inc	dh
		inc	dh
		mov	cl, 0

loc_9C8:				; CODE XREF: FireWeapon+87j
		inc	bh
		mov	ch, 2
		mov	ah, byte ptr Force
		shl	ah, 1
		test	cl, 1
		jz	short loc_9D9
		neg	ah

loc_9D9:				; CODE XREF: FireWeapon+9Cj
		call	InitCharAnim	; CH = AltAnimation
					; CL = AltFrame
					; DX = AltX
					; BX = AltY
					; AH = HorizontalSpeed
		mov	ah, AKnife
		call	AddNewChar	; Inserts new char into	location
					; according to given order
					; CL = order
					; SI points to CharData
		mov	bx, offset _Sound5
		jmp	PlaySound
; ---------------------------------------------------------------------------

loc_9E7:				; CODE XREF: FireWeapon+7Aj
		cmp	ah, ABomb
		jz	short loc_9ED
		retn
; ---------------------------------------------------------------------------

loc_9ED:				; CODE XREF: FireWeapon+B1j
		test	byte ptr [bx], Bomb
		jz	short FireBomb
		retn
; ---------------------------------------------------------------------------

FireBomb:				; CODE XREF: FireWeapon+B7j
		mov	ah, byte ptr Force
		neg	ah
		call	LoadPlayerPosition_Preserve_SI ; X -> DX
					; Y -> BX
					; Dir -> ZF (set if right)
		jnz	short loc_A04
		inc	dh
		inc	dh
		neg	ah

loc_A04:				; CODE XREF: FireWeapon+C3j
		dec	bh
		jnz	short loc_A09
		retn
; ---------------------------------------------------------------------------

loc_A09:				; CODE XREF: FireWeapon+CDj
		test	bh, 80h
		jz	short loc_A0F
		retn
; ---------------------------------------------------------------------------

loc_A0F:				; CODE XREF: FireWeapon+D3j
		mov	cl, 0
		mov	ch, ABomb
		call	InitCharAnim	; CH = AltAnimation
					; CL = AltFrame
					; DX = AltX
					; BX = AltY
					; AH = HorizontalSpeed
		mov	ah, byte ptr Force
		shl	ah, 1
		neg	ah
		mov	[si+CharData_t.VerticalSpeed], ah
		mov	ah, ABomb
		jmp	AddNewChar	; Inserts new char into	location
FireWeapon	endp			; according to given order
					; CL = order
					; SI points to CharData

; =============== S U B	R O U T	I N E =======================================


Loc0Script2	proc near		; DATA XREF: CODE:8245o CODE:84A8o ...
		mov	ah, ABird
		call	FindCharByAnimation ; AH = char's animation
					; If success
					;   DI = pointer to data struct
					;   CF = 0
					; else
					;   CF = 1
		jb	short loc_A2E
		retn
; ---------------------------------------------------------------------------

loc_A2E:				; CODE XREF: Loc0Script2+5j
		mov	bx, offset GameFlags ; test 0th
		test	byte ptr [bx], GFReadyToFly
		jz	short loc_A37
		retn
; ---------------------------------------------------------------------------

loc_A37:				; CODE XREF: Loc0Script2+Ej
		call	_Random		; Random number	-> AH
		and	ah, 7Fh
		cmp	ah, 0Ch
		jz	short BirdReveals
		retn
; ---------------------------------------------------------------------------

BirdReveals:				; CODE XREF: Loc0Script2+1Aj
		call	AddCharacter	; SI = CharData
					; CF is	set if no room
		jnb	short loc_A49
		retn
; ---------------------------------------------------------------------------

loc_A49:				; CODE XREF: Loc0Script2+20j
		or	byte ptr [bx], GFReadyToFly
		push	di
		mov	di, CurrentLocPtr
		mov	dx, 6
		add	di, dx
		call	LoadChrData	; SI = CharData
					; DI = LocationItem+1
		pop	di
		mov	cl, 4
		mov	ah, byte ptr [si+(CharData_t.X+1)]
		cmp	ah, 20
		jnb	short loc_A66
		mov	cl, 8

loc_A66:				; CODE XREF: Loc0Script2+3Cj
		mov	[si+CharData_t.Scratchpad], cl
		mov	byte ptr [si+CharData_t.field_20], 0Fh
		retn
Loc0Script2	endp


; =============== S U B	R O U T	I N E =======================================

; if in	exit position

ChangeLocation	proc near		; CODE XREF: MainLoop+17p
		mov	bx, offset GameFlags ; test 7th
		test	byte ptr [bx], GFSuspended
		jz	short loc_A77
		retn
; ---------------------------------------------------------------------------

loc_A77:				; CODE XREF: ChangeLocation+6j
		mov	si, offset PlayerData
		mov	ah, [si+CharData_t.Positions]
		and	ah, PLeftEdge or PRightEdge or PBottomEdge
		jnz	short loc_A83
		retn
; ---------------------------------------------------------------------------

loc_A83:				; CODE XREF: ChangeLocation+12j
		mov	di, CurrentLocPtr
		test	ah, PBottomEdge
		jnz	short AtBottom
		test	ah, PRightEdge
		jnz	short FetchRightLocation
		call	IfOnLog		; Prevents from	going left when	on log
		jnz	short loc_A97	; U-L Exit
		retn
; ---------------------------------------------------------------------------

loc_A97:				; CODE XREF: ChangeLocation+26j
		mov	dx, 0		; U-L Exit
		mov	ah, byte ptr [si+(CharData_t.Y+1)]
		cmp	ah, 10
		jnb	short loc_AA5
		mov	dx, Location_t.UpperLeftExit

loc_AA5:				; CODE XREF: ChangeLocation+32j
		add	di, dx
		mov	ah, [di]
		cmp	ah, 0FFh
		jnz	short loc_AB7
		and	[si+CharData_t.Obstacles], not (OCanExit)
		mov	byte ptr [si+(CharData_t.X+1)],	0
		retn
; ---------------------------------------------------------------------------

loc_AB7:				; CODE XREF: ChangeLocation+3Ej
		mov	dl, 37
		jmp	short loc_B0C
; ---------------------------------------------------------------------------

FetchRightLocation:			; CODE XREF: ChangeLocation+21j
		call	IfOnLog_
		jz	short loc_AC1
		retn
; ---------------------------------------------------------------------------

loc_AC1:				; CODE XREF: ChangeLocation+50j
		mov	dx, Location_t.UpperRightExit
		mov	ah, byte ptr [si+(CharData_t.Y+1)]
		cmp	ah, 10
		jb	short loc_ACF
		mov	dx, Location_t.LowerRightExit

loc_ACF:				; CODE XREF: ChangeLocation+5Cj
		add	di, dx
		mov	ah, [di]
		cmp	ah, 0FFh
		jnz	short loc_ADD
		and	[si+CharData_t.Obstacles], not (OCanExit)
		retn
; ---------------------------------------------------------------------------

loc_ADD:				; CODE XREF: ChangeLocation+68j
		mov	dl, 0
		jmp	short loc_B0C
; ---------------------------------------------------------------------------

AtBottom:				; CODE XREF: ChangeLocation+1Cj
		test	[si+CharData_t.VerticalSpeed], Negative
		jz	short FallingDown
		retn
; ---------------------------------------------------------------------------

FallingDown:				; CODE XREF: ChangeLocation+77j
		mov	dx, Location_t.LowerRightExit
		add	di, dx
		mov	ah, [di]
		cmp	ah, 0FFh
		jnz	short loc_AF5
		retn
; ---------------------------------------------------------------------------

loc_AF5:				; CODE XREF: ChangeLocation+84j
		test	ah, 40h
		jnz	short loc_AFB
		retn
; ---------------------------------------------------------------------------

loc_AFB:				; CODE XREF: ChangeLocation+8Aj
		and	ah, 0BFh
		mov	Location, ah
		mov	byte ptr [si+(CharData_t.Y+1)],	0
		mov	byte ptr [si+CharData_t.Y], 40h
		jmp	short loc_B38
; ---------------------------------------------------------------------------

loc_B0C:				; CODE XREF: ChangeLocation+4Bj
					; ChangeLocation+71j
		cmp	ah, 0FEh	; Exit through the door
		jnz	short loc_B19
		mov	ah, 0FFh
		mov	EscapeFromPitFlag, ah ;	Set to FFh
		jmp	short loc_B38
; ---------------------------------------------------------------------------

loc_B19:				; CODE XREF: ChangeLocation+A1j
		test	ah, Negative
		pushf
		and	ah, not	LeftDirection
		mov	Location, ah
		popf
		jz	short loc_B31
		mov	byte ptr [si+(CharData_t.Y+1)],	0
		mov	byte ptr [si+CharData_t.Y], 0C0h
		inc	dl

loc_B31:				; CODE XREF: ChangeLocation+B7j
		mov	byte ptr [si+CharData_t.X], 0
		mov	byte ptr [si+(CharData_t.X+1)],	dl

loc_B38:				; CODE XREF: ChangeLocation+9Cj
					; ChangeLocation+A9j ...
		and	[si+CharData_t.Obstacles], not (ORodJump)
		call	InitFloatingLog
		call	PreparePlaceholders
		mov	si, offset PlayerData
		or	[si+CharData_t.CharFlags], CFRodJumping
		call	_RealToAlt
		call	AdjustCoordsWhenLocChanged
		xor	ah, ah
		mov	GameFlags, ah	; clear

loc_B54:				; CODE XREF: sub_13C5+C0p
		mov	bx, offset BoomerangData
		mov	[bx+CharData_t.CharFlags], 0
		mov	dx, offset BoomerangData.CharFlags2
		mov	cx, 439
		xchg	si, bx
		xchg	di, dx
		cld
		rep movsb
		xchg	si, bx
		xchg	di, dx
		mov	ah, Location
		cmp	ah, Temple_DancingStatue ; Temple - dancing statue
		jz	short loc_B79
		cmp	ah, Temple_FinalScene ;	Temple - final scene
		jnz	short loc_B7F

loc_B79:				; CODE XREF: ChangeLocation+104j
		mov	bx, offset PlayerData
		mov	[bx+CharData_t.CharFlags], 0

loc_B7F:				; CODE XREF: ChangeLocation+109j
		jmp	GoToNewLocation
ChangeLocation	endp


; =============== S U B	R O U T	I N E =======================================


InitFloatingLog	proc near		; CODE XREF: start+53p
					; HandlePlayer+3FCj ...
		mov	ah, _LogLeft
		or	ah, ah
		jz	short loc_B8D
		call	_FloatingLog

loc_B8D:				; CODE XREF: InitFloatingLog+6j
		xor	ah, ah
		mov	_LogLeft, ah
		mov	ah, 5
		mov	_LogRight, ah
		retn
InitFloatingLog	endp


; =============== S U B	R O U T	I N E =======================================


IfOnLog_	proc near		; CODE XREF: ChangeLocation:FetchRightLocationp
		mov	ah, TileUnderPlayer
		cmp	ah, TLog
		jnz	short loc_BA4
		retn
; ---------------------------------------------------------------------------

loc_BA4:				; CODE XREF: IfOnLog_+7j
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		retn
IfOnLog_	endp


; =============== S U B	R O U T	I N E =======================================

; Prevents from	going left when	on log

IfOnLog		proc near		; CODE XREF: ChangeLocation+23p
		mov	ah, TileUnderPlayer
		cmp	ah, TLog	; Floating log
		jz	short loc_BB7
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		retn
; ---------------------------------------------------------------------------

loc_BB7:				; CODE XREF: IfOnLog+7j
		or	ah, ah
		retn
IfOnLog		endp


; =============== S U B	R O U T	I N E =======================================

; Poll keyboard	or load	demo step

HandleInput	proc near		; CODE XREF: MainLoop+5p

; FUNCTION CHUNK AT 0C0C SIZE 00000026 BYTES

		mov	ah, StandbyFlag	; 0 if standby
					; 1 if game/demo
					; FF when standby round	is over
		or	ah, ah
		jz	short Standby

GameOrDemo:
		call	PollKeyboard
		jmp	HandleDemoStep	; Skip if in game
; ---------------------------------------------------------------------------

Standby:				; CODE XREF: HandleInput+6j
		mov	si, offset PlayerData
		mov	ah, [si+CharData_t.Obstacles]
		and	ah, not	(ORodJump)
		or	ah, [si+CharData_t.Positions]
		and	ah, 0Fh
		jz	short DoStandbyAction
		retn
; ---------------------------------------------------------------------------

DoStandbyAction:			; CODE XREF: HandleInput+1Dj
		mov	bx, StandbyActionPointer
		mov	ah, [bx]
		cmp	ah, 0FFh
		jnz	short loc_BF5
		mov	StandbyFlag, ah	; Put 0xFF to it???
		xor	ah, ah
		mov	StandbyModeCounter, ah ; Clear it
		inc	word ptr cs:DemoTimer ;	Increase demo mode timer
		retn
; ---------------------------------------------------------------------------

loc_BF5:				; CODE XREF: HandleInput+29j
		test	ah, 80h
		jz	short loc_C0C
		and	ah, 0Fh
		mov	SelectedWeapon,	ah ; Changes when player press keys '1'...'4'
		push	bx
		call	DrawUsedWeapon
		pop	bx
HandleInput	endp


; =============== S U B	R O U T	I N E =======================================

; Inc BX and StandbyActionPointer

_ToTheNextStep	proc near		; CODE XREF: HandleInput+60p
					; HandleInput:loc_C30j
		inc	bx
		mov	StandbyActionPointer, bx
		retn
_ToTheNextStep	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR HandleInput

loc_C0C:				; CODE XREF: HandleInput+3Ej
		mov	ah, StandbyModeCounter ; Check for zero
		or	ah, ah
		jnz	short loc_C1D
		mov	ah, [bx]
		mov	StandbyModeCounter, ah ; byte at StandbyActionPointer
		call	_ToTheNextStep	; Inc BX and StandbyActionPointer

loc_C1D:				; CODE XREF: HandleInput+58j
		mov	ah, [bx]
		mov	byte ptr KeysPressed, ah
		mov	ah, StandbyModeCounter ; Decrementing
		dec	ah
		mov	StandbyModeCounter, ah ; Decremented
		jz	short loc_C30
		retn
; ---------------------------------------------------------------------------

loc_C30:				; CODE XREF: HandleInput+73j
		jmp	short _ToTheNextStep ; Inc BX and StandbyActionPointer
; END OF FUNCTION CHUNK	FOR HandleInput

; =============== S U B	R O U T	I N E =======================================

; CL = StartFrame
; CH = EndFrame
; DL = Delay
; C is set, if animation didn't reach its end.

PrepNextFrame	proc near		; CODE XREF: HandlePlayer+C4p
					; HandlePlayer+17Ap ...
		inc	ch		; End frame
		mov	ah, [si+CharData_t.Frame]
		cmp	ah, cl		; Start	frame
		jb	short AdjustFrame
		cmp	ah, ch
		jb	short loc_C71

AdjustFrame:				; CODE XREF: PrepNextFrame+7j
		mov	[si+CharData_t.Frame], cl
		xor	ah, ah
		mov	[si+CharData_t.AnimDelay], ah
		retn
PrepNextFrame	endp


; =============== S U B	R O U T	I N E =======================================

; CL = 1st frame
; CH = last frame
; DL = delay?

PrepNextFrameEx	proc near		; CODE XREF: MoveForward+9j
					; MoveBackward+9j ...
		inc	ch		; End frame
		mov	ah, [si+CharData_t.Frame]
		cmp	ah, cl		; Start	frame
		jb	short InitFrameSequence
		cmp	ah, ch
		jb	short loc_C71

InitFrameSequence:			; CODE XREF: PrepNextFrameEx+7j
		mov	ah, cl
		or	ah, ah
		jz	short IfZero
		mov	ah, [si+CharData_t.Frame]
		add	ah, cl
		jmp	short loc_C67
; ---------------------------------------------------------------------------

IfZero:					; CODE XREF: PrepNextFrameEx+11j
		mov	ah, [si+CharData_t.Frame]
		sub	ah, ch

loc_C67:				; CODE XREF: PrepNextFrameEx+18j
		mov	[si+CharData_t.Frame], ah
		mov	[si+CharData_t.AnimDelay], 0
		xor	ah, ah
		retn
; ---------------------------------------------------------------------------

loc_C71:				; CODE XREF: PrepNextFrame+Bj
					; PrepNextFrameEx+Bj
		mov	ah, [si+CharData_t.AnimDelay]
		cmp	ah, dl
		jnb	short loc_C7E
		inc	[si+CharData_t.AnimDelay]
		xor	ah, ah
		retn
; ---------------------------------------------------------------------------

loc_C7E:				; CODE XREF: PrepNextFrameEx+2Ej
		mov	ah, [si+CharData_t.Frame]
		inc	ah
		cmp	ah, ch
		jnb	short loc_C91
		mov	[si+CharData_t.Frame], ah
		xor	ah, ah
		mov	[si+CharData_t.AnimDelay], ah
		stc
		retn
; ---------------------------------------------------------------------------

loc_C91:				; CODE XREF: PrepNextFrameEx+3Dj
		dec	ch
		mov	ah, ch
		mov	[si+CharData_t.Frame], cl
		mov	[si+CharData_t.AnimDelay], 0
		stc
		retn
PrepNextFrameEx	endp


; =============== S U B	R O U T	I N E =======================================

; CH = Row
; CL = Col
; Tile offset =	BX

GetTileAt	proc near		; CODE XREF: CalcTileUnderObject+2Dp
					; UpdateObstacles+6p ...
		mov	bl, ch
		mov	bh, 0		; BX = CH
		add	bx, bx
		add	bx, bx
		add	bx, bx		; BX *=	8
		mov	dh, bh		; DX = BX
		mov	dl, bl		; Narcomaniani?
		add	bx, bx
		add	bx, bx		; BX *=	4
		add	bx, dx		; BX :=	CH * 40
		mov	ch, 0
		add	bx, cx		; BX +=	CL
		mov	dx, offset PrimaryBuffer
		add	bx, dx
		retn
GetTileAt	endp


; =============== S U B	R O U T	I N E =======================================


CheckForBreakAndPause proc near		; CODE XREF: MainLoop+1Dp
		test	byte ptr KeysPressed, 20h ; ScrollLock
		jz	short IfNotInterrupted
		jmp	Reset
; ---------------------------------------------------------------------------

IfNotInterrupted:			; CODE XREF: CheckForBreakAndPause+5j
		call	CheckForEnterKey
		jnz	short Paused	; Check	for Enter key
		retn
; ---------------------------------------------------------------------------

Paused:					; CODE XREF: CheckForBreakAndPause+Dj
					; CheckForBreakAndPause+13j
		call	CheckForEnterKey ; Check for Enter key
		jnz	short Paused	; Check	for Enter key

StillPaused:				; CODE XREF: CheckForBreakAndPause+18j
		call	CheckForEnterKey
		jz	short StillPaused

Unpaused:				; CODE XREF: CheckForBreakAndPause+1Dj
		call	CheckForEnterKey
		jnz	short Unpaused
		retn
CheckForBreakAndPause endp


; =============== S U B	R O U T	I N E =======================================

; Random number	-> AH

_Random		proc near		; CODE XREF: Loc0Script2:loc_A37p
					; Bird2p ...
		or	ah, ah		; Clears CF?
		push	bx
		push	dx
		mov	dx, _RandomNumber
		mov	bh, dl
		mov	bl, 0FDh	; BX = (word_DDCC_L) <<	8 | 0xFD
		mov	ah, dh		; AH = word_DDCC_H
		sbb	bx, dx
		sbb	ah, 0
		sbb	bx, dx
		sbb	ah, 0
		mov	dl, ah
		mov	dh, 0
		sbb	bx, dx
		jnb	short loc_CFD
		inc	bx

loc_CFD:				; CODE XREF: _Random+1Ej
		mov	_RandomNumber, bx
		mov	ah, bl
		pop	dx
		pop	bx
		retn
_Random		endp


; =============== S U B	R O U T	I N E =======================================

; AH = bit mask
; DX = sizeof(record_t)
; BX = result

FindRecord	proc near		; CODE XREF: FireWeapon+Dp
					; InFirstTemple+A4p
Offset = bx
RecSize	= dx
Counter	= ch
		push	cx
		mov	Offset,	0
		mov	Counter, 8

loc_D0C:				; CODE XREF: FindRecord+10j
		rcr	ah, 1
		jnb	short IfZero
		add	Offset,	RecSize

IfZero:					; CODE XREF: FindRecord+8j
		rcl	RecSize, 1
		dec	Counter
		jnz	short loc_D0C
		pop	cx
		retn
FindRecord	endp


; =============== S U B	R O U T	I N E =======================================


_NarcoDelay	proc near		; CODE XREF: _NarcoDelay+5j
		dec	cx
		mov	ah, ch
		or	ah, cl
		jnz	short _NarcoDelay
		retn
_NarcoDelay	endp

; ---------------------------------------------------------------------------
		mov	bh, 0
		add	bx, bx
		add	bx, bx
		add	bx, bx
		add	bx, bx
		retn

; =============== S U B	R O U T	I N E =======================================


DrawFooter	proc near		; CODE XREF: DrawFooter+16j
					; DrawFooter+27j ...
		mov	ah, [bx]
		cmp	ah, 0FFh
		jnz	short loc_D35	; If AH==0
		retn
; ---------------------------------------------------------------------------

loc_D35:				; CODE XREF: DrawFooter+5j
		or	ah, ah		; If AH==0
		jz	short loc_D45	; then don't draw it
		push	bx
		mov	al, ah		; Compose N of tile
		mov	ah, 0
		call	DrawFooterTile
		pop	bx
		inc	bx
		jmp	short DrawFooter
; ---------------------------------------------------------------------------

loc_D45:				; CODE XREF: DrawFooter+Aj
		inc	bx
		mov	ah, [bx]
		inc	bx
		mov	byte ptr TileDest+1, ah	; [Addr+1]
		mov	ah, [bx]
		mov	byte ptr TileDest, ah ;	[Addr+2]
		inc	bx
		jmp	short DrawFooter
DrawFooter	endp


; =============== S U B	R O U T	I N E =======================================


DrawFooterTile	proc near		; CODE XREF: DrawFooter+11p
		mov	cx, TileDest
		call	Draw8x8Footer	; AX = sprite No. (8x8)
					; CX = destination
		mov	cx, TileDest	; Increase dest	position
		inc	cl		; But remain in	the screen
		mov	ah, 27h		; margins
		cmp	ah, cl
		jnb	short loc_D76
		mov	cl, 0
		inc	ch
		mov	ah, 18h
		cmp	ah, ch
		jnb	short loc_D76
		mov	cx, 0

loc_D76:				; CODE XREF: DrawFooterTile+11j
					; DrawFooterTile+1Bj
		mov	TileDest, cx
		retn
DrawFooterTile	endp


; =============== S U B	R O U T	I N E =======================================


_RealToAlt	proc near		; CODE XREF: ChangeLocation+DAp
					; RestorePlayerCoords+1Ej
		push	si
		pop	bx
		mov	cx, 3
		add	bx, cx
		push	bx
		pop	dx		; DX = _GameData+3
		mov	cx, 8
		add	bx, cx
		xchg	si, bx		; SI = _GameData+11
		xchg	di, dx		; DI = _GameData+3
		cld
		rep movsb
		xchg	si, bx
		xchg	di, dx
		retn
_RealToAlt	endp


; =============== S U B	R O U T	I N E =======================================


_AltToReal	proc near		; CODE XREF: InitCharAnim+1Bj
					; Bird1+54j ...
		push	si
		pop	bx
		add	bx, CharData_t.AltX
		push	bx
		pop	dx		; DX = SI+3
		mov	cx, 8
		add	bx, cx		; BX = SI+0Bh
		xchg	dx, bx
		xchg	si, bx
		xchg	di, dx
		cld
		rep movsb
		xchg	si, bx
		xchg	di, dx
		retn
_AltToReal	endp


; =============== S U B	R O U T	I N E =======================================

; SI = CharData
; DI = LocationItem+1

LoadChrData	proc near		; CODE XREF: Loc0Script2+30p
					; InFirstTemple+99p ...
		call	ClearSingleCharData ; SI = @Character Data
		mov	ah, [di-1]	; LocationItem_t.CharFlags
		mov	[si+CharData_t.AltJumpPower], ah
		mov	ah, [di]	; LocationItem_t.Animation
		mov	[si+CharData_t.AltAnimation], ah
		mov	cl, ah
		mov	ah, [di+1]	; LocationItem_t.Frame
		mov	[si+CharData_t.AltFrame], ah
		mov	ah, [di+2]	; LoationItem_t.X
		mov	byte ptr [si+CharData_t.AltX], ah
		mov	ah, [di+3]
		mov	byte ptr [si+(CharData_t.AltX+1)], ah
		mov	ah, [di+4]
		mov	byte ptr [si+CharData_t.AltY], ah
		mov	ah, [di+5]
		mov	byte ptr [si+(CharData_t.AltY+1)], ah
		mov	ah, [di+6]
		mov	byte ptr [si+CharData_t.CustomDataset],	ah ; Lower byte
		add	ah, 7
		mov	byte ptr [si+CharData_t.field_20], ah ;	_TargetSquare, low byte
		mov	ah, [di+7]
		mov	byte ptr [si+(CharData_t.CustomDataset+1)], ah ; Upper byte
		adc	ah, 0
		mov	byte ptr [si+(CharData_t.field_20+1)], ah
		mov	ah, [si+8]
		jmp	short loc_E12
LoadChrData	endp


; =============== S U B	R O U T	I N E =======================================

; CH = AltAnimation
; CL = AltFrame
; DX = AltX
; BX = AltY
; AH = HorizontalSpeed

InitCharAnim	proc near		; CODE XREF: HandlePlayer+1ABp
					; ServeFireKey+A1p ...
		call	ClearSingleCharData ; SI = @Character Data
		mov	[si+CharData_t.AltAnimation], ch
		mov	[si+CharData_t.AltFrame], cl
		mov	byte ptr [si+CharData_t.AltX], dl
		mov	byte ptr [si+(CharData_t.AltX+1)], dh
		mov	byte ptr [si+CharData_t.AltY], bl
		mov	byte ptr [si+(CharData_t.AltY+1)], bh
		mov	[si+CharData_t.HorizontalSpeed], ah

loc_E12:				; CODE XREF: LoadChrData+49j
		call	UpdateFrameData	; Loads	AnimWidth, AnimHeight, FrameAddr.
					; Clears XOffset, YOffset.
					; SI = ptr[CharData]
		jmp	_AltToReal
InitCharAnim	endp


; =============== S U B	R O U T	I N E =======================================

; SI = @Character Data

ClearSingleCharData proc near		; CODE XREF: LoadChrDatap
					; InitCharAnimp
		push	si
		push	di
		push	cx
		push	si
		mov	byte ptr [si], 0
		pop	di		; DI = PlayerData
		inc	di
		mov	cx, 38
		cld
		rep movsb
		pop	cx
		pop	di
		pop	si
		or	byte ptr [si], CFActive
		or	byte ptr [si], CFRodJumping
		retn
ClearSingleCharData endp


; =============== S U B	R O U T	I N E =======================================

; SI = CharData
; CF is	set if no room

AddCharacter	proc near		; CODE XREF: HandlePlayer+199p
					; Loc0Script2:BirdRevealsp ...
Ptr = si
Increment = dx
		mov	Ptr, offset FirstEnemyData
		mov	Increment, size	CharData_t
		mov	ch, 7

loc_E39:				; CODE XREF: AddCharacter+11j
		test	[Ptr+CharData_t.CharFlags], CFActive
		jz	short loc_E46
		add	Ptr, Increment
		dec	ch
		jnz	short loc_E39
		stc
		retn
; ---------------------------------------------------------------------------

loc_E46:				; CODE XREF: AddCharacter+Bj
		push	di
		push	bx
		mov	ah, 100
		call	AddNewChar	; Inserts new char into	location
					; according to given order
					; CL = order
					; SI points to CharData
		pop	bx
		pop	di
		or	ah, ah
		retn
AddCharacter	endp


; =============== S U B	R O U T	I N E =======================================


ReflectFromTop	proc near		; CODE XREF: Bird1+18p
		test	[si+CharData_t.Positions], PTopEdge
		jz	short loc_E59
		retn
; ---------------------------------------------------------------------------

loc_E59:				; CODE XREF: ReflectFromTop+4j
		mov	[si+CharData_t.VerticalSpeed], 0C0h
		retn
ReflectFromTop	endp


; =============== S U B	R O U T	I N E =======================================


ReflectFromBottom proc near		; CODE XREF: Bird1+21p
		test	[si+CharData_t.Obstacles], OAtBottom
		jz	short loc_E65
		retn
; ---------------------------------------------------------------------------

loc_E65:				; CODE XREF: ReflectFromBottom+4j
		mov	[si+CharData_t.VerticalSpeed], 40h
		retn
ReflectFromBottom endp


; =============== S U B	R O U T	I N E =======================================


MoveForward	proc near		; CODE XREF: Bird1+2Ap
		mov	[si+CharData_t.HorizontalSpeed], 40h
		push	cx
		call	DoCharMotion	; AltX += HSpeed
					; AltY += VSpeed
		pop	cx
		jmp	PrepNextFrameEx	; CL = 1st frame
MoveForward	endp			; CH = last frame
					; DL = delay?

; =============== S U B	R O U T	I N E =======================================


MoveBackward	proc near		; CODE XREF: Bird1+33p
		mov	[si+CharData_t.HorizontalSpeed], 0C0h
		push	cx
		call	DoCharMotion	; AltX += HSpeed
					; AltY += VSpeed
		pop	cx
		jmp	PrepNextFrameEx	; CL = 1st frame
MoveBackward	endp			; CH = last frame
					; DL = delay?

; =============== S U B	R O U T	I N E =======================================


AdjustCoordsWhenLocChanged proc	near	; CODE XREF: ChangeLocation+DDp
					; sub_13C5+C3j	...
		mov	ah, EscapeFromPitFlag
		cmp	ah, 0FFh
		jz	short Escape	; Do escape from pit
		push	di
		push	cx
		mov	di, offset InitialCoords
		mov	ch, 4
		mov	si, offset PlayerData
		push	si

StoreNewCoords:				; CODE XREF: AdjustCoordsWhenLocChanged+1Dj
		mov	ah, byte ptr [si+CharData_t.X] ; Coordinates?
		mov	[di], ah
		inc	di
		inc	si
		dec	ch
		jnz	short StoreNewCoords ; Coordinates?
		pop	si
		mov	ah, [si+CharData_t.HorizontalSpeed]
		mov	[di], ah
		pop	cx
		pop	di
		retn
; ---------------------------------------------------------------------------

Escape:					; CODE XREF: AdjustCoordsWhenLocChanged+7j
		mov	bx, offset _StoredCoords ; from
		mov	dx, offset InitialCoords ; to
		mov	cx, 5
		xchg	si, bx
		xchg	di, dx
		cld
		rep movsb
		xchg	si, bx
		xchg	di, dx
		mov	ah, [bx]
		mov	Location, ah
		xor	ah, ah
		mov	EscapeFromPitFlag, ah ;	Clear it
		jmp	short RestorePlayerCoords
AdjustCoordsWhenLocChanged endp


; =============== S U B	R O U T	I N E =======================================

; Initial location -> AH

FallDown	proc near		; CODE XREF: PitFall:loc_1864p
		mov	bx, offset InitialCoords
		mov	dx, offset _StoredCoords
		mov	cx, 5
		xchg	si, bx
		xchg	di, dx
		cld
		rep movsb
		xchg	si, bx
		xchg	di, dx
		mov	ah, Location
		xchg	dx, bx
		mov	[bx], ah
		xchg	dx, bx
		retn
FallDown	endp


; =============== S U B	R O U T	I N E =======================================


RestorePlayerCoords proc near		; CODE XREF: HandlePlayer+3EFp
					; AdjustCoordsWhenLocChanged+48j
		mov	si, offset PlayerData
		mov	bx, offset InitialCoords
		mov	ch, 4

loc_EF3:				; CODE XREF: RestorePlayerCoords+11j
		mov	ah, [bx]
		mov	byte ptr [si+CharData_t.X], ah
		inc	bx
		inc	si
		dec	ch
		jnz	short loc_EF3
		mov	si, offset PlayerData
		mov	ah, [bx]
		mov	[si+CharData_t.HorizontalSpeed], ah
		or	[si+CharData_t.CharFlags], CFRodJumping
		jmp	_RealToAlt
RestorePlayerCoords endp


; =============== S U B	R O U T	I N E =======================================


CalcVDIstance	proc near		; CODE XREF: sub_13C5:loc_13F9p
					; TurnToPlayerVp ...
		mov	ah, byte ptr PlayerData.Y+1
		sub	ah, byte ptr [si+(CharData_t.Y+1)]
		jb	short loc_F16
		retn
; ---------------------------------------------------------------------------

loc_F16:				; CODE XREF: CalcVDIstance+7j
		neg	ah
		retn
CalcVDIstance	endp


; =============== S U B	R O U T	I N E =======================================


CalcHDistance	proc near		; CODE XREF: sub_13C5+28p
					; PlantScript+2Bp ...
		mov	ah, byte ptr PlayerData.X+1
		sub	ah, byte ptr [si+(CharData_t.X+1)]
		jb	short loc_F23
		retn
; ---------------------------------------------------------------------------

loc_F23:				; CODE XREF: CalcHDistance+7j
		neg	ah
		retn
CalcHDistance	endp


; =============== S U B	R O U T	I N E =======================================


TryToKillPlayer	proc near		; CODE XREF: BoomerangScript+34p
					; ExplodeScript+4p ...

; FUNCTION CHUNK AT 0F43 SIZE 0000001D BYTES

Player = di
		or	ah, ah
		mov	Player,	offset PlayerData
		test	[Player+CharData_t.CharFlags], CFActive
		jnz	short loc_F31
		retn
; ---------------------------------------------------------------------------

loc_F31:				; CODE XREF: TryToKillPlayer+8j
		mov	ah, [Player+CharData_t.Positions]
		and	ah, PAtSwamp or	PJustKilled
		jz	short loc_F3A
		retn
; ---------------------------------------------------------------------------

loc_F3A:				; CODE XREF: TryToKillPlayer+11j
		jmp	short loc_F43
TryToKillPlayer	endp


; =============== S U B	R O U T	I N E =======================================


sub_F3C		proc near		; CODE XREF: TryToKillPlayer+28j
					; TryToKillPlayer+30p
		mov	ch, 16h
		mov	cl, 10h

Loc06Script0:
		jmp	CheckForCollision
sub_F3C		endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR TryToKillPlayer

loc_F43:				; CODE XREF: TryToKillPlayer:loc_F3Aj
		mov	ah, [Player+CharData_t.Frame]
		cmp	ah, 4		; Duck right
		jz	short PlayerDoesntDucks
		cmp	ah, 15h		; Duck left
		jnz	short sub_F3C

PlayerDoesntDucks:			; CODE XREF: TryToKillPlayer+23j
		inc	byte ptr [Player+(CharData_t.Y+1)]
		inc	byte ptr [Player+(CharData_t.Y+1)]
		call	sub_F3C
		dec	byte ptr [Player+(CharData_t.Y+1)]
		dec	byte ptr [Player+(CharData_t.Y+1)]
		retn
; END OF FUNCTION CHUNK	FOR TryToKillPlayer

; =============== S U B	R O U T	I N E =======================================


ByBoomerang	proc near		; CODE XREF: SwitchScript+Bp
					; CheckIfKicked+Bp
		mov	di, offset BoomerangData
		or	ah, ah
		test	[di+CharData_t.CharFlags], CFActive
		jnz	short loc_F6B
		retn
; ---------------------------------------------------------------------------

loc_F6B:				; CODE XREF: ByBoomerang+8j
		mov	ch, 8
		mov	cl, 8
		jmp	short CheckForCollision
ByBoomerang	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR CheckIfKicked

ByBomb:					; CODE XREF: CheckIfKicked+27j
		mov	di, offset BombData
		or	ah, ah
		test	byte ptr [di], CFActive
		jnz	short loc_F7C
		retn
; ---------------------------------------------------------------------------

loc_F7C:				; CODE XREF: CheckIfKicked-FC4j
		mov	ah, [di+CharData_t.Animation]
		cmp	ah, AExplode
		jz	short loc_F94
		mov	ch, 7
		mov	cl, 6
		jmp	short CheckForCollision
; END OF FUNCTION CHUNK	FOR CheckIfKicked
; ---------------------------------------------------------------------------
		jb	short loc_F8D
		retn
; ---------------------------------------------------------------------------

loc_F8D:				; CODE XREF: CODE:0F8Aj
		mov	byte ptr [di+0Fh], 6
		or	ah, ah
		retn
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR CheckIfKicked

loc_F94:				; CODE XREF: CheckIfKicked-FBBj
		mov	ch, 14h
		mov	cl, 14h
		jmp	short CheckForCollision
; END OF FUNCTION CHUNK	FOR CheckIfKicked

; =============== S U B	R O U T	I N E =======================================


ByKnife		proc near		; CODE XREF: CheckIfKicked+19p
		mov	di, offset KnifeData
		or	ah, ah
		test	byte ptr [di], CFActive
		jnz	short loc_FA5
		retn
; ---------------------------------------------------------------------------

loc_FA5:				; CODE XREF: ByKnife+8j
		mov	ch, 3
		mov	cl, 8
		jmp	short $+2

CheckForCollision:			; CODE XREF: sub_F3C:Loc06Script0j
					; ByBoomerang+Fj ...
		push	dx
		push	bx
		mov	bx, [si+CharData_t.X]
		rcl	bx, 1
		mov	ah, bh		; AH = Char.ICol*2
		rcl	bx, 1
		add	ah, bh		; AH = Char.ICol*6
		pop	bx
		mov	bh, ah
		add	ah, bl
		mov	bl, ah
		mov	dx, [di+CharData_t.X]
		rcl	dx, 1
		mov	ah, dh		; AH = Player.ICol*2
		rcl	dx, 1
		add	ah, dh		; AH = Player.ICol*6
		mov	dh, ah
		add	ah, cl
		mov	dl, ah		; DL = Player.ICol*6+CL
		call	GetLower2	; ah=dl<bh?dl:bl
					; cmc
		pop	dx
		jb	short loc_FD7
		retn
; ---------------------------------------------------------------------------

loc_FD7:				; CODE XREF: ByKnife+3Aj
		mov	bh, byte ptr [si+(CharData_t.Y+1)]
		mov	bl, byte ptr [si+CharData_t.Y]
		add	bx, bx
		add	bx, bx
		add	bx, bx		; BX *=	8
		mov	ah, bh		; AH = Char.IRow*8
		add	ah, dl
		mov	bl, ah
		push	bx
		mov	bh, byte ptr [di+(CharData_t.Y+1)]
		mov	bl, byte ptr [di+CharData_t.Y]
		add	bx, bx
		add	bx, bx
		add	bx, bx		; BX *=	8
		mov	dh, bh
		mov	ah, bh
		add	ah, ch
		mov	dl, ah
		pop	bx
		jmp	GetLower2	; ah=dl<bh?dl:bl
ByKnife		endp			; cmc


; =============== S U B	R O U T	I N E =======================================


Bird2		proc near		; CODE XREF: Bird1+Fp
		call	_Random		; Random number	-> AH
		and	ah, 1Fh
		or	ah, 1
		mov	dh, 8
		test	ah, 10h
		jnz	short loc_1014
		mov	dh, 4

loc_1014:				; CODE XREF: Bird2+Ej
		mov	[si+CharData_t.Scratchpad], dh
		mov	byte ptr [si+CharData_t.field_20], ah
		retn
Bird2		endp


; =============== S U B	R O U T	I N E =======================================


Bird1		proc near		; CODE XREF: BirdScript:loc_13BAp
		mov	bx, offset GameFlags ; test 7th
		test	byte ptr [bx], GFSuspended
		jnz	short loc_102D
		mov	ah, byte ptr [si+CharData_t.field_20]
		or	ah, ah
		jnz	short loc_102D
		call	Bird2

loc_102D:				; CODE XREF: Bird1+6j Bird1+Dj
		test	[si+CharData_t.Scratchpad], 1
		jz	short loc_1036
		call	ReflectFromTop

loc_1036:				; CODE XREF: Bird1+16j
		test	[si+CharData_t.Scratchpad], 2
		jz	short loc_103F
		call	ReflectFromBottom

loc_103F:				; CODE XREF: Bird1+1Fj
		test	[si+CharData_t.Scratchpad], 8
		jz	short loc_1048
		call	MoveForward

loc_1048:				; CODE XREF: Bird1+28j
		test	[si+CharData_t.Scratchpad], 4
		jz	short loc_1051
		call	MoveBackward

loc_1051:				; CODE XREF: Bird1+31j
		jnb	short loc_1056
		dec	byte ptr [si+CharData_t.field_20]

loc_1056:				; CODE XREF: Bird1:loc_1051j
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		test	[si+CharData_t.Obstacles], OAtBottom
		jnz	short Loc7Script0
		retn
; ---------------------------------------------------------------------------

Loc7Script0:				; CODE XREF: Bird1+42j
		test	[si+CharData_t.Scratchpad], 1
		jz	short loc_1067
		retn
; ---------------------------------------------------------------------------

loc_1067:				; CODE XREF: Bird1+49j
		and	[si+CharData_t.Scratchpad], 0FDh
		or	[si+CharData_t.Scratchpad], 1
		jmp	_AltToReal
Bird1		endp


; =============== S U B	R O U T	I N E =======================================

; AH = char's animation
; If success
;   DI = pointer to data struct
;   CF = 0
; else
;   CF = 1

FindCharByAnimation proc near		; CODE XREF: HandlePlayer+1DFp
					; Loc0Script2+2p ...
		push	cx
		push	dx
		mov	ch, 12		; Counter
		mov	dx, size CharData_t ; Step
		mov	di, offset PlayerData

loc_107C:				; CODE XREF: FindCharByAnimation+18j
		test	[di+CharData_t.CharFlags], CFActive
		jz	short loc_1086	; Check	every 40th byte	???
		cmp	ah, [di+CharData_t.Animation]
		jz	short loc_1090

loc_1086:				; CODE XREF: FindCharByAnimation+Dj
		add	di, dx		; Check	every 40th byte	???
		dec	ch
		jnz	short loc_107C
		stc
		pop	dx
		pop	cx
		retn
; ---------------------------------------------------------------------------

loc_1090:				; CODE XREF: FindCharByAnimation+12j
		pop	dx
		pop	cx
		or	ah, ah
		retn
FindCharByAnimation endp


; =============== S U B	R O U T	I N E =======================================


sub_1095	proc near		; CODE XREF: sub_2183-12p
		push	cx
		push	dx
		mov	ch, 12
		mov	dx, size CharData_t
		mov	di, offset PlayerData

loc_109F:				; CODE XREF: sub_1095+18j
		test	[di+CharData_t.CharFlags], CFActive
		jz	short loc_10A9
		cmp	ah, [di+CharData_t.JumpPower]
		jz	short loc_10B3

loc_10A9:				; CODE XREF: sub_1095+Dj
		add	di, dx
		dec	ch
		jnz	short loc_109F
		stc
		pop	dx
		pop	cx
		retn
; ---------------------------------------------------------------------------

loc_10B3:				; CODE XREF: sub_1095+12j
		pop	dx
		pop	cx
		or	ah, ah
		retn
sub_1095	endp


; =============== S U B	R O U T	I N E =======================================


_Death		proc near		; CODE XREF: ExplodeScript+Aj
					; DecreaseFoodNWater+4Cj ...
		push	si
		mov	si, offset PlayerData
		or	[si+CharData_t.Positions], PJustKilled
		mov	[si+CharData_t.Obstacles], 0
		call	HandlePlayer_RemovePole
		mov	bx, offset GameFlags ; Set 3rd
		or	byte ptr [bx], GFPlayerIsDead
		pop	si
		retn
_Death		endp


; =============== S U B	R O U T	I N E =======================================


sub_10CF	proc near		; CODE XREF: HandlePlayer+157p
		push	si
		mov	si, offset PlayerData
		or	[si+CharData_t.Positions], PAtSwamp
		mov	[si+CharData_t.Obstacles], 0
		call	HandlePlayer_RemovePole
		pop	si
		retn
sub_10CF	endp


; =============== S U B	R O U T	I N E =======================================


DecreaseFoodNWaterS proc near		; CODE XREF: sub_2140+5p sub_21DD+8p
		push	si
		mov	si, offset PlayerData
		mov	[si+CharData_t.Scratchpad], 0Fh
		mov	[si+CharData_t.Obstacles], 0
		call	HandlePlayer_RemovePole
		pop	si
		mov	bx, offset GameFlags ; set 4th
		or	byte ptr [bx], GFCoconuted
		mov	ah, WaterLevel
		or	ah, ah
		jz	short loc_1104
		dec	ah
		mov	WaterLevel, ah

loc_1104:				; CODE XREF: DecreaseFoodNWaterS+1Cj
		mov	ah, FoodLevel
		cmp	ah, 2
		jnb	short loc_110E
		retn
; ---------------------------------------------------------------------------

loc_110E:				; CODE XREF: DecreaseFoodNWaterS+2Bj
		sub	ah, 2
		mov	FoodLevel, ah
		retn
DecreaseFoodNWaterS endp


; =============== S U B	R O U T	I N E =======================================

; Just executes	scripts	of active characters

RunChrScripts	proc near		; CODE XREF: MainLoop+14p
		mov	bx, offset CharCount
		mov	ah, [bx]
		mov	CharCounter, ah
		inc	bx
		mov	CharTablePointer, bx

loc_1124:				; CODE XREF: RunChrScripts+47j
		mov	si, CharTablePointer
		mov	dx, [si]
		mov	si, 0
		add	si, dx
		test	[si+CharData_t.CharFlags], CFActive
		jz	short loc_1149
		mov	ah, [si+CharData_t.Animation]
		shl	ah, 1
		push	di
		mov	di, offset ScriptTable
		mov	dl, ah
		mov	dh, 0
		add	di, dx
		mov	bx, [di]
		pop	di
		call	CallScript2	; jmp BX

loc_1149:				; CODE XREF: RunChrScripts+1Cj
		mov	bx, CharTablePointer
		inc	bx
		inc	bx
		mov	CharTablePointer, bx
		mov	ah, CharCounter
		dec	ah
		mov	CharCounter, ah
		jnz	short loc_1124
		retn
RunChrScripts	endp


; =============== S U B	R O U T	I N E =======================================

; jmp BX

CallScript2	proc near		; CODE XREF: RunChrScripts+30p
		jmp	bx
CallScript2	endp


; =============== S U B	R O U T	I N E =======================================


BoomerangScript	proc near		; DATA XREF: CODE:8136o
		call	sub_1D61
		mov	ah, byte ptr [si+(CharData_t.X+1)]
		cmp	ah, 40
		jnb	short loc_1178
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		mov	ah, [si+CharData_t.Positions]
		and	ah, PLeftEdge or PRightEdge or PBottomEdge or PTopEdge
		jz	short loc_1184

loc_1178:				; CODE XREF: BoomerangScript+9j
					; BoomerangScript+37j ...
		or	[si+CharData_t.CharFlags], CFRemoved
		mov	bx, offset Weapon ; 7 6	5 4 3 2	1 0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		and	byte ptr [bx], not (Boomerang)
		jmp	_AltToReal
; ---------------------------------------------------------------------------

loc_1184:				; CODE XREF: BoomerangScript+14j
		mov	ah, _BoomerangState
		cmp	ah, 1
		jz	short loc_119B
		cmp	ah, 84h
		jz	short loc_119B
		mov	bl, 6
		mov	dl, 8
		call	TryToKillPlayer
		jb	short loc_1178

loc_119B:				; CODE XREF: BoomerangScript+29j
					; BoomerangScript+2Ej
		mov	cx, 300h
		mov	dl, 0
		call	PrepNextFrameEx	; CL = 1st frame
					; CH = last frame
					; DL = delay?
		mov	bx, offset Weapon ; 7 6	5 4 3 2	1 0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		test	byte ptr [bx], Boomerang
		jnz	short loc_1178
		retn
BoomerangScript	endp


; =============== S U B	R O U T	I N E =======================================


KnifeScript	proc near		; DATA XREF: CODE:8138o
		call	Inc_SI_14
		call	sub_1E41
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		mov	ah, byte ptr [si+(CharData_t.X+1)]
		cmp	ah, 38
		jb	short loc_11C1

loc_11BD:				; CODE XREF: KnifeScript+1Ej
		or	[si+CharData_t.CharFlags], CFRemoved
		retn
; ---------------------------------------------------------------------------

loc_11C1:				; CODE XREF: KnifeScript+Fj
		mov	ah, [si+CharData_t.Obstacles]
		or	ah, [si+CharData_t.Positions]
		test	ah, PBottomEdge
		jnz	short loc_11BD
		retn
KnifeScript	endp


; =============== S U B	R O U T	I N E =======================================


BombScript	proc near		; DATA XREF: CODE:813Ao
		test	[si+CharData_t.VerticalSpeed], 80h
		jnz	short loc_11D7
		mov	ah, 7Fh
		jmp	short loc_11DD
; ---------------------------------------------------------------------------

loc_11D7:				; CODE XREF: BombScript+4j
		mov	ah, [si+CharData_t.VerticalSpeed]
		add	ah, 3

loc_11DD:				; CODE XREF: BombScript+8j
		mov	[si+CharData_t.VerticalSpeed], ah
		call	ShiftHorizontally
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		mov	ah, [si+CharData_t.Positions]
		and	ah, PLeftEdge or PRightEdge or PBottomEdge or PTopEdge
		jnz	short loc_11FF
		test	[si+CharData_t.Obstacles], OAtBottom
		jnz	short loc_11F5
		retn
; ---------------------------------------------------------------------------

loc_11F5:				; CODE XREF: BombScript+25j
		mov	[si+CharData_t.Animation], 6
		mov	bx, offset _Sound1
		jmp	PlaySound
; ---------------------------------------------------------------------------

loc_11FF:				; CODE XREF: BombScript+1Fj
		or	[si+CharData_t.CharFlags], CFRemoved
		jmp	_AltToReal
BombScript	endp


; =============== S U B	R O U T	I N E =======================================


ExplodeScript	proc near		; DATA XREF: CODE:8140o
		mov	bl, 10h
		mov	dl, 16h
		call	TryToKillPlayer
		jnb	short loc_1212
		pop	bx
		jmp	_Death
; ---------------------------------------------------------------------------

loc_1212:				; CODE XREF: ExplodeScript+7j
		mov	cx, 300h
		mov	dl, 3
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		jb	short loc_121D
		retn
; ---------------------------------------------------------------------------

loc_121D:				; CODE XREF: ExplodeScript+15j
		or	ah, ah
		jnz	short loc_1222
		retn
; ---------------------------------------------------------------------------

loc_1222:				; CODE XREF: ExplodeScript+1Aj
		or	[si+CharData_t.CharFlags], CFRemoved
		retn
ExplodeScript	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR HandlePlayer

HandlePlayer_DoPoleJump:		; CODE XREF: HandlePlayer+6Fj
		mov	si, offset PoleData
		mov	Spare3,	si
		test	[si+CharData_t.CharFlags], CFRodJumping
		jz	short loc_1235
		call	PrepareRodJump	; SI points to Pole data

loc_1235:				; CODE XREF: HandlePlayer+FACj
		test	[si+CharData_t.Obstacles], OAtJump
		jnz	short loc_1262
		mov	ah, byte ptr KeysPressed
		test	ah, Key_Fire
		jz	short loc_125C
		call	IncreaseForce
		mov	si, offset PlayerData
		mov	bx, offset _RightMotion.FirstFrame
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_1256
		mov	bx, offset _LeftMotion.FirstFrame

loc_1256:				; CODE XREF: HandlePlayer+FCDj
		mov	ah, [bx]
		mov	[si+CharData_t.Frame], ah
		retn
; ---------------------------------------------------------------------------

loc_125C:				; CODE XREF: HandlePlayer+FBEj
		or	[si+CharData_t.Obstacles], OAtJump
		jmp	short $+2
; ---------------------------------------------------------------------------

loc_1262:				; CODE XREF: HandlePlayer+FB5j
					; HandlePlayer+FDCj
		mov	cx, 600h
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_126E
		mov	cx, 0D07h

loc_126E:				; CODE XREF: HandlePlayer+FE5j
		mov	dl, 1
		call	PrepNextFrameEx	; CL = 1st frame
					; CH = last frame
					; DL = delay?
		jb	short loc_1276
		retn
; ---------------------------------------------------------------------------

loc_1276:				; CODE XREF: HandlePlayer+FEFj
		or	ah, ah
		jz	short loc_127D
		jmp	loc_12F8
; ---------------------------------------------------------------------------

loc_127D:				; CODE XREF: HandlePlayer+FF4j
		mov	ah, [si+CharData_t.Frame]
		cmp	ah, 1
		jz	short loc_128A
		cmp	ah, 8
		jnz	short loc_129E

loc_128A:				; CODE XREF: HandlePlayer+FFFj
		mov	si, offset PlayerData
		mov	bx, offset RightUpJump.FirstFrame
		cmp	ah, 1
		jz	short loc_1298
		mov	bx, offset LeftUpJump.FirstFrame

loc_1298:				; CODE XREF: HandlePlayer+100Fj
		mov	cl, [bx]
		mov	[si+CharData_t.Frame], cl
		retn
; ---------------------------------------------------------------------------

loc_129E:				; CODE XREF: HandlePlayer+1004j
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		call	LoadCharPosition ; SI points to	Char data
					; Fractional row-> BX
					; Fractional col-> DX
					; Dir -> ZF
					; (NZ -	left, Z	- right)
		mov	di, PolePtr
		jnz	short loc_12B8
		mov	ah, [si+CharData_t.Positions]
		and	ah, PLeftEdge or PRightEdge or PTopEdge
		jnz	short loc_12B8
		mov	ah, [di]
		add	ah, dh
		mov	dh, ah

loc_12B8:				; CODE XREF: HandlePlayer+1024j
					; HandlePlayer+102Cj
		dec	bh
		call	UpdateCharPos	; DX = new fractional col
					; BX = new fractional row
		mov	si, offset PlayerData
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jnz	short loc_12D6
		mov	ah, [si+CharData_t.Positions]
		or	ah, [si+CharData_t.Obstacles]
		and	ah, PRightEdge or PTopEdge
		jz	short loc_12D4
		jmp	CancelJump
; ---------------------------------------------------------------------------

loc_12D4:				; CODE XREF: HandlePlayer+104Bj
		jmp	short loc_12E4
; ---------------------------------------------------------------------------

loc_12D6:				; CODE XREF: HandlePlayer+1040j
		mov	ah, [si+CharData_t.Positions]
		or	ah, [si+CharData_t.Obstacles]
		and	ah, PLeftEdge or PTopEdge
		jz	short loc_12E4
		jmp	CancelJump
; ---------------------------------------------------------------------------

loc_12E4:				; CODE XREF: HandlePlayer:loc_12D4j
					; HandlePlayer+105Bj
		call	LoadCharPosition ; SI points to	Char data
					; Fractional row-> BX
					; Fractional col-> DX
					; Dir -> ZF
					; (NZ -	left, Z	- right)
		mov	ah, [di]
		add	ah, dh
		mov	dh, ah
		dec	bh
		call	UpdateCharPos	; DX = new fractional col
					; BX = new fractional row
		inc	di
		mov	PolePtr, di
		retn
; ---------------------------------------------------------------------------

loc_12F8:				; CODE XREF: HandlePlayer+FF6j
		mov	si, offset PlayerData
		mov	ah, byte ptr Force
		shl	ah, 1
		mov	[si+CharData_t.VerticalSpeed], ah
		neg	[si+CharData_t.VerticalSpeed]
		sub	ah, 0Ch
		or	ah, 1
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_1315
		neg	ah

loc_1315:				; CODE XREF: HandlePlayer+108Dj
		mov	[si+CharData_t.HorizontalSpeed], ah
		or	[si+CharData_t.Obstacles], OCanExit
		jmp	short CancelJump
; END OF FUNCTION CHUNK	FOR HandlePlayer

; =============== S U B	R O U T	I N E =======================================

; SI points to Pole data

PrepareRodJump	proc near		; CODE XREF: HandlePlayer+FAEp
		mov	ch, 6
		mov	ah, [si+CharData_t.Frame]
		or	ah, ah
		jz	short loc_1329
		mov	ch, 0

loc_1329:				; CODE XREF: PrepareRodJump+7j
		call	LoadCharPosition ; SI points to	Char data
					; Fractional row-> BX
					; Fractional col-> DX
					; Dir -> ZF
					; (NZ -	left, Z	- right)
		mov	ah, ch
		add	ah, dh
		cmp	ah, 39
		jnb	short CancelJump
		mov	cl, ah
		mov	ch, bh
		mov	Spare1,	bx	; Pole.Y
		mov	Spare2,	cx
		mov	cl, dh
		call	GetTileAt	; CH = Row
					; CL = Col
					; Tile offset =	BX
		mov	ch, 6

loc_1348:				; CODE XREF: PrepareRodJump+34j
		mov	ah, [bx]
		cmp	ah, 0B9h
		jnb	short CancelJump
		inc	bx
		dec	ch
		jnz	short loc_1348
		mov	bx, Spare1
		mov	cx, Spare2
		mov	dx, 140h
		add	bx, dx
		mov	ch, bh
		call	GetTileAt	; CH = Row
					; CL = Col
					; Tile offset =	BX
		mov	ah, [bx]
		cmp	ah, 0A2h
		jb	short CancelJump
		retn
; ---------------------------------------------------------------------------

CancelJump:				; CODE XREF: HandlePlayer+104Dj
					; HandlePlayer+105Dj ...
		mov	si, offset PlayerData
		and	[si+CharData_t.Obstacles], not (ORodJump)
		mov	si, Spare3
		or	[si+CharData_t.CharFlags], CFRemoved
		xor	ah, ah
		mov	byte ptr Force,	ah
		retn
PrepareRodJump	endp


; =============== S U B	R O U T	I N E =======================================


BonusScoreScript proc near		; DATA XREF: CODE:813Eo

; FUNCTION CHUNK AT 241E SIZE 0000002E BYTES
; FUNCTION CHUNK AT 24BD SIZE 0000000C BYTES

		mov	cx, StartEndFrames
		mov	dl, 0Ah
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		jb	short loc_138F
		retn
; ---------------------------------------------------------------------------

loc_138F:				; CODE XREF: BonusScoreScript+9j
		mov	dl, ah
		shl	dl, 1
		mov	dh, 0
		mov	bx, 8053h
		add	bx, dx
		mov	dx, [bx]
		mov	bx, Score
		add	bx, dx
		mov	Score, bx
		or	byte ptr [si], 10h
		jmp	loc_24BD
BonusScoreScript endp


; =============== S U B	R O U T	I N E =======================================


BirdScript	proc near		; DATA XREF: CODE:8142o
		mov	dl, 3
		mov	cx, 300h
		test	[si+CharData_t.Scratchpad], 8
		jnz	short loc_13BA
		mov	cx, 704h

loc_13BA:				; CODE XREF: BirdScript+9j
		call	Bird1
		mov	ah, [si+CharData_t.Positions]
		and	ah, not	(PAtSwamp or PJustKilled or PAtWater or	PVerticalJump)
		jz	short loc_13D7
BirdScript	endp


; =============== S U B	R O U T	I N E =======================================


sub_13C5	proc near

; FUNCTION CHUNK AT 1653 SIZE 0000001A BYTES

		mov	bx, offset GameFlags ; test 7th
		test	byte ptr [bx], GFSuspended
		jz	short loc_13D0
		jmp	loc_146C
; ---------------------------------------------------------------------------

loc_13D0:				; CODE XREF: sub_13C5+6j
		or	[si+CharData_t.CharFlags], CFRemoved
		and	byte ptr [bx], not (GFReadyToFly)
		retn
; ---------------------------------------------------------------------------

loc_13D7:				; CODE XREF: BirdScript+17j
		mov	bx, offset GameFlags ; test 7th
		test	byte ptr [bx], GFSuspended
		jnz	short loc_1436
		call	_Random		; Random number	-> AH
		and	ah, 1Fh
		or	ah, 1
		cmp	ah, 0Fh
		jnz	short loc_1407
		call	CalcHDistance
		mov	byte ptr [si+CharData_t.field_20], ah
		mov	dl, 8
		jnb	short loc_13F9
		mov	dl, 4

loc_13F9:				; CODE XREF: sub_13C5+30j
		call	CalcVDIstance
		mov	ah, 2
		jnb	short loc_1402

Loc0BScript0:				; DATA XREF: CODE:SpareLocationItemo
		mov	ah, 1

loc_1402:				; CODE XREF: sub_13C5+39j
		or	ah, dl
		mov	[si+CharData_t.Scratchpad], ah

loc_1407:				; CODE XREF: sub_13C5+26j
		mov	bl, 10h
		mov	dl, 10h
		call	loc_1F40
		jb	short loc_1466
		mov	bl, 10h
		mov	dl, 10h
		call	TryToKillPlayer
		jb	short loc_141A
		retn
; ---------------------------------------------------------------------------

loc_141A:				; CODE XREF: sub_13C5+52j
		mov	bx, offset GameFlags ; test 5th
		test	byte ptr [bx], GFEatenByPlant
		jz	short loc_1423
		retn
; ---------------------------------------------------------------------------

loc_1423:				; CODE XREF: sub_13C5+5Bj
		or	byte ptr [bx], 80h
		call	LoadPlayerPosition_Preserve_SI ; X -> DX
					; Y -> BX
					; Dir -> ZF (set if right)
		dec	bh
		dec	bh
		call	UpdateCharPos	; DX = new fractional col
					; BX = new fractional row
		mov	ah, 9
		mov	[si+CharData_t.Scratchpad], ah

locret_1435:				; DATA XREF: CODE:ScriptTableo
					; CODE:813Co ...
		retn
; ---------------------------------------------------------------------------

loc_1436:				; CODE XREF: sub_13C5+18j
		and	byte ptr [bx], not (GFEatenByPlant)
		call	LoadCharPosition ; SI points to	Char data
					; Fractional row-> BX
					; Fractional col-> DX
					; Dir -> ZF
					; (NZ -	left, Z	- right)
		inc	bh
		inc	bh
		push	si
		mov	si, offset PlayerData
		call	UpdateCharPos	; DX = new fractional col
					; BX = new fractional row
		mov	bx, offset RightUpJump.LastFrame
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short loc_1453
		mov	bx, offset LeftUpJump.LastFrame

loc_1453:				; CODE XREF: sub_13C5+89j
		mov	ah, [bx]
		mov	[si+CharData_t.Frame], ah ; Adjust animation
		pop	si
		mov	ah, Location
		cmp	ah, 39h		; Bird's nest
		jnz	short locret_1465
		jmp	Nest
; ---------------------------------------------------------------------------

locret_1465:				; CODE XREF: sub_13C5+9Bj
		retn
; ---------------------------------------------------------------------------

loc_1466:				; CODE XREF: sub_13C5+49j
		mov	ch, 1
		mov	cl, 1
		jmp	short ShowEnemyDeath
; ---------------------------------------------------------------------------

loc_146C:				; CODE XREF: sub_13C5+8j
		call	PreparePlaceholders
		call	InitFloatingLog
		mov	si, offset PlayerData
		mov	[si+CharData_t.CharFlags], 0
		mov	ah, 39h
		mov	Location, ah
		mov	bx, offset GameFlags ; clears 4th
		and	byte ptr [bx], not (GFCoconuted)
		pop	bx
		call	loc_B54
		jmp	AdjustCoordsWhenLocChanged
sub_13C5	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR KillIfKicked

ShowEnemyDeath:				; CODE XREF: sub_13C5+A5j
					; KillIfKicked+Bj ...
		mov	StartEndFrames,	cx
		mov	[si+CharData_t.Animation], ABonusScore
		mov	dl, 0Ah
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		mov	bx, offset Snd_Extermination
		jmp	PlaySound
; END OF FUNCTION CHUNK	FOR KillIfKicked

; =============== S U B	R O U T	I N E =======================================


BubbleScript	proc near		; DATA XREF: CODE:8144o
		mov	cl, 0
		mov	ch, 3
		mov	dl, 4
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		call	LoadPlayerPosition_Preserve_SI ; X -> DX
					; Y -> BX
					; Dir -> ZF (set if right)
		inc	dh
		jmp	UpdateCharPos	; DX = new fractional col
BubbleScript	endp			; BX = new fractional row


; =============== S U B	R O U T	I N E =======================================


DecreaseFoodNWater proc	near		; CODE XREF: MainLoop+8p
		mov	ah, GameOverFlag
		or	ah, ah
		jz	short loc_14B8
		retn
; ---------------------------------------------------------------------------

loc_14B8:				; CODE XREF: DecreaseFoodNWater+6j
		call	Check_2S_Flag	; FZ set, if flag was set
		jnz	short loc_14BE
		retn
; ---------------------------------------------------------------------------

loc_14BE:				; CODE XREF: DecreaseFoodNWater+Cj
		mov	ah, FWDecPrescaler
		inc	ah
		mov	FWDecPrescaler,	ah
		cmp	ah, 3
		jz	short loc_14CE
		retn
; ---------------------------------------------------------------------------

loc_14CE:				; CODE XREF: DecreaseFoodNWater+1Cj
		xor	ah, ah
		mov	FWDecPrescaler,	ah ; dec if not	zero
		mov	ah, FoodLevel
		or	ah, ah
		jz	short loc_14E2
		dec	ah
		mov	FoodLevel, ah

loc_14E2:				; CODE XREF: DecreaseFoodNWater+2Bj
		mov	ah, WaterLevel
		or	ah, ah
		jz	short loc_14F0
		dec	ah
		mov	WaterLevel, ah

loc_14F0:				; CODE XREF: DecreaseFoodNWater+39j
		call	DrawFood
		mov	ah, FoodLevel
		or	ah, ah
		jnz	short loc_14FE
		jmp	_Death
; ---------------------------------------------------------------------------

loc_14FE:				; CODE XREF: DecreaseFoodNWater+4Aj
		call	DrawWater
		mov	ah, WaterLevel
		or	ah, ah
		jnz	short locret_150C
		jmp	_Death
; ---------------------------------------------------------------------------

locret_150C:				; CODE XREF: DecreaseFoodNWater+58j
		retn
DecreaseFoodNWater endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR Loc0Script1

loc_150D:				; CODE XREF: Loc0Script1+8j
		mov	cx, _FloatingLogPos
		mov	ah, cl
		cmp	ah, 28h
		jb	short loc_1527
		add	ah, 0Ah
		cmp	ah, 28h
		jb	short loc_1527
		xor	ah, ah
		mov	_LogLeft, ah
		retn
; ---------------------------------------------------------------------------

loc_1527:				; CODE XREF: Loc0Script1+C3Cj
					; Loc0Script1+C44j
		mov	ah, _LogRight
		inc	ah
		mov	_LogRight, ah
		cmp	ah, 6
		jz	short loc_1537
		retn
; ---------------------------------------------------------------------------

loc_1537:				; CODE XREF: Loc0Script1+C5Aj
		xor	ah, ah
		mov	_LogRight, ah
		mov	cx, _FloatingLogPos
		test	cl, 80h
		jnz	short loc_1573
		inc	ch
		call	GetTileAt	; CH = Row
					; CL = Col
					; Tile offset =	BX
		mov	ah, [bx]
		or	ah, ah
		jnz	short loc_156A
		mov	ah, 3
		mov	_LogLeft, ah
		call	_FloatingLog
		mov	cx, _FloatingLogPos
		inc	ch
		mov	_FloatingLogPos, cx
		call	_AnimateLog
		jmp	loc_161A
; ---------------------------------------------------------------------------

loc_156A:				; CODE XREF: Loc0Script1+C75j
		mov	ah, _LogLeft
		cmp	ah, 2
		jz	short loc_15A4

loc_1573:				; CODE XREF: Loc0Script1+C6Aj
		mov	cx, _FloatingLogPos
		mov	ah, 0Ah
		add	ah, cl
		cmp	ah, 28h
		jnb	short loc_158B
		mov	cl, ah
		call	GetTileAt	; CH = Row
					; CL = Col
					; Tile offset =	BX
		mov	ah, [bx]
		or	ah, ah
		jnz	short loc_15A4

loc_158B:				; CODE XREF: Loc0Script1+CA4j
		mov	ah, 1
		mov	_LogLeft, ah
		call	_FloatingLog
		mov	cx, _FloatingLogPos
		inc	cl
		mov	_FloatingLogPos, cx
		call	_AnimateLog
		jmp	loc_161A
; ---------------------------------------------------------------------------

loc_15A4:				; CODE XREF: Loc0Script1+C97j
					; Loc0Script1+CAFj
		mov	cx, _FloatingLogPos
		dec	cl
		call	GetTileAt	; CH = Row
					; CL = Col
					; Tile offset =	BX
		mov	ah, [bx]
		or	ah, ah
		jnz	short loc_15CB
		mov	ah, 2
		mov	_LogLeft, ah
		call	_FloatingLog
		mov	cx, _FloatingLogPos
		dec	cl
		mov	_FloatingLogPos, cx
		call	_AnimateLog
		jmp	short loc_161A
; ---------------------------------------------------------------------------

loc_15CB:				; CODE XREF: Loc0Script1+CD7j
		mov	ah, 3
		mov	_LogLeft, ah
		retn
; END OF FUNCTION CHUNK	FOR Loc0Script1

; =============== S U B	R O U T	I N E =======================================


_FloatingLog	proc near		; CODE XREF: InitFloatingLog+8p
					; Loc0Script1+C7Dp ...
		mov	cx, _FloatingLogPos
		mov	ah, 0Ah

loc_15D8:				; CODE XREF: _FloatingLog+1Fj
		push	ax
		push	cx
		mov	ah, cl
		cmp	ah, 40
		jnb	short loc_15EB
		xor	ah, ah
		call	PutTileAt	; CH = row
					; CL = col
					; AH = tile No.
		xor	ah, ah
		call	DrawFloatingLog	; AH = Tile No.
					; BH = screen row
					; BL = 8-pixel col

loc_15EB:				; CODE XREF: _FloatingLog+Dj
		pop	cx
		inc	cl
		pop	ax
		dec	ah
		jnz	short loc_15D8
		retn
_FloatingLog	endp


; =============== S U B	R O U T	I N E =======================================


_AnimateLog	proc near		; CODE XREF: Loc0Script1+C8Ap
					; Loc0Script1+CC4p ...
		mov	di, offset off_809A
		mov	cx, _FloatingLogPos

loc_15FB:				; CODE XREF: _AnimateLog+24j
		mov	ah, [di]
		or	ah, ah
		jnz	short loc_1602
		retn
; ---------------------------------------------------------------------------

loc_1602:				; CODE XREF: _AnimateLog+Bj
		push	cx
		mov	ah, cl
		cmp	ah, 28h
		jnb	short loc_1614
		mov	ah, [di]
		call	PutTileAt	; CH = row
					; CL = col
					; AH = tile No.

loc_160F:
		mov	ah, [di]
		call	DrawFloatingLog	; AH = Tile No.
					; BH = screen row
					; BL = 8-pixel col

loc_1614:				; CODE XREF: _AnimateLog+14j
		inc	di
		pop	cx
		inc	cl
		jmp	short loc_15FB
_AnimateLog	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR Loc0Script1

loc_161A:				; CODE XREF: Loc0Script1+C8Dj
					; Loc0Script1+CC7j ...
		mov	ah, TileUnderPlayer
		cmp	ah, 0D9h
		jz	short loc_1624
		retn
; ---------------------------------------------------------------------------

loc_1624:				; CODE XREF: Loc0Script1+D47j
		mov	si, 0DE46h
		mov	di, 0DEE6h
		mov	ah, _LogLeft
		cmp	ah, 1
		jnz	short loc_163A
		inc	byte ptr [si+0Ch]
		inc	byte ptr [di+0Ch]
		retn
; ---------------------------------------------------------------------------

loc_163A:				; CODE XREF: Loc0Script1+D57j
		cmp	ah, 2
		jnz	short loc_1646
		dec	byte ptr [si+0Ch]
		dec	byte ptr [di+0Ch]
		retn
; ---------------------------------------------------------------------------

loc_1646:				; CODE XREF: Loc0Script1+D63j
		cmp	ah, 3
		jz	short loc_164C
		retn
; ---------------------------------------------------------------------------

loc_164C:				; CODE XREF: Loc0Script1+D6Fj
		inc	byte ptr [si+0Eh]
		inc	byte ptr [di+0Eh]
		retn
; END OF FUNCTION CHUNK	FOR Loc0Script1
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_13C5

Nest:					; CODE XREF: sub_13C5+9Dj
		mov	[si+CharData_t.Scratchpad], 8
		mov	ah, byte ptr [si+(CharData_t.X+1)]
		cmp	ah, 1Ch
		jnb	short loc_1660
		retn
; ---------------------------------------------------------------------------

loc_1660:				; CODE XREF: sub_13C5+298j
		or	[si+CharData_t.CharFlags], CFRemoved
		mov	bx, offset GameFlags ; clear 7th and 1st
		and	byte ptr [bx], not (GFSuspended)
		and	byte ptr [bx], not (GFReadyToFly)
		retn
; END OF FUNCTION CHUNK	FOR sub_13C5

; =============== S U B	R O U T	I N E =======================================


PlantScript	proc near		; DATA XREF: CODE:8146o
		test	[si+CharData_t.Obstacles], OAtTop
		jnz	short loc_16C1
		mov	bl, 0Fh
		mov	dl, 16h
		call	TryToKillPlayer
		jnb	short loc_168F
		mov	bx, offset GameFlags ; set 5th
		or	byte ptr [bx], GFEatenByPlant
		mov	[si+CharData_t.Scratchpad], 4Bh
		mov	[si+CharData_t.Obstacles], 0FFh
		push	si
		call	HandlePlayer_RemovePole
		pop	si

loc_168F:				; CODE XREF: PlantScript+Dj
		test	[si+CharData_t.Positions], OCanExit
		jnz	short loc_16B0
		mov	cx, 100h
		call	CalcHDistance
		jnb	short loc_16A0
		mov	cx, 403h

loc_16A0:				; CODE XREF: PlantScript+2Ej
		or	ah, ah
		jnz	short loc_16AA
		or	[si+CharData_t.Positions], PAtSwamp
		jmp	short loc_16B0
; ---------------------------------------------------------------------------

loc_16AA:				; CODE XREF: PlantScript+35j
					; PlantScript+7Aj
		mov	dl, 7
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		retn
; ---------------------------------------------------------------------------

loc_16B0:				; CODE XREF: PlantScript+26j
					; PlantScript+3Bj
		mov	ch, 2
		mov	cl, 2
		mov	dl, 28h
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		jb	short loc_16BC
		retn
; ---------------------------------------------------------------------------

loc_16BC:				; CODE XREF: PlantScript+4Cj
		and	[si+CharData_t.Positions], not (PAtSwamp)
		retn
; ---------------------------------------------------------------------------

loc_16C1:				; CODE XREF: PlantScript+4j
		call	LoadCharPosition ; SI points to	Char data
					; Fractional row-> BX
					; Fractional col-> DX
					; Dir -> ZF
					; (NZ -	left, Z	- right)
		mov	ah, 2
		mov	cx, 100h
		cmp	ah, [si+CharData_t.Frame]
		jnb	short loc_16D3
		mov	ah, 0FEh
		mov	cx, 403h

loc_16D3:				; CODE XREF: PlantScript+5Fj
		push	si
		add	dh, ah
		mov	si, offset PlayerData
		neg	ah
		mov	[si+CharData_t.HorizontalSpeed], ah
		call	UpdateCharPos	; DX = new fractional col
					; BX = new fractional row
		pop	si
		dec	[si+CharData_t.Scratchpad]
		jz	short loc_16E9
		jmp	short loc_16AA
; ---------------------------------------------------------------------------

loc_16E9:				; CODE XREF: PlantScript+78j
		mov	[si+CharData_t.Obstacles], 0
		pop	bx
		jmp	DecrementLives
PlantScript	endp


; =============== S U B	R O U T	I N E =======================================


SwitchScript	proc near		; DATA XREF: CODE:8148o
		test	[si+CharData_t.Positions], PTopEdge
		jz	short loc_16F8
		retn
; ---------------------------------------------------------------------------

loc_16F8:				; CODE XREF: SwitchScript+4j
		mov	bl, 0Ah
		mov	dl, 0Fh
		call	ByBoomerang

loc_16FF:
		jb	short loc_1702
		retn
; ---------------------------------------------------------------------------

loc_1702:				; CODE XREF: SwitchScript:loc_16FFj
		or	[si+CharData_t.Positions], PTopEdge
		inc	[si+CharData_t.Frame]
		mov	bx, offset Snd_PickUp
		call	PlaySound
		mov	bl, byte ptr [si+CharData_t.CustomDataset]
		mov	bh, [si+CharData_t.CustomDataset+1]
		jmp	bx
SwitchScript	endp


; =============== S U B	R O U T	I N E =======================================


WagonScript	proc near		; DATA XREF: CODE:8164o
		inc	byte ptr [si+0Eh]
		mov	bl, 12h
		mov	dl, 10h
		call	TryToKillPlayer
		dec	byte ptr [si+0Eh]
		jnb	short loc_172A
		pop	bx
		jmp	_Death
; ---------------------------------------------------------------------------

loc_172A:				; CODE XREF: WagonScript+Dj
		mov	cl, 0
		mov	ch, 1
		mov	dl, 0
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		jb	short loc_1736
		retn
; ---------------------------------------------------------------------------

loc_1736:				; CODE XREF: WagonScript+1Cj
		call	sub_1E41
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		mov	ah, [si+24h]
		and	ah, 0F0h
		jnz	short loc_1745
		retn
; ---------------------------------------------------------------------------

loc_1745:				; CODE XREF: WagonScript+2Bj
		or	byte ptr [si], 10h
		jmp	_AltToReal
WagonScript	endp


; =============== S U B	R O U T	I N E =======================================


MineGasScrpit	proc near		; DATA XREF: CODE:8166o CODE:8176o
		call	sub_2295
		jnz	short loc_1751
		retn
; ---------------------------------------------------------------------------

loc_1751:				; CODE XREF: MineGasScrpit+3j
		or	byte ptr [si], 10h
		jmp	_AltToReal
MineGasScrpit	endp


; =============== S U B	R O U T	I N E =======================================


VertArrow1Script proc near		; DATA XREF: CODE:8178o
		mov	bl, 6
		mov	dl, 10h
		call	TryToKillPlayer
		jnb	short loc_1774
		pop	bx
		call	_Death

loc_1764:				; CODE XREF: VertArrow1Script+29j
		or	byte ptr [si], 10h
		mov	ah, byte_DDAF
		dec	ah
		mov	byte_DDAF, ah
		jmp	_AltToReal
; ---------------------------------------------------------------------------

loc_1774:				; CODE XREF: VertArrow1Script+7j
		inc	byte ptr [si+0Eh]
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		mov	ah, [si+11h]
		test	ah, 40h
		jnz	short loc_1764
		retn
VertArrow1Script endp


; =============== S U B	R O U T	I N E =======================================


VertArrow2Script proc near		; DATA XREF: CODE:817Ao
		mov	cl, 0
		mov	ch, 1
		mov	dl, 8
		jmp	PrepNextFrameEx	; CL = 1st frame
VertArrow2Script endp			; CH = last frame
					; DL = delay?

; =============== S U B	R O U T	I N E =======================================


StarflashScript	proc near		; DATA XREF: CODE:8182o
		mov	bl, 9
		mov	dl, 0Ch
		call	TryToKillPlayer
		jnb	short loc_1799
		pop	bx
		jmp	_Death
; ---------------------------------------------------------------------------

loc_1799:				; CODE XREF: StarflashScript+7j
		test	byte ptr [si+2], 80h
		jnz	short loc_17BC
		mov	dl, 0FFh
		test	byte ptr [si+13h], 80h
		jnz	short loc_17A9
		mov	dl, 1

loc_17A9:				; CODE XREF: StarflashScript+19j
		mov	ah, [si+0Ch]
		add	ah, dl
		mov	[si+0Ch], ah
		cmp	ah, 13h
		jnz	short loc_17BF
		or	byte ptr [si+2], 80h
		jmp	short loc_17BF
; ---------------------------------------------------------------------------

loc_17BC:				; CODE XREF: StarflashScript+11j
		inc	byte ptr [si+0Eh]

loc_17BF:				; CODE XREF: StarflashScript+28j
					; StarflashScript+2Ej
		mov	cx, 100h
		mov	dl, 0
		call	PrepNextFrameEx	; CL = 1st frame
					; CH = last frame
					; DL = delay?
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		mov	ah, [si+24h]
		and	ah, 0F0h
		jnz	short loc_17D3
		retn
; ---------------------------------------------------------------------------

loc_17D3:				; CODE XREF: StarflashScript+44j
		mov	bx, offset byte_DDB4
		dec	byte ptr [bx]
		or	byte ptr [si], 10h
		retn
StarflashScript	endp


; =============== S U B	R O U T	I N E =======================================


BulletScript	proc near		; DATA XREF: CODE:8190o
		test	[si+CharData_t.Scratchpad], 80h
		jnz	short loc_17FA
		mov	dl, 2
		mov	cl, 0
		mov	ch, 3
		call	PrepNextFrame	; CL = StartFrame
					; CH = EndFrame
					; DL = Delay
					; C is set, if animation didn't reach its end.
		jb	short loc_17EE
		retn
; ---------------------------------------------------------------------------

loc_17EE:				; CODE XREF: BulletScript+Fj
		or	ah, ah
		jnz	short loc_17F3
		retn
; ---------------------------------------------------------------------------

loc_17F3:				; CODE XREF: BulletScript+14j
		mov	[si+10h], ah
		or	byte ptr [si+2], 80h

loc_17FA:				; CODE XREF: BulletScript+4j
		mov	bl, 3
		mov	dl, 3
		call	TryToKillPlayer
		jnb	short loc_1807
		pop	bx
		jmp	_Death
; ---------------------------------------------------------------------------

loc_1807:				; CODE XREF: BulletScript+25j
		call	ShiftHorizontally
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		mov	ah, [si+24h]
		and	ah, 0B0h
		jnz	short loc_1816
		retn
; ---------------------------------------------------------------------------

loc_1816:				; CODE XREF: BulletScript+37j
		or	byte ptr [si], 10h
		retn
BulletScript	endp


; =============== S U B	R O U T	I N E =======================================


GemScript	proc near		; DATA XREF: CODE:819Ao
		test	[si+CharData_t.Positions], PTopEdge
		jz	short loc_1829
		mov	byte ptr [si+CharData_t.Y], 0
		mov	byte ptr [si+CharData_t.X], 0
		retn
; ---------------------------------------------------------------------------

loc_1829:				; CODE XREF: GemScript+4j
		mov	ah, byte ptr [si+(CharData_t.Y+1)]
		or	ah, ah
		mov	cl, 0
		jz	short loc_1834
		mov	cl, 0C0h

loc_1834:				; CODE XREF: GemScript+16j
		mov	[si+CharData_t.VerticalSpeed], cl
		mov	ah, byte ptr [si+(CharData_t.X+1)]
		cmp	ah, [si+CharData_t.Scratchpad]
		mov	ch, 0
		jz	short loc_1843
		mov	ch, 60h

loc_1843:				; CODE XREF: GemScript+25j
		mov	[si+CharData_t.HorizontalSpeed], ch
		mov	ah, cl
		or	ah, ch
		jz	short loc_184F
		jmp	ShiftHorizontally
; ---------------------------------------------------------------------------

loc_184F:				; CODE XREF: GemScript+30j
		or	[si+CharData_t.Positions], PTopEdge
		retn
GemScript	endp


; =============== S U B	R O U T	I N E =======================================


PitFall		proc near		; DATA XREF: CODE:82E8o CODE:830Do ...
		mov	ah, TileUnderPlayer
		cmp	ah, 0CAh	; CAh-CBh-CCh are pit tiles
		jnb	short loc_185E
		retn
; ---------------------------------------------------------------------------

loc_185E:				; CODE XREF: PitFall+7j
		cmp	ah, 0CDh
		jb	short loc_1864
		retn
; ---------------------------------------------------------------------------

loc_1864:				; CODE XREF: PitFall+Dj
		call	FallDown	; Initial location -> AH
		call	_Random		; Select proper	pit
		mov	dl, 37h
		test	ah, 1
		jz	short Teleport
		mov	dl, 3Ah

Teleport:				; CODE XREF: PitFall+1Bj
					; Loc2BScript0+12j ...
		mov	ah, dl
		mov	Location, ah
		call	PrepareToGame
		call	AdjustCoordsWhenLocChanged
		retn
PitFall		endp


; =============== S U B	R O U T	I N E =======================================


Loc2BScript0	proc near		; DATA XREF: CODE:885Do
		mov	ah, TileUnderPlayer
		cmp	ah, 0F5h
		jnb	short loc_188A
		retn
; ---------------------------------------------------------------------------

loc_188A:				; CODE XREF: Loc2BScript0+7j
		cmp	ah, 0F8h
		jb	short loc_1890
		retn
; ---------------------------------------------------------------------------

loc_1890:				; CODE XREF: Loc2BScript0+Dj
		mov	dl, 2Ch
		jmp	short Teleport
Loc2BScript0	endp


; =============== S U B	R O U T	I N E =======================================


FallToHopelessWell proc	near		; DATA XREF: CODE:894Eo
		mov	ah, TileUnderPlayer
		cmp	ah, 0F5h	; Left well edge
		jnb	short loc_189E
		retn
; ---------------------------------------------------------------------------

loc_189E:				; CODE XREF: FallToHopelessWell+7j
		cmp	ah, 0F8h
		jb	short loc_18A4
		retn
; ---------------------------------------------------------------------------

loc_18A4:				; CODE XREF: FallToHopelessWell+Dj
		mov	dl, 35h
		jmp	short Teleport
FallToHopelessWell endp


; =============== S U B	R O U T	I N E =======================================


DeathOnCandle	proc near		; DATA XREF: CODE:88A3o CODE:88E7o ...
		mov	ah, TileUnderPlayer
		cmp	ah, 0F9h
		jnb	short loc_18B2
		retn
; ---------------------------------------------------------------------------

loc_18B2:				; CODE XREF: DeathOnCandle+7j
		cmp	ah, 0FBh
		jnb	short locret_18BA
		jmp	_Death
; ---------------------------------------------------------------------------

locret_18BA:				; CODE XREF: DeathOnCandle+Dj
		retn
DeathOnCandle	endp


; =============== S U B	R O U T	I N E =======================================


Loc23Script0	proc near		; DATA XREF: CODE:872Co
		mov	ah, TileUnderPlayer
		cmp	ah, 8Bh
		jnb	short loc_18C5
		retn
; ---------------------------------------------------------------------------

loc_18C5:				; CODE XREF: Loc23Script0+7j
		cmp	ah, 8Eh
		jnb	short locret_18CD
		jmp	_Death
; ---------------------------------------------------------------------------

locret_18CD:				; CODE XREF: Loc23Script0+Dj
		retn
Loc23Script0	endp


; =============== S U B	R O U T	I N E =======================================


VertArrows0	proc near		; DATA XREF: CODE:867Eo
		mov	di, offset byte_80A4
		jmp	short loc_18E0
; ---------------------------------------------------------------------------

VertArrows1:				; DATA XREF: CODE:8698o
		mov	di, offset byte_80AB
		jmp	short loc_18E0
; ---------------------------------------------------------------------------

VertArrows2:				; DATA XREF: CODE:86B2o
		mov	di, offset byte_80B2
		jmp	short loc_18E0
; ---------------------------------------------------------------------------

VertArrows3:				; DATA XREF: CODE:86CCo
		mov	di, offset byte_80B9

loc_18E0:				; CODE XREF: VertArrows0+3j
					; VertArrows0+8j ...
		mov	ah, byte_DDAF
		cmp	ah, 3
		jb	short loc_18EA
		retn
; ---------------------------------------------------------------------------

loc_18EA:				; CODE XREF: VertArrows0+19j
		mov	ah, TileUnderPlayer
		cmp	ah, 0C0h	; Red brick(L)
		jnb	short loc_18F4	; Red brick(R)
		retn
; ---------------------------------------------------------------------------

loc_18F4:				; CODE XREF: VertArrows0+23j
		cmp	ah, 0C2h	; Red brick(R)
		jb	short loc_18FA
		retn
; ---------------------------------------------------------------------------

loc_18FA:				; CODE XREF: VertArrows0+29j
		mov	ah, 1
		mov	byte ptr Spare3, ah
		mov	ah, 22h
		mov	byte ptr Spare3+1, ah ;	2201h
		mov	si, offset PlayerData
		mov	ah, byte ptr [si+(CharData_t.X+1)]
		sub	ah, 6
		jnb	short loc_1913
		xor	ah, ah

loc_1913:				; CODE XREF: VertArrows0+41j
					; VertArrows0+4Ej
		inc	di
		test	byte ptr [di], 80h
		jz	short loc_191A
		retn
; ---------------------------------------------------------------------------

loc_191A:				; CODE XREF: VertArrows0+49j
		cmp	ah, [di]
		jnb	short loc_1913

loc_191E:				; CODE XREF: VertArrows0+8Cj
		test	byte ptr [di], 80h
		jz	short loc_1924
		retn
; ---------------------------------------------------------------------------

loc_1924:				; CODE XREF: VertArrows0+53j
		mov	ah, byte_DDAF
		cmp	ah, 3
		jnz	short loc_192E
		retn
; ---------------------------------------------------------------------------

loc_192E:				; CODE XREF: VertArrows0+5Dj
		call	AddCharacter	; SI = CharData
					; CF is	set if no room
		jnb	short loc_1934
		retn
; ---------------------------------------------------------------------------

loc_1934:				; CODE XREF: VertArrows0+63j
		mov	ah, byte_DDAF
		inc	ah
		mov	byte_DDAF, ah
		mov	ah, byte ptr Spare3
		mov	bh, ah
		mov	ah, [di]
		mov	dh, ah
		mov	ah, byte ptr Spare3+1
		mov	ch, ah
		xor	ah, ah
		mov	bl, ah
		mov	dl, ah
		mov	cl, ah
		inc	di
		call	InitCharAnim	; CH = AltAnimation
					; CL = AltFrame
					; DX = AltX
					; BX = AltY
					; AH = HorizontalSpeed
		jmp	short loc_191E
VertArrows0	endp


; =============== S U B	R O U T	I N E =======================================


Loc0DScript1	proc near		; DATA XREF: CODE:8417o CODE:8435o ...
		mov	ah, 18h
		call	FindCharByAnimation ; AH = char's animation
					; If success
					;   DI = pointer to data struct
					;   CF = 0
					; else
					;   CF = 1
		jb	short loc_1964
		retn
; ---------------------------------------------------------------------------

loc_1964:				; CODE XREF: Loc0DScript1+5j
		call	_Random		; Random number	-> AH
		cmp	ah, 0FBh
		jnb	short loc_196D
		retn
; ---------------------------------------------------------------------------

loc_196D:				; CODE XREF: Loc0DScript1+Ej
		mov	si, offset PlayerData
		mov	dh, 0
		mov	dl, 60h
		mov	ah, byte ptr [si+(CharData_t.X+1)]
		cmp	ah, 14h
		jnb	short loc_1980
		mov	dh, 24h
		mov	dl, 0A0h

loc_1980:				; CODE XREF: Loc0DScript1+1Ej
		mov	Spare3,	dx
		call	AddCharacter	; SI = CharData
					; CF is	set if no room
		jnb	short loc_198A
		retn
; ---------------------------------------------------------------------------

loc_198A:				; CODE XREF: Loc0DScript1+2Bj
		xor	ah, ah
		mov	[si+25h], ah
		mov	dx, Spare3
		mov	bh, 10h
		mov	bl, 40h
		mov	ah, dl
		mov	ch, AWagon
		mov	cl, bl
		mov	dl, bl
		jmp	InitCharAnim	; CH = AltAnimation
Loc0DScript1	endp			; CL = AltFrame
					; DX = AltX
					; BX = AltY
					; AH = HorizontalSpeed

; =============== S U B	R O U T	I N E =======================================


Loc0EScript0	proc near		; DATA XREF: CODE:83F2o CODE:8419o ...

; FUNCTION CHUNK AT 2127 SIZE 00000019 BYTES

		mov	ah, AMineGas
		call	FindCharByAnimation ; AH = char's animation
					; If success
					;   DI = pointer to data struct
					;   CF = 0
					; else
					;   CF = 1
		jb	short GasFound
		retn
; ---------------------------------------------------------------------------

GasFound:				; CODE XREF: Loc0EScript0+5j
		call	GetTileAtRandomPlace ; Tile -> AH
		or	ah, ah
		jnz	short loc_19B2
		retn
; ---------------------------------------------------------------------------

loc_19B2:				; CODE XREF: Loc0EScript0+Dj
		call	_Random		; Random number	-> AH
		or	ah, ah
		jz	short loc_19BA
		retn
; ---------------------------------------------------------------------------

loc_19BA:				; CODE XREF: Loc0EScript0+15j
		mov	ah, 25
		mov	byte ptr Spare0, ah
		call	sub_19F0
		mov	di, offset MineGasDataSet.CDS_FrameRF
		jmp	loc_2127
Loc0EScript0	endp


; =============== S U B	R O U T	I N E =======================================


Loc25Script1	proc near		; DATA XREF: CODE:8778o CODE:87A8o ...
		mov	ah, 21h
		call	FindCharByAnimation ; AH = char's animation
					; If success
					;   DI = pointer to data struct
					;   CF = 0
					; else
					;   CF = 1
		jb	short loc_19D1
		retn
; ---------------------------------------------------------------------------

loc_19D1:				; CODE XREF: Loc25Script1+5j
		call	GetTileAtRandomPlace ; Tile -> AH
		or	ah, ah
		jz	short loc_19D9
		retn
; ---------------------------------------------------------------------------

loc_19D9:				; CODE XREF: Loc25Script1+Dj
		call	_Random		; Random number	-> AH
		or	ah, ah
		jz	short loc_19E1
		retn
; ---------------------------------------------------------------------------

loc_19E1:				; CODE XREF: Loc25Script1+15j
		mov	ah, 21h
		mov	byte ptr Spare0, ah
		call	sub_19F0
		mov	di, 8B36h
		jmp	loc_2127
Loc25Script1	endp


; =============== S U B	R O U T	I N E =======================================


sub_19F0	proc near		; CODE XREF: Loc0EScript0+1Ep
					; Loc25Script1+1Ep ...
		mov	Spare3,	cx
		call	AddCharacter	; SI = CharData
					; CF is	set if no room
		jnb	short loc_19FA
		retn
; ---------------------------------------------------------------------------

loc_19FA:				; CODE XREF: sub_19F0+7j
		mov	bx, Spare3
		mov	dh, bl

Loc0AScrpit1:
		mov	ah, byte ptr Spare0
		mov	ch, ah
		xor	ah, ah
		mov	cl, ah
		mov	bl, ah
		mov	dl, ah
		call	InitCharAnim	; CH = AltAnimation
					; CL = AltFrame
					; DX = AltX
					; BX = AltY
					; AH = HorizontalSpeed
		call	TurnToPlayerH
		jmp	TurnToPlayerV
sub_19F0	endp


; =============== S U B	R O U T	I N E =======================================


sub_1A17	proc near		; CODE XREF: Loc23Script1p
		call	_Random		; Random number	-> AH
		cmp	ah, 19h
		jb	short sub_1A20
		retn
sub_1A17	endp


; =============== S U B	R O U T	I N E =======================================


sub_1A20	proc near		; CODE XREF: sub_1A17+6j
					; Loc23Script1+1Cp
		mov	ah, byte_DDB4
		cmp	ah, 4
		retn
sub_1A20	endp


; =============== S U B	R O U T	I N E =======================================


Loc23Script1	proc near		; DATA XREF: CODE:872Ao
		call	sub_1A17
		jb	short loc_1A2E
		retn
; ---------------------------------------------------------------------------

loc_1A2E:				; CODE XREF: Loc23Script1+3j
		mov	ch, 1
		mov	cl, 0
		mov	ah, 27h
		mov	byte ptr Spare0, ah
		call	sub_19F0
		mov	byte ptr [si+13h], 7Fh
		mov	bx, 0DDB4h
		inc	byte ptr [bx]
		call	sub_1A20
		jb	short loc_1A4A
		retn
; ---------------------------------------------------------------------------

loc_1A4A:				; CODE XREF: Loc23Script1+1Fj
		mov	ch, 1
		mov	cl, 24h
		call	sub_19F0
		mov	byte ptr [si+13h], 81h
		mov	bx, 0DDB4h
		inc	byte ptr [bx]
		retn
Loc23Script1	endp


; =============== S U B	R O U T	I N E =======================================


sub_1A5B	proc near		; DATA XREF: CODE:8922o

; FUNCTION CHUNK AT 1CA1 SIZE 00000017 BYTES
; FUNCTION CHUNK AT 1CCF SIZE 00000018 BYTES

		mov	ah, ASwitch
		call	FindCharByAnimation ; AH = char's animation
					; If success
					;   DI = pointer to data struct
					;   CF = 0
					; else
					;   CF = 1
		jnb	short loc_1A63
		retn
; ---------------------------------------------------------------------------

loc_1A63:				; CODE XREF: sub_1A5B+5j
		mov	ah, [di+10h]
		cmp	ah, 2
		jz	short locret_1A6E
		jmp	Switch31DataSet
; ---------------------------------------------------------------------------

locret_1A6E:				; CODE XREF: sub_1A5B+Ej
		retn
sub_1A5B	endp


; =============== S U B	R O U T	I N E =======================================


sub_1A6F	proc near		; DATA XREF: CODE:893Eo

; FUNCTION CHUNK AT 1CB8 SIZE 00000017 BYTES

		mov	ah, ASwitch
		call	FindCharByAnimation ; AH = char's animation
					; If success
					;   DI = pointer to data struct
					;   CF = 0
					; else
					;   CF = 1
		jnb	short loc_1A77
		retn
; ---------------------------------------------------------------------------

loc_1A77:				; CODE XREF: sub_1A6F+5j
		mov	ah, [di+10h]
		cmp	ah, 2
		jz	short locret_1A82
		jmp	Switch32DataSet
; ---------------------------------------------------------------------------

locret_1A82:				; CODE XREF: sub_1A6F+Ej
		retn
sub_1A6F	endp


; =============== S U B	R O U T	I N E =======================================


InFirstTemple	proc near		; DATA XREF: CODE:8659o
		mov	bx, offset GameFlags ; test 1st
		test	byte ptr [bx], GFScriptScene
		jnz	short loc_1A9D
		or	byte ptr [bx], GFScriptScene
		mov	ah, GemsFound
		mov	GemsFoundEx, ah
		or	ah, ah
		jz	short loc_1AEB
		jmp	StartMusic
; ---------------------------------------------------------------------------

loc_1A9D:				; CODE XREF: InFirstTemple+6j
		mov	ah, GemsFoundEx
		or	ah, ah
		jz	short loc_1AEB
		mov	ah, byte_DDC2
		inc	ah
		mov	byte_DDC2, ah
		cmp	ah, 32h
		jz	short loc_1AB5
		retn
; ---------------------------------------------------------------------------

loc_1AB5:				; CODE XREF: InFirstTemple+2Fj
		xor	ah, ah
		mov	byte_DDC2, ah
		mov	ah, GemsFoundEx
		dec	ah
		mov	GemsFoundEx, ah
		call	AddCharacter	; SI = CharData
					; CF is	set if no room
		call	LoadPlayerPosition_Preserve_SI ; X -> DX
					; Y -> BX
					; Dir -> ZF (set if right)
		inc	bh
		inc	dh
		xor	ah, ah
		mov	cl, ah
		mov	ch, ApieceOfGold2
		call	InitCharAnim	; CH = AltAnimation
					; CL = AltFrame
					; DX = AltX
					; BX = AltY
					; AH = HorizontalSpeed
		mov	ah, GemsFoundEx
		inc	ah
		mov	dl, ah
		add	ah, ah
		add	ah, dl
		add	ah, 0Ah
		mov	[si+2],	ah
		retn
; ---------------------------------------------------------------------------

loc_1AEB:				; CODE XREF: InFirstTemple+15j
					; InFirstTemple+20j
		mov	ah, byte_DDC2
		inc	ah
		mov	byte_DDC2, ah
		jz	short loc_1AF8
		retn
; ---------------------------------------------------------------------------

loc_1AF8:				; CODE XREF: InFirstTemple+72j
		call	PreparePlaceholders
		mov	ch, 5
		mov	di, (offset PickableItems+14h)

loc_1B00:				; CODE XREF: InFirstTemple+8Bj
		mov	bl, [di]
		mov	bh, [di+1]
		inc	di
		inc	di
		test	byte ptr [bx], 80h
		jz	short loc_1B22
		dec	ch
		jnz	short loc_1B00

Temple1Passed:
		mov	ah, 1Dh
		mov	Location, ah
		mov	si, offset PlayerData
		mov	di, offset SpareLocationItem.LI_Anim
		call	LoadChrData	; SI = CharData
					; DI = LocationItem+1
		jmp	loc_B38
; ---------------------------------------------------------------------------

loc_1B22:				; CODE XREF: InFirstTemple+87j
		mov	ah, ch
		mov	dx, 7
		call	FindRecord	; AH = bit mask
					; DX = sizeof(record_t)
					; BX = result
		xchg	dx, bx
		mov	di, offset stru_8CD4
		add	di, dx
		mov	ah, [di]
		mov	Location, ah
		inc	di
		mov	si, offset PlayerData
		call	LoadChrData	; SI = CharData
					; DI = LocationItem+1
		jmp	loc_B38
InFirstTemple	endp


; =============== S U B	R O U T	I N E =======================================


Loc3CScript0	proc near		; DATA XREF: CODE:8A41o
		mov	ah, StandbyFlag	; 0 if standby
					; 1 if game/demo
					; FF when standby round	is over
		cmp	ah, 0FFh
		jz	short loc_1B5F
		or	ah, ah
		jnz	short loc_1B4F
		retn
; ---------------------------------------------------------------------------

loc_1B4F:				; CODE XREF: Loc3CScript0+Bj
		xor	ah, ah
		mov	StandbyFlag, ah	; 0 if standby
					; 1 if game/demo
					; FF when standby round	is over
		mov	bx, offset unk_8093
		mov	StandbyActionPointer, bx
		jmp	StartMusic
; ---------------------------------------------------------------------------

loc_1B5F:				; CODE XREF: Loc3CScript0+7j
		call	sub_1BA1
		call	sub_1B89
		call	sub_1BB9
		call	sub_1B89
		call	sub_1BCE
		call	sub_1B89
		call	sub_1B89
		call	PrepareFooter_
		jmp	Reset
Loc3CScript0	endp


; =============== S U B	R O U T	I N E =======================================

; FZ set, if flag was set

Check_2S_Flag	proc near		; CODE XREF: DecreaseFoodNWater:loc_14B8p
					; sub_1B89:loc_1B8Fp
		mov	bx, offset TwoSecondsFlag
		test	byte ptr [bx], 40h
		jnz	short loc_1B83
		retn
; ---------------------------------------------------------------------------

loc_1B83:				; CODE XREF: Check_2S_Flag+6j
		pushf
		and	byte ptr [bx], not 40h
		popf
		retn
Check_2S_Flag	endp


; =============== S U B	R O U T	I N E =======================================


sub_1B89	proc near		; CODE XREF: Loc3CScript0+21p
					; Loc3CScript0+27p ...
		mov	ah, 5
		mov	byte ptr Spare3, ah

loc_1B8F:				; CODE XREF: sub_1B89+9j sub_1B89+15j
		call	Check_2S_Flag	; FZ set, if flag was set
		jz	short loc_1B8F
		mov	ah, byte ptr Spare3
		dec	ah
		mov	byte ptr Spare3, ah
		jnz	short loc_1B8F
		retn
sub_1B89	endp


; =============== S U B	R O U T	I N E =======================================


sub_1BA1	proc near		; CODE XREF: Loc3CScript0:loc_1B5Fp
		call	AddCharacter	; SI = CharData
					; CF is	set if no room
		call	LoadPlayerPosition_Preserve_SI ; X -> DX
					; Y -> BX
					; Dir -> ZF (set if right)
		dec	bh
		dec	bh
		dec	bh
		dec	dh
		mov	ch, APlayerPhrases
		mov	cl, 0
		call	InitCharAnim	; CH = AltAnimation
					; CL = AltFrame
					; DX = AltX
					; BX = AltY
					; AH = HorizontalSpeed
		jmp	DrawCharacters
sub_1BA1	endp


; =============== S U B	R O U T	I N E =======================================


sub_1BB9	proc near		; CODE XREF: Loc3CScript0+24p
		call	AddCharacter	; SI = CharData
					; CF is	set if no room
		mov	bh, 8
		mov	bl, 0
		mov	dh, 20h
		mov	dl, 0
		mov	ch, ALivingstonePhrases
		mov	cl, 0
		call	InitCharAnim	; CH = AltAnimation
					; CL = AltFrame
					; DX = AltX
					; BX = AltY
					; AH = HorizontalSpeed
		jmp	DrawCharacters
sub_1BB9	endp


; =============== S U B	R O U T	I N E =======================================


sub_1BCE	proc near		; CODE XREF: Loc3CScript0+2Ap
		mov	ah, APlayerPhrases
		call	FindCharByAnimation ; AH = char's animation
					; If success
					;   DI = pointer to data struct
					;   CF = 0
					; else
					;   CF = 1
		mov	byte ptr [di+10h], 1
		mov	ah, ALivingstonePhrases
		call	FindCharByAnimation ; AH = char's animation
					; If success
					;   DI = pointer to data struct
					;   CF = 0
					; else
					;   CF = 1
		mov	byte ptr [di+10h], 1
		jmp	DrawCharacters
sub_1BCE	endp


; =============== S U B	R O U T	I N E =======================================


ClearPrimaryBuffer proc	near
		push	si
		push	di
		mov	si, offset PrimaryBuffer
		mov	di, (offset PrimaryBuffer+1)
		mov	cx, 31Fh
		mov	byte ptr [si], 0
		cld
		rep movsb
		pop	si
		pop	di
		retn
ClearPrimaryBuffer endp


; =============== S U B	R O U T	I N E =======================================


LoadLocationData proc near		; CODE XREF: start+59p
					; GoToNewLocation+13p
Counter	= ch
ItemPtr	= di
		mov	ah, Location
		shl	ah, 1
		mov	dh, 0

loc_1BFF:
		mov	dl, ah
		mov	ItemPtr, offset	Locations
		add	ItemPtr, dx
		mov	dx, [ItemPtr]
		mov	CurrentLocPtr, dx
		push	dx
		pop	ItemPtr
		mov	dx, Location_t.Count
		add	ItemPtr, dx
		mov	ah, [ItemPtr]	; AH = No. of chars at location
		mov	Counter, ah
		inc	ItemPtr		; Points to 1st	item
		or	ah, ah
		jz	short _AllCharsProcessed

loc_1C1C:				; CODE XREF: LoadLocationData+53j
		push	cx		; Store	counter
		inc	ItemPtr		; @LocationItem+1
		test	byte ptr [ItemPtr-1], CFActive
		jnz	short _NextChar
		xor	ah, ah
		cmp	ah, [ItemPtr]	; Animation
		jnz	short NotAPlayer
		mov	si, offset PlayerData
		test	[si+CharData_t.CharFlags], CFActive
		jnz	short _NextChar
		call	LoadChrData	; SI = CharData
					; DI = LocationItem+1
		call	AdjustCoordsWhenLocChanged
		jmp	short _NextChar
; ---------------------------------------------------------------------------

NotAPlayer:				; CODE XREF: LoadLocationData+31j
		call	AddCharacter	; SI = CharData
					; CF is	set if no room
		jb	short _NextChar
		call	LoadChrData	; SI = CharData
					; DI = LocationItem+1

_NextChar:				; CODE XREF: LoadLocationData+2Bj
					; LoadLocationData+39j	...
		mov	dx, 8
		add	ItemPtr, dx
		pop	cx
		dec	Counter
		jnz	short loc_1C1C

_AllCharsProcessed:			; CODE XREF: LoadLocationData+23j
		mov	LocationScriptList, ItemPtr
		retn
LoadLocationData endp


; =============== S U B	R O U T	I N E =======================================

; Just executes	scripts	that are attached to current loc

RunLocationScripts proc	near		; CODE XREF: MainLoop+Ep
		mov	di, LocationScriptList
		mov	ah, [di]
		or	ah, ah
		jnz	short loc_1C5C
		retn
; ---------------------------------------------------------------------------

loc_1C5C:				; CODE XREF: RunLocationScripts+8j
		mov	ch, ah
		inc	di

loc_1C5F:				; CODE XREF: RunLocationScripts+19j
		push	cx
		push	di
		call	CallScript	; DI = Script address
		pop	di
		inc	di
		inc	di
		pop	cx
		dec	ch
		jnz	short loc_1C5F
		retn
RunLocationScripts endp


; =============== S U B	R O U T	I N E =======================================

; DI = Script address

CallScript	proc near		; CODE XREF: RunLocationScripts+10p
		mov	bx, [di]
		jmp	bx
CallScript	endp


; =============== S U B	R O U T	I N E =======================================

; CH = row
; CL = col
; AH = tile No.

PutTileAt	proc near		; CODE XREF: _FloatingLog+11p
					; _AnimateLog+18p ...
		push	bx
		push	cx
		push	dx
		call	GetTileAt	; CH = Row
					; CL = Col
					; Tile offset =	BX
		mov	[bx], ah
		pop	dx
		pop	cx
		pop	bx
		retn
PutTileAt	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR DecodeLocationBackground

loc_1C7D:				; CODE XREF: DecodeLocationBackground+76j
		mov	ah, Location
		cmp	ah, Dungeon_FloorOfCandles_1
		jnz	short loc_1C89
		jmp	Location_2Dh	; Dungeon with rods
; ---------------------------------------------------------------------------

loc_1C89:				; CODE XREF: DecodeLocationBackground-1881j
		cmp	ah, Dungeon_FloorOfCandles_2
		jnz	short loc_1C91
		jmp	Location_2Fh	; Dungeon with rods - next room
; ---------------------------------------------------------------------------

loc_1C91:				; CODE XREF: DecodeLocationBackground-1879j
		cmp	ah, Dungeon_FloorOfCandles_3
		jnz	short loc_1C98
		jmp	short Location_31h
; ---------------------------------------------------------------------------

loc_1C98:				; CODE XREF: DecodeLocationBackground-1871j
		cmp	ah, Dungeon_FloorOfCandles_4
		jnz	short locret_1CA0
		jmp	Location_32h	; Dungeon - room with switch #2
; ---------------------------------------------------------------------------

locret_1CA0:				; CODE XREF: DecodeLocationBackground-186Aj
		retn
; END OF FUNCTION CHUNK	FOR DecodeLocationBackground
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_1A5B

Switch31DataSet:			; CODE XREF: sub_1A5B+10j
					; DATA XREF: CODE:8906o
		mov	ah, _IfCandlesAreRemoved
		cmp	ah, 1Ah
		jnz	short loc_1CAB
		retn
; ---------------------------------------------------------------------------

loc_1CAB:				; CODE XREF: sub_1A5B+24Dj
		inc	ah
		mov	_IfCandlesAreRemoved, ah
		add	ah, 6
		mov	cl, ah
		jmp	short loc_1CCF
; END OF FUNCTION CHUNK	FOR sub_1A5B
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_1A6F

Switch32DataSet:			; CODE XREF: sub_1A6F+10j
					; DATA XREF: CODE:892Bo
		mov	ah, byte_DDC0
		cmp	ah, 1Ah
		jnz	short loc_1CC2
		retn
; ---------------------------------------------------------------------------

loc_1CC2:				; CODE XREF: sub_1A6F+250j
		inc	ah
		mov	byte_DDC0, ah
		sub	ah, 21h
		neg	ah
		mov	cl, ah
; END OF FUNCTION CHUNK	FOR sub_1A6F
; START	OF FUNCTION CHUNK FOR sub_1A5B

loc_1CCF:				; CODE XREF: sub_1A5B+25Bj
		mov	ch, 10h
		mov	ah, 0F9h
		call	PutTileAt	; CH = row
					; CL = col
					; AH = tile No.
		mov	ah, 0F9h
		call	DrawFloatingLog	; AH = Tile No.
					; BH = screen row
					; BL = 8-pixel col
		inc	ch
		mov	ah, 0FAh
		call	PutTileAt	; CH = row
					; CL = col
					; AH = tile No.
		mov	ah, 0FAh
		jmp	DrawFloatingLog	; AH = Tile No.
; END OF FUNCTION CHUNK	FOR sub_1A5B	; BH = screen row
					; BL = 8-pixel col
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR DecodeLocationBackground

Location_31h:				; CODE XREF: DecodeLocationBackground-186Fj
		mov	ch, 0FAh
		mov	cl, 0F9h
		mov	Spare3,	cx
		jmp	short loc_1CF8
; ---------------------------------------------------------------------------

Location_2Dh:				; CODE XREF: DecodeLocationBackground-187Fj
		mov	cx, 0		; Dungeon with rods
		mov	Spare3,	cx

loc_1CF8:				; CODE XREF: DecodeLocationBackground-1816j
		mov	ah, _IfCandlesAreRemoved
		or	ah, ah
		jnz	short loc_1D01
		retn
; ---------------------------------------------------------------------------

loc_1D01:				; CODE XREF: DecodeLocationBackground-1807j
		mov	ch, ah

loc_1D03:				; CODE XREF: DecodeLocationBackground-17E5j
		push	cx
		mov	ah, ch
		add	ah, 6
		mov	cl, ah
		mov	ch, 10h
		mov	ah, byte ptr Spare3
		call	PutTileAt	; CH = row
					; CL = col
					; AH = tile No.
		inc	ch
		mov	ah, byte ptr Spare3+1
		call	PutTileAt	; CH = row
					; CL = col
					; AH = tile No.
		pop	cx
		dec	ch
		jnz	short loc_1D03
		retn
; ---------------------------------------------------------------------------

Location_32h:				; CODE XREF: DecodeLocationBackground-1868j
		mov	ch, 0FAh	; Dungeon - room with switch #2
		mov	cl, 0F9h
		mov	Spare3,	cx
		jmp	short loc_1D34
; ---------------------------------------------------------------------------

Location_2Fh:				; CODE XREF: DecodeLocationBackground-1877j
		mov	cx, 0		; Dungeon with rods - next room
		mov	Spare3,	cx

loc_1D34:				; CODE XREF: DecodeLocationBackground-17DAj
		mov	ah, byte_DDC0
		or	ah, ah
		jnz	short loc_1D3D
		retn
; ---------------------------------------------------------------------------

loc_1D3D:				; CODE XREF: DecodeLocationBackground-17CBj
		mov	ch, ah

loc_1D3F:				; CODE XREF: DecodeLocationBackground-17A7j
		push	cx
		mov	ah, ch
		sub	ah, 21h
		neg	ah
		mov	cl, ah
		mov	ch, 10h
		mov	ah, byte ptr Spare3
		call	PutTileAt	; CH = row
					; CL = col
					; AH = tile No.
		inc	ch
		mov	ah, byte ptr Spare3+1
		call	PutTileAt	; CH = row
					; CL = col
					; AH = tile No.
		pop	cx
		dec	ch
		jnz	short loc_1D3F
		retn
; END OF FUNCTION CHUNK	FOR DecodeLocationBackground

; =============== S U B	R O U T	I N E =======================================


sub_1D61	proc near		; CODE XREF: BoomerangScriptp
		mov	bx, offset Weapon ; 7 6	5 4 3 2	1 0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		test	byte ptr [bx], Boomerang ; Boomerang?
		jz	short loc_1D6A
		retn
; ---------------------------------------------------------------------------

loc_1D6A:				; CODE XREF: sub_1D61+6j
		mov	ah, _BoomerangState
		cmp	ah, 5
		jnz	short loc_1D7A

loc_1D73:				; CODE XREF: sub_1D61+1Cj
		mov	bx, offset Weapon ; 7 6	5 4 3 2	1 0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		or	byte ptr [bx], Boomerang
		retn
; ---------------------------------------------------------------------------

loc_1D7A:				; CODE XREF: sub_1D61+10j
		cmp	ah, 80h
		jz	short loc_1D73
		and	ah, 0Fh
		cmp	ah, 1
		jnz	short loc_1D8F
		dec	[si+CharData_t.HorizontalSpeed]
		dec	[si+CharData_t.VerticalSpeed]
		jmp	short loc_1DAF
; ---------------------------------------------------------------------------

loc_1D8F:				; CODE XREF: sub_1D61+24j
		cmp	ah, 2
		jnz	short loc_1D9C
		dec	[si+CharData_t.HorizontalSpeed]
		inc	[si+CharData_t.VerticalSpeed]
		jmp	short loc_1DAF
; ---------------------------------------------------------------------------

loc_1D9C:				; CODE XREF: sub_1D61+31j
		cmp	ah, 3
		jnz	short loc_1DA9
		inc	[si+CharData_t.HorizontalSpeed]
		inc	[si+CharData_t.VerticalSpeed]
		jmp	short loc_1DAF
; ---------------------------------------------------------------------------

loc_1DA9:				; CODE XREF: sub_1D61+3Ej
		inc	[si+CharData_t.HorizontalSpeed]
		dec	[si+CharData_t.VerticalSpeed]

loc_1DAF:				; CODE XREF: sub_1D61+2Cj sub_1D61+39j ...
		mov	ah, byte_DDEA
		dec	ah
		mov	byte_DDEA, ah
		jz	short loc_1DBE
		jmp	sub_1E41
; ---------------------------------------------------------------------------

loc_1DBE:				; CODE XREF: sub_1D61+58j
		mov	ah, byte_DDEB
		mov	byte_DDEA, ah
		mov	bx, offset _BoomerangState
		test	byte ptr [bx], 80h
		jnz	short loc_1DD1
		inc	byte ptr [bx]
		retn
; ---------------------------------------------------------------------------

loc_1DD1:				; CODE XREF: sub_1D61+6Bj
		dec	byte ptr [bx]
		retn
sub_1D61	endp


; =============== S U B	R O U T	I N E =======================================

; DX = new fractional col
; BX = new fractional row

UpdateCharPos	proc near		; CODE XREF: HandlePlayer+1036p
					; HandlePlayer+106Bp ...
		mov	byte ptr [si+CharData_t.X], dl
		mov	byte ptr [si+(CharData_t.X+1)],	dh
		mov	byte ptr [si+CharData_t.Y], bl
		mov	byte ptr [si+(CharData_t.Y+1)],	bh
		retn
UpdateCharPos	endp


; =============== S U B	R O U T	I N E =======================================

; X -> DX
; Y -> BX
; Dir -> ZF (set if right)

LoadPlayerPosition_Preserve_SI proc near ; CODE	XREF: HandlePlayer+19Ep
					; FireWeapon+40p ...
		push	si
		mov	si, offset PlayerData
		call	LoadCharPosition ; SI points to	Char data
					; Fractional row-> BX
					; Fractional col-> DX
					; Dir -> ZF
					; (NZ -	left, Z	- right)
		pop	si
		retn
LoadPlayerPosition_Preserve_SI endp


; =============== S U B	R O U T	I N E =======================================

; SI points to Char data
; Fractional row-> BX
; Fractional col-> DX
; Dir -> ZF
; (NZ -	left, Z	- right)

LoadCharPosition proc near		; CODE XREF: ServeFireKey+74p
					; CalcTileUnderObject+Fp ...
		mov	dx, [si+CharData_t.X]
		mov	bx, [si+CharData_t.Y]
		test	[si+CharData_t.HorizontalSpeed], 80h
		retn
LoadCharPosition endp


; =============== S U B	R O U T	I N E =======================================


sub_1DF5	proc near
		mov	ah, [si+CharData_t.HorizontalSpeed]
		cmp	ah, 127
		jnz	short loc_1DFE
		retn
; ---------------------------------------------------------------------------

loc_1DFE:				; CODE XREF: sub_1DF5+6j
		inc	[si+CharData_t.HorizontalSpeed]
		retn
sub_1DF5	endp


; =============== S U B	R O U T	I N E =======================================


sub_1E02	proc near
		mov	ah, [si+CharData_t.HorizontalSpeed]
		cmp	ah, 81h
		jnz	short loc_1E0B
		retn
; ---------------------------------------------------------------------------

loc_1E0B:				; CODE XREF: sub_1E02+6j
		dec	[si+CharData_t.HorizontalSpeed]
		retn
sub_1E02	endp


; =============== S U B	R O U T	I N E =======================================


Inc_SI_14	proc near		; CODE XREF: KnifeScriptp
					; sub_21A3:loc_2150p ...
		mov	ah, [si+CharData_t.VerticalSpeed]
		cmp	ah, 7Fh
		jnz	short loc_1E18
		retn
; ---------------------------------------------------------------------------

loc_1E18:				; CODE XREF: Inc_SI_14+6j
		inc	[si+CharData_t.VerticalSpeed]
		retn
Inc_SI_14	endp


; =============== S U B	R O U T	I N E =======================================


sub_1E1C	proc near		; CODE XREF: sub_21B8:loc_21C9p
					; sub_2295:loc_22B6p
		mov	ah, [si+14h]
		cmp	ah, 81h
		jnz	short loc_1E25
		retn
; ---------------------------------------------------------------------------

loc_1E25:				; CODE XREF: sub_1E1C+6j
		dec	byte ptr [si+14h]
		retn
sub_1E1C	endp


; =============== S U B	R O U T	I N E =======================================


ShiftHorizontally proc near		; CODE XREF: HandlePlayer:loc_3A0p
					; BombScript+13p ...
		call	DoCharMotion	; AltX += HSpeed
					; AltY += VSpeed
		mov	cl, [si+CharData_t.HorizontalSpeed]
		mov	bl, byte ptr [si+CharData_t.X]
		mov	bh, byte ptr [si+(CharData_t.X+1)]
		call	CL_to_CX
		add	bx, cx
		mov	byte ptr [si+CharData_t.X], bl
		mov	byte ptr [si+(CharData_t.X+1)],	bh
		retn
ShiftHorizontally endp


; =============== S U B	R O U T	I N E =======================================


sub_1E41	proc near		; CODE XREF: KnifeScript+3p
					; WagonScript:loc_1736p ...
		call	ShiftHorizontally
		add	bx, cx
		mov	byte ptr [si+CharData_t.X], bl
		mov	byte ptr [si+(CharData_t.X+1)],	bh
		retn
sub_1E41	endp


; =============== S U B	R O U T	I N E =======================================


sub_1E4D	proc near
		mov	ah, [si+CharData_t.HorizontalSpeed]
		or	ah, ah
		jz	short DoCharMotion ; AltX += HSpeed
					; AltY += VSpeed
		test	ah, 80h
		jz	short loc_1E5D
		inc	ah
		jmp	short loc_1E5F
; ---------------------------------------------------------------------------

loc_1E5D:				; CODE XREF: sub_1E4D+Aj
		dec	ah

loc_1E5F:				; CODE XREF: sub_1E4D+Ej
		mov	[si+CharData_t.HorizontalSpeed], ah
		jmp	short ShiftHorizontally
sub_1E4D	endp


; =============== S U B	R O U T	I N E =======================================

; AltX += HSpeed
; AltY += VSpeed

DoCharMotion	proc near		; CODE XREF: HandlePlayer:loc_36Ej
					; HandlePlayer+2AEp ...
		mov	cl, [si+CharData_t.HorizontalSpeed]
		mov	bx, [si+CharData_t.AltX]
		call	CL_to_CX
		add	bx, cx		; Signed addition
		mov	[si+CharData_t.X], bx ;
					;
		mov	cl, [si+CharData_t.VerticalSpeed]
		call	CL_to_CX
		mov	bx, [si+CharData_t.AltY]
		add	bx, cx
		mov	[si+CharData_t.Y], bx
		retn
DoCharMotion	endp


; =============== S U B	R O U T	I N E =======================================


CL_to_CX	proc near		; CODE XREF: ShiftHorizontally+Cp
					; DoCharMotion+6p ...
		xchg	ax, cx
		cbw
		xchg	ax, cx
		retn
CL_to_CX	endp


; =============== S U B	R O U T	I N E =======================================


CallCustomScript proc near		; DATA XREF: CODE:814Ao CODE:814Co ...
		mov	bx, [si+CharData_t.CustomDataset]
		mov	dx, CustomDataSet_t.CharScript
		add	bx, dx
		mov	bx, [bx]
		jmp	bx
CallCustomScript endp


; =============== S U B	R O U T	I N E =======================================


DoEnemyAnimation proc near		; CODE XREF: EyeScript:loc_1EB4p
					; MonkeyScript:loc_202Ap ...
		mov	bx, [si+CharData_t.CustomDataset]
		mov	dl, [bx+CustomDataSet_t.CDS_AnimDelay]
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jz	short RightDir
		inc	bx
		inc	bx

RightDir:				; CODE XREF: DoEnemyAnimation+9j
		inc	bx
		mov	cx, [bx]
		inc	bx
		jmp	PrepNextFrameEx	; CL = 1st frame
DoEnemyAnimation endp			; CH = last frame
					; DL = delay?

; =============== S U B	R O U T	I N E =======================================


EyeScript	proc near		; DATA XREF: CODE:EyesDataSeto
		test	byte ptr [si+24h], 80h
		jnz	short loc_1EC7
		call	sub_1F12
		jnb	short loc_1EB4
		pop	bx
		jmp	_Death
; ---------------------------------------------------------------------------

loc_1EB4:				; CODE XREF: EyeScript+9j
		call	DoEnemyAnimation
		jb	short loc_1EBA
		retn
; ---------------------------------------------------------------------------

loc_1EBA:				; CODE XREF: EyeScript+12j
		or	ah, ah
		jnz	short loc_1EBF
		retn
; ---------------------------------------------------------------------------

loc_1EBF:				; CODE XREF: EyeScript+17j
		or	byte ptr [si], 20h
		or	byte ptr [si+24h], 80h
		retn
; ---------------------------------------------------------------------------

loc_1EC7:				; CODE XREF: EyeScript+4j
		call	GetTileAtRandomPlace ; Tile -> AH
		or	ah, ah
		jz	short loc_1ECF
		retn
; ---------------------------------------------------------------------------

loc_1ECF:				; CODE XREF: EyeScript+27j
		and	byte ptr [si], 0DFh
		or	byte ptr [si], 40h
		call	sub_1ED9
		retn
EyeScript	endp


; =============== S U B	R O U T	I N E =======================================


sub_1ED9	proc near		; CODE XREF: EyeScript+30p
		mov	[si+4],	cl
		mov	[si+0Ch], cl
		mov	[si+6],	ch
		mov	[si+0Eh], ch
		and	byte ptr [si+24h], 7Fh
		mov	byte ptr [si+10h], 0
		retn
sub_1ED9	endp


; =============== S U B	R O U T	I N E =======================================

; Tile -> AH

GetTileAtRandomPlace proc near		; CODE XREF: Loc0EScript0:GasFoundp
					; Loc25Script1:loc_19D1p ...
		call	_Random		; Random number	-> AH
		and	ah, 31
		cmp	ah, 20
		jb	short loc_1EFA
		retn
; ---------------------------------------------------------------------------

loc_1EFA:				; CODE XREF: GetTileAtRandomPlace+9j
		mov	ch, ah
		call	_Random		; Random number	-> AH
		and	ah, 63
		cmp	ah, 37
		jb	short loc_1F08
		retn
; ---------------------------------------------------------------------------

loc_1F08:				; CODE XREF: GetTileAtRandomPlace+17j
		mov	cl, ah
		push	cx
		call	GetTileAt	; CH = Row
					; CL = Col
					; Tile offset =	BX
		pop	cx
		mov	ah, [bx]
		retn
GetTileAtRandomPlace endp


; =============== S U B	R O U T	I N E =======================================


sub_1F12	proc near		; CODE XREF: EyeScript+6p sub_2140p ...
		call	Load_CDS_field7	; BL = *(CDS.Field_7)
					; DL = *(CDS.Field7+1)
		jmp	TryToKillPlayer
sub_1F12	endp


; =============== S U B	R O U T	I N E =======================================

; BL = *(CDS.Field_7)
; DL = *(CDS.Field7+1)

Load_CDS_field7	proc near		; CODE XREF: sub_1F12p	CheckIfKickedp	...
		mov	dx, [si+CharData_t.field_20]
		mov	di, 0
		add	di, dx
		mov	bl, [di]
		mov	dl, [di+1]
		retn
Load_CDS_field7	endp


; =============== S U B	R O U T	I N E =======================================

; DI=Positions+2+field_20

GetMotionPhase	proc near		; CODE XREF: _AnimateEnemy+7p
Enemy =	si
		mov	ah, [Enemy+CharData_t.Positions]
		add	ah, 2
		mov	bh, 0
		mov	bl, ah		; BX = Positions + 2
		mov	dx, [Enemy+CharData_t.field_20]
		add	bx, dx
		xchg	dx, bx
		mov	di, 0
		add	di, dx		; DI=Positions+2+field_20
		retn
GetMotionPhase	endp


; =============== S U B	R O U T	I N E =======================================


CheckIfKicked	proc near		; CODE XREF: KillIfKickedp
					; SimpleScriptp ...

; FUNCTION CHUNK AT 0F71 SIZE 00000019 BYTES
; FUNCTION CHUNK AT 0F94 SIZE 00000006 BYTES

		call	Load_CDS_field7	; BL = *(CDS.Field_7)
					; DL = *(CDS.Field7+1)

loc_1F40:				; CODE XREF: sub_13C5+46p
		mov	Spare1,	bx
		mov	Spare2,	dx
		call	ByBoomerang
		jnb	short loc_1F4E
		retn
; ---------------------------------------------------------------------------

loc_1F4E:				; CODE XREF: CheckIfKicked+Ej
		mov	bx, Spare1
		mov	dx, Spare2
		call	ByKnife
		jnb	short loc_1F5C
		retn
; ---------------------------------------------------------------------------

loc_1F5C:				; CODE XREF: CheckIfKicked+1Cj
		mov	bx, Spare1
		mov	dx, Spare2
		jmp	ByBomb
CheckIfKicked	endp


; =============== S U B	R O U T	I N E =======================================


Switch1D_1_Script proc near		; DATA XREF: CODE:8660o
		mov	ch, 4
		mov	cl, 0Ch
		mov	ah, 0Eh
		jmp	short loc_1F83
; ---------------------------------------------------------------------------

Switch1D_2_Script:			; DATA XREF: CODE:8669o
		mov	ch, 4
		mov	cl, 19h
		mov	ah, 0Eh
		jmp	short loc_1F83
; ---------------------------------------------------------------------------

Switch37Script:				; DATA XREF: CODE:898Eo
		mov	ch, 5
		mov	cl, 0
		jmp	short loc_1F81
; ---------------------------------------------------------------------------

Switch3AScript:				; DATA XREF: CODE:89F3o
		mov	ch, 0Ah
		mov	cl, 26h

loc_1F81:				; CODE XREF: Switch1D_1_Script+14j
		mov	ah, 5

loc_1F83:				; CODE XREF: Switch1D_1_Script+6j
					; Switch1D_1_Script+Ej	...
		mov	al, ah
		push	cx
		xor	ah, ah
		call	PutTileAt	; CH = row
					; CL = col
					; AH = tile No.
		xor	ah, ah
		call	DrawFloatingLog	; AH = Tile No.
					; BH = screen row
					; BL = 8-pixel col
		inc	cl
		xor	ah, ah
		call	PutTileAt	; CH = row
					; CL = col
					; AH = tile No.
		xor	ah, ah
		call	DrawFloatingLog	; AH = Tile No.
					; BH = screen row
					; BL = 8-pixel col
		pop	cx
		inc	ch
		mov	ah, al
		dec	ah
		jnz	short loc_1F83
		retn
Switch1D_1_Script endp


; =============== S U B	R O U T	I N E =======================================


KillIfKicked	proc near		; CODE XREF: MonkeyScriptp
					; MonkeyScript:BatonerScriptp ...

; FUNCTION CHUNK AT 148B SIZE 00000013 BYTES

		call	CheckIfKicked
		jb	short loc_1FAC
		retn
; ---------------------------------------------------------------------------

loc_1FAC:				; CODE XREF: KillIfKicked+3j
		mov	ch, 2
		mov	cl, 2
		pop	bx
		jmp	ShowEnemyDeath
KillIfKicked	endp


; =============== S U B	R O U T	I N E =======================================


TurnToPlayerH	proc near		; CODE XREF: sub_19F0+21p sub_1FF1+Ap	...
		call	CalcHDistance
		call	TripleAH	; AH*3 = DL
		jb	short loc_1FC0
		mov	[si+CharData_t.HorizontalSpeed], dl
		retn
; ---------------------------------------------------------------------------

loc_1FC0:				; CODE XREF: TurnToPlayerH+6j
		mov	ah, dl
		neg	ah
		mov	[si+CharData_t.HorizontalSpeed], ah
		retn
TurnToPlayerH	endp


; =============== S U B	R O U T	I N E =======================================


TurnToPlayerV	proc near		; CODE XREF: sub_19F0+24j
					; Loc0DScript0+9p ...
		call	CalcVDIstance
		call	TripleAH	; AH*3 = DL
		jb	short loc_1FD4
		mov	[si+CharData_t.VerticalSpeed], dl
		retn
; ---------------------------------------------------------------------------

loc_1FD4:				; CODE XREF: TurnToPlayerV+6j
		neg	ah
		mov	[si+CharData_t.VerticalSpeed], ah
		retn
TurnToPlayerV	endp


; =============== S U B	R O U T	I N E =======================================


sub_1FDA	proc near		; CODE XREF: MonkeyScript+3Bp
		call	CalcVDIstance
		cmp	ah, 3
		jb	short loc_1FE3
		retn
; ---------------------------------------------------------------------------

loc_1FE3:				; CODE XREF: sub_1FDA+6j
		call	CalcHDistance
		mov	dl, 60h
		jnb	short loc_1FEC
		mov	dl, 0A0h

loc_1FEC:				; CODE XREF: sub_1FDA+Ej
		mov	[si+CharData_t.HorizontalSpeed], dl
		stc
		retn
sub_1FDA	endp


; =============== S U B	R O U T	I N E =======================================


sub_1FF1	proc near		; CODE XREF: MonkeyScript+78p
					; MonkeyScript+83p
		call	CalcVDIstance
		jb	short loc_1FF7
		retn
; ---------------------------------------------------------------------------

loc_1FF7:				; CODE XREF: sub_1FF1+3j
		mov	[si+CharData_t.VerticalSpeed], 0E0h
		call	TurnToPlayerH

loc_1FFE:
		stc
		retn
sub_1FF1	endp


; =============== S U B	R O U T	I N E =======================================


Loc0DScript0	proc near		; CODE XREF: MonkeyScript:Archer2Scriptp
		call	CalcVDIstance
		jb	short loc_2006
		retn
; ---------------------------------------------------------------------------

loc_2006:				; CODE XREF: Loc0DScript0+3j
		call	TurnToPlayerH
		call	TurnToPlayerV
		stc
		retn
Loc0DScript0	endp


; =============== S U B	R O U T	I N E =======================================

; AH*3 = DL

TripleAH	proc near		; CODE XREF: TurnToPlayerH+3p
					; TurnToPlayerV+3p
		pushf
		mov	dl, ah
		add	dl, dl
		add	dl, ah
		popf
		retn
TripleAH	endp


; =============== S U B	R O U T	I N E =======================================


MonkeyScript	proc near		; DATA XREF: CODE:MonkeyDataSeto
		call	KillIfKicked

loc_201A:				; CODE XREF: MonkeyScript:loc_2085j
					; MonkeyScript+73j
		call	TurnToPlayerH

Loc08Script0:
		call	TurnToPlayerV

loc_2020:				; CODE XREF: MonkeyScript:loc_2095j
					; MonkeyScript:loc_20CAj
		mov	ah, GameFlags	; test not 3rd and 4th
		and	ah, GFPlayerIsDead or GFCoconuted
		jz	short loc_202A
		retn
; ---------------------------------------------------------------------------

loc_202A:				; CODE XREF: MonkeyScript+10j
		call	DoEnemyAnimation
		jb	short loc_2030
		retn
; ---------------------------------------------------------------------------

loc_2030:				; CODE XREF: MonkeyScript+16j
		test	byte ptr [si+16], 1
		jnz	short loc_2037
		retn
; ---------------------------------------------------------------------------

loc_2037:				; CODE XREF: MonkeyScript+1Dj
		call	_Random		; Random number	-> AH
		cmp	ah, 0AAh
		jb	short loc_204A
		mov	ah, [si+CharData_t.Scratchpad]
		cmp	ah, 2
		jnb	short loc_204A
		jmp	loc_20CD
; ---------------------------------------------------------------------------

loc_204A:				; CODE XREF: MonkeyScript+26j
					; MonkeyScript+2Ej ...
		and	[si+CharData_t.Frame], 0FEh
		retn
; ---------------------------------------------------------------------------

BatonerScript:				; DATA XREF: CODE:MinerDataSeto
					; CODE:DartsmanDataSeto ...
		call	KillIfKicked
		call	sub_1FDA
		jb	short loc_2058
		retn
; ---------------------------------------------------------------------------

loc_2058:				; CODE XREF: MonkeyScript+3Ej
		mov	ah, GameFlags	; test not 3rd and 4th
		and	ah, GFPlayerIsDead or GFCoconuted
		jz	short loc_2062
		retn
; ---------------------------------------------------------------------------

loc_2062:				; CODE XREF: MonkeyScript+48j
		call	DoEnemyAnimation
		jb	short loc_2068
		retn
; ---------------------------------------------------------------------------

loc_2068:				; CODE XREF: MonkeyScript+4Ej
		test	[si+CharData_t.Frame], 1
		jnz	short loc_206F
		retn
; ---------------------------------------------------------------------------

loc_206F:				; CODE XREF: MonkeyScript+55j
		mov	ah, [si+CharData_t.Scratchpad]
		cmp	ah, 2
		jnb	short loc_204A
		jmp	short loc_20CD
; ---------------------------------------------------------------------------

SpearmanScript:				; DATA XREF: CODE:SpearmanDataSeto
		call	KillIfKicked
		call	CalcHDistance
		cmp	ah, 4
		jnb	short loc_2085
		retn
; ---------------------------------------------------------------------------

loc_2085:				; CODE XREF: MonkeyScript+6Bj
		jmp	short loc_201A
; ---------------------------------------------------------------------------

IdolScript:				; DATA XREF: CODE:IdolDataSeto
		call	KillIfKicked
		jmp	short loc_201A
; ---------------------------------------------------------------------------

ArcherScript:				; DATA XREF: CODE:ArcherDataSeto
		call	KillIfKicked
		call	sub_1FF1
		jb	short loc_2095
		retn
; ---------------------------------------------------------------------------

loc_2095:				; CODE XREF: MonkeyScript+7Bj
		jmp	short loc_2020	; test not 3rd and 4th
; ---------------------------------------------------------------------------

MaidScript:				; DATA XREF: CODE:MaidDataSeto
		call	KillIfKicked
		call	sub_1FF1
		jb	short loc_20A0	; test not 3rd and 4th
		retn
; ---------------------------------------------------------------------------

loc_20A0:				; CODE XREF: MonkeyScript+86j
		mov	ah, GameFlags	; test not 3rd and 4th
		and	ah, GFPlayerIsDead or GFCoconuted
		jz	short loc_20AA
		retn
; ---------------------------------------------------------------------------

loc_20AA:				; CODE XREF: MonkeyScript+90j
		call	DoEnemyAnimation
		jb	short loc_20B0
		retn
; ---------------------------------------------------------------------------

loc_20B0:				; CODE XREF: MonkeyScript+96j
		call	_Random		; Random number	-> AH
		cmp	ah, 0C8h
		jnb	short loc_20B9
		retn
; ---------------------------------------------------------------------------

loc_20B9:				; CODE XREF: MonkeyScript+9Fj
		mov	ah, [si+2]
		cmp	ah, 2
		jb	short loc_20C2
		retn
; ---------------------------------------------------------------------------

loc_20C2:				; CODE XREF: MonkeyScript+A8j
		jmp	short loc_20CD
; ---------------------------------------------------------------------------

Archer2Script:				; DATA XREF: CODE:ArcherDataSet2o
		call	Loc0DScript0
		jb	short loc_20CA
		retn
; ---------------------------------------------------------------------------

loc_20CA:				; CODE XREF: MonkeyScript+B0j
		jmp	loc_2020	; test not 3rd and 4th
; ---------------------------------------------------------------------------

loc_20CD:				; CODE XREF: MonkeyScript+30j
					; MonkeyScript+60j ...
		call	Load_CDS_field7	; BL = *(CDS.Field_7)
					; DL = *(CDS.Field7+1)
		mov	Spare2,	di
		call	LoadCharPosition ; SI points to	Char data
					; Fractional row-> BX
					; Fractional col-> DX
					; Dir -> ZF
					; (NZ -	left, Z	- right)
		mov	cx, 0A0h
		add	bx, cx
		inc	dh
		mov	Spare0,	bx
		mov	Spare1,	dx
		mov	Spare3,	si
		call	AddCharacter	; SI = CharData
					; CF is	set if no room
		jnb	short LaunchProjectile
		retn
; ---------------------------------------------------------------------------

LaunchProjectile:			; CODE XREF: MonkeyScript+D6j
		mov	bx, offset _Sound0
		call	PlaySound
		mov	cl, 0
		mov	di, Spare2
		mov	ch, [di+4]
		mov	dx, Spare1
		mov	bx, Spare0
		call	InitCharAnim	; CH = AltAnimation
					; CL = AltFrame
					; DX = AltX
					; BX = AltY
					; AH = HorizontalSpeed
		mov	di, Spare3
		mov	ah, [di+CharData_t.JumpPower]
		mov	[si+CharData_t.Scratchpad], ah
		mov	ah, [di+CharData_t.HorizontalSpeed]
		mov	[si+CharData_t.HorizontalSpeed], ah
		mov	ah, [di+CharData_t.VerticalSpeed]
		mov	[si+CharData_t.VerticalSpeed], ah
		inc	[di+CharData_t.Scratchpad]
		mov	di, Spare2
MonkeyScript	endp

; START	OF FUNCTION CHUNK FOR Loc0EScript0

loc_2127:				; CODE XREF: Loc0EScript0+24j
					; Loc25Script1+24j
		mov	ah, [di+2]
		mov	byte ptr [si+CharData_t.CustomDataset],	ah
		add	ah, 7
		mov	byte ptr [si+CharData_t.field_20], ah
		mov	ah, [di+3]
		mov	[si+23h], ah
		adc	ah, 0
		mov	[si+21h], ah
		retn
; END OF FUNCTION CHUNK	FOR Loc0EScript0

; =============== S U B	R O U T	I N E =======================================


sub_2140	proc near
		call	sub_1F12
		jnb	short loc_214A
		call	DecreaseFoodNWaterS
		jmp	short loc_2168
sub_2140	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_21A3

loc_214A:				; CODE XREF: sub_2140+3j
					; sub_21A3:loc_21AEj
		call	DoEnemyAnimation
		jb	short loc_2150
		retn
; ---------------------------------------------------------------------------

loc_2150:				; CODE XREF: sub_21A3-56j
		call	Inc_SI_14
		call	ShiftHorizontally
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		mov	ah, [si+CharData_t.Positions]
		and	ah, 0F0h
		jnz	short loc_2168
		test	[si+CharData_t.Obstacles], 40h
		jnz	short loc_2168
		retn
; END OF FUNCTION CHUNK	FOR sub_21A3
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_2183

loc_2168:				; CODE XREF: sub_2140+8j sub_21A3-44j	...
		call	_AltToReal
		or	[si+CharData_t.CharFlags], CFRemoved
		mov	ah, [si+CharData_t.Scratchpad]
		call	sub_1095
		jnb	short loc_2177
		retn
; ---------------------------------------------------------------------------

loc_2177:				; CODE XREF: sub_2183-Fj
		mov	ah, [di+CharData_t.Scratchpad]
		or	ah, ah
		jnz	short loc_217F
		retn
; ---------------------------------------------------------------------------

loc_217F:				; CODE XREF: sub_2183-7j
		dec	[di+CharData_t.Scratchpad]
		retn
; END OF FUNCTION CHUNK	FOR sub_2183

; =============== S U B	R O U T	I N E =======================================


sub_2183	proc near

; FUNCTION CHUNK AT 2168 SIZE 0000001B BYTES

		call	sub_1F12
		jnb	short loc_218E
		pop	bx
		call	_Death
		jmp	short loc_2168
; ---------------------------------------------------------------------------

loc_218E:				; CODE XREF: sub_2183+3j
		call	DoEnemyAnimation
		jb	short loc_2194
		retn
; ---------------------------------------------------------------------------

loc_2194:				; CODE XREF: sub_2183+Ej
		call	ShiftHorizontally
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		mov	ah, [si+24h]
		and	ah, 0F0h
		jnz	short loc_2168
		retn
sub_2183	endp


; =============== S U B	R O U T	I N E =======================================


sub_21A3	proc near

; FUNCTION CHUNK AT 214A SIZE 0000001E BYTES

		call	sub_1F12
		jnb	short loc_21AE
		pop	bx
		call	_Death
		jmp	short loc_2168
; ---------------------------------------------------------------------------

loc_21AE:				; CODE XREF: sub_21A3+3j
		jmp	short loc_214A
sub_21A3	endp


; =============== S U B	R O U T	I N E =======================================


sub_21B0	proc near
		call	sub_2295
		jz	short locret_21B7
		jmp	short loc_2168
; ---------------------------------------------------------------------------

locret_21B7:				; CODE XREF: sub_21B0+3j
		retn
sub_21B0	endp


; =============== S U B	R O U T	I N E =======================================


sub_21B8	proc near
		call	sub_1F12
		jnb	short loc_21C3
		pop	bx
		call	_Death
		jmp	short loc_2168
; ---------------------------------------------------------------------------

loc_21C3:				; CODE XREF: sub_21B8+3j sub_21DD+5j
		call	DoEnemyAnimation
		jb	short loc_21C9
		retn
; ---------------------------------------------------------------------------

loc_21C9:				; CODE XREF: sub_21B8+Ej
		call	sub_1E1C
		call	ShiftHorizontally
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		mov	ah, [si+24h]
		and	ah, 0B0h
		jz	short locret_21DC
		jmp	short loc_2168
; ---------------------------------------------------------------------------

locret_21DC:				; CODE XREF: sub_21B8+20j
		retn
sub_21B8	endp


; =============== S U B	R O U T	I N E =======================================


sub_21DD	proc near
		call	sub_1F12
		jb	short loc_21E4
		jmp	short loc_21C3
; ---------------------------------------------------------------------------

loc_21E4:				; CODE XREF: sub_21DD+3j
		pop	bx
		call	DecreaseFoodNWaterS
		jmp	loc_2168
sub_21DD	endp


; =============== S U B	R O U T	I N E =======================================


SimpleScript	proc near		; DATA XREF: CODE:ReptileDataSeto
					; CODE:ReptileDataSet5o ...
		call	CheckIfKicked
		jnb	short CrocoScript
		mov	cl, 0
		mov	ch, 0
		jmp	ShowEnemyDeath
; ---------------------------------------------------------------------------

CrocoScript:				; CODE XREF: SimpleScript+3j
					; DATA XREF: CODE:CrocoDataSeto ...
		call	sub_1F12
		jnb	short _AnimateEnemy
		pop	bx
		jmp	_Death
SimpleScript	endp


; =============== S U B	R O U T	I N E =======================================


_AnimateEnemy	proc near		; CODE XREF: SimpleScript+Fj
					; OnFindGemp ...
Enemy =	si
		mov	ah, [Enemy+CharData_t.Scratchpad]
		or	ah, ah
		jnz	short loc_222F
		call	GetMotionPhase	; DI=Positions+2+field_20
		mov	ah, [di]
		cmp	ah, 0FFh
		jnz	short ResetPositions
		xor	ah, ah
		mov	[Enemy+CharData_t.Positions], ah
		retn
; ---------------------------------------------------------------------------

ResetPositions:				; CODE XREF: _AnimateEnemy+Fj
		mov	[Enemy+CharData_t.Scratchpad], ah
		mov	ah, [di+1]
		mov	[Enemy+CharData_t.HorizontalSpeed], ah
		mov	ah, [di+2]
		mov	[Enemy+CharData_t.VerticalSpeed], ah
		mov	ah, [Enemy+CharData_t.Positions]
		add	ah, size EnemyAnimationRec_t
		mov	[Enemy+CharData_t.Positions], ah

loc_222F:				; CODE XREF: _AnimateEnemy+5j
		call	DoEnemyAnimation
		jb	short loc_2235
		retn
; ---------------------------------------------------------------------------

loc_2235:				; CODE XREF: _AnimateEnemy+32j
		dec	[Enemy+CharData_t.Scratchpad]
		jmp	DoCharMotion	; AltX += HSpeed
_AnimateEnemy	endp			; AltY += VSpeed


; =============== S U B	R O U T	I N E =======================================


FoodScript	proc near		; DATA XREF: CODE:FoodDataSeto
		call	sub_1F12
		jb	short Eat
		retn
; ---------------------------------------------------------------------------

Eat:					; CODE XREF: FoodScript+3j
		mov	ah, 60
		mov	FoodLevel, ah
		call	_DisablePickedItem
		mov	bx, offset Snd_PickUp
		jmp	PlaySound
FoodScript	endp


; =============== S U B	R O U T	I N E =======================================


WaterScript	proc near		; DATA XREF: CODE:WaterDataSeto
		call	sub_1F12
		jb	short Drink
		retn
; ---------------------------------------------------------------------------

Drink:					; CODE XREF: WaterScript+3j
		mov	ah, 3Ch
		mov	WaterLevel, ah
		call	_DisablePickedItem
		mov	bx, offset Snd_PickUp
		jmp	PlaySound
WaterScript	endp


; =============== S U B	R O U T	I N E =======================================


OnFindGem	proc near		; DATA XREF: CODE:GemDataSeto
		call	_AnimateEnemy
		call	sub_1F12
		jb	short GetLive	; Incremented
		retn
; ---------------------------------------------------------------------------

GetLive:				; CODE XREF: OnFindGem+6j
		mov	bx, offset GemsFound ; Incremented
		inc	byte ptr [bx]
		call	_DisablePickedItem
		call	IncreaseLives
		mov	bx, offset Snd_PickUp
		jmp	PlaySound
OnFindGem	endp


; =============== S U B	R O U T	I N E =======================================


_DisablePickedItem proc	near		; CODE XREF: FoodScript+Cp
					; WaterScript+Cp ...
		or	[si+CharData_t.CharFlags], 10h
		mov	dh, 0
		mov	di, offset PickableItems
		mov	dl, [si+CharData_t.JumpPower] ;	Actually not JumpPower,	but index in PickableItems
		add	di, dx
		mov	bl, [di]
		mov	bh, [di+1]
		or	byte ptr [bx], IF_DoNotLoad
		retn
_DisablePickedItem endp


; =============== S U B	R O U T	I N E =======================================


sub_2295	proc near		; CODE XREF: MineGasScrpitp sub_21B0p	...
		call	sub_1F12
		jnb	short loc_22A3
		mov	[si+CharData_t.Scratchpad], 1
		pop	bx
		pop	bx
		jmp	_Death
; ---------------------------------------------------------------------------

loc_22A3:				; CODE XREF: sub_2295+3j
		call	DoEnemyAnimation
		jnb	short loc_22B9
		call	sub_1E41
		test	[si+CharData_t.VerticalSpeed], 80h
		jnz	short loc_22B6
		call	Inc_SI_14
		jmp	short loc_22B9
; ---------------------------------------------------------------------------

loc_22B6:				; CODE XREF: sub_2295+1Aj
		call	sub_1E1C

loc_22B9:				; CODE XREF: sub_2295+11j sub_2295+1Fj
		call	CalcTileUnderObject ; SI = CharData ptr
					; Tile under object -> AH
		mov	ah, [si+24h]
		and	ah, 0F0h
		retn
sub_2295	endp


; =============== S U B	R O U T	I N E =======================================


BatScript	proc near		; DATA XREF: CODE:BatDataSeto
		call	CheckIfKicked
		jnb	short BatIsAlive
		mov	ch, 1
		mov	cl, 1
		jmp	ShowEnemyDeath
; ---------------------------------------------------------------------------

BatIsAlive:				; CODE XREF: BatScript+3j
		mov	ah, [si+CharData_t.Scratchpad]
		or	ah, ah
		jnz	short loc_22E9
		mov	ah, GameFlags	; ClearData1 works from	here...
		and	ah, GFPlayerIsDead or GFCoconuted
		jnz	short loc_22F2
		call	TurnToPlayerH
		call	TurnToPlayerV
		mov	[si+CharData_t.Scratchpad], 100

loc_22E9:				; CODE XREF: BatScript+11j
		call	sub_2295
		jnz	short loc_22F2
		dec	byte ptr [si+2]
		retn
; ---------------------------------------------------------------------------

loc_22F2:				; CODE XREF: BatScript+1Aj
					; BatScript+29j
		mov	ah, [si+13h]
		neg	ah
		mov	[si+13h], ah
		mov	ah, [si+14h]
		neg	ah
		mov	[si+14h], ah
		mov	byte ptr [si+2], 32h
		jmp	_AltToReal
BatScript	endp


; =============== S U B	R O U T	I N E =======================================

; test 4th

Loc38Script0	proc near		; DATA XREF: CODE:82BCo CODE:82EAo ...
		mov	bx, offset GameFlags ; ClearData1 works	from here...
		test	byte ptr [bx], GFRiflemanRelated
		jz	short loc_2312
		retn
; ---------------------------------------------------------------------------

loc_2312:				; CODE XREF: Loc38Script0+6j
		mov	ah, ARifleman
		call	FindCharByAnimation ; AH = char's animation
					; If success
					;   DI = pointer to data struct
					;   CF = 0
					; else
					;   CF = 1
		jb	short loc_231A
		retn
; ---------------------------------------------------------------------------

loc_231A:				; CODE XREF: Loc38Script0+Ej
		call	_Random		; Random number	-> AH
		and	ah, 7Fh
		cmp	ah, 0Ch
		jz	short loc_2326
		retn
; ---------------------------------------------------------------------------

loc_2326:				; CODE XREF: Loc38Script0+1Aj
		mov	di, CurrentLocPtr
		mov	dx, 6
		add	di, dx
		mov	bx, (offset PlayerData.Y+1)
		mov	ah, [di+5]	; Rifleman's predefined row
		sub	ah, [bx]
		jnb	short loc_233B
		neg	ah

loc_233B:				; CODE XREF: Loc38Script0+2Ej
		cmp	ah, 4
		jb	short loc_2341
		retn
; ---------------------------------------------------------------------------

loc_2341:				; CODE XREF: Loc38Script0+35j
		mov	ah, [di+3]	; Rifleman's predefined row
		mov	bx, (offset PlayerData.X+1)
		sub	ah, [bx]
		jnb	short loc_234D
		neg	ah

loc_234D:				; CODE XREF: Loc38Script0+40j
		cmp	ah, 6
		jnb	short loc_2353
		retn
; ---------------------------------------------------------------------------

loc_2353:				; CODE XREF: Loc38Script0+47j
		call	AddCharacter	; SI = CharData
					; CF is	set if no room
		jnb	short loc_2359
		retn
; ---------------------------------------------------------------------------

loc_2359:				; CODE XREF: Loc38Script0+4Dj
		jmp	LoadChrData	; SI = CharData
Loc38Script0	endp			; DI = LocationItem+1


; =============== S U B	R O U T	I N E =======================================


RiflemanScript	proc near		; DATA XREF: CODE:RiflemanDataSeto
					; CODE:RiflemanDataSet2o
		call	CheckIfKicked
		jnb	short loc_236E
		mov	ch, 2
		mov	cl, 2
		mov	bx, offset GameFlags ; set 3rd
		or	byte ptr [bx], GFRiflemanRelated
		jmp	ShowEnemyDeath
; ---------------------------------------------------------------------------

loc_236E:				; CODE XREF: RiflemanScript+3j
		test	[si+CharData_t.JumpPower], 80h
		jnz	short sub_2378
		dec	[si+CharData_t.JumpPower]
		retn
RiflemanScript	endp


; =============== S U B	R O U T	I N E =======================================


sub_2378	proc near		; CODE XREF: RiflemanScript+16j
		call	_AnimateEnemy
		mov	ah, [si+CharData_t.Scratchpad]
		or	ah, ah
		jz	short loc_2383
		retn
; ---------------------------------------------------------------------------

loc_2383:				; CODE XREF: sub_2378+8j
		mov	ah, [si+CharData_t.Positions]
		or	ah, ah
		jnz	short loc_238E
		or	[si+CharData_t.CharFlags], CFRemoved
		retn
; ---------------------------------------------------------------------------

loc_238E:				; CODE XREF: sub_2378+10j
		cmp	ah, 3
		jz	short loc_2394
		retn
; ---------------------------------------------------------------------------

loc_2394:				; CODE XREF: sub_2378+19j
		mov	[si+CharData_t.JumpPower], 0Fh
		push	si
		call	AddCharacter	; SI = CharData
					; CF is	set if no room
		mov	Spare3,	si
		pop	si
		jnb	short loc_23A4
		retn
; ---------------------------------------------------------------------------

loc_23A4:				; CODE XREF: sub_2378+29j
		call	LoadCharPosition ; SI points to	Char data
					; Fractional row-> BX
					; Fractional col-> DX
					; Dir -> ZF
					; (NZ -	left, Z	- right)
		mov	cl, 7Fh
		mov	ah, 3
		jz	short loc_23B1
		mov	ah, 0FFh
		mov	cl, 81h

loc_23B1:				; CODE XREF: sub_2378+33j
		inc	bh
		add	ah, dh
		mov	dh, ah
		mov	ah, cl
		mov	ch, ABullet
		mov	cl, 0
		mov	si, Spare3
		call	InitCharAnim	; CH = AltAnimation
					; CL = AltFrame
					; DX = AltX
					; BX = AltY
					; AH = HorizontalSpeed
		mov	bx, offset _Sound1
		jmp	PlaySound
sub_2378	endp


; =============== S U B	R O U T	I N E =======================================


ToDecimal	proc near		; CODE XREF: BonusScoreScript+109Fp
		or	ah, ah
		mov	dh, 0FFh
		mov	cx, 10000

loc_23D1:				; CODE XREF: ToDecimal+Bj
		inc	dh
		sbb	bx, cx
		jnb	short loc_23D1
		add	bx, cx
		or	ah, ah
		mov	cx, 1000
		mov	dl, 0FFh

loc_23E0:				; CODE XREF: ToDecimal+1Aj
		inc	dl
		sbb	bx, cx
		jnb	short loc_23E0
		add	bx, cx
		push	dx
		or	ah, ah
		mov	dx, 100
		mov	ch, 0FFh

loc_23F0:				; CODE XREF: ToDecimal+2Aj
		inc	ch
		sbb	bx, dx
		jnb	short loc_23F0
		add	bx, dx
		or	ah, ah
		mov	dx, 10
		mov	cl, 0FFh

loc_23FF:				; CODE XREF: ToDecimal+39j
		inc	cl
		sbb	bx, dx
		jnb	short loc_23FF
		add	bx, dx
		pop	dx
		mov	si, offset _DecimalScore
		mov	[si], dh
		mov	[si+1],	dl
		mov	[si+2],	ch
		mov	[si+3],	cl
		mov	[si+4],	bl
		mov	byte ptr [si+5], 0FFh
		retn
ToDecimal	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR BonusScoreScript

_DrawScore:				; CODE XREF: BonusScoreScript+1143j
		push	si
		push	dx
		push	cx
		push	ax
		call	ToDecimal
		pop	ax
		mov	dl, ah
		mov	ah, 5
		sub	ah, dl
		mov	dl, ah
		mov	dh, 0
		add	si, dx
		pop	cx

loc_2433:				; CODE XREF: BonusScoreScript+10C4j
		mov	ah, [si]
		test	ah, 80h
		jnz	short loc_2449
		mov	al, ah
		mov	ah, 0
		add	ax, 10h
		call	Draw8x8Footer	; AX = sprite No. (8x8)
					; CX = destination
		inc	cl
		inc	si
		jmp	short loc_2433
; ---------------------------------------------------------------------------

loc_2449:				; CODE XREF: BonusScoreScript+10B5j
		pop	dx
		pop	si
		retn
; END OF FUNCTION CHUNK	FOR BonusScoreScript

; =============== S U B	R O U T	I N E =======================================


UpdateHats	proc near		; CODE XREF: HandlePlayer:DecrementLivesp
		mov	ah, 0
		mov	byte ptr Spare3, ah
		mov	byte ptr Spare3+1, ah
		mov	ah, Lives
		or	ah, ah
		jnz	short EraseHat
		retn
; ---------------------------------------------------------------------------

EraseHat:				; CODE XREF: UpdateHats+10j
					; IncreaseLives+18j
		add	ah, ah
		add	ah, 14h
		mov	cl, ah		; 2*Lives+14h
		mov	ch, 15h
		mov	al, byte ptr Spare3
		mov	ah, 0
		call	Draw8x8Footer	; AX = sprite No. (8x8)
					; CX = destination
		inc	cl
		mov	al, byte ptr Spare3+1
		mov	ah, 0
		jmp	Draw8x8Footer	; AX = sprite No. (8x8)
UpdateHats	endp			; CX = destination


; =============== S U B	R O U T	I N E =======================================


IncreaseLives	proc near		; CODE XREF: OnFindGem+11p
		mov	ah, Lives
		cmp	ah, 7
		jnz	short loc_2484
		retn
; ---------------------------------------------------------------------------

loc_2484:				; CODE XREF: IncreaseLives+7j
		inc	ah
		mov	Lives, ah	; Incremented
		mov	cl, 2Fh
		mov	ch, 30h
		mov	Spare3,	cx
		jmp	short EraseHat
IncreaseLives	endp


; =============== S U B	R O U T	I N E =======================================


SetForceToZero	proc near		; CODE XREF: IncreaseForce+8p
					; ServeFireKey+AFj ...
		xor	ah, ah
		mov	byte ptr Force,	ah
		jmp	DrawForce
SetForceToZero	endp


; =============== S U B	R O U T	I N E =======================================


InitFood	proc near		; CODE XREF: PrepareFooter+9p
		mov	ah, 3Ch
		mov	FoodLevel, ah
		jmp	DrawFood
InitFood	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR PrepareFooter

InitWater:				; CODE XREF: PrepareFooter+Cj
		mov	ah, 3Ch
		mov	WaterLevel, ah
		jmp	DrawWater
; END OF FUNCTION CHUNK	FOR PrepareFooter

; =============== S U B	R O U T	I N E =======================================


PrepareFooter	proc near		; CODE XREF: start+50p	PrepareFooter_p

; FUNCTION CHUNK AT 24A6 SIZE 00000009 BYTES

		mov	bx, offset Footer-2
		call	DrawFooter
		call	SetForceToZero
		call	InitFood
		jmp	short InitWater
PrepareFooter	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR BonusScoreScript

loc_24BD:				; CODE XREF: BonusScoreScript+26j
		mov	bx, Score
		mov	cx, 1715h
		mov	ah, 5
		jmp	_DrawScore
; END OF FUNCTION CHUNK	FOR BonusScoreScript

; =============== S U B	R O U T	I N E =======================================


RewindDemoScript proc near		; CODE XREF: start+94p
		mov	ah, cs:DemoFlag
		or	ah, ah
		jz	short loc_24F2	; Check	demo mode flag
		mov	ax, offset DemoScript
		mov	cs:DemoPtr, ax

loc_24D9:				; CODE XREF: RewindDemoScript+30j
		mov	cs:DemoCounter,	0
		mov	cs:DemoAction, 0FFh
		mov	cs:DemoWeapon, 0FFh
		mov	_RandomNumber, 0
		retn
; ---------------------------------------------------------------------------

loc_24F2:				; CODE XREF: RewindDemoScript+7j
		mov	ax, offset DemoWeapon
		mov	cs:DemoPtr, ax
		jmp	short loc_24D9
RewindDemoScript endp

; ---------------------------------------------------------------------------
aAquiHayQuePokear db 'AQUI HAY QUE POKEAR'

; =============== S U B	R O U T	I N E =======================================

; Skip if in game

HandleDemoStep	proc near		; CODE XREF: HandleInput+Bj
		mov	ah, cs:DemoFlag
		or	ah, ah
		nop
		nop
		jz	short Exit
		test	KeyScrollLock, 80h
		jz	short loc_252A
		xor	ah, ah
		or	ah, 20h
		mov	byte ptr KeysPressed, ah ; Emulate ScrollLock press
		retn
; ---------------------------------------------------------------------------

loc_252A:				; CODE XREF: HandleDemoStep+10j
		mov	ah, cs:DemoCounter
		or	ah, ah
		jz	short loc_254D
		dec	ah
		mov	cs:DemoCounter,	ah
		mov	ah, cs:DemoAction
		mov	byte ptr KeysPressed, ah
		mov	ah, cs:DemoWeapon
		mov	SelectedWeapon,	ah ; Changes when player press keys '1'...'4'

Exit:					; CODE XREF: HandleDemoStep+9j
		retn
; ---------------------------------------------------------------------------

loc_254D:				; CODE XREF: HandleDemoStep+23j
		mov	bx, cs:DemoPtr
		mov	ah, [bx]
		dec	ah
		mov	cs:DemoCounter,	ah
		inc	bx
		mov	ah, [bx]
		mov	cs:DemoAction, ah
		mov	byte ptr KeysPressed, ah
		inc	bx
		mov	ah, [bx]
		mov	cs:DemoWeapon, ah
		mov	SelectedWeapon,	ah ; Changes when player press keys '1'...'4'
		inc	bx
		mov	cs:DemoPtr, bx
		retn
HandleDemoStep	endp


; =============== S U B	R O U T	I N E =======================================

; Check	if F1 pressed

SaveGameProcess	proc near
		test	byte ptr KeysPressed, Key_Save
		jnz	short SaveToDisc
		mov	ah, byte ptr KeysPressed
		mov	bx, offset DemoAction
		cmp	ah, [bx]
		jnz	short NewDemoStep
		mov	ah, SelectedWeapon ; Changes when player press keys '1'...'4'
		mov	bx, offset DemoWeapon
		cmp	ah, [bx]
		jnz	short NewDemoStep
		jmp	IncreaseDemoCounter
; ---------------------------------------------------------------------------

NewDemoStep:				; CODE XREF: SaveGameProcess+10j
					; SaveGameProcess+1Bj ...
		mov	bx, cs:DemoPtr
		inc	bx
		inc	bx
		inc	bx
		mov	cs:DemoPtr, bx
		mov	dx, offset DemoScript
		or	ah, ah
		sbb	bx, dx
		mov	ah, bh
		cmp	ah, 0Ch
		jnz	short _StoreDemoStep

SaveToDisc:				; CODE XREF: SaveGameProcess+5j
		xor	ah, ah
		or	ah, 20h
		mov	bx, cs:DemoPtr
		mov	byte ptr [bx], 1
		inc	bx
		mov	[bx], ah
		mov	byte ptr KeysPressed, ah
		mov	ax, cs
		mov	es, ax
		mov	bx, offset start
		mov	dl, 10h
		mov	ch, 0Eh
		mov	cl, 1

DiskWriteLoop:				; CODE XREF: SaveGameProcess+6Ej
		push	dx
		mov	ax, 308h
		mov	dx, 0
		int	13h		; DISK - WRITE SECTORS FROM MEMORY
					; AL = number of sectors to write, CH =	track, CL = sector
					; DH = head, DL	= drive, ES:BX -> buffer
					; Return: CF set on error, AH =	status,	AL = number of sectors written
		inc	ch
		add	bx, 1000h
		pop	dx
		dec	dl
		jnz	short DiskWriteLoop
		jmp	start
; ---------------------------------------------------------------------------

_StoreDemoStep:				; CODE XREF: SaveGameProcess+39j
		mov	ah, 1
		mov	bx, cs:DemoPtr
		mov	[bx], ah
		mov	ah, byte ptr KeysPressed
		mov	cs:DemoAction, ah
		inc	bx
		mov	[bx], ah
		mov	ah, SelectedWeapon ; Changes when player press keys '1'...'4'
		mov	cs:DemoWeapon, ah
		inc	bx
		mov	[bx], ah
		retn
; ---------------------------------------------------------------------------

IncreaseDemoCounter:			; CODE XREF: SaveGameProcess+1Dj
		mov	bx, cs:DemoPtr
		mov	ah, [bx]
		inc	ah
		or	ah, ah
		jnz	short loc_261F
		jmp	NewDemoStep
; ---------------------------------------------------------------------------

loc_261F:				; CODE XREF: SaveGameProcess+A0j
		mov	[bx], ah
		inc	bx
		mov	ah, cs:DemoAction
		mov	[bx], ah
		inc	bx
		mov	ah, cs:DemoWeapon
		mov	[bx], ah
		retn
SaveGameProcess	endp

; ---------------------------------------------------------------------------
DemoTimer	db 0			; DATA XREF: start+61w	start:loc_175r	...
DemoFlag	db 0			; DATA XREF: start:StartGamew
					; RewindDemoScriptr ...
DemoCounter	db 0			; DATA XREF: RewindDemoScript:loc_24D9w
					; HandleDemoStep:loc_252Ar ...
DemoAction	db 14h			; DATA XREF: RewindDemoScript+16w
					; HandleDemoStep+2Cr ...
DemoWeapon	db 1			; DATA XREF: RewindDemoScript+1Cw
					; RewindDemoScript:loc_24F2o ...
DemoPtr		dw 3239h		; DATA XREF: RewindDemoScript+Cw
					; RewindDemoScript+2Cw	...
DemoScript	db  19h, 10h,	0	; 0 ; DATA XREF: RewindDemoScript+9o
					; SaveGameProcess+2Do
		db    5, 10h,	4	; 3 ; counter -	keypress - weapon
		db    1,   0,	4	; 6
		db    5,   1,	4	; 9
		db    1,   1,	1	; 12
		db  15h, 11h,	1	; 15
		db  18h, 10h,	1	; 18
		db    2,   0,	1	; 21
		db  20h,   8,	1	; 24
		db    7,   9,	1	; 27
		db    4,   8,	1	; 30
		db  28h, 18h,	2	; 33
		db    4, 19h,	2	; 36
		db  0Fh, 18h,	2	; 39
		db  16h,   8,	2	; 42
		db    5,   9,	2	; 45
		db    5,   8,	2	; 48
		db  2Fh,   8,	3	; 51
		db    2,   0,	3	; 54
		db    3, 10h,	3	; 57
		db    8,   0,	3	; 60
		db    3, 10h,	3	; 63
		db  18h, 14h,	3	; 66
		db    4, 10h,	3	; 69
		db    1, 18h,	3	; 72
		db  0Dh, 10h,	3	; 75
		db    5, 10h,	4	; 78
		db    6,   0,	4	; 81
		db  41h, 10h,	3	; 84
		db    7,   0,	3	; 87
		db    1, 10h,	3	; 90
		db  0Bh, 14h,	3	; 93
		db  0Dh, 18h,	3	; 96
		db    7, 19h,	3	; 99
		db    4, 18h,	3	; 102
		db    4, 19h,	3	; 105
		db  18h, 18h,	3	; 108
		db    2, 10h,	3	; 111
		db    2, 11h,	3	; 114
		db    2, 10h,	3	; 117
		db    4,   0,	3	; 120
		db    1,   8,	3	; 123
		db  13h, 18h,	3	; 126
		db    5, 19h,	3	; 129
		db  20h, 18h,	3	; 132
		db  0Ah,   0,	3	; 135
		db    1, 10h,	3	; 138
		db    7, 14h,	1	; 141
		db  0Ch, 10h,	1	; 144
		db    8,   0,	1	; 147
		db    3,   0,	2	; 150
		db  0Ah, 18h,	2	; 153
		db  18h, 10h,	2	; 156
		db  0Bh,   0,	2	; 159
		db    3, 10h,	2	; 162
		db    3, 14h,	2	; 165
		db    5, 14h,	1	; 168
		db  0Bh, 10h,	1	; 171
		db    2, 18h,	1	; 174
		db  30h, 10h,	1	; 177
		db    3,   0,	1	; 180
		db  2Bh, 10h,	1	; 183
		db    2,   0,	1	; 186
		db    4, 10h,	1	; 189
		db  1Fh, 10h,	4	; 192
		db  0Ah,   0,	4	; 195
		db    2,   0,	2	; 198
		db    2, 10h,	2	; 201
		db  27h, 18h,	2	; 204
		db  12h, 10h,	2	; 207
		db  0Fh, 12h,	2	; 210
		db    3,   2,	2	; 213
		db  10h, 12h,	2	; 216
		db    2, 16h,	2	; 219
		db    2, 14h,	2	; 222
		db    1,   4,	2	; 225
		db    7,   0,	2	; 228
		db    4,   4,	2	; 231
		db    3,   0,	2	; 234
		db    1,   8,	2	; 237
		db    2,   0,	2	; 240
		db    7,   0,	4	; 243
		db  12h, 10h,	4	; 246
		db  33h,   0,	4	; 249
		db  10h,   4,	4	; 252
		db  0Ah,   0,	4	; 255
		db    3,   4,	4	; 258
		db    8,   0,	4	; 261
		db    1,   8,	4	; 264
		db  0Ah,   0,	4	; 267
		db  1Ah, 10h,	4	; 270
		db  14h,   0,	4	; 273
		db    3,   0,	2	; 276
		db  12h, 10h,	2	; 279
		db  0Ah,   0,	2	; 282
		db  0Ah,   8,	2	; 285
		db    3,   0,	2	; 288
		db    9,   4,	2	; 291
		db  0Ah,   0,	2	; 294
		db  0Ah, 10h,	3	; 297
		db  22h,   0,	3	; 300
		db    9,   0,	2	; 303
		db    4, 10h,	2	; 306
		db  22h,   0,	2	; 309
		db    1,   8,	2	; 312
		db  1Eh,   0,	2	; 315
		db    5, 10h,	2	; 318
		db  54h,   0,	2	; 321
		db    4,   8,	2	; 324
		db    3,   0,	2	; 327
		db    7,   4,	2	; 330
		db    3,   5,	2	; 333
		db  0Ch,   4,	2	; 336
		db    6,   0,	2	; 339
		db    9,   8,	2	; 342
		db    4, 18h,	2	; 345
		db    1, 14h,	2	; 348
		db  1Dh, 14h,	1	; 351
		db    9,   4,	1	; 354
		db    2,   0,	1	; 357
		db  35h,   2,	1	; 360
		db    3,   0,	1	; 363
		db    2,   4,	1	; 366
		db    4,   0,	1	; 369
		db    3,   0,	4	; 372
		db  18h, 10h,	4	; 375
		db  13h,   0,	4	; 378
		db    1, 10h,	4	; 381
		db    8, 10h,	2	; 384
		db    9, 10h,	1	; 387
		db  17h, 14h,	1	; 390
		db    6,   0,	1	; 393
		db    2,   4,	1	; 396
		db    1,   4,	3	; 399
		db    6, 14h,	3	; 402
		db  0Ah, 10h,	3	; 405
		db    5,   0,	3	; 408
		db    9,   4,	3	; 411
		db  12h,   0,	3	; 414
		db    4,   4,	3	; 417
		db    6,   0,	3	; 420
		db    5, 10h,	3	; 423
		db  73h,   0,	3	; 426
		db    4,   4,	3	; 429
		db    7,   0,	3	; 432
		db  0Bh, 10h,	3	; 435
		db    5, 14h,	3	; 438
		db    6, 10h,	3	; 441
		db  0Bh,   0,	3	; 444
		db    2,   8,	3	; 447
		db  45h,   0,	3	; 450
		db    6,   4,	3	; 453
		db  0Ah,   0,	3	; 456
		db    2,   4,	3	; 459
		db  14h,   0,	3	; 462
		db    1,   8,	3	; 465
		db  0Ah,   0,	3	; 468
		db    3,   0,	4	; 471
		db    1, 10h,	4	; 474
		db    3,   0,	4	; 477
		db  58h, 10h,	4	; 480
		db  51h,   0,	4	; 483
		db    5,   8,	4	; 486
		db  5Eh,   0,	4	; 489
		db    1,   0,	1	; 492
		db  0Bh, 10h,	1	; 495
		db  1Dh, 14h,	1	; 498
		db    7, 15h,	1	; 501
		db  0Ah, 14h,	1	; 504
		db  1Ch,   4,	1	; 507
		db    3,   0,	3	; 510
		db  0Bh, 10h,	3	; 513
		db 0A4h,   0,	3	; 516
		db  32h, 10h,	2	; 519
		db    5, 14h,	2	; 522
		db  0Eh, 10h,	2	; 525
		db    1, 18h,	2	; 528
		db  14h, 10h,	2	; 531
		db    6,   0,	2	; 534
		db    1,   0,	1	; 537
		db    3, 10h,	1	; 540
		db    7, 14h,	1	; 543
		db  0Bh, 10h,	1	; 546
		db    2, 18h,	1	; 549
		db  51h, 10h,	1	; 552
		db    2,   0,	1	; 555
		db  13h, 10h,	1	; 558
		db  12h,   0,	1	; 561
		db  27h, 10h,	1	; 564
		db    6, 14h,	1	; 567
		db  0Dh, 10h,	1	; 570
		db    2, 14h,	1	; 573
		db    9, 10h,	1	; 576
		db    1, 18h,	1	; 579
		db  15h, 10h,	1	; 582
		db  32h, 10h,	4	; 585
		db    5,   0,	4	; 588
		db    4, 10h,	4	; 591
		db  13h, 10h,	1	; 594
		db  16h, 18h,	1	; 597
		db    7, 19h,	1	; 600
		db  0Dh, 18h,	1	; 603
		db  26h,   8,	1	; 606
		db    6,   0,	1	; 609
		db    1, 10h,	1	; 612
		db  0Bh, 10h,	0	; 615
		db  16h,   0,	0	; 618
		db  0Ch, 10h,	0	; 621
		db    5, 18h,	0	; 624
		db    7, 10h,	0	; 627
		db    3, 14h,	0	; 630
		db  18h, 10h,	0	; 633
		db    2, 10h,	4	; 636
		db    7,   0,	4	; 639
		db    1,   0,	1	; 642
		db  1Fh, 10h,	1	; 645
		db    4, 14h,	1	; 648
		db    3, 10h,	1	; 651
		db    3, 18h,	1	; 654
		db    7, 10h,	1	; 657
		db    2, 11h,	1	; 660
		db    1, 10h,	1	; 663
		db  20h,   0,	1	; 666
		db    5,   4,	1	; 669
		db  0Ah,   0,	1	; 672
		db  0Ch, 10h,	1	; 675
		db    5, 18h,	1	; 678
		db    5, 19h,	1	; 681
		db  22h, 18h,	1	; 684
		db    5, 19h,	1	; 687
		db  0Eh, 18h,	1	; 690
		db    9,   8,	1	; 693
		db  18h, 18h,	1	; 696
		db    6, 19h,	1	; 699
		db  0Ch, 18h,	1	; 702
		db  0Eh,   8,	1	; 705
		db    8,   4,	1	; 708
		db  16h, 18h,	1	; 711
		db    5, 19h,	1	; 714
		db  27h, 18h,	1	; 717
		db    4, 10h,	1	; 720
		db    7,   0,	1	; 723
		db  0Ah, 10h,	1	; 726
		db  14h, 10h,	4	; 729
		db    3,   0,	3	; 732
		db  45h, 10h,	3	; 735
		db    5,   0,	3	; 738
		db    2, 10h,	3	; 741
		db  0Ch, 14h,	3	; 744
		db  10h, 18h,	3	; 747
		db    5, 19h,	3	; 750
		db    4, 18h,	3	; 753
		db    5, 19h,	3	; 756
		db  18h, 18h,	3	; 759
		db    1, 10h,	3	; 762
		db    3, 11h,	3	; 765
		db    3, 10h,	3	; 768
		db    5,   0,	3	; 771
		db  11h, 18h,	3	; 774
		db    4, 19h,	3	; 777
		db  1Eh, 18h,	3	; 780
		db    1,   8,	3	; 783
		db    4,   0,	3	; 786
		db    2, 10h,	3	; 789
		db    2, 10h,	2	; 792
		db    5, 14h,	2	; 795
		db    9, 10h,	2	; 798
		db    9, 10h,	1	; 801
		db  0Ah,   0,	1	; 804
		db    7, 18h,	2	; 807
		db  20h, 10h,	2	; 810
		db    6,   0,	2	; 813
		db    2,   0,	1	; 816
		db    2, 10h,	1	; 819
		db    7, 14h,	1	; 822
		db  0Bh, 10h,	1	; 825
		db    1, 18h,	1	; 828
		db  14h, 10h,	1	; 831
		db    6, 18h,	1	; 834
		db    7, 10h,	1	; 837
		db    3, 18h,	1	; 840
		db  18h, 10h,	1	; 843
		db    6,   0,	1	; 846
		db    4, 18h,	1	; 849
		db  23h, 10h,	1	; 852
		db    7,   0,	1	; 855
		db  0Dh,   4,	1	; 858
		db  0Bh,   5,	1	; 861
		db  0Bh,   4,	1	; 864
		db  1Ah, 14h,	1	; 867
		db  1Eh, 10h,	1	; 870
		db    3, 18h,	1	; 873
		db    4, 10h,	1	; 876
		db    5, 10h,	3	; 879
		db  12h,   0,	3	; 882
		db    5, 10h,	3	; 885
		db    2, 14h,	3	; 888
		db  12h, 10h,	3	; 891
		db  32h,   0,	3	; 894
		db    2,   4,	3	; 897
		db    3, 14h,	3	; 900
		db    4, 14h,	1	; 903
		db  0Bh, 10h,	1	; 906
		db  0Ch,   0,	1	; 909
		db    2,   0,	3	; 912
		db  31h, 10h,	3	; 915
		db  15h,   0,	3	; 918
		db  0Ch,   4,	3	; 921
		db    5,   5,	3	; 924
		db  0Bh,   4,	3	; 927
		db    5,   0,	3	; 930
		db  0Bh,   4,	3	; 933
		db    2, 14h,	3	; 936
		db    1, 14h,	1	; 939
		db  1Ch, 10h,	1	; 942
		db  0Ah, 14h,	1	; 945
		db  0Bh,   4,	1	; 948
		db  0Dh,   0,	1	; 951
		db    5,   8,	1	; 954
		db    7,   0,	1	; 957
		db    1,   4,	1	; 960
		db    6,   0,	1	; 963
		db    1,   4,	1	; 966
		db  11h,   0,	1	; 969
		db    1,   4,	1	; 972
		db  0Ch,   0,	1	; 975
		db    5,   0,	4	; 978
		db  1Ah, 10h,	4	; 981
		db  26h,   0,	4	; 984
		db  0Bh,   0,	1	; 987
		db    2, 10h,	1	; 990
		db  0Bh, 18h,	1	; 993
		db    8, 10h,	1	; 996
		db  16h, 14h,	1	; 999
		db    5, 15h,	1	; 1002
		db    8, 14h,	1	; 1005
		db  0Bh, 14h,	3	; 1008
		db    7,   4,	3	; 1011
		db  14h, 14h,	1	; 1014
		db    6, 10h,	1	; 1017
		db    6,   0,	1	; 1020
		db    1,   0,	4	; 1023
		db  18h, 10h,	4	; 1026
		db    8,   0,	4	; 1029
		db    2,   0,	2	; 1032
		db  27h, 10h,	2	; 1035
		db    6,   0,	2	; 1038
		db    9,   4,	2	; 1041
		db    4,   0,	3	; 1044
		db    8, 10h,	3	; 1047
		db  18h,   0,	3	; 1050
		db    9, 10h,	3	; 1053
		db  0Dh, 10h,	1	; 1056
		db  0Bh, 14h,	1	; 1059
		db    6, 10h,	1	; 1062
		db    3, 14h,	1	; 1065
		db    9, 10h,	1	; 1068
		db    7,   0,	1	; 1071
		db    1,   0,	4	; 1074
		db  14h, 10h,	4	; 1077
		db  0Dh,   0,	4	; 1080
		db  16h,   0,	3	; 1083
		db  2Dh,   4,	3	; 1086
		db    8,   0,	3	; 1089
		db  0Ch, 10h,	3	; 1092
		db  27h,   0,	3	; 1095
		db    2,   0,	1	; 1098
		db  22h, 10h,	1	; 1101
		db    9, 14h,	1	; 1104
		db  11h, 10h,	1	; 1107
		db    7,   0,	1	; 1110
		db    2, 10h,	1	; 1113
		db  14h, 14h,	1	; 1116
		db  16h, 10h,	1	; 1119
		db    5,   0,	1	; 1122
		db    1,   8,	1	; 1125
		db  0Fh, 18h,	1	; 1128
		db  0Ah, 14h,	1	; 1131
		db    4, 15h,	1	; 1134
		db  15h, 14h,	1	; 1137
		db    4, 10h,	1	; 1140
		db    6, 10h,	4	; 1143
		db    6,   0,	4	; 1146
		db    1,   0,	3	; 1149
		db    5, 10h,	3	; 1152
		db  21h, 14h,	3	; 1155
		db    6, 10h,	3	; 1158
		db    8,   0,	3	; 1161
		db    1, 10h,	3	; 1164
		db  18h, 14h,	3	; 1167
		db    2, 14h,	4	; 1170
		db  0Bh,   0,	4	; 1173
		db    5,   0,	1	; 1176
		db    8, 10h,	1	; 1179
		db  0Bh, 10h,	2	; 1182
		db    4, 18h,	2	; 1185
		db  11h, 10h,	2	; 1188
		db    5, 18h,	2	; 1191
		db    2, 10h,	2	; 1194
		db    2, 14h,	2	; 1197
		db  3Eh, 10h,	2	; 1200
		db  0Ah,   0,	2	; 1203
		db    2, 10h,	2	; 1206
		db  10h, 14h,	2	; 1209
		db  28h, 14h,	3	; 1212
		db    5, 15h,	3	; 1215
		db  9Eh, 14h,	3	; 1218
		db    7,   0,	3	; 1221
		db    2, 10h,	3	; 1224
		db    4, 18h,	3	; 1227
		db  12h, 10h,	3	; 1230
		db    4, 11h,	3	; 1233
		db    8, 10h,	3	; 1236
		db  10h,   0,	3	; 1239
		db  0Dh, 10h,	3	; 1242
		db  0Fh, 18h,	3	; 1245
		db    3, 10h,	3	; 1248
		db    2, 14h,	3	; 1251
		db    5, 10h,	3	; 1254
		db    5, 10h,	4	; 1257
		db  18h,   0,	4	; 1260
		db    3, 10h,	4	; 1263
		db  21h, 10h,	2	; 1266
		db    1,   0,	2	; 1269
		db    6,   2,	2	; 1272
		db  35h, 12h,	2	; 1275
		db    2, 16h,	2	; 1278
		db  11h, 14h,	2	; 1281
		db    1, 16h,	2	; 1284
		db  10h, 12h,	2	; 1287
		db    1, 16h,	2	; 1290
		db  0Eh, 14h,	2	; 1293
		db  11h, 12h,	2	; 1296
		db  0Ah, 14h,	2	; 1299
		db  10h, 12h,	2	; 1302
		db    2, 1Ah,	2	; 1305
		db  2Ch,   2,	2	; 1308
		db    6,   8,	2	; 1311
		db  16h, 18h,	2	; 1314
		db  24h, 18h,	1	; 1317
		db  0Dh,   8,	1	; 1320
		db  18h,   2,	1	; 1323
		db  0Fh, 12h,	1	; 1326
		db    1, 10h,	1	; 1329
		db    2, 18h,	1	; 1332
		db  0Fh, 10h,	1	; 1335
		db    4, 18h,	1	; 1338
		db  13h, 10h,	1	; 1341
		db    5, 10h,	4	; 1344
		db  0Dh,   0,	4	; 1347
		db  2Eh, 10h,	1	; 1350
		db    5,   0,	1	; 1353
		db  1Bh,   2,	1	; 1356
		db    7,   8,	1	; 1359
		db    4, 18h,	1	; 1362
		db  0Bh, 18h,	2	; 1365
		db    4, 19h,	2	; 1368
		db  22h, 18h,	2	; 1371
		db  1Fh, 18h,	1	; 1374
		db  1Eh,   8,	1	; 1377
		db    9,   2,	1	; 1380
		db    6, 12h,	1	; 1383
		db    3, 12h,	2	; 1386
		db    4, 14h,	2	; 1389
		db    9,   4,	2	; 1392
		db    5,   0,	2	; 1395
		db    9,   2,	2	; 1398
		db    1,   0,	2	; 1401
		db  0Ch,   8,	2	; 1404
		db    3,   0,	2	; 1407
		db    3,   1,	2	; 1410
		db    9,   0,	2	; 1413
		db    8,   8,	2	; 1416
		db  0Ah,   0,	2	; 1419
		db    8,   8,	2	; 1422
		db    8,   9,	2	; 1425
		db    8,   8,	2	; 1428
		db    1,   8,	1	; 1431
		db  0Ch, 18h,	1	; 1434
		db  0Eh, 10h,	1	; 1437
		db    7, 18h,	1	; 1440
		db    8,   8,	1	; 1443
		db    7,   8,	3	; 1446
		db    1, 18h,	3	; 1449
		db    7, 10h,	3	; 1452
		db    5,   0,	3	; 1455
		db  15h,   2,	3	; 1458
		db  29h,   0,	3	; 1461
		db    3,   0,	2	; 1464
		db    6, 10h,	2	; 1467
		db  1Dh,   0,	2	; 1470
		db    6,   8,	2	; 1473
		db  0Ah,   0,	2	; 1476
		db  20h,   2,	2	; 1479
		db    1, 12h,	2	; 1482
		db  11h, 10h,	2	; 1485
		db    9, 10h,	4	; 1488
		db  11h,   0,	4	; 1491
		db    1, 10h,	4	; 1494
		db  0Ch, 10h,	1	; 1497
		db  16h, 18h,	1	; 1500
		db  0Dh,   8,	1	; 1503
		db  26h,   2,	1	; 1506
		db    1,   0,	1	; 1509
		db    6,   4,	1	; 1512
		db    7,   8,	1	; 1515
		db    5,   9,	1	; 1518
		db  1Ah,   8,	1	; 1521
		db    7, 18h,	1	; 1524
		db  0Ah, 10h,	1	; 1527
		db  0Ch, 14h,	1	; 1530
		db    6, 10h,	1	; 1533
		db    1, 18h,	1	; 1536
		db  0Bh, 10h,	1	; 1539
		db  0Bh, 10h,	4	; 1542
		db    9,   0,	4	; 1545
		db    4,   0,	1	; 1548
		db    9, 10h,	1	; 1551
		db  17h, 18h,	1	; 1554
		db    9,   8,	1	; 1557
		db    7,   0,	1	; 1560
		db    2,   1,	1	; 1563
		db    6,   0,	1	; 1566
		db  17h,   2,	1	; 1569
		db    1, 0Ah,	1	; 1572
		db  17h,   8,	1	; 1575
		db    9,   9,	1	; 1578
		db  0Ah,   8,	1	; 1581
		db  20h, 18h,	1	; 1584
		db  10h,   8,	1	; 1587
		db    1,   0,	1	; 1590
		db  11h,   2,	1	; 1593
		db  1Ah,   8,	1	; 1596
		db    7,   9,	1	; 1599
		db    6,   8,	1	; 1602
		db    4,   8,	2	; 1605
		db    9, 18h,	2	; 1608
		db    3, 19h,	2	; 1611
		db  13h, 18h,	2	; 1614
		db    8,   8,	2	; 1617
		db  0Dh,   0,	2	; 1620
		db    1,   8,	2	; 1623
		db    8,   0,	2	; 1626
		db    3,   8,	2	; 1629
		db    8,   0,	2	; 1632
		db    4,   1,	2	; 1635
		db  0Eh,   0,	2	; 1638
		db  0Ah,   0,	3	; 1641
		db  0Bh, 10h,	3	; 1644
		db  14h,   0,	3	; 1647
		db    5,   1,	3	; 1650
		db  0Fh,   0,	3	; 1653
		db    1,   4,	3	; 1656
		db  48h,   0,	3	; 1659
		db  0Fh, 10h,	3	; 1662
		db  0Bh,   0,	3	; 1665
		db    9, 10h,	3	; 1668
		db  0Dh,   0,	3	; 1671
		db    6,   4,	3	; 1674
		db    9,   0,	3	; 1677
		db    7,   8,	3	; 1680
		db    4,   9,	3	; 1683
		db    2,   8,	3	; 1686
		db  0Fh,   0,	3	; 1689
		db    7, 10h,	3	; 1692
		db    3,   0,	3	; 1695
		db    3, 10h,	3	; 1698
		db    1,   0,	3	; 1701
		db    4, 10h,	3	; 1704
		db    2,   0,	3	; 1707
		db    2, 10h,	3	; 1710
		db    7,   0,	3	; 1713
		db    1, 10h,	3	; 1716
		db  10h, 14h,	3	; 1719
		db  14h, 10h,	3	; 1722
		db  2Ah,   0,	3	; 1725
		db  1Eh,   8,	3	; 1728
		db    5,   9,	3	; 1731
		db    1,   8,	3	; 1734
		db  0Dh,   0,	3	; 1737
		db    1,   0,	1	; 1740
		db  13h, 10h,	1	; 1743
		db  13h, 10h,	4	; 1746
		db  10h,   0,	4	; 1749
		db    2,   0,	1	; 1752
		db    9, 10h,	1	; 1755
		db  0Ch, 18h,	1	; 1758
		db    8, 19h,	1	; 1761
		db  10h, 18h,	1	; 1764
		db    5, 10h,	1	; 1767
		db    6, 10h,	4	; 1770
		db  25h,   0,	4	; 1773
		db    4,   4,	4	; 1776
		db    8,   0,	4	; 1779
		db    8,   2,	4	; 1782
		db  2Eh,   0,	4	; 1785
		db    8,   4,	4	; 1788
		db    4,   0,	4	; 1791
		db    5,   4,	4	; 1794
		db  0Bh,   0,	4	; 1797
		db    1,   4,	4	; 1800
		db  0Ch,   0,	4	; 1803
		db    4,   4,	4	; 1806
		db    9,   0,	4	; 1809
		db    2,   4,	4	; 1812
		db  18h,   0,	4	; 1815
		db  0Bh,   8,	4	; 1818
		db    8,   9,	4	; 1821
		db    9,   8,	4	; 1824
		db    9,   0,	4	; 1827
		db    8,   8,	4	; 1830
		db    7,   0,	4	; 1833
		db    6,   8,	4	; 1836
		db  0Ah,   8,	3	; 1839
		db    6,   0,	3	; 1842
		db  0Ch, 10h,	3	; 1845
		db  36h,   0,	3	; 1848
		db  0Eh, 10h,	3	; 1851
		db  34h,   0,	3	; 1854
		db  0Dh, 10h,	3	; 1857
		db  4Ch,   0,	3	; 1860
		db    1,   8,	3	; 1863
		db    9,   0,	3	; 1866
		db    1,   8,	3	; 1869
		db  17h,   0,	3	; 1872
		db  0Ch,   0,	1	; 1875
		db  7Ch, 10h,	1	; 1878
		db    7, 18h,	1	; 1881
		db  0Ah, 10h,	1	; 1884
		db  19h, 10h,	4	; 1887
		db    9,   0,	4	; 1890
		db    4,   0,	1	; 1893
		db  2Bh, 10h,	1	; 1896
		db    6, 12h,	1	; 1899
		db    2, 1Ah,	1	; 1902
		db    5, 18h,	1	; 1905
		db  1Fh, 12h,	1	; 1908
		db    3,   2,	1	; 1911
		db    9, 12h,	1	; 1914
		db  15h, 12h,	2	; 1917
		db    2,   6,	2	; 1920
		db  14h,   2,	2	; 1923
		db  3Ah, 12h,	2	; 1926
		db    1, 10h,	2	; 1929
		db    2, 14h,	2	; 1932
		db  0Bh,   0,	2	; 1935
		db    9,   8,	2	; 1938
		db    4,   9,	2	; 1941
		db  18h, 18h,	2	; 1944
		db    9, 10h,	2	; 1947
		db    2, 18h,	2	; 1950
		db  0Ah, 10h,	2	; 1953
		db    7, 10h,	4	; 1956
		db  0Ah,   0,	4	; 1959
		db    1,   0,	1	; 1962
		db  40h, 10h,	1	; 1965
		db    3,   0,	1	; 1968
		db  19h,   2,	1	; 1971
		db    3, 12h,	1	; 1974
		db  14h, 10h,	1	; 1977
		db    7, 18h,	1	; 1980
		db    5, 19h,	1	; 1983
		db  11h, 18h,	1	; 1986
		db    4, 19h,	1	; 1989
		db  15h, 18h,	1	; 1992
		db    1, 10h,	1	; 1995
		db  18h, 14h,	1	; 1998
		db  0Ah, 18h,	1	; 2001
		db    5, 19h,	1	; 2004
		db  32h, 18h,	1	; 2007
		db    7, 10h,	1	; 2010
		db 0FFh,   0,	1	; 2013
		db 0FFh,   0,	1	; 2016
		db  2Fh,   0,	1	; 2019
		db  0Fh,   0,	4	; 2022
		db    3, 10h,	4	; 2025
		db    3,   0,	4	; 2028
		db    7,   1,	4	; 2031
		db  19h,   1,	1	; 2034
		db  29h, 11h,	1	; 2037
		db  14h,   1,	1	; 2040
		db  13h,   0,	1	; 2043
		db  3Bh, 10h,	1	; 2046
		db  0Bh, 18h,	1	; 2049
		db  0Ah, 10h,	1	; 2052
		db  0Dh, 10h,	4	; 2055
		db    2,   0,	4	; 2058
		db    3,   0,	1	; 2061
		db  31h, 10h,	1	; 2064
		db  11h,   0,	1	; 2067
		db    3,   2,	1	; 2070
		db  18h, 12h,	1	; 2073
		db    7, 10h,	1	; 2076
		db    2, 11h,	1	; 2079
		db    1,   1,	1	; 2082
		db  0Eh,   0,	1	; 2085
		db    7,   8,	1	; 2088
		db    4,   0,	1	; 2091
		db    6,   4,	1	; 2094
		db    3,   5,	1	; 2097
		db  0Eh,   0,	1	; 2100
		db    4,   4,	1	; 2103
		db  13h,   0,	1	; 2106
		db    1,   8,	1	; 2109
		db    8,   0,	1	; 2112
		db    1, 10h,	1	; 2115
		db  1Dh, 10h,	4	; 2118
		db  0Dh,   0,	4	; 2121
		db    2,   0,	2	; 2124
		db  2Eh, 10h,	2	; 2127
		db    7, 18h,	2	; 2130
		db  12h,   8,	2	; 2133
		db    2,   0,	2	; 2136
		db  0Bh, 10h,	2	; 2139
		db  25h,   0,	2	; 2142
		db  0Eh, 10h,	2	; 2145
		db  29h,   0,	2	; 2148
		db    7,   0,	4	; 2151
		db  12h, 10h,	4	; 2154
		db    6,   0,	4	; 2157
		db    4,   0,	1	; 2160
		db  25h, 10h,	1	; 2163
		db  1Bh, 18h,	1	; 2166
		db    5, 10h,	1	; 2169
		db    2, 11h,	1	; 2172
		db    1, 10h,	1	; 2175
		db  0Ch,   0,	1	; 2178
		db  0Fh,   2,	1	; 2181
		db  10h,   0,	1	; 2184
		db  0Bh, 10h,	1	; 2187
		db  7Eh, 12h,	1	; 2190
		db  0Ch, 12h,	3	; 2193
		db  5Ch,   2,	3	; 2196
		db  18h, 12h,	3	; 2199
		db    1, 13h,	3	; 2202
		db    5, 11h,	3	; 2205
		db  0Bh,   0,	3	; 2208
		db  5Fh,   2,	3	; 2211
		db    7,   8,	3	; 2214
		db    2,   0,	3	; 2217
		db  0Bh,   2,	3	; 2220
		db  1Ah, 12h,	3	; 2223
		db    5, 11h,	3	; 2226
		db    1,   1,	3	; 2229
		db  0Bh,   0,	3	; 2232
		db  25h,   2,	3	; 2235
		db  25h,   0,	3	; 2238
		db    2,   8,	3	; 2241
		db    7,   0,	3	; 2244
		db  1Ch, 10h,	4	; 2247
		db  1Ah,   0,	4	; 2250
		db    1,   0,	1	; 2253
		db  29h, 10h,	1	; 2256
		db  0Ah, 18h,	1	; 2259
		db  43h,   8,	1	; 2262
		db    2,   8,	2	; 2265
		db  14h, 18h,	2	; 2268
		db    4, 19h,	2	; 2271
		db  20h, 18h,	2	; 2274
		db    4, 19h,	2	; 2277
		db  22h, 18h,	2	; 2280
		db  12h, 10h,	2	; 2283
		db  19h, 18h,	2	; 2286
		db    9, 19h,	2	; 2289
		db  2Ah, 18h,	2	; 2292
		db    3, 18h,	1	; 2295
		db    9, 10h,	1	; 2298
		db    8, 18h,	1	; 2301
		db  36h, 10h,	1	; 2304
		db  2Dh,   0,	1	; 2307
		db    3,   0,	2	; 2310
		db  0Bh, 10h,	2	; 2313
		db  4Ch,   0,	2	; 2316
		db    7, 10h,	2	; 2319
		db  1Ah,   0,	2	; 2322
		db  34h,   8,	2	; 2325
		db    9,   0,	2	; 2328
		db    3,   0,	4	; 2331
		db  0Fh, 10h,	4	; 2334
		db  2Ah,   0,	4	; 2337
		db    1,   0,	1	; 2340
		db  12h, 10h,	1	; 2343
		db  10h, 10h,	3	; 2346
		db  10h, 18h,	3	; 2349
		db    1, 10h,	3	; 2352
		db  0Eh,   0,	3	; 2355
		db  29h,   2,	3	; 2358
		db    2,   0,	3	; 2361
		db    8,   8,	3	; 2364
		db    3, 0Ah,	3	; 2367
		db  0Bh,   2,	3	; 2370
		db    6,   0,	3	; 2373
		db    6,   4,	3	; 2376
		db    3,   0,	3	; 2379
		db    2,   8,	3	; 2382
		db    5,   0,	3	; 2385
		db    5,   0,	4	; 2388
		db  0Bh, 10h,	4	; 2391
		db  29h,   0,	4	; 2394
		db  0Eh,   0,	0	; 2397
		db    8,   8,	0	; 2400
		db    3,   0,	0	; 2403
		db    6,   4,	0	; 2406
		db  0Ch,   0,	0	; 2409
		db  0Ah,   0,	3	; 2412
		db    2,   4,	3	; 2415
		db  0Fh,   0,	3	; 2418
		db    6, 10h,	3	; 2421
		db    5,   0,	3	; 2424
		db  0Dh,   8,	3	; 2427
		db  12h,   0,	3	; 2430
		db    2,   4,	3	; 2433
		db    3,   0,	3	; 2436
		db    3,   0,	2	; 2439
		db    7, 10h,	2	; 2442
		db  56h,   0,	2	; 2445
		db    2,   4,	2	; 2448
		db    6,   0,	2	; 2451
		db    2,   4,	2	; 2454
		db    9,   0,	2	; 2457
		db    5,   4,	2	; 2460
		db    3,   5,	2	; 2463
		db  0Ah,   4,	2	; 2466
		db    1,   4,	1	; 2469
		db    1, 14h,	1	; 2472
		db  1Eh, 10h,	1	; 2475
		db    2, 18h,	1	; 2478
		db    8, 10h,	1	; 2481
		db    2, 11h,	1	; 2484
		db    1,   1,	1	; 2487
		db  0Dh,   0,	1	; 2490
		db  0Dh, 10h,	1	; 2493
		db    3, 11h,	1	; 2496
		db  19h,   0,	1	; 2499
		db    7,   0,	2	; 2502
		db    5, 10h,	2	; 2505
		db  24h,   0,	2	; 2508
		db    8,   8,	2	; 2511
		db    3,   9,	2	; 2514
		db    2,   8,	2	; 2517
		db    3,   0,	2	; 2520
		db  16h, 10h,	1	; 2523
		db  0Fh,   0,	1	; 2526
		db  19h,   8,	1	; 2529
		db    3,   0,	1	; 2532
		db  0Dh, 10h,	1	; 2535
		db  4Ch,   0,	1	; 2538
		db  1Fh, 10h,	1	; 2541
		db    1, 14h,	1	; 2544
		db  0Eh,   0,	1	; 2547
		db    2,   4,	1	; 2550
		db    4,   4,	3	; 2553
		db    4, 14h,	3	; 2556
		db  0Ch, 10h,	3	; 2559
		db  10h,   0,	3	; 2562
		db    1,   4,	3	; 2565
		db    5,   0,	3	; 2568
		db    2,   4,	3	; 2571
		db    4,   0,	3	; 2574
		db    1,   4,	3	; 2577
		db  13h,   0,	3	; 2580
		db  0Bh,   0,	4	; 2583
		db    1, 10h,	4	; 2586
		db    8,   0,	4	; 2589
		db  13h,   1,	3	; 2592
		db  0Dh, 11h,	3	; 2595
		db  0Ch,   1,	3	; 2598
		db  19h,   0,	3	; 2601
		db    6,   8,	3	; 2604
		db    7,   0,	3	; 2607
		db    2,   4,	3	; 2610
		db    9,   0,	3	; 2613
		db    4,   4,	3	; 2616
		db    4,   5,	3	; 2619
		db    8,   4,	3	; 2622
		db  0Ah,   0,	3	; 2625
		db    1,   0,	1	; 2628
		db  0Dh, 10h,	1	; 2631
		db  0Eh,   0,	1	; 2634
		db    1, 10h,	1	; 2637
		db    4, 18h,	1	; 2640
		db  10h, 10h,	1	; 2643
		db  16h,   0,	1	; 2646
		db    5,   8,	1	; 2649
		db    8,   0,	1	; 2652
		db    3,   4,	3	; 2655
		db    5,   0,	3	; 2658
		db  0Ah, 10h,	3	; 2661
		db    2, 11h,	3	; 2664
		db    1, 10h,	3	; 2667
		db  11h,   0,	3	; 2670
		db    5,   8,	3	; 2673
		db    9,   0,	3	; 2676
		db    6,   0,	2	; 2679
		db    4, 10h,	2	; 2682
		db  11h,   0,	2	; 2685
		db    3,   0,	1	; 2688
		db  0Eh, 10h,	1	; 2691
		db    4, 11h,	1	; 2694
		db  31h,   0,	1	; 2697
		db  12h,   0,	2	; 2700
		db    9,   4,	2	; 2703
		db    2,   0,	2	; 2706
		db    6,   8,	2	; 2709
		db    3,   9,	2	; 2712
		db    4,   8,	2	; 2715
		db    2,   8,	1	; 2718
		db    2, 18h,	1	; 2721
		db  12h, 10h,	1	; 2724
		db  11h,   0,	1	; 2727
		db    9, 10h,	1	; 2730
		db    8, 14h,	1	; 2733
		db    2, 10h,	1	; 2736
		db  0Fh,   0,	1	; 2739
		db  0Ch, 18h,	1	; 2742
		db    6, 10h,	1	; 2745
		db    1, 14h,	1	; 2748
		db    5, 10h,	1	; 2751
		db    2, 14h,	1	; 2754
		db  0Ah, 10h,	1	; 2757
		db  20h, 10h,	4	; 2760
		db  2Ch,   0,	4	; 2763
		db    6,   8,	4	; 2766
		db    7,   0,	4	; 2769
		db    2,   4,	4	; 2772
		db    6,   0,	4	; 2775
		db    1,   4,	4	; 2778
		db    7,   0,	4	; 2781
		db    3,   1,	4	; 2784
		db  0Dh,   0,	4	; 2787
		db  0Ah, 10h,	4	; 2790
		db    5,   0,	4	; 2793
		db    3,   8,	4	; 2796
		db  11h,   0,	4	; 2799
		db    1,   4,	4	; 2802
		db  10h,   0,	4	; 2805
		db  2Bh, 10h,	4	; 2808
		db    1,   0,	4	; 2811
		db  27h,   1,	4	; 2814
		db  0Fh,   0,	4	; 2817
		db    9,   0,	1	; 2820
		db    5, 10h,	1	; 2823
		db  0Bh, 14h,	1	; 2826
		db    6, 10h,	1	; 2829
		db  0Dh,   0,	1	; 2832
		db  0Bh,   4,	1	; 2835
		db    2,   0,	1	; 2838
		db  17h, 10h,	1	; 2841
		db    4, 11h,	1	; 2844
		db  28h,   0,	1	; 2847
		db  15h, 10h,	1	; 2850
		db    2, 11h,	1	; 2853
		db    1,   1,	1	; 2856
		db  2Fh,   0,	1	; 2859
		db  0Eh, 10h,	1	; 2862
		db    4, 11h,	1	; 2865
		db    1,   1,	1	; 2868
		db  3Eh,   0,	1	; 2871
		db  15h, 10h,	1	; 2874
		db    2, 18h,	1	; 2877
		db    9, 10h,	1	; 2880
		db    2, 18h,	1	; 2883
		db  36h, 10h,	1	; 2886
		db  0Ah,   0,	1	; 2889
		db    1,   0,	2	; 2892
		db    4, 10h,	2	; 2895
		db  0Ah, 18h,	2	; 2898
		db    7, 10h,	2	; 2901
		db  29h,   0,	2	; 2904
		db    7,   8,	2	; 2907
		db    5, 18h,	2	; 2910
		db    2, 18h,	1	; 2913
		db  1Ch, 10h,	1	; 2916
		db  0Fh,   0,	1	; 2919
		db    3, 10h,	1	; 2922
		db    3, 14h,	1	; 2925
		db    8, 10h,	1	; 2928
		db  0Ch,   0,	1	; 2931
		db    2, 10h,	1	; 2934
		db    9, 14h,	1	; 2937
		db    3, 10h,	1	; 2940
		db    3, 18h,	1	; 2943
		db  0Ah, 10h,	1	; 2946
		db  0Fh, 10h,	4	; 2949
		db  0Fh,   0,	4	; 2952
		db    4,   0,	1	; 2955
		db  0Eh, 10h,	1	; 2958
		db    9, 18h,	1	; 2961
		db    3, 19h,	1	; 2964
		db    9, 18h,	1	; 2967
		db  0Ch, 10h,	1	; 2970
		db  0Bh, 18h,	1	; 2973
		db    5, 19h,	1	; 2976
		db  24h, 18h,	1	; 2979
		db  0Bh, 19h,	1	; 2982
		db  18h, 18h,	1	; 2985
		db    5, 19h,	1	; 2988
		db    6, 18h,	1	; 2991
		db  0Eh, 10h,	1	; 2994
		db 0FFh,   0,	1	; 2997
		db  1Ch,   0,	1	; 3000
		db  0Fh, 10h,	1	; 3003
		db  27h,   0,	1	; 3006
		db  3Ch,   0,	4	; 3009
		db    1,   8,	4	; 3012
		db    9,   0,	4	; 3015
		db    2,   8,	4	; 3018
		db  31h,   0,	4	; 3021
		db  0Dh, 10h,	4	; 3024
		db  31h,   0,	4	; 3027
		db    1,   0,	1	; 3030
		db    3, 10h,	1	; 3033
		db  16h, 18h,	1	; 3036
		db    7, 10h,	1	; 3039
		db    2, 11h,	1	; 3042
		db    1, 10h,	1	; 3045
		db  0Fh,   0,	1	; 3048
		db    2, 10h,	1	; 3051
		db  10h, 18h,	1	; 3054
		db    2, 10h,	1	; 3057
		db  0Eh,   0,	1	; 3060
		db  0Dh,   8,	1	; 3063
		db    9, 18h,	1	; 3066
		db    2, 14h,	1	; 3069
		db    1, 20h		; 3072

; =============== S U B	R O U T	I N E =======================================


PrepareFooter_	proc near		; CODE XREF: start+2Dp	start+97p ...
		call	PrepareFooter
		retn
PrepareFooter_	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR IncreaseForce

DrawForce:				; CODE XREF: IncreaseForce+1Dj
					; SetForceToZero+6j
		push	cx
		push	dx
		mov	cx, Force
		mov	bx, 1B86h
		mov	dx, 3B86h
		mov	ah, 55h
		call	DrawSingleGauge
		pop	dx
		pop	cx
		retn
; END OF FUNCTION CHUNK	FOR IncreaseForce

; =============== S U B	R O U T	I N E =======================================


DrawFood	proc near		; CODE XREF: DecreaseFoodNWater:loc_14F0p
					; InitFood+6j
		mov	cx, word ptr FoodLevel
		mov	bx, 3BD6h
		mov	dx, 1C26h
		mov	ah, 0AAh
		jmp	short DrawSingleGauge
DrawFood	endp


; =============== S U B	R O U T	I N E =======================================


DrawWater	proc near		; CODE XREF: DecreaseFoodNWater:loc_14FEp
					; PrepareFooter-3j
		mov	cx, word ptr WaterLevel
		mov	bx, 1C76h
		mov	dx, 3C76h
		mov	ah, 0FFh
DrawWater	endp


; =============== S U B	R O U T	I N E =======================================


DrawSingleGauge	proc near		; CODE XREF: IncreaseForce+2B4Cp
					; DrawFood+Cj
		sar	cl, 1		; /= 2
		push	ds
		push	dx
		mov	dx, 0B800h
		mov	ds, dx
		assume ds:nothing
		pop	dx
		mov	ch, 1Eh
		sub	ch, cl
		call	sub_3285
		mov	bx, dx
		call	sub_3285
		pop	ds
		assume ds:CODE
		retn
DrawSingleGauge	endp


; =============== S U B	R O U T	I N E =======================================


sub_3285	proc near		; CODE XREF: DrawSingleGauge+Ep
					; DrawSingleGauge+13p
		push	cx
		push	bx
		mov	al, cl
		or	al, al
		jz	short loc_329A

loc_328D:				; CODE XREF: sub_3285+Dj
		mov	[bx], ah
		inc	bx
		dec	cl
		jnz	short loc_328D
		mov	al, ch
		or	al, al
		jz	short loc_32A2

loc_329A:				; CODE XREF: sub_3285+6j sub_3285+1Bj
		mov	byte ptr [bx], 0
		inc	bx
		dec	ch
		jnz	short loc_329A

loc_32A2:				; CODE XREF: sub_3285+13j
		pop	bx
		pop	cx
		retn
sub_3285	endp


; =============== S U B	R O U T	I N E =======================================


Loc1DScript0	proc near		; DATA XREF: CODE:867Co
		mov	ah, MovingFloorDelay
		inc	ah
		mov	MovingFloorDelay, ah
		cmp	ah, 0Ah
		jz	short loc_32B5
		retn
; ---------------------------------------------------------------------------

loc_32B5:				; CODE XREF: Loc1DScript0+Dj
		xor	ah, ah
		mov	MovingFloorDelay, ah
		mov	si, offset PlayerData
		mov	ch, 12h
		test	[si+CharData_t.HorizontalSpeed], LeftDirection
		jnz	short loc_32CD
		mov	bx, (offset PrimaryBuffer+2D0h)
		mov	cl, 27h
		jmp	short loc_32F0
; ---------------------------------------------------------------------------

loc_32CD:				; CODE XREF: Loc1DScript0+1Fj
		mov	bx, (offset PrimaryBuffer+2F7h)
		mov	cl, 0
		mov	ah, [bx]
		mov	bx, (offset PrimaryBuffer+2F6h)
		mov	dx, (offset PrimaryBuffer+2F7h)
		mov	cx, 27h
		xchg	si, bx
		xchg	di, dx
		std
		rep movsb
		xchg	si, bx
		xchg	di, dx
		xchg	dx, bx
		mov	[bx], ah
		xchg	dx, bx
		jmp	short loc_330C
; ---------------------------------------------------------------------------

loc_32F0:				; CODE XREF: Loc1DScript0+26j
		mov	ah, [bx]
		mov	bx, (offset PrimaryBuffer+2D1h)
		mov	dx, (offset PrimaryBuffer+2D0h)
		mov	cx, 27h
		xchg	si, bx
		xchg	di, dx
		cld
		rep movsb
		xchg	si, bx
		xchg	di, dx
		xchg	dx, bx
		mov	[bx], ah
		xchg	dx, bx

loc_330C:				; CODE XREF: Loc1DScript0+49j
		mov	ch, 12h
		mov	cl, 0
		mov	ah, 28h
		mov	si, (offset PrimaryBuffer+2D0h)

loc_3315:				; CODE XREF: Loc1DScript0+7Cj
		push	ax
		mov	ah, [si]
		call	DrawFloatingLog	; AH = Tile No.
					; BH = screen row
					; BL = 8-pixel col
		inc	si
		inc	cl
		pop	ax
		dec	ah
		jnz	short loc_3315
		retn
Loc1DScript0	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR DrawUsedWeapon

Continue:				; CODE XREF: DrawUsedWeapon+28j
		mov	ah, Weapon	; 7 6 5	4 3 2 1	0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		and	ah, 0Fh
		mov	dl, ah		; Index	of newly selected weapon
		mov	ah, Temp
		and	ah, 0Fh
		cmp	ah, dl
		jnz	short loc_3339
		retn
; ---------------------------------------------------------------------------

loc_3339:				; CODE XREF: DrawUsedWeapon+2A28j
		or	ah, ah
		jz	short loc_3343
		call	_LoadWeaponRect
		call	DrawWpnSelection

loc_3343:				; CODE XREF: DrawUsedWeapon+2A2Dj
		mov	ah, Weapon	; 7 6 5	4 3 2 1	0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		and	ah, 0Fh
		jz	short loc_3352
		call	_LoadWeaponRect
		call	DrawWpnSelection

loc_3352:				; CODE XREF: DrawUsedWeapon+2A3Cj
		mov	ah, Weapon	; 7 6 5	4 3 2 1	0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
		mov	Temp, ah
		retn
; END OF FUNCTION CHUNK	FOR DrawUsedWeapon

; =============== S U B	R O U T	I N E =======================================


_LoadWeaponRect	proc near		; CODE XREF: DrawUsedWeapon+2A2Fp
					; DrawUsedWeapon+2A3Ep
		mov	dh, 0
		mov	bx, offset byte_7FB6
		dec	ah
		mov	dl, ah
		add	bx, dx
		mov	cl, [bx]
		mov	ch, 16h
		retn
_LoadWeaponRect	endp


; =============== S U B	R O U T	I N E =======================================


DrawWpnSelection proc near		; CODE XREF: DrawUsedWeapon+2A32p
					; DrawUsedWeapon+2A41p
		mov	ax, 0FFFFh	; Drawn	by XOR
		jmp	short $+2	; directly in framebuffer
		push	ds
		mov	dx, 0B800h
		mov	ds, dx
		assume ds:nothing
		mov	bx, cx
		mov	dl, bh
		mov	dh, 0
		push	ax
		mov	ax, 140h
		mul	dx
		mov	bh, 0
		add	ax, bx
		add	ax, bx
		mov	bx, ax
		mov	cx, 8
		pop	ax

loc_338E:				; CODE XREF: DrawWpnSelection+37j
		xor	[bx], ax
		inc	bx
		inc	bx
		xor	[bx], ax
		add	bx, 1FFEh
		xor	[bx], ax
		inc	bx
		inc	bx
		xor	[bx], ax
		sub	bx, 1FB2h
		loop	loc_338E
		pop	ds
		assume ds:CODE
		retn
DrawWpnSelection endp


; =============== S U B	R O U T	I N E =======================================


SetVideoMode	proc near		; CODE XREF: start+24p
		mov	ax, 4
		int	10h		; - VIDEO - SET	VIDEO MODE
					; AL = mode
		call	SetRGYPalette_0
		retn
SetVideoMode	endp


; =============== S U B	R O U T	I N E =======================================


SetRGYPalette_0	proc near		; CODE XREF: SetVideoMode+5p
					; AdjustPalette+29j
		mov	bx, 100h
		mov	cs:CurrentPalette, bl
		mov	ax, 0B00h
		int	10h		; - VIDEO - SET	COLOR PALETTE
					; BH = 00h, BL = border	color
					; BH = 01h, BL = palette (0-3)
		retn
SetRGYPalette_0	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR AdjustPalette

SetCWBPalette:				; CODE XREF: AdjustPalette+1Dj
		mov	bx, 101h
		mov	cs:CurrentPalette, bl
		mov	ax, 0B00h
		int	10h		; - VIDEO - SET	COLOR PALETTE
					; BH = 00h, BL = border	color
					; BH = 01h, BL = palette (0-3)
		retn
; END OF FUNCTION CHUNK	FOR AdjustPalette

; =============== S U B	R O U T	I N E =======================================


PollKeyboard	proc near		; CODE XREF: HandleInput:GameOrDemop
		mov	byte ptr KeysPressed, 0
		mov	al, KeyQ
		or	al, KeyUp
		test	al, Pressed
		jz	short loc_33E0
		or	byte ptr KeysPressed, Key_Up

loc_33E0:				; CODE XREF: PollKeyboard+Ej
		mov	al, KeyA
		or	al, KeyDown
		test	al, Pressed
		jz	short loc_33F0
		or	byte ptr KeysPressed, Key_Down

loc_33F0:				; CODE XREF: PollKeyboard+1Ej
		mov	al, KeyO
		or	al, KeyLeft
		test	al, Pressed
		jz	short loc_3400
		or	byte ptr KeysPressed, Key_Left

loc_3400:				; CODE XREF: PollKeyboard+2Ej
		mov	al, KeyP
		or	al, KeyRight
		test	al, Pressed
		jz	short loc_3410
		or	byte ptr KeysPressed, Key_Right

loc_3410:				; CODE XREF: PollKeyboard+3Ej
		mov	al, KeySpace
		or	al, KeyAct2
		or	al, KeyAct3
		test	al, Pressed
		jz	short loc_3424
		or	byte ptr KeysPressed, Key_Fire

loc_3424:				; CODE XREF: PollKeyboard+52j
		mov	al, KeyScrollLock
		test	al, Pressed
		jz	short loc_3430
		or	byte ptr KeysPressed, Key_Break

loc_3430:				; CODE XREF: PollKeyboard+5Ej
		test	KeyF1, Pressed
		jz	short loc_343C
		or	byte ptr KeysPressed, Key_Save

loc_343C:				; CODE XREF: PollKeyboard+6Aj
		mov	al, GameOverFlag
		or	al, al
		jz	short loc_3444
		retn
; ---------------------------------------------------------------------------

loc_3444:				; CODE XREF: PollKeyboard+76j
		test	Key1, Pressed
		jz	short loc_3451
		mov	SelectedWeapon,	ABoomerang ; Changes when player press keys '1'...'4'
		retn
; ---------------------------------------------------------------------------

loc_3451:				; CODE XREF: PollKeyboard+7Ej
		test	Key2, Pressed
		jz	short loc_345E
		mov	SelectedWeapon,	AKnife ; Changes when player press keys	'1'...'4'
		retn
; ---------------------------------------------------------------------------

loc_345E:				; CODE XREF: PollKeyboard+8Bj
		test	Key3, Pressed
		jz	short loc_346B
		mov	SelectedWeapon,	ABomb ;	Changes	when player press keys '1'...'4'
		retn
; ---------------------------------------------------------------------------

loc_346B:				; CODE XREF: PollKeyboard+98j
		test	Key4, Pressed
		jz	short locret_3477
		mov	SelectedWeapon,	ARod ; Changes when player press keys '1'...'4'

locret_3477:				; CODE XREF: PollKeyboard+A5j
		retn
PollKeyboard	endp

; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		test	byte ptr KeysPressed, Key_Break
		jnz	short loc_3482
		retn
; ---------------------------------------------------------------------------

loc_3482:				; CODE XREF: CODE:347Fj CODE:3487j
		test	byte ptr KeysPressed, Key_Break
		jnz	short loc_3482
		mov	al, 1
		or	al, al
		retn
; ---------------------------------------------------------------------------
		db 0

; =============== S U B	R O U T	I N E =======================================


CheckForEnterKey proc near		; CODE XREF: CheckForBreakAndPause:IfNotInterruptedp
					; CheckForBreakAndPause:Pausedp ...
		test	KeyEnter, Pressed
		retn
CheckForEnterKey endp


; =============== S U B	R O U T	I N E =======================================


IfSpacePressed	proc near		; CODE XREF: start+2Ap	start+84p
		test	KeySpace, Pressed
		retn
IfSpacePressed	endp


; =============== S U B	R O U T	I N E =======================================

; BH = screen row
; BL = 8-pixel col
; AX = tile No.

Draw8x8World	proc near		; CODE XREF: DrawWorldDifferences+12p
		push	si
		push	di
		push	ax
		push	cx
		push	dx
		push	bx
		push	es
		mov	cl, 4
		shl	ax, cl
		add	ax, offset Tile8x8World
		mov	si, ax
		jmp	short DrawTile	; BH = screen row
Draw8x8World	endp			; BL = 8-pixel col
					; SI = Tile start addr.

; =============== S U B	R O U T	I N E =======================================

; AX = sprite No. (8x8)
; CX = destination

Draw8x8Footer	proc near		; CODE XREF: DrawFooterTile+4p
					; BonusScoreScript+10BEp ...
		push	si
		push	di
		push	ax
		push	cx
		push	dx
		mov	bx, cx
		push	bx
		push	es
		mov	cl, 4
		shl	ax, cl
		add	ax, offset Tile8x8Footer
		mov	si, ax

DrawTile:				; CODE XREF: Draw8x8World+10j
					; DrawFloatingLog+16j
		mov	dx, 0B800h	; BH = screen row
					; BL = 8-pixel col
					; SI = Tile start addr.
		mov	es, dx
		assume es:nothing
		mov	dl, bh
		mov	dh, 0
		mov	ax, 320
		mul	dx
		mov	bh, 0
		add	ax, bx
		add	ax, bx
		mov	di, ax
		cld
		mov	cx, 4

loc_34D9:				; CODE XREF: Draw8x8Footer+36j
		movsw
		add	di, 1FFEh	; Fucking interleaving
		movsw
		sub	di, 1FB2h
		loop	loc_34D9
		pop	es
		assume es:nothing
		pop	bx
		pop	dx
		pop	cx
		pop	ax
		pop	di
		pop	si
		retn
Draw8x8Footer	endp


; =============== S U B	R O U T	I N E =======================================

; AH = Tile No.
; BH = screen row
; BL = 8-pixel col

DrawFloatingLog	proc near		; CODE XREF: _FloatingLog+16p
					; _AnimateLog+1Dp ...
		push	si
		push	di
		push	ax
		push	cx
		push	dx
		mov	bx, cx
		push	bx
		push	es
		mov	cl, 4
		mov	al, ah
		mov	ah, 0
		shl	ax, cl
		add	ax, offset Tile8x8World
		mov	si, ax
		jmp	short DrawTile	; BH = screen row
DrawFloatingLog	endp			; BL = 8-pixel col
					; SI = Tile start addr.

; =============== S U B	R O U T	I N E =======================================


DecodeLocationBackground proc near	; CODE XREF: start+56p
					; GoToNewLocation+10p

; FUNCTION CHUNK AT 1C7D SIZE 00000024 BYTES
; FUNCTION CHUNK AT 1CE7 SIZE 0000007A BYTES

		mov	si, offset PrimaryBuffer ; Copy	800b buffer onwards
		mov	di, offset SecondaryBuffer ; Copying prim to sec
		mov	cx, 400		; 400 words = 800 bytes	= 20 rows
		cld
		rep movsw		; Copied
		mov	si, offset PrimaryBuffer ; Clear it
		mov	di, (offset PrimaryBuffer+2)
		mov	cx, 398
		mov	bx, 0
		mov	[si], bx
		rep movsw		; Cleared
		mov	al, Location
		mov	ah, 0
		add	ax, ax
		add	ax, offset BkgList
		mov	bx, ax		; BX = 2*AX+0x7C89 (7d03)
		mov	dx, [bx]	; RoomsIndex element[Location] (1996)
		mov	si, offset Backgrounds
		add	si, dx		; Beginning of selected	room (ROOM)(5956)
		mov	ch, [si]	; CH = ROOM[0]
		inc	si

BlockLoop:				; CODE XREF: DecodeLocationBackground+74j
		push	cx		; Store	counter	value (CH)
		mov	bl, [si+1]	; BL = ROOM[2]
		mov	ax, CGA_TilesPerRow ; 0x28 - N of tiles	in a line
		mul	bl		; ROOM[2] - row	number?
		mov	dl, [si]	; DL = ROOM[1]
		mov	dh, 0		; DX = ROOM[1]
		add	ax, dx		; Room[1] - column number? AX =	in-screen offset
		add	ax, offset PrimaryBuffer ; (E334)
		mov	di, ax		; Destination offset (in UnpackedRoom)
		mov	bx, [si+2]	; BX = ROOM[3]
		add	bx, offset Blocks ; Offset in some another table (TABLE)
		mov	cx, [bx]	; CX = TABLE[0].word_0
		inc	bx
		inc	bx		; Shift	pointer	by 2

VerticalLoop:				; CODE XREF: DecodeLocationBackground+6Aj
		push	cx		; Store	TABLE[].word_0
		push	di		; Store	UnpackedRoom pointer

HorizontalLoop:				; CODE XREF: DecodeLocationBackground+5Fj
		mov	al, [bx]	; AL = TABLE[0].byte_0
		or	al, al
		jz	short SkipTile	; If it	is zero	- go ahead
		mov	[di], al	; If not - move	it to UnpackedRoom

SkipTile:				; CODE XREF: DecodeLocationBackground+57j
		inc	bx		; Shift	TABLE pointer by 1
		inc	di		; Inc UnpackedRoom pointer
		dec	cl		; Dec COL counter (?)
		jnz	short HorizontalLoop ; AL = TABLE[0].byte_0
		pop	di		; Restore UnpackedRoom pointer
		pop	cx		; Restore TABLE[].word_0
		mov	ax, CGA_TilesPerRow ; Move to the next line
		add	di, ax
		dec	ch		; Dec ROW counter?
		jnz	short VerticalLoop ; Store TABLE[].word_0
		mov	dx, 4
		add	si, dx
		pop	cx
		dec	ch
		jnz	short BlockLoop	; Store	counter	value (CH)
		jmp	loc_1C7D
DecodeLocationBackground endp


; =============== S U B	R O U T	I N E =======================================


DrawWorldDifferences proc near		; CODE XREF: start+5Cp
					; GoToNewLocation+16j
ColCounter(BL) = bl
RowCounter(BH) = bh
		mov	di, offset PrimaryBuffer
		mov	si, offset SecondaryBuffer ; Drawing background
		mov	bx, 0

loc_3587:				; CODE XREF: DrawWorldDifferences+1Cj
					; DrawWorldDifferences+25j
		mov	al, [di]
		cmpsb
		jz	short SameTiles
		mov	ah, 0		; Draw the difference
		push	si
		push	di
		call	Draw8x8World	; BH = screen row
					; BL = 8-pixel col
					; AX = tile No.
		pop	di
		pop	si

SameTiles:				; CODE XREF: DrawWorldDifferences+Cj
		inc	ColCounter(BL)
		cmp	ColCounter(BL),	CGA_TilesPerRow
		jnz	short loc_3587
		mov	ColCounter(BL),	0
		inc	RowCounter(BH)
		cmp	RowCounter(BH),	20
		jnz	short loc_3587
		mov	WorldRedrawn, 1
		call	AdjustPalette
		retn
DrawWorldDifferences endp


; =============== S U B	R O U T	I N E =======================================


AdjustPalette	proc near		; CODE XREF: DrawWorldDifferences+2Cp

; FUNCTION CHUNK AT 33BD SIZE 0000000E BYTES

		cmp	Location, 3Ah	; Pit
		jz	short CyanMagentaWhite
		cmp	Location, 2Ch	; Dungeon
		jb	short RedGreenYellow
		cmp	Location, 38h	; After	the temple
		jnb	short RedGreenYellow

CyanMagentaWhite:			; CODE XREF: AdjustPalette+5j
		cmp	cs:CurrentPalette, 0
		jnz	short locret_35CE
		jmp	SetCWBPalette
; ---------------------------------------------------------------------------

locret_35CE:				; CODE XREF: AdjustPalette+1Bj
		retn
; ---------------------------------------------------------------------------

RedGreenYellow:				; CODE XREF: AdjustPalette+Cj
					; AdjustPalette+13j
		cmp	cs:CurrentPalette, 1
		jnz	short locret_35DA
		jmp	SetRGYPalette_0
; ---------------------------------------------------------------------------

locret_35DA:				; CODE XREF: AdjustPalette+27j
		retn
AdjustPalette	endp

; ---------------------------------------------------------------------------
CurrentPalette	db 1			; DATA XREF: SetRGYPalette_0+3w
					; AdjustPalette-1EEw ...

; =============== S U B	R O U T	I N E =======================================


PreparePlaceholders proc near		; CODE XREF: start+38p	start+B4p ...
		mov	si, offset PlayerData

loc_35DF:				; CODE XREF: PreparePlaceholders+13j
		test	[si+CharData_t.CharFlags], CFActive
		jz	short loc_35E7
		call	DrawSquareBrackets

loc_35E7:				; CODE XREF: PreparePlaceholders+6j
		mov	dx, size CharData_t
		add	si, dx		; Next character
		cmp	[si+CharData_t.CharFlags], 0FFh
		jnz	short loc_35DF
		retn
PreparePlaceholders endp


; =============== S U B	R O U T	I N E =======================================

; CH = Row
; Cl = Col
; Addr in PrimaryBuffer	= BX

GetTileAt2_PrimBuf proc	near		; CODE XREF: DrawSquareBrackets+9p
		mov	ax, CGA_TilesPerRow
		mul	ch
		mov	ch, 0
		add	ax, cx
		mov	bx, offset PrimaryBuffer
		add	bx, ax
		retn
GetTileAt2_PrimBuf endp


; =============== S U B	R O U T	I N E =======================================


DrawSquareBrackets proc	near		; CODE XREF: PreparePlaceholders+8p
		mov	cx, word ptr [si+CharData_t._2xCol_2] ;
					; CL = _2xCol_2
					; CH = _4xRow_2
		shr	cl, 1		; CL /=	2
		shr	ch, 1
		shr	ch, 1		; CH /=	4
		call	GetTileAt2_PrimBuf ; CH	= Row
					; Cl = Col
					; Addr in PrimaryBuffer	= BX
		mov	cx, word ptr [si+CharData_t.AnimWidth]
		shr	cl, 1		; Width/2
		shr	ch, 1
		shr	ch, 1
		shr	ch, 1		; Height/8
		inc	ch
		inc	ch		; CH = AnimHeight/8+2
		inc	cl
		inc	cl		; CL = AnimWidth/2+2
i.e. CL	= frame	height IN TILE UNITS plus 2
     CH	= frame	height also IN TILE UNITS + 2
		mov	dx, CGA_TilesPerRow
		mov	ah, 0FFh

loc_3625:				; CODE XREF: DrawSquareBrackets+3Aj
		push	cx
		push	bx

loc_3627:				; CODE XREF: DrawSquareBrackets+2Bj
		mov	[bx], ah	; Put 0xFF tile	(square	brackets) to calculated	position
		inc	bx
		dec	cl		; Decrease col counter
		jnz	short loc_3627	; Put 0xFF tile	(square	brackets) to calculated	position
		mov	cx, (offset PrimaryBuffer+2F8h)	; 19*40
		sub	bx, cx
		jnb	short loc_363E
		pop	bx
		add	bx, dx		; Move to the next row
		pop	cx
		dec	ch		; Decrease row counter
		jnz	short loc_3625
		retn
; ---------------------------------------------------------------------------

loc_363E:				; CODE XREF: DrawSquareBrackets+32j
		pop	bx
		pop	cx
		retn
DrawSquareBrackets endp


; =============== S U B	R O U T	I N E =======================================


DrawCharacters	proc near		; CODE XREF: MainLoop+1Ap
					; HandlePlayer+3E6p ...
		push	si
		mov	di, offset Characters

loc_3645:				; CODE XREF: DrawCharacters+11j
					; DrawCharacters+1Bj ...
		call	GetNextCharacter ; DI =	Current	CharPtr
					; If table is over
					;   DI = &Characters[0]
					;   ZF = 1
					; else
					;   NextCharPtr	= SI
					;   ZF = 0
		jz	short _TableIsOver
		test	[si+CharData_t.CharFlags], CFSuspended
		jz	short loc_365E
		test	[si+CharData_t.CharFlags], CFRemoved
		jz	short loc_3645
		call	RemoveEnemy	; SI = Current enemy address
					; Pointer to table cell	-> BX
		dec	di
		dec	di
		mov	[si+CharData_t.CharFlags], 0
		jmp	short loc_3645
; ---------------------------------------------------------------------------

loc_365E:				; CODE XREF: DrawCharacters+Cj
		call	CalcDrawingVars
		jmp	short loc_3645
; ---------------------------------------------------------------------------

_TableIsOver:				; CODE XREF: DrawCharacters+7j
					; DrawCharacters+2Aj ...
		call	GetNextCharacter ; DI =	Current	CharPtr
					; If table is over
					;   DI = &Characters[0]
					;   ZF = 1
					; else
					;   NextCharPtr	= SI
					;   ZF = 0
		jz	short loc_367F
		test	[si+CharData_t.CharFlags], CFSuspended
		jnz	short _TableIsOver
		test	[si+CharData_t.CharFlags2], CF2DoNotDraw
		jnz	short loc_3676
		call	_DrawChr1

loc_3676:				; CODE XREF: DrawCharacters+30j
		and	[si+CharData_t.CharFlags2], not	(CF2DoNotDraw)
		and	[si+CharData_t.CharFlags], not (CFRodJumping)
		jmp	short _TableIsOver
; ---------------------------------------------------------------------------

loc_367F:				; CODE XREF: DrawCharacters+25j
		pop	si
		mov	WorldRedrawn, 1
		retn
DrawCharacters	endp


; =============== S U B	R O U T	I N E =======================================

; DI = Current CharPtr
; If table is over
;   DI = &Characters[0]
;   ZF = 1
; else
;   NextCharPtr	= SI
;   ZF = 0

GetNextCharacter proc near		; CODE XREF: DrawCharacters:loc_3645p
					; DrawCharacters:_TableIsOverp	...
		mov	al, [di]
		or	al, [di+1]
		jnz	short loc_3691
		mov	di, offset Characters
		retn
; ---------------------------------------------------------------------------

loc_3691:				; CODE XREF: GetNextCharacter+5j
		mov	si, [di]
		inc	di
		inc	di
		retn
GetNextCharacter endp


; =============== S U B	R O U T	I N E =======================================


CalcDrawingVars	proc near		; CODE XREF: DrawCharacters:loc_365Ep
		test	[si+CharData_t.CharFlags], CFRodJumping
		jz	short loc_36A0
		call	__RealToAlt	; SI = ptr to CharData_t
		jmp	short loc_36C2
; ---------------------------------------------------------------------------

loc_36A0:				; CODE XREF: CalcDrawingVars+3j
		mov	cx, word ptr [si+CharData_t.AnimWidth]
		mov	word ptr CDVAnimWidth, cx
		mov	cx, word ptr [si+CharData_t._2xCol_2]
		mov	CDV_DoubledCol,	cx
		mov	ah, [si+CharData_t.CharFlags2]
		mov	CDV_CharFlags2,	ah
		and	[si+CharData_t.CharFlags2], not	2
		and	[si+CharData_t.CharFlags2], not	4
		test	[si+CharData_t.CharFlags], CF_0x20
		jnz	short loc_3713

loc_36C2:				; CODE XREF: CalcDrawingVars+8j
		call	UpdateFrameData	; Loads	AnimWidth, AnimHeight, FrameAddr.
					; Clears XOffset, YOffset.
					; SI = ptr[CharData]
		mov	dx, [si+CharData_t.X]
		test	dh, LeftDirection
		jz	short loc_36FA
; when knife crosses left edge
		mov	[si+CharData_t._2xCol_2], 0
		mov	bx, 0
		sub	bx, dx
		call	sub_3822
		jnb	short loc_36DE
		jmp	loc_37F0
; ---------------------------------------------------------------------------

loc_36DE:				; CODE XREF: CalcDrawingVars+43j
		mov	ah, [si+CharData_t.AnimWidth]
		sub	ah, cl
		jnb	short loc_36E8
		jmp	loc_37F0
; ---------------------------------------------------------------------------

loc_36E8:				; CODE XREF: CalcDrawingVars+4Dj
		jnz	short loc_36ED
		jmp	loc_37F0
; ---------------------------------------------------------------------------

loc_36ED:				; CODE XREF: CalcDrawingVars:loc_36E8j
		mov	[si+CharData_t.AnimWidth], ah
		mov	ah, [si+CharData_t.XOffset]
		add	ah, cl
		mov	[si+CharData_t.XOffset], ah
		jmp	short loc_3713
; ---------------------------------------------------------------------------

loc_36FA:				; CODE XREF: CalcDrawingVars+35j
		xchg	dx, bx
		call	sub_3822
		jnb	short loc_3704
		jmp	loc_37F0
; ---------------------------------------------------------------------------

loc_3704:				; CODE XREF: CalcDrawingVars+69j
		mov	[si+CharData_t._2xCol_2], cl
		mov	ah, 80		; Bytes	per display line
		sub	ah, cl
		cmp	ah, [si+CharData_t.AnimWidth]
		jnb	short loc_3713
----- Shrink animation width if	it intersects display border
		mov	[si+CharData_t.AnimWidth], ah

loc_3713:				; CODE XREF: CalcDrawingVars+2Aj
					; CalcDrawingVars+62j ...
		mov	dx, [si+CharData_t.Y]
		test	dh, LeftDirection
		jz	short loc_3748
		mov	[si+CharData_t._4xRow_2], 0
		mov	bx, 0
		sub	bx, dx
		call	sub_382D
		jnb	short loc_372C
		jmp	loc_37F0
; ---------------------------------------------------------------------------

loc_372C:				; CODE XREF: CalcDrawingVars+91j
		mov	ah, [si+CharData_t.AnimHeight]
		sub	ah, cl
		jnb	short loc_3736
		jmp	loc_37F0
; ---------------------------------------------------------------------------

loc_3736:				; CODE XREF: CalcDrawingVars+9Bj
		jnz	short loc_373B
		jmp	loc_37F0
; ---------------------------------------------------------------------------

loc_373B:				; CODE XREF: CalcDrawingVars:loc_3736j
		mov	[si+CharData_t.AnimHeight], ah
		mov	ah, [si+CharData_t.YOffset]
		add	ah, cl
		mov	[si+CharData_t.YOffset], ah
		jmp	short loc_3761
; ---------------------------------------------------------------------------

loc_3748:				; CODE XREF: CalcDrawingVars+83j
		xchg	dx, bx
		call	sub_382D
		jnb	short loc_3752
		jmp	loc_37F0
; ---------------------------------------------------------------------------

loc_3752:				; CODE XREF: CalcDrawingVars+B7j
		mov	[si+CharData_t._4xRow_2], cl
		mov	ah, -96
		sub	ah, cl
		cmp	ah, [si+CharData_t.AnimHeight]
		jnb	short loc_3761
		mov	[si+CharData_t.AnimHeight], ah

loc_3761:				; CODE XREF: CalcDrawingVars+B0j
					; CalcDrawingVars+C6j
		test	[si+CharData_t.CharFlags], CFRodJumping
		jnz	short loc_3777
		mov	ah, CDV_CharFlags2
		test	ah, 4
		jz	short loc_3796
		test	[si+CharData_t.CharFlags], 20h
		jz	short loc_3777
		jmp	loc_37F0
; ---------------------------------------------------------------------------

loc_3777:				; CODE XREF: CalcDrawingVars+CEj
					; CalcDrawingVars+DCj
		mov	ah, [si+CharData_t._2xCol_2]
		mov	[si+CharData_t._2xCol],	ah
		add	ah, [si+CharData_t.AnimWidth]
		mov	[si+CharData_t._AWidth2], ah
		mov	ah, [si+CharData_t._4xRow_2]
		mov	[si+CharData_t._4xRow],	ah
		mov	al, [si+CharData_t.AnimHeight]
		shr	al, 1
		inc	al
		add	ah, al
		mov	[si+CharData_t._AHeight2], ah
		retn
; ---------------------------------------------------------------------------

loc_3796:				; CODE XREF: CalcDrawingVars+D7j
		mov	cx, CDV_DoubledCol
		mov	ah, [si+CharData_t._2xCol_2]
		cmp	ah, cl
		jb	short loc_37A6
		mov	[si+CharData_t._2xCol],	cl
		jmp	short loc_37A9
; ---------------------------------------------------------------------------

loc_37A6:				; CODE XREF: CalcDrawingVars+109j
		mov	[si+CharData_t._2xCol],	ah

loc_37A9:				; CODE XREF: CalcDrawingVars+10Ej
		mov	ah, [si+CharData_t._4xRow_2]
		cmp	ah, ch
		jb	short loc_37B5
		mov	[si+CharData_t._4xRow],	ch
		jmp	short loc_37B8
; ---------------------------------------------------------------------------

loc_37B5:				; CODE XREF: CalcDrawingVars+118j
		mov	[si+CharData_t._4xRow],	ah

loc_37B8:				; CODE XREF: CalcDrawingVars+11Dj
		add	cl, CDVAnimWidth
		mov	ah, AnimHeight
		shr	ah, 1
		inc	ah
		add	ch, ah
		mov	ah, [si+CharData_t._2xCol_2]
		add	ah, [si+CharData_t.AnimWidth]
		cmp	ah, cl
		jb	short loc_37D5
		mov	[si+CharData_t._AWidth2], ah
		jmp	short loc_37D8
; ---------------------------------------------------------------------------

loc_37D5:				; CODE XREF: CalcDrawingVars+138j
		mov	[si+CharData_t._AWidth2], cl

loc_37D8:				; CODE XREF: CalcDrawingVars+13Dj
		mov	ah, [si+CharData_t._4xRow_2]
		mov	al, [si+CharData_t.AnimHeight]
		shr	al, 1
		inc	al
		add	ah, al
		cmp	ah, ch
		jb	short loc_37EC
		mov	[si+CharData_t._AHeight2], ah
		retn
; ---------------------------------------------------------------------------

loc_37EC:				; CODE XREF: CalcDrawingVars+150j
		mov	[si+CharData_t._AHeight2], ch
		retn
; ---------------------------------------------------------------------------

loc_37F0:				; CODE XREF: CalcDrawingVars+45j
					; CalcDrawingVars+4Fj ...
		or	[si+CharData_t.CharFlags2], 2
		or	[si+CharData_t.CharFlags2], 4
		retn
CalcDrawingVars	endp


; =============== S U B	R O U T	I N E =======================================

; Loads	AnimWidth, AnimHeight, FrameAddr.
; Clears XOffset, YOffset.
; SI = ptr[CharData]

UpdateFrameData	proc near		; CODE XREF: InitCharAnim:loc_E12p
					; CalcDrawingVars:loc_36C2p
		mov	bx, offset SpriteIndex
		mov	ch, 0
		mov	cl, [si+CharData_t.Animation]
		add	cl, cl
		add	bx, cx		; BX = Animation Index
		mov	dx, [bx]	; DX = Animation address
		xchg	dx, bx		; BX = Animation address
		mov	cl, [si+CharData_t.Frame]
		add	cx, cx		; CX = FrameIndex*2
		add	bx, cx
		mov	dx, [bx]	; DX = Sprite Address
		xchg	dx, bx		; BX = Sprite Address
		mov	word ptr [si+CharData_t.FrameAddr], bx
		mov	dx, [bx]
		mov	word ptr [si+CharData_t.AnimWidth], dx
		mov	word ptr [si+CharData_t.XOffset], 0
		retn
UpdateFrameData	endp


; =============== S U B	R O U T	I N E =======================================


sub_3822	proc near		; CODE XREF: CalcDrawingVars+40p
					; CalcDrawingVars+66p
		mov	ah, 39
		cmp	ah, bh
		jb	short locret_382C
		rcl	bx, 1
		mov	cl, bh

locret_382C:				; CODE XREF: sub_3822+4j sub_382D+4j
		retn
sub_3822	endp


; =============== S U B	R O U T	I N E =======================================


sub_382D	proc near		; CODE XREF: CalcDrawingVars+8Ep
					; CalcDrawingVars+B4p
		mov	ah, 19
		cmp	ah, bh
		jb	short locret_382C
		rcl	bx, 1
		rcl	bx, 1
		mov	cl, bh
		retn
sub_382D	endp


; =============== S U B	R O U T	I N E =======================================


_DrawChr1	proc near		; CODE XREF: DrawCharacters+32p
		call	GetFirst
		mov	_NoOfIntersections, 1
		mov	ah, [si+CharData_t._2xCol]
		mov	_DoubledCol2, ah
		mov	ah, [si+CharData_t._AWidth2]
		mov	_AnimWidth2, ah
		mov	ah, [si+CharData_t._4xRow]
		mov	_QuadrupledRow2, ah
		mov	ah, [si+CharData_t._AHeight2]
		mov	_AnimHeight2, ah
		or	[si+CharData_t.CharFlags], CFDrawable
		call	_SetNext

loc_3864:				; CODE XREF: _DrawChr1+4Bj
		push	si
		push	di
		mov	byte_DE38, 0

loc_386B:				; CODE XREF: _DrawChr1+3Aj
					; _DrawChr1+3Fj
		call	GetNextCharacter ; DI =	Current	CharPtr
					; If table is over
					;   DI = &Characters[0]
					;   ZF = 1
					; else
					;   NextCharPtr	= SI
					;   ZF = 0
		jz	short loc_387B
		test	[si+CharData_t.CharFlags2], CF2DoNotDraw
		jnz	short loc_386B
		call	_FindIntersections
		jmp	short loc_386B
; ---------------------------------------------------------------------------

loc_387B:				; CODE XREF: _DrawChr1+34j
		pop	di
		mov	ah, byte_DE38
		or	ah, ah
		jz	short loc_3887
		pop	si
		jmp	short loc_3864
; ---------------------------------------------------------------------------

loc_3887:				; CODE XREF: _DrawChr1+48j
		pop	si
		push	si
		call	DrawCharacter
		pop	si
		retn
_DrawChr1	endp


; =============== S U B	R O U T	I N E =======================================


_SetNext	proc near		; CODE XREF: _DrawChr1+27p
					; _FindIntersections+6Fp
		mov	bx, Drawable
		mov	[bx], si
		inc	bx
		inc	bx
		mov	Drawable, bx
		retn
_SetNext	endp


; =============== S U B	R O U T	I N E =======================================


_GetNext	proc near		; CODE XREF: DrawCharacter+10Cp
		mov	bx, Drawable
		mov	si, [bx]
		inc	bx
		inc	bx
		mov	Drawable, bx
		retn
_GetNext	endp


; =============== S U B	R O U T	I N E =======================================


GetFirst	proc near		; CODE XREF: _DrawChr1p
					; DrawCharacter+FFp
		mov	bx, Intersections
		mov	Drawable, bx
		retn
GetFirst	endp


; =============== S U B	R O U T	I N E =======================================


_FindIntersections proc	near		; CODE XREF: _DrawChr1+3Cp
		mov	bh, [si+CharData_t._2xCol]
		mov	bl, [si+CharData_t._AWidth2]
		mov	dh, _DoubledCol2
		mov	dl, _AnimWidth2
		call	GetLower2	; ah=dl<bh?dl:bl
					; cmc
		jb	short loc_38C7
		jmp	locret_3933
; ---------------------------------------------------------------------------

loc_38C7:				; CODE XREF: _FindIntersections+11j
		mov	bh, [si+CharData_t._4xRow]
		mov	bl, [si+CharData_t._AHeight2]
		mov	dh, _QuadrupledRow2
		mov	dl, _AnimHeight2
		call	GetLower2	; ah=dl<bh?dl:bl
					; cmc
		jnb	short locret_3933
		mov	ch, [si+CharData_t._2xCol]
		mov	ah, _DoubledCol2
		call	GetHigher	; ah = ch<ah?ah:ch
		mov	dl, ah
		mov	ch, [si+CharData_t._AWidth2]
		mov	ah, _AnimWidth2
		call	GetLower	; ah=ch>=ah?ah:ch
		mov	dh, ah
		sub	ah, dl
		cmp	ah, 62
		jnb	short locret_3933
		mov	ch, [si+CharData_t._4xRow]
		mov	ah, _QuadrupledRow2
		call	GetHigher	; ah = ch<ah?ah:ch
		mov	bl, ah
		mov	ch, [si+CharData_t._AHeight2]
		mov	ah, _AnimHeight2
		call	GetLower	; ah=ch>=ah?ah:ch
		mov	bh, ah
		sub	ah, bl
		cmp	ah, 80h
		jnb	short locret_3933
		mov	word ptr _DoubledCol2, dx
		mov	word ptr _QuadrupledRow2, bx
		call	_SetNext
		mov	byte_DE38, 1
		or	[si+CharData_t.CharFlags2], CF2DoNotDraw
		or	[si+CharData_t.CharFlags], CFDrawable
		inc	_NoOfIntersections

locret_3933:				; CODE XREF: _FindIntersections+13j
					; _FindIntersections+27j ...
		retn
_FindIntersections endp


; =============== S U B	R O U T	I N E =======================================

; ah=ch>=ah?ah:ch

GetLower	proc near		; CODE XREF: _FindIntersections+3Cp
					; _FindIntersections+5Bp
		cmp	ah, ch
		jnb	short locret_393A
		mov	ah, ch

locret_393A:				; CODE XREF: GetLower+2j GetHigher+2j
		retn
GetLower	endp


; =============== S U B	R O U T	I N E =======================================

; ah = ch<ah?ah:ch

GetHigher	proc near		; CODE XREF: _FindIntersections+30p
					; _FindIntersections+4Fp
		cmp	ah, ch
		jb	short locret_393A
		mov	ah, ch
		retn
GetHigher	endp


; =============== S U B	R O U T	I N E =======================================

; ah=dl<bh?dl:bl
; cmc

GetLower2	proc near		; CODE XREF: ByKnife+36p ByKnife+65j ...
		mov	ah, dl
		cmp	ah, bh
		jb	short loc_394C
		mov	ah, bl
		cmp	ah, dh

loc_394C:				; CODE XREF: GetLower2+4j
		cmc			; Inverse CF
		retn
GetLower2	endp


; =============== S U B	R O U T	I N E =======================================


DrawCharacter	proc near		; CODE XREF: _DrawChr1+4Fp
		mov	ah, WorldRedrawn
		or	ah, ah
		jnz	short loc_3974
		mov	ah, _NoOfIntersections
		cmp	ah, 1
		jnz	short loc_3974
		mov	bx, offset Intersections
		mov	dx, [bx]
		xchg	dx, bx
		inc	bx
		test	byte ptr [bx], 4
		jz	short loc_3974
		test	byte ptr [bx], 2
		jz	short loc_3974
		jmp	__RealToAlt	; SI = ptr to CharData_t
; ---------------------------------------------------------------------------

loc_3974:				; CODE XREF: DrawCharacter+6j
					; DrawCharacter+Fj ...
		mov	cl, _DoubledCol2
		shr	cl, 1
		mov	ch, _QuadrupledRow2
		shr	ch, 1
		shr	ch, 1
		mov	word ptr Column, cx
		mov	dl, _AnimWidth2
		test	dl, 1
		jz	short loc_3992
		add	dl, 2

loc_3992:				; CODE XREF: DrawCharacter+3Fj
		shr	dl, 1
		sub	dl, cl
		mov	dh, _AnimHeight2
		test	dh, 3
		jz	short loc_39A2
		add	dh, 4

loc_39A2:				; CODE XREF: DrawCharacter+4Fj
		shr	dh, 1
		shr	dh, 1
		sub	dh, ch
		mov	word ptr ColCount, dx ;	and height, of course
		mov	ch, Row
		add	ch, dh
		cmp	ch, 20
		jb	short loc_39C0
		sub	ch, 20
		sub	dh, ch
		mov	RowCount, dh

loc_39C0:				; CODE XREF: DrawCharacter+67j
		mov	cx, word ptr Column
		add	cl, cl		; Col*2
		add	ch, ch
		add	ch, ch		; Row*4
		mov	word ptr _DoubledCol3, cx
		mov	cx, word ptr ColCount
		add	cl, cl		; Col*2
		add	ch, ch
		add	ch, ch		; Row*4
		mov	_FrameWidth, cx
		mov	dx, word ptr ColCount
		mov	al, dl
		mov	ah, 0
		mul	dh
		mov	cl, 8
		mul	cl
		mov	cx, ax
		push	si
		push	di
		mov	si, offset SecondaryBuffer ; Clear sec buffer
		mov	di, (offset SecondaryBuffer+2)
		mov	word ptr [si], 0
		cld
		rep movsw
		mov	ax, _FrameWidth
		mov	ah, 0
		mov	cl, 3
		shl	ax, cl		; ax *=	8
		mov	ExpandedFrameWidth, ax ; Row size in bytes
		mov	dx, word ptr Column
		mov	ax, 40
		mul	dh
		mov	dh, 0
		add	ax, dx
		add	ax, offset PrimaryBuffer
		mov	bx, ax		; BX = Top left	tile addr
		mov	dx, word ptr ColCount
		mov	di, offset SecondaryBuffer

loc_3A20:				; CODE XREF: DrawCharacter+FBj
		push	dx
		push	bx
		push	di

loc_3A23:				; CODE XREF: DrawCharacter+E9j
		push	bx
		push	dx
		mov	al, [bx]
		or	al, al
		jz	short loc_3A30
		mov	ah, 0
		call	CopySpriteBackground ; AX = tile No.
					; DI = Dest. addr

loc_3A30:				; CODE XREF: DrawCharacter+DBj
		inc	di
		inc	di
		pop	dx
		pop	bx
		inc	bx		; Inc column
		dec	dl		; dec col counter
		jnz	short loc_3A23
		pop	di
		mov	dx, ExpandedFrameWidth
		add	di, dx
		pop	bx
		mov	dx, 40		; Tiles	per row
		add	bx, dx
		pop	dx
		dec	dh		; Row counter
		jnz	short loc_3A20
		pop	di
		pop	si
		call	GetFirst
		mov	NextDrawable, di
		mov	ah, _NoOfIntersections
		push	si

loc_3A59:				; CODE XREF: DrawCharacter+132j
		push	ax
		call	_GetNext
		test	[si+CharData_t.CharFlags], CFRemoved
		jz	short loc_3A67
		call	RemoveAndGetNext
		jmp	short loc_3A7D
; ---------------------------------------------------------------------------

loc_3A67:				; CODE XREF: DrawCharacter+112j
		test	[si+CharData_t.CharFlags2], 2
		jnz	short loc_3A72
		test	[si+CharData_t.CharFlags], 20h
		jz	short loc_3A77	; Active environment elements

loc_3A72:				; CODE XREF: DrawCharacter+11Dj
		call	__RealToAlt	; SI = ptr to CharData_t
		jmp	short loc_3A7D
; ---------------------------------------------------------------------------

loc_3A77:				; CODE XREF: DrawCharacter+122j
		call	$DrawFrameLine
		call	__RealToAlt	; SI = ptr to CharData_t

loc_3A7D:				; CODE XREF: DrawCharacter+117j
					; DrawCharacter+127j
		pop	ax
		dec	ah
		jnz	short loc_3A59
		pop	si
		mov	di, NextDrawable
		push	si
		push	di
		push	es
		mov	dx, 0B800h
		mov	es, dx
		assume es:nothing
		mov	dx, word ptr _DoubledCol3
		mov	ax, 80		; bytes	per line
		mul	dh
		mov	dh, 0
		add	ax, dx
		mov	di, ax		; Line number
		mov	si, offset SecondaryBuffer
		mov	cx, word ptr ColCount
		shl	ch, 1
		shl	ch, 1

loc_3AA9:				; CODE XREF: DrawCharacter+175j
		push	cx
		mov	ch, 0
		push	di
		rep movsw
		pop	di
		add	di, 8192	; Interleave factor
		pop	cx
		push	cx
		mov	ch, 0
		push	di
		rep movsw
		pop	di
		sub	di, 8112	; IF - 80 bytes	per line
		pop	cx
		dec	ch
		jnz	short loc_3AA9
		pop	es
		assume es:nothing
		pop	di
		pop	si
		retn
DrawCharacter	endp


; =============== S U B	R O U T	I N E =======================================

; AX = tile No.
; DI = Dest. addr

CopySpriteBackground proc near		; CODE XREF: DrawCharacter+DFp
Increment = dx
		push	di
		mov	cl, 4
		shl	ax, cl		; AX *=	16 (bytes per tile)
		add	ax, offset Tile8x8World
		mov	si, ax		; SI = Tile start addr
		mov	Increment, _FrameWidth
		mov	dh, 0
		dec	Increment
		dec	Increment	; DX = FrameWidth - sizeof(WORD)
		cld
		mov	cx, 8

loc_3ADF:				; CODE XREF: CopySpriteBackground+19j
		movsw
		add	di, Increment
		loop	loc_3ADF
		pop	di
		retn
CopySpriteBackground endp


; =============== S U B	R O U T	I N E =======================================


$DrawFrameLine	proc near		; CODE XREF: DrawCharacter:loc_3A77p
		push	si
		push	di
---------- Setting up Frame Width
		mov	bx, word ptr [si+CharData_t.FrameAddr]
		mov	dl, [bx]
		mov	FrameWidth, dl
---------- Calculate Frame Origin
		inc	bx
		inc	bx		; Points to the	1st quad
		mov	al, [si+CharData_t.XOffset]
		mov	ah, 0
		add	bx, ax
		mov	al, [si+CharData_t.YOffset]
		mul	dl
		add	bx, ax
		mov	FrameOrigin, bx	; Point	inside frame
		mov	ah, 0
		mov	di, offset SecondaryBuffer
		mov	cx, word ptr _DoubledCol3
		mov	dx, word ptr [si+CharData_t._2xCol_2]
		mov	al, dl		; FrameWidth
		sub	al, cl
		add	di, ax
		mov	al, dh
		sub	al, ch
		mov	cl, byte ptr _FrameWidth
		mul	cl
		add	ax, ax
		add	di, ax
		mov	cx, word ptr [si+CharData_t.AnimWidth]
		mov	si, FrameOrigin
		mov	bl, byte ptr _FrameWidth
		mov	bh, 0
		mov	dl, FrameWidth
		mov	dh, 0
		cld

loc_3B39:				; CODE XREF: $DrawFrameLine+64j
		push	cx
		push	si
		push	di
		mov	ch, 0
		call	BitBlt		; SI = FrameOrigin
		pop	di
		add	di, bx
		pop	si
		add	si, dx
		pop	cx
		dec	ch
		jnz	short loc_3B39
		pop	di
		pop	si
		retn
$DrawFrameLine	endp


; =============== S U B	R O U T	I N E =======================================

; SI = FrameOrigin

BitBlt		proc near		; CODE XREF: $DrawFrameLine+58p
					; BitBlt+28j
		mov	al, [si]
		or	al, al
		jz	short loc_3B75
		test	al, 11b
		jz	short loc_3B5B
		or	al, 11b

loc_3B5B:				; CODE XREF: BitBlt+8j
		test	al, 1100b
		jz	short loc_3B61
		or	al, 1100b

loc_3B61:				; CODE XREF: BitBlt+Ej
		test	al, 110000b
		jz	short loc_3B67
		or	al, 110000b

loc_3B67:				; CODE XREF: BitBlt+14j
		test	al, 11000000b
		jz	short loc_3B6D
		or	al, 11000000b

loc_3B6D:				; CODE XREF: BitBlt+1Aj
		xor	al, 0FFh
		and	al, [di]
		or	al, [si]
		mov	[di], al

loc_3B75:				; CODE XREF: BitBlt+4j
		inc	di
		inc	si
		loop	BitBlt		; SI = FrameOrigin
		retn
BitBlt		endp

; ---------------------------------------------------------------------------
		push	si
		push	di
		add	si, 3
		mov	si, di
		mov	cx, 8
		add	di, cx
		cld
		rep movsb
		pop	di
		pop	si
		retn

; =============== S U B	R O U T	I N E =======================================

; SI = ptr to CharData_t

__RealToAlt	proc near		; CODE XREF: CalcDrawingVars+5p
					; DrawCharacter+23j ...
		push	si
		push	di
		mov	di, si
		add	di, CharData_t.AltX
		mov	si, di		; DI = src+3
		mov	cx, 8		; CX = 8
		add	si, cx		; SI = src+0Ch
		cld
		rep movsb
		pop	di
		pop	si
		retn
__RealToAlt	endp


; =============== S U B	R O U T	I N E =======================================


RemoveAndGetNext proc near		; CODE XREF: DrawCharacter+114p
		mov	byte ptr [si], 0
		call	RemoveEnemy	; SI = Current enemy address
					; Pointer to table cell	-> BX
		mov	cx, NextDrawable
		sub	bx, cx
		jnb	short locret_3BB4
		dec	cx
		dec	cx
		mov	NextDrawable, cx

locret_3BB4:				; CODE XREF: RemoveAndGetNext+Cj
		retn
RemoveAndGetNext endp


; =============== S U B	R O U T	I N E =======================================

; SI = Current enemy address
; Pointer to table cell	-> BX

RemoveEnemy	proc near		; CODE XREF: DrawCharacters+13p
					; RemoveAndGetNext+3p ...
TablePtr = bx
DescAddr = dx
Counter	= ch
		mov	DescAddr, si
		mov	Counter, CharCount
		mov	TablePtr, offset Characters

_FindEnemy:				; CODE XREF: RemoveEnemy+13j
		mov	ax, [TablePtr]
		cmp	ax, DescAddr
		jz	short _EnemyFound
		inc	TablePtr
		inc	TablePtr
		dec	Counter
		jnz	short _FindEnemy
		retn
; ---------------------------------------------------------------------------

_EnemyFound:				; CODE XREF: RemoveEnemy+Dj
		dec	Counter
		mov	ah, Counter
		jz	short ItsPlayer
		push	TablePtr
		mov	DescAddr, TablePtr
		inc	DescAddr
		inc	DescAddr
		mov	cl, ah
		mov	Counter, 0
		inc	cx		; Exclude enemy	from table
		xchg	si, DescAddr
		xchg	di, TablePtr
		cld
		rep movsw
		xchg	si, DescAddr
		xchg	di, TablePtr

loc_3BE6:				; CODE XREF: RemoveEnemy+3Cj
		dec	CharCount
		pop	TablePtr
		retn
; ---------------------------------------------------------------------------

ItsPlayer:				; CODE XREF: RemoveEnemy+1Aj
		push	TablePtr
		mov	word ptr [TablePtr], 0
		jmp	short loc_3BE6
RemoveEnemy	endp


; =============== S U B	R O U T	I N E =======================================

; Inserts new char into	location
; according to given order
; CL = order
; SI points to CharData

AddNewChar	proc near		; CODE XREF: ServeFireKey+A6p
					; FireWeapon+6Ep ...
Counter	= ch
Ptr = di
Order =	cl
		push	si
		or	ah, ah
		jnz	short loc_3BFA
		inc	ah

loc_3BFA:				; CODE XREF: AddNewChar+3j
		mov	[si+CharData_t.Order], ah
		mov	Order, ah
		mov	Counter, CharCount
		mov	Ptr, offset Characters

loc_3C06:				; CODE XREF: AddNewChar+28j
		mov	ax, [Ptr]
		or	ax, ax
		jz	short loc_3C44
		mov	bx, [Ptr]
		push	bx
		pop	si
		mov	al, [si+CharData_t.Order]
		cmp	al, Order
		jnb	short ExpandCharsTable
		inc	Ptr
		inc	Ptr
		dec	Counter
		jmp	short loc_3C06
; ---------------------------------------------------------------------------

ExpandCharsTable:			; CODE XREF: AddNewChar+22j
		push	bx
		mov	Order, Counter
		add	Order, Order
		mov	Counter, 0	; CX = (CharCount-Counter)*2
		push	Ptr
		pop	bx		; &Characters[Counter]
		inc	cx		; CX=(CharCount-Counter)*2+1
		add	bx, cx
		push	bx
		pop	dx
		inc	dx
		inc	dx
		inc	cx
		xchg	si, bx
		xchg	Ptr, dx
		std
		rep movsb
		xchg	si, bx
		xchg	Ptr, dx
		pop	cx

InsertRecord:				; CODE XREF: AddNewChar+56j
		pop	si
		push	si
		pop	bx
		mov	[Ptr], bx
		inc	CharCount
		retn
; ---------------------------------------------------------------------------

loc_3C44:				; CODE XREF: AddNewChar+17j
		mov	word ptr [Ptr+2], 0
		jmp	short InsertRecord
AddNewChar	endp


; =============== S U B	R O U T	I N E =======================================


sub_3C4B	proc near		; CODE XREF: CODE:3CADp
		push	di
		push	ax
		call	WipeNonActiveChars
		jb	short loc_3C5F
		pop	ax
		call	AddNewChar	; Inserts new char into	location
					; according to given order
					; CL = order
					; SI points to CharData
		or	[si+CharData_t.CharFlags], CFActive
		or	[si+CharData_t.CharFlags], CFRodJumping
		pop	di
		clc
		retn
; ---------------------------------------------------------------------------

loc_3C5F:				; CODE XREF: sub_3C4B+5j
		pop	ax
		pop	di
		stc
		retn
sub_3C4B	endp


; =============== S U B	R O U T	I N E =======================================


WipeNonActiveChars proc	near		; CODE XREF: sub_3C4B+2p
		mov	ch, 12
		mov	dx, size CharData_t
		mov	si, offset PlayerData

loc_3C6B:				; CODE XREF: WipeNonActiveChars+11j
		test	[si+CharData_t.CharFlags], CFActive
		jz	short loc_3C78
		add	si, dx
		dec	ch
		jnz	short loc_3C6B
		stc
		retn
; ---------------------------------------------------------------------------

loc_3C78:				; CODE XREF: WipeNonActiveChars+Bj
		push	si
		push	di
		mov	di, si
		inc	di
		mov	cx, size CharData_t - 1
		mov	[si+CharData_t.CharFlags], 0
		cld
		rep movsb
		pop	di
		pop	si
		clc
		retn
WipeNonActiveChars endp

; ---------------------------------------------------------------------------
		mov	si, offset PlayerData
		mov	di, offset PlayerData.CharFlags2
		mov	cx, 1DFh
		mov	byte ptr [si], 0
		cld
		rep movsb
		inc	si
		mov	byte ptr [si], 0FFh
		xor	ax, ax
		mov	CharCount, al
		mov	si, offset PlayerData
		mov	di, offset Characters
		mov	[di], ax
		retn
; ---------------------------------------------------------------------------
		push	dx
		push	bx
		call	sub_3C4B
		pop	bx
		jb	short loc_3CD3
		pop	dx
		push	dx
		push	si
		mov	di, bx
		mov	ah, 0

loc_3CBA:				; CODE XREF: CODE:3CCAj
		mov	bx, dx
		mov	al, [bx]
		or	al, al
		jz	short loc_3CCC
		inc	dx
		mov	bx, ax
		mov	al, [di]
		mov	[bx+si], al
		inc	di
		jmp	short loc_3CBA
; ---------------------------------------------------------------------------

loc_3CCC:				; CODE XREF: CODE:3CC0j
		pop	si
		call	__RealToAlt	; SI = ptr to CharData_t
		clc
		mov	bx, di

loc_3CD3:				; CODE XREF: CODE:3CB1j
		pop	dx
		retn
; ---------------------------------------------------------------------------
		push	ax
		call	RemoveEnemy	; SI = Current enemy address
					; Pointer to table cell	-> BX
		pop	ax
		call	AddNewChar	; Inserts new char into	location
					; according to given order
					; CL = order
					; SI points to CharData
		retn

; =============== S U B	R O U T	I N E =======================================


ConfigureHardware proc near		; CODE XREF: start+3Bp
		cli
		push	ds		; Save and replace
		mov	ax, 0		; INT09H vector
		mov	ds, ax		;  (keyboard)
		mov	bx, 24h
		mov	ax, [bx]
		mov	cs:INT09_IP, ax
		mov	word ptr [bx], offset INT09h_Vector
		inc	bx
		inc	bx
		mov	ax, [bx]
		mov	cs:INT09_CS, ax
		mov	ax, cs
		mov	[bx], ax	; --- done ---
		mov	bx, 70h		; Save and replace
		mov	ax, [bx]	; INT1Ch vector
		mov	cs:INT1C_IP, ax	;  (User timer)
		mov	word ptr [bx], offset INT1C_Vector ; Invokes every 10ms
		inc	bx
		inc	bx
		mov	ax, [bx]
		mov	cs:INT1C_CS, ax
		mov	ax, cs
		mov	[bx], ax
		mov	cx, 2E9Eh	; Timer	Ch. 0 count values (100Hz)
		mov	al, cl
		out	40h, al		; Timer	8253-5 (AT: 8254.2).
		mov	al, ch
		out	40h, al		; Timer	8253-5 (AT: 8254.2).
		pop	ds
		sti
		retn
ConfigureHardware endp

; ---------------------------------------------------------------------------
INT09_IP	dw 3D6Fh		; DATA XREF: ConfigureHardware+Cw
INT09_CS	dw 1000h		; DATA XREF: ConfigureHardware+18w
INT1C_IP	dw 3D2Dh		; DATA XREF: ConfigureHardware+25w
INT1C_CS	dw 1000h		; DATA XREF: ConfigureHardware+31w

; =============== S U B	R O U T	I N E =======================================

; Invokes every	10ms

INT1C_Vector	proc far		; DATA XREF: ConfigureHardware+29o
		cli
		push	ds		; Push all
		push	es
		push	ax
		push	bx
		push	cx
		push	dx
		push	si
		push	di
		mov	ax, cs
		add	ax, 0
		mov	ds, ax
		inc	Timer1		; Period = 200x10ms
		cmp	Timer1,	200	; x10 mSec
		jnz	short loc_3D52
		mov	Timer1,	0	; Period = 200x10ms
		or	TwoSecondsFlag,	40h

loc_3D52:				; CODE XREF: INT1C_Vector+19j
		inc	Timer0
		inc	Timer2
		test	Timer2,	1
		jnz	short loc_3D65
		call	Snd_Handler	; Call it every	second tick

loc_3D65:				; CODE XREF: INT1C_Vector+33j
		pop	di
		pop	si
		pop	dx
		pop	cx
		pop	bx
		pop	ax
		pop	es
		pop	ds
		sti
		iret
INT1C_Vector	endp


; =============== S U B	R O U T	I N E =======================================


INT09h_Vector	proc far		; DATA XREF: ConfigureHardware+10o
		cli
		push	ds
		push	ax
		push	bx
		push	cx
		mov	ax, cs
		add	ax, 0
		mov	ds, ax
		in	al, 60h		; AT Keyboard controller 8042.
		xchg	ax, bx		; Recent scancode ->bl
		in	al, 61h		; PC/XT	PPI port B bits:
					; 0: Tmr 2 gate	ÍËÍ OR	03H=spkr ON
					; 1: Tmr 2 data	Í¼  AND	0fcH=spkr OFF
					; 3: 1=read high switches
					; 4: 0=enable RAM parity checking
					; 5: 0=enable I/O channel check
					; 6: 0=hold keyboard clock low
					; 7: 0=enable kbrd
		mov	ah, al
		or	al, 80h
		out	61h, al		; PC/XT	PPI port B bits:
					; 0: Tmr 2 gate	ÍËÍ OR	03H=spkr ON
					; 1: Tmr 2 data	Í¼  AND	0fcH=spkr OFF
					; 3: 1=read high switches
					; 4: 0=enable RAM parity checking
					; 5: 0=enable I/O channel check
					; 6: 0=hold keyboard clock low
					; 7: 0=enable kbrd
		xchg	al, ah
		out	61h, al		; PC/XT	PPI port B bits:
					; 0: Tmr 2 gate	ÍËÍ OR	03H=spkr ON
					; 1: Tmr 2 data	Í¼  AND	0fcH=spkr OFF
					; 3: 1=read high switches
					; 4: 0=enable RAM parity checking
					; 5: 0=enable I/O channel check
					; 6: 0=hold keyboard clock low
					; 7: 0=enable kbrd
		xchg	ax, bx		; Recent scancode -> al
		mov	bx, offset Key1

loc_3D8E:				; CODE XREF: INT09h_Vector+29j
		cmp	byte ptr [bx], 0 ; If end of map reached...
		jz	short loc_3D9D
		cmp	al, [bx]
		jz	short loc_3D9A
		inc	bx
		jmp	short loc_3D8E	; If end of map	reached...
; ---------------------------------------------------------------------------

loc_3D9A:				; CODE XREF: INT09h_Vector+26j
		xor	byte ptr [bx], 80h

loc_3D9D:				; CODE XREF: INT09h_Vector+22j
		in	al, 20h		; Interrupt controller,	8259A.
		or	al, 20h		; Set bit 7 at port 20h
		out	20h, al		; Interrupt controller,	8259A.
		test	KeyAlt,	80h	; If reboot requested
		jz	short loc_3DBD
		test	KeyCtrl, 80h
		jz	short loc_3DBD
		test	KeyDel,	80h
		jz	short loc_3DBD
		jmp	far ptr	0FFFFh:0 ; Reboot?
; ---------------------------------------------------------------------------

loc_3DBD:				; CODE XREF: INT09h_Vector+39j
					; INT09h_Vector+40j ...
		test	KeyO, 80h
		jz	short loc_3DEC
		test	KeyP, 80h
		jz	short loc_3DEC
		test	KeyE, 80h
		jz	short loc_3DEC
		test	KeyR, 80h	; Replace 'DEC'
		jz	short loc_3DEC	; opcode
		test	KeyA, 80h	; with pair
		jz	short loc_3DEC	; of NOPs
		mov	byte ptr cs:loc_644, 90h
		mov	byte ptr cs:loc_644+1, 90h

loc_3DEC:				; CODE XREF: INT09h_Vector+53j
					; INT09h_Vector+5Aj ...
		test	KeyS, 80h
		jz	short loc_3DFF
		mov	byte ptr cs:loc_644, 0FEh ; Make man mortal again
		mov	byte ptr cs:loc_644+1, 0CCh

loc_3DFF:				; CODE XREF: INT09h_Vector+82j
		pop	cx
		pop	bx
		pop	ax
		pop	ds
		sti
		iret
INT09h_Vector	endp


; =============== S U B	R O U T	I N E =======================================


Snd_TurnOffEx	proc near		; CODE XREF: GoToNewLocationp

; FUNCTION CHUNK AT 3ED2 SIZE 0000000C BYTES

		mov	Snd_IsPlaying, 0
		jmp	Snd_STOP
Snd_TurnOffEx	endp


; =============== S U B	R O U T	I N E =======================================


StartMusic	proc near		; CODE XREF: start:loc_13Ep
					; InFirstTemple+17j ...
		mov	Snd_IsPlaying, 1
		mov	bx, offset _Music
		jmp	short loc_3E1F
; ---------------------------------------------------------------------------

PlaySound:				; CODE XREF: HandleJumpsAndDucks+37j
					; HandleJumpsAndDucks+61j ...
		test	Snd_IsPlaying, 0FFh
		jz	short loc_3E1F
		retn
; ---------------------------------------------------------------------------

loc_3E1F:				; CODE XREF: StartMusic+8j
					; StartMusic+Fj
		cli
		mov	Snd_Backstack_Ptr, offset Snd_Stack
		mov	Snd_Mod_Ptr_Reload, offset Snd_NoMod ; Init with loopback
		mov	Snd_Mod_Period_Reload, 1
		mov	Snd_Command_Ptr, bx
		mov	Snd_Flags, 1
		sti
		retn
StartMusic	endp

; ---------------------------------------------------------------------------
Snd_NoMod	db 81h			; DATA XREF: StartMusic+19o

; =============== S U B	R O U T	I N E =======================================


Snd_Handler	proc near		; CODE XREF: INT1C_Vector+35p

; FUNCTION CHUNK AT 3F84 SIZE 00000015 BYTES

		mov	al, Snd_Flags
		test	al, SFEnabled
		jnz	short loc_3E45
		retn
; ---------------------------------------------------------------------------

loc_3E45:				; CODE XREF: Snd_Handler+5j
		test	al, SFValidTone
		jnz	short loc_3E65

loc_3E49:				; CODE XREF: Snd_Handler+25j
					; Snd_Handler+3Bj
		mov	bx, Snd_Command_Ptr
		mov	al, [bx]
		inc	bx
		mov	Snd_Command_Ptr, bx ; Store incremented
		mov	ah, 0
		mov	bx, offset Snd_Procs
		add	bx, ax
		call	word ptr [bx]
		mov	al, Snd_Flags
		test	al, SFContinue
		jnz	short loc_3E49
		retn
; ---------------------------------------------------------------------------

loc_3E65:				; CODE XREF: Snd_Handler+Aj
		mov	cx, Snd_Duration
		dec	cx
		mov	Snd_Duration, cx
		jnz	short loc_3E7A
		mov	al, Snd_Flags
		and	al, not	(SFValidTone or	SFContinue)
		mov	Snd_Flags, al
		jmp	short loc_3E49
; ---------------------------------------------------------------------------

loc_3E7A:				; CODE XREF: Snd_Handler+31j
		test	word ptr Snd_Flags, SFPause
		jnz	short locret_3E8E
		mov	ah, Snd_Mod_Period
		dec	ah
		jz	short loc_3E8F
		mov	Snd_Mod_Period,	ah

locret_3E8E:				; CODE XREF: Snd_Handler+43j
		retn
; ---------------------------------------------------------------------------

loc_3E8F:				; CODE XREF: Snd_Handler+4Bj
		mov	ah, Snd_Mod_Period_Reload
		mov	Snd_Mod_Period,	ah
		mov	bx, Snd_Mod_Ptr	; Fetch
		mov	al, [bx]
		cmp	al, 81h
		jnz	short loc_3EA2
		retn
; ---------------------------------------------------------------------------

loc_3EA2:				; CODE XREF: Snd_Handler+62j
		cmp	al, 80h
		jnz	short loc_3EB6
		mov	bx, Snd_Mod_Ptr_Reload ; Fetch
		mov	Snd_Mod_Ptr, bx	; Reload
		mov	al, Snd_Mod_Period_Reload
		mov	Snd_Mod_Period,	al
		mov	al, [bx]

loc_3EB6:				; CODE XREF: Snd_Handler+67j
		cbw			; byte-to-word
		mov	cx, Tone
		add	cx, ax
		mov	Tone, cx
		jmp	BeginPlayingTone
Snd_Handler	endp

; ---------------------------------------------------------------------------
Snd_Procs	dw offset Snd_STOP	; DATA XREF: Snd_Handler+19o
					; (0x00) Stop sound playing. Clears all	flags
		dw offset Snd_PLAY	; (0x02) Reloads modulation vars. Plays	tone. Clears Pause and Continue. Sets ValidTone
		dw offset Snd_PAUSE	; (0x04) Pause.	Clears Continue, sets Pause and	ValidTone
		dw offset Snd_JSR	; (0x06) Push Comand_Ptr and load new value. Sets Continue
		dw offset Snd_RET	; (0x08) Pops Command_Ptr. If success, sets Continue
		dw offset Snd_JUMP	; (0x0A) Jumps to new position.	Sets Continue.
		dw offset Snd_MODULATE	; (0x0C) Fetches Mod_Counter and Mod_Pointer. Sets Continue
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR Snd_TurnOffEx

Snd_STOP:				; CODE XREF: Snd_TurnOffEx+5j
					; Snd_RET+6j
					; DATA XREF: ...
		in	al, 61h
		and	al, 0FCh
		out	61h, al
		mov	Snd_Flags, 0
		retn
; END OF FUNCTION CHUNK	FOR Snd_TurnOffEx

; =============== S U B	R O U T	I N E =======================================


Snd_RET		proc near		; DATA XREF: CODE:3ECCo
		cmp	Snd_Backstack_Ptr, offset Snd_Stack
		jz	short Snd_STOP
		or	Snd_Flags, SFContinue
		dec	Snd_Backstack_Ptr
		dec	Snd_Backstack_Ptr
		mov	si, Snd_Backstack_Ptr
		mov	bx, [si]
		mov	Snd_Command_Ptr, bx
		retn
Snd_RET		endp


; =============== S U B	R O U T	I N E =======================================


Snd_JSR		proc near		; DATA XREF: CODE:3ECAo
		or	Snd_Flags, SFContinue
		mov	bx, Snd_Command_Ptr
		mov	cx, [bx]
		inc	bx
		inc	bx
		mov	Snd_Command_Ptr, cx
		mov	si, Snd_Backstack_Ptr
		mov	[si], bx
		inc	si
		inc	si
		mov	Snd_Backstack_Ptr, si
		retn
Snd_JSR		endp


; =============== S U B	R O U T	I N E =======================================


Snd_MODULATE	proc near		; DATA XREF: CODE:3ED0o
		mov	al, Snd_Flags
		or	al, SFContinue
		mov	Snd_Flags, al
		mov	bx, Snd_Command_Ptr
		mov	al, [bx]
		mov	Snd_Mod_Period_Reload, al
		mov	Snd_Mod_Period,	al
		inc	bx
		mov	cx, [bx]
		inc	bx
		inc	bx
		mov	Snd_Command_Ptr, bx
		mov	Snd_Mod_Ptr_Reload, cx ; Init
		mov	Snd_Mod_Ptr, cx	; Init
		retn
Snd_MODULATE	endp

------ Modify Snd_Flags	------

; =============== S U B	R O U T	I N E =======================================


Snd_JUMP	proc near		; DATA XREF: CODE:3ECEo
		mov	al, Snd_Flags
		or	al, SFContinue
		mov	Snd_Flags, al
		mov	bx, Snd_Command_Ptr
		mov	cx, [bx]
		mov	Snd_Command_Ptr, cx
		retn
Snd_JUMP	endp


; =============== S U B	R O U T	I N E =======================================


Snd_PLAY	proc near		; DATA XREF: CODE:3EC6o
		mov	al, Snd_Flags
		and	al, not	(SFPause or SFContinue)
		or	al, SFValidTone
		mov	Snd_Flags, al
		mov	cx, Snd_Mod_Ptr_Reload ; Fetch
		mov	Snd_Mod_Ptr, cx	; Reload
		mov	al, Snd_Mod_Period_Reload
		mov	Snd_Mod_Period,	al
		mov	bx, Snd_Command_Ptr
		mov	cx, [bx]
		inc	bx
		inc	bx
		mov	ax, [bx]
		inc	bx
		inc	bx
		mov	Snd_Duration, ax
		mov	Snd_Command_Ptr, bx
		mov	Tone, cx
Snd_PLAY	endp

; START	OF FUNCTION CHUNK FOR Snd_Handler

BeginPlayingTone:			; CODE XREF: Snd_Handler+84j
		in	al, 61h		; CX=tone
		push	ax
		mov	al, 0B6h	; Ch02,	mode 3,	load LSB and MSB as binary
		out	43h, al		; Timer	8253-5 (AT: 8254.2).
		mov	al, cl		; Low byte
		out	42h, al		; Timer	8253-5 (AT: 8254.2).
		mov	al, ch		; High byte
		out	42h, al		; Timer	8253-5 (AT: 8254.2).
		pop	ax
		or	al, 3		; Enable speaker
		out	61h, al
		retn
; END OF FUNCTION CHUNK	FOR Snd_Handler

; =============== S U B	R O U T	I N E =======================================


Snd_PAUSE	proc near		; DATA XREF: CODE:3EC8o
		mov	al, Snd_Flags
		and	al, not	(SFContinue)
		or	al, SFValidTone	or SFPause
		mov	Snd_Flags, al
		mov	bx, Snd_Command_Ptr
		mov	ax, [bx]
		inc	bx
		inc	bx
		mov	Snd_Duration, ax
		mov	Snd_Command_Ptr, bx
------ Shut up ------
		in	al, 61h
		and	al, 0FCh	; Disable speaker
		out	61h, al
		retn
Snd_PAUSE	endp

; ---------------------------------------------------------------------------
		db 7Eh,	0E4h, 0, 75h, 3, 0E9h, 0FDh
Backgrounds	db 3Fh			; DATA XREF: DecodeLocationBackground+2Ao
					; Count	of locations?
Packed0		db  13h
		Background_t <	 8,  11h,    13h>
		Background_t < 20h,  11h,    13h>
		Background_t < 11h,  0Eh,      1>
		Background_t < 18h,  11h,    13h>
		Background_t < 0Bh,    3,    94h>
		Background_t < 15h,    5,    94h>
		Background_t <	 0,  11h,    13h>
		Background_t <	 4,  11h,   11Ah>
		Background_t <	 0,  0Bh,    3Fh>
		Background_t <	 6,  0Bh,      1>
		Background_t <	 0,  0Eh,    9Eh>
		Background_t < 13h,  11h,   11Ah>
		Background_t < 0Dh,  11h,   157h>
		Background_t < 0Eh,  0Eh,    2Dh>
		Background_t < 16h,  11h,    13h>
		Background_t < 10h,  11h,   166h>
		Background_t < 14h,  10h,   94Dh>
		Background_t <	 0,    4,    61h>
		Background_t < 21h,    0,    94h>
Packed1		db 18h
stru_400F	Background_t <	 0,    5,   0B8h>
		Background_t <	 0,  0Dh,      1>
		Background_t < 1Ch,    7,    2Dh>
		Background_t < 1Bh,    1,    94h>
		Background_t < 13h,  11h,    13h>
		Background_t < 1Bh,  11h,    13h>
		Background_t < 20h,  11h,    13h>
		Background_t < 12h,    5,    94h>
		Background_t <	 0,  10h,   166h>
		Background_t <	 0,  11h,   166h>
		Background_t <	 6,  11h,    13h>
		Background_t < 0Eh,  11h,    13h>
		Background_t <	 2,  10h,   11Ah>
		Background_t <	 3,  11h,   11Ah>
		Background_t <	 5,  10h,   125h>
		Background_t < 0Dh,  10h,   125h>
		Background_t < 15h,  10h,   125h>
		Background_t < 1Dh,  10h,   125h>
		Background_t < 20h,  10h,   125h>
		Background_t <	 3,  0Fh,   151h>
		Background_t <	 8,  0Fh,   154h>
		Background_t < 20h,    3,    61h>
		Background_t < 20h,    7,    3Fh>
		Background_t < 0Bh,    0,    94h>
		db 18h
		Background_t < 15h,  11h,    13h>
		Background_t < 20h,  11h,    13h>
		Background_t <	 0,    5,    3Fh>
		Background_t <	 8,    5,   0B8h>
		Background_t <	 0,    5,    13h>
		Background_t <	 0,  0Fh,   125h>
		Background_t <	 8,  0Fh,   125h>
		Background_t < 10h,  0Fh,   125h>
		Background_t < 18h,  0Fh,   125h>
		Background_t < 20h,  0Fh,   125h>
		Background_t < 0Dh,  11h,   137h>
		Background_t < 1Dh,  11h,   137h>
		Background_t < 0Bh,  0Eh,   151h>
		Background_t < 10h,  0Eh,   154h>
		Background_t <	 5,  11h,    13h>
		Background_t <	 3,  11h,   137h>
		Background_t <	 0,  11h,   11Ah>
		Background_t < 24h,    7,    2Dh>
		Background_t < 1Bh,    2,    94h>
		Background_t <	 3,  12h,   162h>
		Background_t <	 0,    9,   209h>
		Background_t <	 0,    8,   166h>
		Background_t <	 3,    8,   963h>
		Background_t <	 5,    0,    94h>
		db 24h
		Background_t <	 0,    5,   0B8h>
		Background_t <	 0,    9,   959h>
		Background_t <	 6,  11h,   137h>
		Background_t <	 0,  0Dh,    9Eh>
		Background_t <	 0,  0Eh,    9Eh>
		Background_t <	 0,  0Dh,   11Ah>
		Background_t <	 3,  10h,   11Ah>
		Background_t <	 4,  13h,   963h>
		Background_t <	 3,  0Dh,   125h>
		Background_t < 0Bh,  0Dh,   125h>
		Background_t < 13h,  0Dh,   125h>
		Background_t < 0Eh,  11h,   137h>
		Background_t < 14h,  11h,   137h>
		Background_t < 1Ch,  13h,   963h>
		Background_t < 1Ch,  10h,   157h>
		Background_t < 1Fh,  10h,   166h>
		Background_t < 1Eh,  11h,   166h>
		Background_t < 21h,  11h,   166h>
		Background_t < 18h,  0Dh,   125h>
		Background_t <	 3,  0Eh,   125h>
		Background_t <	 6,  0Fh,   125h>
		Background_t < 0Eh,  0Fh,   125h>
		Background_t < 16h,  0Fh,   125h>
		Background_t < 17h,  0Eh,   125h>
		Background_t <	 3,  0Ch,   151h>
		Background_t <	 8,  0Ch,   154h>
		Background_t < 19h,    4,    94h>
		Background_t < 10h,    1,    94h>
		Background_t < 1Ah,  12h,   162h>
		Background_t < 21h,    4,    61h>
		Background_t < 20h,  0Ah,    3Fh>
		Background_t < 1Fh,  0Ah,    2Dh>
		Background_t < 1Fh,  0Dh,   157h>
		Background_t < 21h,  0Dh,    9Eh>
		Background_t < 24h,  0Dh,    9Eh>
		Background_t < 24h,  0Eh,    9Eh>
		db 1Eh
		Background_t < 20h,  0Bh,    3Fh>
		Background_t < 1Eh,  0Bh,    2Dh>
		Background_t <	 0,  12h,   171h>
		Background_t < 10h,  12h,   171h>
		Background_t < 24h,  0Eh,    9Eh>
		Background_t < 20h,  0Eh,   193h>
		Background_t < 18h,  12h,   171h>
		Background_t < 14h,  12h,   1B9h>
		Background_t < 1Bh,  10h,   1A9h>
		Background_t < 10h,    2,   1C3h>
		Background_t < 10h,    5,   1C3h>
		Background_t < 17h,    2,   1C3h>
		Background_t < 17h,    7,   1C3h>
		Background_t < 1Eh,    2,   1C3h>
		Background_t <	 0,    7,    3Fh>
		Background_t <	 6,    7,      1>
		Background_t <	 0,  0Ah,   166h>
		Background_t <	 3,  0Ah,   209h>
		Background_t <	 0,  0Ch,   166h>
		Background_t <	 4,  0Eh,   224h>
		Background_t < 22h,    7,   224h>
		Background_t <	 3,    3,   224h>
		Background_t < 0Ch,  11h,   23Eh>
		Background_t <	 0,    0,   3D3h>
		Background_t <	 8,    0,   1CDh>
		Background_t < 10h,    0,   1CDh>
		Background_t < 18h,    0,   1EFh>
		Background_t < 20h,    0,   3D3h>
		Background_t < 0Fh,    0,   3E5h>
		Background_t < 10h,    0,   3E5h>
		db 1Fh
		Background_t <	 0,  12h,   171h>
		Background_t < 10h,  12h,   171h>
		Background_t < 18h,  12h,   171h>
		Background_t <	 8,    0,   1CDh>
		Background_t < 20h,    0,   1CDh>
		Background_t <	 0,    7,    3Fh>
		Background_t <	 6,    7,      1>
		Background_t < 20h,    7,    3Fh>
		Background_t < 1Eh,    7,    2Dh>
		Background_t < 20h,  0Ah,   193h>
		Background_t < 23h,  0Ah,   209h>
		Background_t <	 0,  0Ah,   209h>
		Background_t < 10h,  0Ah,    2Dh>
		Background_t < 14h,  0Ah,      1>
		Background_t <	 0,    0,   1EFh>
		Background_t < 18h,    0,   1CDh>
		Background_t < 18h,  12h,   1B9h>
		Background_t <	 7,  12h,   246h>
		Background_t < 10h,  11h,   23Eh>
		Background_t <	 1,  11h,   23Eh>
		Background_t < 19h,    2,   1C3h>
		Background_t < 19h,  0Ah,   1C3h>
		Background_t < 0Fh,    2,   1C3h>
		Background_t < 0Bh,    3,   1C3h>
		Background_t < 0Bh,    8,   1C3h>
		Background_t <	 1,    6,   23Eh>
		Background_t < 19h,  0Eh,   224h>
		Background_t < 20h,  11h,   832h>
		Background_t < 10h,    0,   3D3h>
		Background_t < 1Fh,    0,   3E5h>
		Background_t < 20h,    0,   3E5h>
		db 23h
		Background_t < 18h,    0,   1CDh>
		Background_t <	 0,    0,   1EFh>
		Background_t < 10h,    0,   1CDh>
		Background_t < 18h,  12h,   171h>
		Background_t < 23h,  0Bh,   193h>
		Background_t < 20h,    0,   1C3h>
		Background_t < 20h,  0Ah,   1C3h>
		Background_t < 1Ch,    7,    2Dh>
		Background_t < 20h,    7,    3Fh>
		Background_t < 25h,  0Ah,   166h>
		Background_t < 20h,    0,   1EFh>
		Background_t < 0Ch,  0Ch,    3Fh>
		Background_t < 12h,  0Ch,      1>
		Background_t < 0Bh,  0Fh,   193h>
		Background_t < 0Fh,  0Fh,   209h>
		Background_t < 10h,  12h,   171h>
		Background_t < 14h,  12h,   246h>
		Background_t < 10h,    2,   1C3h>
		Background_t < 0Ah,    5,   1C3h>
		Background_t <	 9,  0Ch,    2Dh>
		Background_t < 19h,    2,   1C3h>
		Background_t < 19h,    6,   1C3h>
		Background_t <	 5,  0Eh,   224h>
		Background_t < 1Dh,  11h,   23Eh>
		Background_t < 0Dh,  0Bh,   23Eh>
		Background_t < 21h,    5,   1A9h>
		Background_t <	 0,  0Ah,      1>
		Background_t < 23h,  0Ah,   963h>
		Background_t < 0Ch,  0Fh,   963h>
		Background_t <	 1,  0Dh,   967h>
		Background_t <	 0,  0Dh,   967h>
		Background_t <	 0,  0Fh,   967h>
		Background_t <	 0,  12h,   171h>
		Background_t <	 8,    0,   3D3h>
		Background_t < 0Ah,    2,   1C3h>
		db 23h
		Background_t <	 0,    0,   2B3h>
		Background_t <	 8,    0,   2B3h>
		Background_t < 10h,    0,   2A1h>
		Background_t < 10h,    2,   296h>
		Background_t < 15h,    2,   296h>
		Background_t < 20h,  0Dh,   284h>
		Background_t < 1Ch,  0Dh,   272h>
		Background_t < 1Dh,  10h,   315h>
		Background_t < 1Fh,  0Fh,   2EFh>
		Background_t < 23h,  0Fh,   2EFh>
		Background_t <	 0,    8,   284h>
		Background_t <	 8,    8,   260h>
		Background_t <	 0,  0Ah,   2A1h>
		Background_t < 12h,  10h,   336h>
		Background_t <	 0,  12h,   381h>
		Background_t <	 8,  12h,   381h>
		Background_t < 10h,  12h,   381h>
		Background_t < 18h,  12h,   381h>
		Background_t < 20h,  12h,   381h>
		Background_t < 0Ch,  0Fh,   315h>
		Background_t < 0Fh,  0Fh,   30Ah>
		Background_t < 18h,    0,   2A1h>
		Background_t < 20h,    0,   2EFh>
		Background_t < 23h,    0,   2EFh>
		Background_t < 1Dh,    2,   2DEh>
		Background_t < 20h,    5,   2A1h>
		Background_t < 20h,    6,   296h>
		Background_t < 23h,    6,   2DEh>
		Background_t <	 9,  11h,   4A7h>
		Background_t <	 0,  0Ch,   2CDh>
		Background_t <	 6,  0Ch,   296h>
		Background_t < 12h,  12h,   739h>
		Background_t < 16h,  12h,   739h>
		Background_t <	 0,  12h,   739h>
		Background_t <	 4,  12h,   739h>
		db 25h
		Background_t <	 0,    0,   2B3h>
		Background_t <	 8,    0,   2B3h>
		Background_t < 18h,    0,   2B3h>
		Background_t < 20h,    0,   2B3h>
		Background_t < 10h,    0,   2B3h>
		Background_t < 20h,    8,   284h>
		Background_t < 1Fh,    8,   272h>
		Background_t < 23h,  0Ah,   2CDh>
		Background_t < 20h,  0Ah,   2DEh>
		Background_t < 23h,  0Ch,   2DEh>
		Background_t <	 0,    3,   30Ah>
		Background_t <	 0,    6,   2CDh>
		Background_t < 0Bh,  11h,    13h>
		Background_t < 13h,  11h,    13h>
		Background_t < 0Bh,  11h,   33Ch>
		Background_t < 18h,  11h,   347h>
		Background_t < 1Bh,  10h,   352h>
		Background_t < 11h,    7,   358h>
		Background_t < 11h,  0Ah,   358h>
		Background_t < 10h,  10h,   151h>
		Background_t < 15h,  10h,   154h>
		Background_t <	 3,    4,   336h>
		Background_t <	 9,  0Bh,   336h>
		Background_t < 14h,    1,   296h>
		Background_t < 11h,    0,   358h>
		Background_t < 17h,  12h,   162h>
		Background_t <	 0,  12h,   381h>
		Background_t <	 3,  12h,   381h>
		Background_t < 1Ah,  12h,   381h>
		Background_t < 20h,  12h,   381h>
		Background_t <	 0,  10h,   2A1h>
		Background_t <	 3,  11h,   2A1h>
		Background_t <	 7,  0Dh,   320h>
		Background_t < 25h,  0Ah,   376h>
		Background_t <	 0,  10h,   739h>
		Background_t < 1Dh,  12h,   739h>
		Background_t < 20h,  12h,   739h>
		db 25h
		Background_t <	 0,    0,   2B3h>
		Background_t <	 8,    0,   2B3h>
		Background_t < 18h,    0,   2B3h>
		Background_t < 20h,    0,   2B3h>
		Background_t < 25h,    2,   315h>
		Background_t < 23h,    5,   2DEh>
		Background_t < 20h,  10h,   2A1h>
		Background_t < 18h,  10h,   2A1h>
		Background_t < 18h,  0Dh,   320h>
		Background_t < 10h,    0,   2A1h>
		Background_t < 10h,    2,   2A1h>
		Background_t < 10h,    4,   2B3h>
		Background_t < 0Ch,    3,   2DEh>
		Background_t < 11h,    0,   33Ch>
		Background_t < 14h,    0,   347h>
		Background_t < 18h,    3,   30Ah>
		Background_t < 18h,    6,   296h>
		Background_t < 15h,    5,   296h>
		Background_t < 0Dh,    1,   336h>
		Background_t < 16h,  10h,   336h>
		Background_t <	 0,  0Ch,   30Ah>
		Background_t <	 3,  0Fh,   30Ah>
		Background_t <	 0,    9,   260h>
		Background_t <	 0,  0Fh,   376h>
		Background_t <	 6,  10h,   336h>
		Background_t <	 0,  12h,   381h>
		Background_t <	 8,  12h,   381h>
		Background_t < 10h,  12h,   381h>
		Background_t < 18h,  12h,   381h>
		Background_t < 20h,  12h,   381h>
		Background_t < 0Dh,  11h,   4A7h>
		Background_t < 1Dh,  0Fh,   87Bh>
		Background_t < 1Dh,  10h,   739h>
		Background_t < 20h,  10h,   739h>
		Background_t <	 6,  12h,   739h>
		Background_t < 0Eh,  12h,   739h>
		Background_t < 10h,  12h,   739h>
		db 24h
		Background_t <	 0,    0,   2B3h>
		Background_t <	 8,    0,   2B3h>
		Background_t < 18h,    0,   2B3h>
		Background_t < 24h,    9,   272h>
		Background_t < 25h,  0Dh,   315h>
		Background_t < 23h,  10h,   2DEh>
		Background_t <	 0,    9,   2EFh>
		Background_t < 10h,    0,   2B3h>
		Background_t < 20h,    0,   2A1h>
		Background_t < 23h,    2,   2DEh>
		Background_t < 20h,    2,   296h>
		Background_t < 0Bh,    1,   296h>
		Background_t < 23h,  0Eh,   352h>
		Background_t < 16h,  0Eh,   320h>
		Background_t < 14h,  10h,   336h>
		Background_t <	 0,  12h,   381h>
		Background_t <	 8,  12h,   381h>
		Background_t < 10h,  12h,   381h>
		Background_t < 18h,  12h,   381h>
		Background_t < 20h,  12h,   381h>
		Background_t < 1Bh,  11h,   4A7h>
		Background_t <	 0,  0Fh,   376h>
		Background_t <	 2,  0Fh,   30Ah>
		Background_t <	 0,  0Eh,   376h>
		Background_t <	 1,  0Ch,   2CDh>
		Background_t <	 5,    9,   2CDh>
		Background_t <	 0,    9,   284h>
		Background_t < 0Ch,    9,   260h>
		Background_t <	 5,    9,   284h>
		Background_t <	 4,  0Bh,   2A1h>
		Background_t <	 4,  0Ch,   381h>
		Background_t <	 5,  12h,   739h>
		Background_t < 0Dh,  12h,   739h>
		Background_t < 0Eh,  12h,   739h>
		Background_t < 1Bh,  12h,   739h>
		Background_t < 1Dh,  12h,   739h>
		db 23h
		Background_t < 18h,    0,   2B3h>
		Background_t < 10h,    0,   2B3h>
		Background_t <	 0,  12h,   381h>
		Background_t <	 8,  12h,   381h>
		Background_t < 18h,  12h,   381h>
		Background_t < 20h,    0,   2B3h>
		Background_t < 21h,  0Bh,   2DEh>
		Background_t < 20h,  10h,   2DEh>
		Background_t < 20h,  12h,   381h>
		Background_t < 20h,  0Dh,   315h>
		Background_t < 23h,    9,   2EFh>
		Background_t < 23h,  0Dh,   2EFh>
		Background_t < 22h,    9,   376h>
		Background_t < 10h,  12h,   381h>
		Background_t <	 0,    0,   2A1h>
		Background_t <	 0,    2,   2A1h>
		Background_t <	 0,    4,   2B3h>
		Background_t <	 8,    0,   2A1h>
		Background_t <	 8,    2,   2CDh>
		Background_t <	 8,    5,   296h>
		Background_t <	 0,  0Fh,   30Ah>
		Background_t <	 3,  10h,   336h>
		Background_t < 0Eh,  0Fh,   315h>
		Background_t < 11h,  0Fh,   30Ah>
		Background_t < 1Dh,  10h,   336h>
		Background_t < 0Dh,    1,   296h>
		Background_t <	 0,    5,   3B7h>
		Background_t <	 0,    6,   39Dh>
		Background_t <	 0,  0Bh,   260h>
		Background_t < 1Eh,    9,   272h>
		Background_t < 20h,    9,   284h>
		Background_t < 14h,  12h,   739h>
		Background_t < 1Ah,  12h,   739h>
		Background_t <	 3,  12h,   739h>
		Background_t <	 6,  12h,   739h>
		db 22h
		Background_t <	 8,  12h,   3C1h>
		Background_t < 10h,  12h,   3C1h>
		Background_t < 18h,  12h,   3C1h>
		Background_t < 20h,  12h,   2A1h>
		Background_t < 1Fh,  0Fh,   315h>
		Background_t < 22h,  0Eh,   2EFh>
		Background_t <	 5,    0,   2EFh>
		Background_t < 19h,    0,   2EFh>
		Background_t < 1Eh,    0,   2EFh>
		Background_t < 23h,    0,   2EFh>
		Background_t < 20h,    5,   3B7h>
		Background_t <	 8,    5,   3B7h>
		Background_t < 10h,    5,   3B7h>
		Background_t < 18h,    5,   3B7h>
		Background_t < 23h,    6,   39Dh>
		Background_t < 20h,  0Bh,   284h>
		Background_t < 1Fh,  0Bh,   272h>
		Background_t < 14h,    6,   39Dh>
		Background_t < 15h,  0Ah,   393h>
		Background_t < 0Ah,    0,   2B3h>
		Background_t < 11h,    2,   315h>
		Background_t < 11h,    6,   296h>
		Background_t < 0Dh,    3,   352h>
		Background_t < 0Dh,    0,   2B3h>
		Background_t <	 0,    0,   2EFh>
		Background_t < 23h,  0Dh,   2EFh>
		Background_t < 0Ch,    6,   432h>
		Background_t <	 8,  11h,   4A7h>
		Background_t <	 0,  0Ah,   3B7h>
		Background_t <	 3,  0Bh,   39Dh>
		Background_t <	 0,  12h,   3C1h>
		Background_t <	 0,    5,   2EFh>
		Background_t <	 4,    5,   2CDh>
		Background_t < 14h,    0,   2EFh>
		db 1Ah
		Background_t <	 8,  12h,   3C1h>
		Background_t <	 0,    0,   3B7h>
		Background_t <	 8,    0,   3B7h>
		Background_t < 10h,    0,   3B7h>
		Background_t < 18h,    0,   3B7h>
		Background_t < 20h,    0,   3B7h>
		Background_t < 11h,    1,   39Dh>
		Background_t <	 5,    1,   39Dh>
		Background_t < 0Bh,    1,   432h>
		Background_t < 14h,  0Ch,   432h>
		Background_t < 10h,  0Ch,   39Dh>
		Background_t <	 4,  0Ch,   39Dh>
		Background_t <	 0,    9,   3EBh>
		Background_t <	 8,    9,   3EBh>
		Background_t < 10h,    9,   3EBh>
		Background_t < 0Dh,    4,   405h>
		Background_t < 13h,    5,   420h>
		Background_t < 20h,    8,   3EBh>
		Background_t <	 0,  12h,   3C1h>
		Background_t < 10h,  12h,   3C1h>
		Background_t < 18h,  12h,   3C1h>
		Background_t < 21h,  0Bh,   39Dh>
		Background_t < 20h,  12h,   3C1h>
		Background_t < 22h,    1,   39Dh>
		Background_t < 1Dh,    8,   3EBh>
		Background_t < 1Bh,    1,   432h>
		db 1Ch
		Background_t <	 0,    0,   3B7h>
		Background_t <	 8,    0,   3B7h>
		Background_t < 10h,    0,   3B7h>
		Background_t < 18h,    0,   3B7h>
		Background_t < 20h,    0,   3B7h>
		Background_t <	 4,    1,   39Dh>
		Background_t < 10h,    1,   39Dh>
		Background_t < 1Ch,    1,   39Dh>
		Background_t < 11h,  0Eh,   420h>
		Background_t < 13h,    1,   432h>
		Background_t < 16h,  11h,   4A7h>
		Background_t < 0Bh,  0Ch,   432h>
		Background_t <	 7,  0Ch,   39Dh>
		Background_t < 13h,  0Ch,   39Dh>
		Background_t < 1Fh,  0Ch,   39Dh>
		Background_t < 23h,  0Ch,   432h>
		Background_t <	 0,    9,   3EBh>
		Background_t <	 8,    9,   3EBh>
		Background_t < 10h,    9,   3EBh>
		Background_t < 18h,    9,   3EBh>
		Background_t < 20h,    9,   3EBh>
		Background_t < 18h,  12h,   3C1h>
		Background_t < 20h,  12h,   3C1h>
		Background_t < 12h,    8,   87Bh>
		Background_t < 0Ch,  0Eh,   405h>
		Background_t <	 0,  12h,   3C1h>
		Background_t <	 8,  12h,   3C1h>
		Background_t < 10h,  12h,   3C1h>
		db 13h
		Background_t <	 8,  12h,   3C1h>
		Background_t < 10h,  12h,   3C1h>
		Background_t <	 0,    0,   3B7h>
		Background_t <	 8,    0,   3B7h>
		Background_t < 10h,    0,   3B7h>
		Background_t < 18h,    0,   3B7h>
		Background_t < 20h,    0,   3B7h>
		Background_t <	 3,    1,   39Dh>
		Background_t < 1Dh,    1,   39Dh>
		Background_t <	 0,    9,   3EBh>
		Background_t <	 4,  0Ch,   39Dh>
		Background_t <	 0,  12h,   3C1h>
		Background_t < 1Bh,    1,   432h>
		Background_t <	 1,  0Ch,   432h>
		Background_t < 18h,    9,   3EBh>
		Background_t < 1Eh,  0Ch,   39Dh>
		Background_t < 20h,    9,   3EBh>
		Background_t < 20h,  12h,   3C1h>
		Background_t < 18h,  12h,   3C1h>
		db 22h
		Background_t < 10h,  12h,   3C1h>
		Background_t < 20h,  12h,   3C1h>
		Background_t < 10h,    0,   3B7h>
		Background_t < 18h,    0,   3B7h>
		Background_t < 20h,    0,   3B7h>
		Background_t <	 0,    9,   3EBh>
		Background_t <	 0,  12h,   3C1h>
		Background_t < 21h,    1,   39Dh>
		Background_t < 14h,    1,   39Dh>
		Background_t <	 8,    9,   3EBh>
		Background_t < 10h,    9,   3EBh>
		Background_t < 18h,    9,   3EBh>
		Background_t < 20h,    9,   3EBh>
		Background_t <	 8,    0,   381h>
		Background_t <	 2,  0Bh,   2CDh>
		Background_t <	 1,  0Ch,   2CDh>
		Background_t <	 6,  0Ch,   432h>
		Background_t < 17h,    1,   432h>
		Background_t < 0Eh,  0Ch,   39Dh>
		Background_t < 1Bh,  0Ch,   39Dh>
		Background_t <	 8,  12h,   3C1h>
		Background_t < 18h,  12h,   3C1h>
		Background_t < 16h,  11h,   4A7h>
		Background_t <	 0,    0,   2EFh>
		Background_t <	 0,    6,   2CDh>
		Background_t <	 0,    1,   2EFh>
		Background_t <	 5,    0,   376h>
		Background_t <	 3,    2,   2CDh>
		Background_t <	 4,    6,   30Ah>
		Background_t <	 1,    6,   376h>
		Background_t <	 7,    8,   4A7h>
		Background_t <	 0,    9,   376h>
		Background_t <	 0,  0Ch,   376h>
		Background_t <	 3,    9,   376h>
		db 1Fh
		Background_t < 20h,  0Bh,    3Fh>
		Background_t < 1Eh,  0Bh,    2Dh>
		Background_t < 10h,  12h,   171h>
		Background_t < 24h,  0Eh,    9Eh>
		Background_t < 20h,  0Eh,   193h>
		Background_t < 18h,  12h,   171h>
		Background_t <	 8,    0,   1CDh>
		Background_t <	 0,    0,   1CDh>
		Background_t <	 5,    2,   1CDh>
		Background_t < 0Ch,    4,   1C3h>
		Background_t <	 4,    3,   1C3h>
		Background_t <	 0,  0Bh,    3Fh>
		Background_t <	 6,  0Bh,      1>
		Background_t <	 0,  0Eh,   209h>
		Background_t <	 0,  12h,   171h>
		Background_t < 12h,  0Bh,    61h>
		Background_t <	 7,  12h,   246h>
		Background_t < 13h,    2,    94h>
		Background_t < 1Ch,    7,    94h>
		Background_t < 1Fh,    0,    94h>
		Background_t < 17h,  11h,   23Eh>
		Background_t <	 2,  11h,   23Eh>
		Background_t < 21h,    4,    61h>
		Background_t <	 7,    0,   3E5h>
		Background_t <	 7,    1,   3E5h>
		Background_t <	 8,    1,   3E5h>
		Background_t <	 9,    1,   3E5h>
		Background_t <	 8,    0,   3E5h>
		Background_t < 0Ch,    2,   3E5h>
		Background_t <	 5,    2,   3E5h>
		Background_t < 0Ch,    3,   3E5h>
		db 13h
		Background_t < 10h,  12h,   171h>
		Background_t < 18h,  12h,   171h>
		Background_t < 20h,  0Ch,   2DEh>
		Background_t < 25h,  0Ch,   376h>
		Background_t <	 2,  0Fh,   438h>
		Background_t <	 4,    3,    94h>
		Background_t < 11h,    6,    94h>
		Background_t < 19h,    1,    94h>
		Background_t < 11h,  11h,   23Eh>
		Background_t < 1Bh,  11h,   23Eh>
		Background_t < 15h,  0Bh,    61h>
		Background_t < 0Fh,  11h,   87Bh>
		Background_t < 20h,    9,   315h>
		Background_t < 23h,    5,   315h>
		Background_t < 23h,    8,   2EFh>
		Background_t < 25h,    5,   376h>
		Background_t < 25h,    2,   315h>
		Background_t <	 4,  11h,   832h>
		Background_t <	 0,  12h,   171h>
		db 0Dh
		Background_t < 10h,  12h,   171h>
		Background_t < 18h,  12h,   171h>
		Background_t <	 0,  12h,   171h>
		Background_t < 19h,  0Fh,   482h>
		Background_t < 18h,    8,   440h>
		Background_t <	 8,    5,   440h>
		Background_t < 1Fh,  0Bh,    61h>
		Background_t < 10h,  0Fh,   496h>
		Background_t < 12h,    2,    94h>
		Background_t < 1Eh,    5,    94h>
		Background_t <	 3,    5,    94h>
		Background_t < 0Ah,  0Ch,   71Fh>
		Background_t <	 5,  0Eh,   224h>
		db  17h
		Background_t < 18h,  12h,   171h>
		Background_t <	 0,  12h,   171h>
		Background_t < 1Fh,    3,    94h>
		Background_t <	 1,  0Fh,   482h>
		Background_t <	 1,  0Ch,   482h>
		Background_t <	 1,    9,   482h>
		Background_t <	 0,    2,   440h>
		Background_t <	 8,    2,   440h>
		Background_t <	 9,    9,   482h>
		Background_t <	 9,  0Ch,   482h>
		Background_t <	 9,  0Fh,   482h>
		Background_t < 12h,    6,   440h>
		Background_t < 0Fh,  0Fh,   496h>
		Background_t <	 3,  11h,   23Eh>
		Background_t < 19h,  0Bh,    61h>
		Background_t < 1Ah,  0Fh,   496h>
		Background_t <	 0,    0,    94h>
		Background_t < 0Fh,    4,    94h>
		Background_t < 1Fh,  11h,   23Eh>
		Background_t < 21h,  11h,   23Eh>
		Background_t < 15h,    3,   258h>
		Background_t < 14h,  0Dh,   71Fh>
		Background_t < 10h,  12h,   171h>
		db 14h
		Background_t < 10h,  12h,   171h>
		Background_t < 18h,  12h,   171h>
		Background_t <	 0,  12h,   171h>
		Background_t < 21h,  0Fh,   482h>
		Background_t < 21h,  0Ch,   482h>
		Background_t < 21h,    9,   482h>
		Background_t < 20h,    2,   440h>
		Background_t <	 8,  0Fh,   482h>
		Background_t <	 8,  0Ch,   482h>
		Background_t <	 7,    5,   440h>
		Background_t < 11h,  0Fh,   496h>
		Background_t < 1Ah,  12h,   246h>
		Background_t < 15h,  10h,   1A9h>
		Background_t < 15h,  0Eh,   1A9h>
		Background_t < 15h,  0Ch,   1A9h>
		Background_t < 0Ah,  11h,   23Eh>
		Background_t <	 2,  0Eh,   224h>
		Background_t < 14h,    4,    94h>
		Background_t <	 8,    2,    94h>
		Background_t < 1Dh,    1,    94h>
		db 10h
		Background_t < 1Eh,  0Ch,   440h>
		Background_t < 18h,  12h,   171h>
		Background_t < 12h,    6,   440h>
		Background_t < 20h,  0Fh,   4A4h>
		Background_t < 23h,  0Fh,   4A4h>
		Background_t <	 4,    3,    94h>
		Background_t < 0Fh,    1,    94h>
		Background_t < 1Ch,    6,    94h>
		Background_t <	 6,  0Fh,   482h>
		Background_t <	 5,    8,   440h>
		Background_t < 19h,  0Fh,   496h>
		Background_t < 0Ch,  11h,   23Eh>
		Background_t < 14h,  0Dh,   71Fh>
		Background_t <	 0,  12h,   171h>
		Background_t < 10h,  12h,   171h>
		Background_t <	 9,  12h,   1B9h>
		db 15h
		Background_t <	 0,  12h,   171h>
		Background_t < 18h,  12h,   171h>
		Background_t < 10h,  12h,   171h>
		Background_t < 11h,  0Fh,   482h>
		Background_t < 11h,  0Ch,   482h>
		Background_t < 11h,    9,   482h>
		Background_t < 11h,    6,   482h>
		Background_t < 10h,    0,   440h>
		Background_t <	 1,  0Fh,   482h>
		Background_t < 21h,  0Fh,   482h>
		Background_t <	 1,  0Ch,   482h>
		Background_t <	 0,    5,   440h>
		Background_t < 21h,  0Ch,   482h>
		Background_t < 20h,    5,   440h>
		Background_t <	 8,  0Fh,   496h>
		Background_t < 18h,  12h,   246h>
		Background_t < 17h,  0Eh,   224h>
		Background_t <	 9,    4,    94h>
		Background_t < 1Bh,    1,    94h>
		Background_t < 0Dh,  11h,   832h>
		Background_t < 0Ah,  0Bh,    61h>
		db 11h
		Background_t <	 0,  12h,   171h>
		Background_t < 18h,  12h,   171h>
		Background_t < 10h,  12h,   171h>
		Background_t < 12h,  12h,   1B9h>
		Background_t < 10h,  0Eh,   224h>
		Background_t < 11h,    3,    94h>
		Background_t < 1Ch,    5,    94h>
		Background_t < 1Ch,  11h,   23Eh>
		Background_t <	 0,    7,    3Fh>
		Background_t <	 6,    7,      1>
		Background_t <	 3,  0Ah,   209h>
		Background_t <	 0,  0Ah,   166h>
		Background_t <	 0,  0Dh,   166h>
		Background_t <	 0,  0Fh,   166h>
		Background_t <	 2,  10h,   47Ah>
		Background_t <	 5,  11h,   832h>
		Background_t < 0Fh,  12h,   1B9h>
		db 10h
		Background_t < 10h,  12h,   171h>
		Background_t < 18h,  12h,   171h>
		Background_t <	 0,  12h,   171h>
		Background_t <	 0,    9,    3Fh>
		Background_t <	 6,    9,      1>
		Background_t <	 0,  0Ch,    9Eh>
		Background_t <	 3,  0Ch,   209h>
		Background_t <	 1,  0Fh,   166h>
		Background_t <	 5,  11h,   23Eh>
		Background_t < 1Fh,  11h,   23Eh>
		Background_t < 0Dh,  0Eh,   224h>
		Background_t <	 3,    1,    94h>
		Background_t < 20h,    6,    94h>
		Background_t < 0Fh,    4,    94h>
		Background_t < 16h,  11h,   832h>
		Background_t < 13h,  11h,   87Bh>
		db 0Eh
		Background_t < 10h,  12h,   171h>
		Background_t < 18h,  12h,   171h>
		Background_t < 20h,    2,    94h>
		Background_t < 14h,    5,    94h>
		Background_t <	 4,    6,    94h>
		Background_t < 0Ch,    1,    94h>
		Background_t < 1Fh,  11h,   23Eh>
		Background_t < 10h,  11h,   23Eh>
		Background_t < 12h,  11h,   4A7h>
		Background_t < 16h,  11h,   87Bh>
		Background_t < 16h,  0Bh,    61h>
		Background_t <	 1,  11h,   832h>
		Background_t < 0Ah,  0Ch,    61h>
		Background_t <	 0,  12h,   171h>
		db 14h
		Background_t < 10h,  12h,   171h>
		Background_t < 18h,  12h,   171h>
		Background_t <	 0,  12h,   171h>
		Background_t < 22h,    0,   4ABh>
		Background_t < 1Ch,    0,   4ABh>
		Background_t < 16h,  10h,   4F5h>
		Background_t < 1Fh,  10h,   4F5h>
		Background_t < 12h,  10h,   4E9h>
		Background_t < 1Ah,    6,   4E3h>
		Background_t < 1Ah,  0Fh,   4E3h>
		Background_t < 1Bh,    7,   4D1h>
		Background_t < 23h,    6,   4E3h>
		Background_t < 24h,    7,   4D1h>
		Background_t < 23h,  0Fh,   4E3h>
		Background_t < 1Fh,    7,    94h>
		Background_t < 13h,    2,    94h>
		Background_t < 16h,    0,   4ABh>
		Background_t <	 5,    6,    94h>
		Background_t <	 2,  0Eh,   224h>
		Background_t <	 9,  11h,   23Eh>
		db 11h
		Background_t <	 0,  12h,   509h>
		Background_t < 0Eh,  12h,   509h>
		Background_t < 1Ah,  12h,   509h>
		Background_t <	 0,    0,   567h>
		Background_t <	 0,    1,   527h>
		Background_t < 22h,    1,   547h>
		Background_t < 1Ch,    0,   567h>
		Background_t < 0Ch,  10h,   575h>
		Background_t < 14h,  10h,   575h>
		Background_t < 10h,  0Dh,   575h>
		Background_t < 10h,  0Ch,   587h>
		Background_t < 0Ch,  0Fh,   587h>
		Background_t < 14h,  0Fh,   587h>
		Background_t <	 4,    5,   591h>
		Background_t < 12h,    2,   591h>
		Background_t < 21h,    5,   591h>
		Background_t <	 0,  10h,   5C4h>
		db 1Ch
		Background_t <	 0,  12h,   509h>
		Background_t < 1Ah,  12h,   509h>
		Background_t <	 0,    0,   567h>
		Background_t < 0Ch,    0,   567h>
		Background_t < 18h,    0,   567h>
		Background_t < 1Ch,    0,   567h>
		Background_t <	 6,  12h,   59Ch>
		Background_t < 0Eh,  12h,   509h>
		Background_t < 10h,  12h,   59Ch>
		Background_t < 1Ah,  12h,   59Ch>
		Background_t <	 3,    1,   5A2h>
		Background_t < 0Fh,    1,   5A2h>
		Background_t < 1Bh,    1,   5A2h>
		Background_t < 1Dh,    1,   4E3h>
		Background_t < 1Eh,    2,   4D1h>
		Background_t < 1Eh,    9,   4D1h>
		Background_t < 1Dh,  11h,   4E3h>
		Background_t <	 6,    1,   4E3h>
		Background_t <	 7,    2,   4D1h>
		Background_t <	 7,    9,   4D1h>
		Background_t <	 6,  11h,   4E3h>
		Background_t <	 0,    1,   527h>
		Background_t < 19h,    4,   5B6h>
		Background_t < 19h,  0Ah,   5B6h>
		Background_t < 19h,  0Ch,   5B6h>
		Background_t < 0Ch,    4,   5B6h>
		Background_t < 0Ch,  0Ah,   5B6h>
		Background_t < 0Ch,  0Ch,   5B6h>
		db 1Bh
		Background_t <	 0,  12h,   509h>
		Background_t <	 0,    0,   567h>
		Background_t < 0Ch,    0,   567h>
		Background_t < 18h,    0,   567h>
		Background_t < 1Ch,    0,   567h>
		Background_t < 0Eh,  12h,   509h>
		Background_t < 1Ah,  12h,   509h>
		Background_t < 22h,    8,   5CEh>
		Background_t <	 0,    6,   591h>
		Background_t < 1Ah,    1,   4E3h>
		Background_t < 1Bh,    2,   4D1h>
		Background_t < 0Ah,  11h,   5CEh>
		Background_t <	 6,  12h,   59Ch>
		Background_t < 1Ah,  10h,   509h>
		Background_t < 10h,  10h,   509h>
		Background_t < 0Fh,  10h,   5CEh>
		Background_t < 14h,  0Fh,   5CEh>
		Background_t < 1Ah,  0Fh,   5CEh>
		Background_t < 20h,  0Fh,   5CEh>
		Background_t < 22h,  0Fh,   5CEh>
		Background_t < 10h,  10h,   59Ch>
		Background_t < 1Bh,    6,   4D1h>
		Background_t < 1Ah,  0Eh,   4E3h>
		Background_t < 1Ah,  0Fh,   59Ch>
		Background_t <	 4,    1,   5A2h>
		Background_t < 10h,    1,   5A2h>
		Background_t < 23h,    9,   5F6h>
		db 1Bh
		Background_t <	 0,  12h,   509h>
		Background_t <	 0,    0,   567h>
		Background_t < 0Ch,    0,   567h>
		Background_t < 18h,    0,   567h>
		Background_t < 1Ch,    0,   567h>
		Background_t < 0Eh,  12h,   509h>
		Background_t < 0Fh,    1,   5A2h>
		Background_t < 1Bh,    1,   5A2h>
		Background_t < 1Ah,  12h,   509h>
		Background_t <	 0,  10h,   509h>
		Background_t < 0Ah,  10h,   509h>
		Background_t < 18h,  11h,   5CEh>
		Background_t <	 0,  0Fh,   5CEh>
		Background_t <	 6,  0Fh,   5CEh>
		Background_t < 0Ch,  0Fh,   5CEh>
		Background_t < 1Eh,  12h,   59Ch>
		Background_t < 0Eh,  0Fh,   5CEh>
		Background_t < 13h,  10h,   5CEh>
		Background_t < 14h,  10h,   59Ch>
		Background_t < 0Bh,    1,   4E3h>
		Background_t < 0Ch,    2,   4D1h>
		Background_t < 0Ch,    6,   4D1h>
		Background_t < 0Bh,  0Eh,   4E3h>
		Background_t <	 0,    9,   5D6h>
		Background_t <	 0,    8,   5CEh>
		Background_t < 0Bh,  0Fh,   59Ch>
		Background_t < 25h,    6,   591h>
		db 1Dh
		Background_t <	 0,  12h,   509h>
		Background_t <	 0,    0,   567h>
		Background_t < 0Ch,    0,   567h>
		Background_t < 18h,    0,   567h>
		Background_t < 1Ch,    0,   567h>
		Background_t < 0Eh,  12h,   509h>
		Background_t < 1Ah,  12h,   509h>
		Background_t < 0Ah,  11h,   5CEh>
		Background_t <	 6,  12h,   59Ch>
		Background_t < 1Ah,  10h,   509h>
		Background_t < 10h,  10h,   509h>
		Background_t < 0Fh,  10h,   5CEh>
		Background_t < 14h,  0Fh,   5CEh>
		Background_t < 1Ah,  0Fh,   5CEh>
		Background_t < 20h,  0Fh,   5CEh>
		Background_t < 22h,  0Fh,   5CEh>
		Background_t < 10h,  10h,   59Ch>
		Background_t < 1Ah,  0Fh,   59Ch>
		Background_t <	 4,    1,   5A2h>
		Background_t < 10h,    1,   5A2h>
		Background_t < 21h,  0Fh,   59Ch>
		Background_t <	 3,    1,   4E3h>
		Background_t <	 4,    2,   4D1h>
		Background_t <	 4,    9,   4D1h>
		Background_t <	 3,  11h,   4E3h>
		Background_t < 20h,  0Dh,   575h>
		Background_t < 20h,  0Ch,   575h>
		Background_t < 18h,    1,   5A2h>
		Background_t < 22h,    0,   547h>
		db 1Bh
		Background_t <	 0,  12h,   509h>
		Background_t <	 0,    0,   567h>
		Background_t < 0Ch,    0,   567h>
		Background_t < 18h,    0,   567h>
		Background_t < 1Ch,    0,   567h>
		Background_t < 0Eh,  12h,   509h>
		Background_t < 1Ah,  12h,   509h>
		Background_t <	 0,  10h,   509h>
		Background_t < 0Eh,  10h,   509h>
		Background_t <	 0,    0,   527h>
		Background_t < 22h,    0,   547h>
		Background_t < 14h,    1,   527h>
		Background_t < 0Eh,    1,   547h>
		Background_t <	 8,    2,   591h>
		Background_t < 1Dh,    2,   591h>
		Background_t <	 0,  0Ch,   616h>
		Background_t <	 8,  0Ch,   616h>
		Background_t < 10h,  0Ch,   616h>
		Background_t < 18h,  0Ch,   616h>
		Background_t < 20h,  0Ch,   616h>
		Background_t <	 0,  0Ch,   96Eh>
		Background_t <	 0,  0Eh,   96Eh>
		Background_t < 25h,  0Ch,   976h>
		Background_t < 25h,  0Eh,   376h>
		Background_t < 23h,  0Eh,   315h>
		Background_t < 1Fh,  10h,   620h>
		Background_t < 1Ch,  10h,   620h>
		db 17h
		Background_t < 0Ch,    0,   567h>
		Background_t < 18h,    0,   567h>
		Background_t < 1Ch,    0,   567h>
		Background_t <	 0,    0,   567h>
		Background_t <	 0,  12h,   381h>
		Background_t <	 8,  12h,   381h>
		Background_t < 10h,  12h,   381h>
		Background_t < 18h,  12h,   381h>
		Background_t < 20h,  12h,   381h>
		Background_t <	 0,  0Dh,   2CDh>
		Background_t <	 3,  0Fh,   30Ah>
		Background_t <	 0,  0Ch,   620h>
		Background_t <	 0,  0Fh,   376h>
		Background_t < 23h,  0Dh,   2DEh>
		Background_t < 22h,  0Fh,   315h>
		Background_t < 25h,  0Fh,   376h>
		Background_t < 0Eh,    0,   547h>
		Background_t < 14h,    0,   527h>
		Background_t <	 0,    1,   567h>
		Background_t < 1Ch,    1,   567h>
		Background_t < 1Fh,  0Ch,   620h>
		Background_t < 10h,  0Ch,   620h>
		Background_t <	 6,  11h,   87Bh>
		db 22h
		Background_t < 0Ch,    0,   567h>
		Background_t < 18h,    0,   567h>
		Background_t < 1Ch,    0,   567h>
		Background_t <	 8,  12h,   575h>
		Background_t < 10h,  12h,   575h>
		Background_t < 18h,  12h,   575h>
		Background_t < 20h,  12h,   575h>
		Background_t <	 0,  0Ch,   509h>
		Background_t < 1Ah,  0Ch,   509h>
		Background_t <	 0,  0Eh,   620h>
		Background_t <	 0,  10h,   620h>
		Background_t < 0Eh,  11h,   3B7h>
		Background_t < 16h,  11h,   3B7h>
		Background_t <	 6,  0Fh,   634h>
		Background_t < 0Eh,  0Fh,   634h>
		Background_t <	 0,  12h,   575h>
		Background_t <	 4,    4,   4D1h>
		Background_t <	 3,  0Bh,   4E3h>
		Background_t < 22h,    4,   4D1h>
		Background_t < 21h,  0Bh,   4E3h>
		Background_t <	 0,    0,   567h>
		Background_t <	 3,    4,   4E3h>
		Background_t < 21h,    4,   4E3h>
		Background_t < 1Ch,    3,   567h>
		Background_t <	 0,    3,   567h>
		Background_t < 1Fh,  0Eh,   620h>
		Background_t < 1Fh,  10h,   620h>
		Background_t < 1Ah,  0Fh,   634h>
		Background_t < 16h,  0Fh,   634h>
		Background_t < 1Ah,  11h,   3B7h>
		Background_t <	 6,  11h,   3B7h>
		Background_t < 18h,    3,   567h>
		Background_t <	 4,    3,   567h>
		Background_t <	 6,  0Ch,   620h>
		db 16h
		Background_t <	 9,  0Dh,   5C4h>
		Background_t < 0Dh,  0Fh,   5C4h>
		Background_t <	 0,  12h,   171h>
		Background_t < 10h,  12h,   171h>
		Background_t < 18h,  12h,   171h>
		Background_t <	 0,  10h,   4F5h>
		Background_t <	 4,  0Fh,   4F5h>
		Background_t <	 9,  10h,   4E9h>
		Background_t < 0Fh,  10h,   5C4h>
		Background_t <	 7,  10h,   4F5h>
		Background_t <	 0,    0,   4ABh>
		Background_t <	 2,    6,   4E3h>
		Background_t <	 3,    7,   4D1h>
		Background_t <	 0,  0Ch,   4F5h>
		Background_t <	 0,  0Eh,   4F5h>
		Background_t <	 2,  0Bh,   4E3h>
		Background_t <	 7,    2,    94h>
		Background_t <	 3,    0,   4ABh>
		Background_t < 15h,    6,    94h>
		Background_t < 20h,    2,    94h>
		Background_t < 1Eh,  0Eh,   224h>
		Background_t < 15h,  11h,   23Eh>
		db 24h
		Background_t <	 0,  11h,   376h>
		Background_t <	 2,  0Fh,   125h>
		Background_t < 0Ah,  0Fh,   125h>
		Background_t < 0Dh,  11h,    13h>
		Background_t < 12h,  0Fh,   125h>
		Background_t < 15h,  0Fh,   125h>
		Background_t < 18h,    6,   660h>
		Background_t < 1Ah,  0Bh,   6D5h>
		Background_t < 1Bh,    2,   694h>
		Background_t < 1Ch,    6,   646h>
		Background_t < 20h,    6,   646h>
		Background_t < 22h,    0,   66Eh>
		Background_t < 1Eh,    9,   66Eh>
		Background_t < 22h,    9,   66Eh>
		Background_t < 1Ch,    9,   6B8h>
		Background_t < 1Eh,    0,   66Eh>
		Background_t < 18h,    0,    94h>
		Background_t < 0Fh,    4,    94h>
		Background_t < 18h,    9,   6D5h>
		Background_t < 15h,  11h,   137h>
		Background_t < 20h,  11h,    13h>
		Background_t < 1Dh,  11h,   137h>
		Background_t < 1Dh,  0Fh,   125h>
		Background_t < 20h,  0Fh,   125h>
		Background_t <	 0,    0,   3B7h>
		Background_t <	 0,  0Ah,   376h>
		Background_t <	 0,  0Dh,   376h>
		Background_t <	 2,  0Ah,   376h>
		Background_t <	 0,  0Ch,   2CDh>
		Background_t <	 3,  11h,   33Ch>
		Background_t <	 0,  0Eh,   376h>
		Background_t <	 2,    1,   39Dh>
		Background_t <	 0,    8,   284h>
		Background_t <	 4,    8,   260h>
		Background_t <	 7,  0Eh,   94Dh>
		Background_t <	 5,  11h,   137h>
		db 22h
		Background_t < 10h,  11h,   137h>
		Background_t < 18h,  11h,   137h>
		Background_t < 20h,  11h,   137h>
		Background_t < 10h,  0Fh,   125h>
		Background_t < 18h,  0Fh,   125h>
		Background_t < 20h,  0Fh,   125h>
		Background_t <	 0,    6,   646h>
		Background_t <	 4,    6,   6EBh>
		Background_t <	 0,    9,   66Eh>
		Background_t <	 8,    9,   6A6h>
		Background_t <	 6,  0Dh,   66Eh>
		Background_t < 0Bh,  0Eh,   6A6h>
		Background_t <	 0,  0Fh,   125h>
		Background_t <	 8,  0Fh,   125h>
		Background_t <	 0,  11h,   137h>
		Background_t <	 8,  11h,   137h>
		Background_t <	 2,    9,   66Eh>
		Background_t <	 1,    2,   6A6h>
		Background_t <	 1,    0,   6C3h>
		Background_t <	 0,    0,   6B8h>
		Background_t <	 0,    3,   6B8h>
		Background_t < 20h,    6,   646h>
		Background_t < 1Ch,    6,   660h>
		Background_t < 1Fh,    2,   694h>
		Background_t < 22h,    0,   66Eh>
		Background_t < 18h,    8,   694h>
		Background_t < 18h,  0Bh,   6D5h>
		Background_t < 1Ch,    9,   66Eh>
		Background_t < 22h,    9,   66Eh>
		Background_t <	 8,    1,    94h>
		Background_t < 11h,    3,    94h>
		Background_t < 1Dh,    0,    94h>
		Background_t < 0Eh,  12h,   162h>
		Background_t < 0Ch,  0Eh,   94Dh>
		db 25h
		Background_t < 10h,  11h,   137h>
		Background_t < 18h,  11h,   137h>
		Background_t < 10h,  0Fh,   125h>
		Background_t < 20h,  0Fh,   125h>
		Background_t <	 0,    6,   646h>
		Background_t <	 4,    6,   6EBh>
		Background_t <	 0,  0Fh,   125h>
		Background_t <	 0,  11h,   137h>
		Background_t <	 1,    2,   6A6h>
		Background_t <	 1,    0,   6C3h>
		Background_t <	 0,    0,   6B8h>
		Background_t <	 0,    3,   6B8h>
		Background_t < 20h,    6,   646h>
		Background_t <	 4,    9,   6C3h>
		Background_t <	 5,  0Bh,   6A6h>
		Background_t <	 0,    9,   66Eh>
		Background_t < 1Fh,    6,   660h>
		Background_t < 1Fh,    9,   6D5h>
		Background_t < 21h,  0Bh,   694h>
		Background_t < 22h,    9,   66Eh>
		Background_t < 22h,    2,   694h>
		Background_t < 22h,    0,   6D5h>
		Background_t < 25h,    3,   6B8h>
		Background_t < 25h,    0,   6B8h>
		Background_t <	 8,    6,   6F9h>
		Background_t < 17h,    6,   6F9h>
		Background_t <	 6,    3,    94h>
		Background_t < 13h,    0,    94h>
		Background_t < 1Eh,    2,    94h>
		Background_t <	 8,  11h,    13h>
		Background_t < 20h,  11h,    13h>
		Background_t < 10h,    7,   717h>
		Background_t < 16h,    7,   71Bh>
		Background_t <	 8,  0Fh,   125h>
		Background_t < 18h,  0Fh,   125h>
		Background_t < 0Bh,    9,   71Fh>
		Background_t < 19h,    9,   71Fh>
		db 1Fh
		Background_t < 10h,  0Fh,   125h>
		Background_t <	 8,  0Fh,   125h>
		Background_t <	 0,  11h,   137h>
		Background_t <	 8,  11h,   137h>
		Background_t < 10h,  11h,    13h>
		Background_t < 20h,  11h,   137h>
		Background_t <	 0,    6,   6EBh>
		Background_t <	 0,    9,   6C3h>
		Background_t <	 0,  0Ch,   6A6h>
		Background_t <	 0,  0Fh,   125h>
		Background_t <	 4,    6,   6F9h>
		Background_t < 0Ch,    6,   6F9h>
		Background_t < 20h,  0Fh,   125h>
		Background_t <	 0,    4,   6E7h>
		Background_t < 14h,    7,   717h>
		Background_t <	 8,    4,    94h>
		Background_t < 1Ah,    1,    94h>
		Background_t < 18h,  0Fh,   125h>
		Background_t < 18h,  11h,   137h>
		Background_t <	 6,    9,   71Fh>
		Background_t < 0Fh,    9,   71Fh>
		Background_t < 1Bh,    6,   660h>
		Background_t < 1Fh,    6,   646h>
		Background_t < 20h,    6,   646h>
		Background_t < 1Bh,    9,   6D5h>
		Background_t < 1Fh,    9,   66Eh>
		Background_t < 22h,    9,   66Eh>
		Background_t < 22h,    0,   66Eh>
		Background_t < 1Eh,    0,   694h>
		Background_t < 1Eh,    4,   6B8h>
		Background_t < 21h,    4,   6B8h>
		db 23h
		Background_t < 10h,  0Fh,   125h>
		Background_t < 18h,  0Fh,   125h>
		Background_t < 10h,  11h,    13h>
		Background_t <	 0,    6,   646h>
		Background_t <	 4,    6,   6EBh>
		Background_t <	 4,    4,   6E7h>
		Background_t <	 0,    3,   6B8h>
		Background_t <	 1,    4,   6B8h>
		Background_t <	 3,    2,   6E7h>
		Background_t <	 0,    1,   713h>
		Background_t <	 1,    1,   6E7h>
		Background_t <	 0,    2,   6B8h>
		Background_t <	 0,    9,   66Eh>
		Background_t <	 5,    9,   6B8h>
		Background_t <	 5,  0Ch,   66Eh>
		Background_t <	 8,  11h,   137h>
		Background_t <	 0,  0Fh,   125h>
		Background_t <	 8,  0Fh,   125h>
		Background_t < 20h,    9,    3Fh>
		Background_t < 1Eh,    9,    2Dh>
		Background_t <	 7,    1,    94h>
		Background_t < 12h,    3,    94h>
		Background_t <	 8,    8,   6A6h>
		Background_t <	 9,  0Ch,   6B8h>
		Background_t < 0Ch,  0Eh,   94Dh>
		Background_t <	 0,  11h,    13h>
		Background_t < 1Bh,  0Fh,   125h>
		Background_t < 20h,  11h,   157h>
		Background_t < 18h,  11h,   137h>
		Background_t < 21h,  0Dh,   193h>
		Background_t < 23h,  0Ch,    9Eh>
		Background_t < 23h,  0Eh,    9Eh>
		Background_t < 24h,  0Dh,    9Eh>
		Background_t < 24h,  0Eh,    9Eh>
		Background_t < 20h,    2,    94h>
		db 13h
		Background_t < 18h,  11h,   137h>
		Background_t < 10h,  11h,    13h>
		Background_t < 20h,  11h,   137h>
		Background_t <	 0,  11h,    13h>
		Background_t <	 8,  11h,   137h>
		Background_t < 20h,    9,    3Fh>
		Background_t < 1Eh,    9,    2Dh>
		Background_t <	 0,    9,    3Fh>
		Background_t <	 6,    9,      1>
		Background_t <	 3,  0Ch,   209h>
		Background_t <	 0,  0Ch,   166h>
		Background_t <	 0,  0Eh,   166h>
		Background_t <	 3,  11h,   11Ah>
		Background_t <	 0,  11h,   166h>
		Background_t < 16h,    4,    94h>
		Background_t <	 3,    2,    94h>
		Background_t < 20h,    0,    94h>
		Background_t < 0Ch,    6,    94h>
		Background_t <	 5,  10h,   94Dh>
		db 16h
		Background_t <	 0,  12h,   171h>
		Background_t < 10h,  12h,   171h>
		Background_t < 18h,  12h,   171h>
		Background_t < 25h,  0Fh,   376h>
		Background_t < 22h,  0Fh,   315h>
		Background_t < 10h,    3,    94h>
		Background_t <	 8,    0,    94h>
		Background_t <	 9,  11h,   832h>
		Background_t < 19h,  11h,   832h>
		Background_t < 14h,  10h,   7AAh>
		Background_t <	 4,    7,    94h>
		Background_t < 1Dh,    9,   272h>
		Background_t < 25h,  0Bh,   376h>
		Background_t < 25h,  0Ch,   376h>
		Background_t < 21h,    9,   2EFh>
		Background_t < 21h,  0Dh,   2DEh>
		Background_t < 1Fh,    9,   284h>
		Background_t < 23h,    5,   2DEh>
		Background_t < 25h,    7,   376h>
		Background_t < 25h,    8,   376h>
		Background_t < 20h,    2,    94h>
		Background_t < 23h,    0,   2EFh>
		db 12h
		Background_t < 0Fh,    0,   2CDh>
		Background_t <	 0,    0,   2EFh>
		Background_t <	 5,    0,   2EFh>
		Background_t < 0Ah,    0,   2EFh>
		Background_t < 0Dh,    2,   2CDh>
		Background_t <	 0,    5,   2EFh>
		Background_t <	 2,    5,   2EFh>
		Background_t <	 0,  0Ah,   743h>
		Background_t <	 7,    5,   2B3h>
		Background_t <	 0,  0Fh,   743h>
		Background_t < 1Ch,    0,   2DEh>
		Background_t < 21h,    5,   768h>
		Background_t < 21h,  0Ah,   768h>
		Background_t < 21h,  0Fh,   768h>
		Background_t < 1Eh,    2,   2DEh>
		Background_t < 18h,    9,   78Dh>
		Background_t < 21h,    0,   768h>
		Background_t <	 7,  0Ch,   7CCh>
		db 11h
		Background_t <	 0,  0Ah,   743h>
		Background_t <	 0,  0Fh,   743h>
		Background_t < 21h,  0Fh,   768h>
		Background_t < 21h,    0,   768h>
		Background_t <	 0,    0,   743h>
		Background_t <	 0,    5,   743h>
		Background_t <	 7,    8,   78Dh>
		Background_t <	 7,  10h,   7BCh>
		Background_t < 0Eh,  10h,   7BCh>
		Background_t < 15h,  10h,   7BCh>
		Background_t < 1Ah,  10h,   7BCh>
		Background_t < 18h,  0Ch,   78Dh>
		Background_t < 21h,  0Ch,   768h>
		Background_t < 1Fh,    4,   78Dh>
		Background_t <	 7,    1,   7CCh>
		Background_t < 1Eh,    0,   7DAh>
		Background_t <	 8,    7,   4A7h>
		db 10h
		Background_t <	 0,  0Ah,   743h>
		Background_t <	 0,  0Fh,   743h>
		Background_t < 21h,  0Fh,   768h>
		Background_t < 21h,    0,   768h>
		Background_t <	 0,    0,   743h>
		Background_t < 21h,    5,   768h>
		Background_t < 21h,  0Ah,   768h>
		Background_t <	 7,  0Bh,   78Dh>
		Background_t < 18h,    6,   78Dh>
		Background_t < 1Fh,    3,   7DAh>
		Background_t <	 6,    1,   7CCh>
		Background_t < 1Eh,  10h,   7DAh>
		Background_t <	 0,    5,   2CDh>
		Background_t <	 1,    7,   30Ah>
		Background_t <	 0,    7,   376h>
		Background_t <	 5,    9,   87Bh>
		db 14h
		Background_t <	 0,  0Fh,   743h>
		Background_t < 21h,  0Fh,   768h>
		Background_t < 21h,    0,   768h>
		Background_t < 23h,    5,   2DEh>
		Background_t < 25h,    8,   376h>
		Background_t < 23h,    8,   315h>
		Background_t < 21h,  0Bh,   768h>
		Background_t < 15h,  0Bh,   78Dh>
		Background_t < 18h,  0Bh,   78Dh>
		Background_t < 1Bh,  0Ah,   4A7h>
		Background_t <	 0,    3,   2CDh>
		Background_t <	 0,    0,   743h>
		Background_t <	 3,  0Ah,   78Dh>
		Background_t <	 0,  0Ah,   743h>
		Background_t <	 7,  10h,   7BCh>
		Background_t < 0Eh,  10h,   7BCh>
		Background_t < 15h,  10h,   7BCh>
		Background_t < 1Ah,  10h,   7BCh>
		Background_t < 18h,    9,   7CCh>
		Background_t < 15h,    8,   7DAh>
		db 18h
		Background_t < 21h,    0,   768h>
		Background_t <	 0,    0,   743h>
		Background_t <	 0,  0Fh,   2EFh>
		Background_t <	 2,  0Fh,   2EFh>
		Background_t <	 7,  11h,   33Ch>
		Background_t < 0Ah,  11h,   137h>
		Background_t < 12h,  11h,   137h>
		Background_t <	 7,  0Fh,   125h>
		Background_t < 0Fh,  0Fh,   125h>
		Background_t < 1Ah,  11h,   347h>
		Background_t < 1Dh,  0Dh,   78Dh>
		Background_t < 1Fh,  0Dh,   78Dh>
		Background_t < 1Dh,  0Fh,   2EFh>
		Background_t < 15h,  0Fh,   125h>
		Background_t < 22h,  0Fh,   2EFh>
		Background_t < 23h,  0Fh,   2EFh>
		Background_t <	 0,    5,   2CDh>
		Background_t <	 0,    7,   376h>
		Background_t <	 2,  0Ah,   78Dh>
		Background_t <	 0,  0Ah,   743h>
		Background_t <	 5,    9,   4A7h>
		Background_t < 0Fh,  12h,   162h>
		Background_t < 25h,  0Ch,   87Bh>
		Background_t <	 6,  0Ah,   78Dh>
		db 16h
		Background_t <	 0,    0,   2EFh>
		Background_t <	 0,    4,   2CDh>
		Background_t <	 5,    0,   78Dh>
		Background_t <	 2,    2,   2CDh>
		Background_t < 0Eh,    0,   78Dh>
		Background_t < 17h,    0,   78Dh>
		Background_t < 1Fh,    0,   78Dh>
		Background_t < 23h,    2,   2DEh>
		Background_t < 25h,    5,   376h>
		Background_t < 23h,    5,   315h>
		Background_t <	 0,  0Fh,   743h>
		Background_t < 21h,    8,   768h>
		Background_t <	 6,  13h,   7E8h>
		Background_t < 0Eh,  13h,   7E8h>
		Background_t < 16h,  13h,   7E8h>
		Background_t < 1Eh,  13h,   7E8h>
		Background_t < 21h,  0Fh,   768h>
		Background_t < 18h,  0Bh,   78Dh>
		Background_t < 1Fh,  0Dh,   2DEh>
		Background_t < 21h,  0Ch,   768h>
		Background_t < 21h,    7,   87Bh>
		Background_t <	 0,  0Ch,   743h>
		db 19h
		Background_t <	 0,  0Fh,   743h>
		Background_t < 21h,  0Fh,   768h>
		Background_t < 23h,    3,   2DEh>
		Background_t < 21h,    0,   768h>
		Background_t <	 0,    5,   743h>
		Background_t <	 7,    0,   78Dh>
		Background_t <	 5,    2,   2CDh>
		Background_t <	 0,    0,   743h>
		Background_t <	 7,  13h,   7E8h>
		Background_t < 0Fh,  13h,   7E8h>
		Background_t < 17h,  13h,   7E8h>
		Background_t < 19h,  13h,   7E8h>
		Background_t < 1Ch,  0Ah,   768h>
		Background_t < 21h,  0Ah,   768h>
		Background_t <	 7,    7,   78Dh>
		Background_t <	 6,  0Eh,   7E8h>
		Background_t < 0Ah,  0Eh,   7E8h>
		Background_t <	 7,  0Fh,   7E8h>
		Background_t < 0Bh,  0Fh,   7E8h>
		Background_t <	 4,    9,   2CDh>
		Background_t <	 0,  0Ah,   743h>
		Background_t < 10h,    1,   81Ch>
		Background_t < 10h,    0,   7E8h>
		Background_t < 18h,    0,   78Dh>
		Background_t <	 7,    6,   87Bh>
		db 1Eh
		Background_t < 1Fh,  0Dh,   78Dh>
		Background_t < 23h,  0Fh,   2EFh>
		Background_t <	 0,  0Dh,   78Dh>
		Background_t <	 0,  0Fh,   2EFh>
		Background_t < 19h,  0Fh,   2EFh>
		Background_t < 1Eh,  0Fh,   2EFh>
		Background_t <	 0,    0,   7F2h>
		Background_t <	 8,    0,   7F2h>
		Background_t < 10h,    0,   7F2h>
		Background_t < 18h,    0,   7F2h>
		Background_t < 20h,    0,   7F2h>
		Background_t <	 9,  0Dh,   78Dh>
		Background_t < 19h,  11h,   33Ch>
		Background_t < 1Ch,  11h,   347h>
		Background_t < 1Eh,  0Fh,   347h>
		Background_t <	 5,  0Fh,   2EFh>
		Background_t < 1Ah,  0Fh,   828h>
		Background_t < 0Eh,  0Dh,   78Dh>
		Background_t < 0Ah,  0Fh,   2EFh>
		Background_t < 0Fh,  0Fh,   2EFh>
		Background_t < 14h,  0Fh,   2EFh>
		Background_t < 17h,  0Fh,   33Ch>
		Background_t <	 3,  0Ch,   832h>
		Background_t < 0Fh,  0Ch,   832h>
		Background_t < 0Bh,  0Ch,   87Bh>
		Background_t < 17h,  0Eh,   87Bh>
		Background_t <	 0,    4,   81Ch>
		Background_t < 0Ah,    4,   81Ch>
		Background_t < 14h,    4,   81Ch>
		Background_t < 1Eh,    4,   81Ch>
		db 1Bh
		Background_t < 1Fh,  0Dh,   78Dh>
		Background_t < 23h,  0Fh,   2EFh>
		Background_t <	 0,  0Dh,   78Dh>
		Background_t <	 0,    0,   7F2h>
		Background_t <	 8,    0,   7F2h>
		Background_t < 20h,    0,   7F2h>
		Background_t <	 9,  0Dh,   78Dh>
		Background_t < 12h,  0Bh,   7AAh>
		Background_t < 18h,  0Dh,   78Dh>
		Background_t < 1Eh,  0Fh,   2EFh>
		Background_t < 1Ch,  0Ch,   832h>
		Background_t <	 9,  0Ch,   832h>
		Background_t <	 4,  0Ch,   87Bh>
		Background_t < 11h,    0,   78Dh>
		Background_t < 17h,    0,   78Dh>
		Background_t < 1Eh,    0,   7F2h>
		Background_t < 1Eh,    4,   81Ch>
		Background_t < 10h,    0,   78Dh>
		Background_t <	 0,    4,   81Ch>
		Background_t <	 6,    4,   81Ch>
		Background_t < 11h,  0Dh,   78Dh>
		Background_t <	 0,  0Fh,   2EFh>
		Background_t <	 5,  0Fh,   2EFh>
		Background_t < 0Ah,  0Fh,   2EFh>
		Background_t < 0Fh,  0Fh,   2EFh>
		Background_t < 14h,  0Fh,   2EFh>
		Background_t < 19h,  0Fh,   2EFh>
		db 2Fh
		Background_t < 0Ah,    0,   2A1h>
		Background_t < 0Dh,    1,   2CDh>
		Background_t < 1Ah,    0,   2A1h>
		Background_t < 1Ah,    1,   2DEh>
		Background_t <	 8,    2,   381h>
		Background_t < 1Dh,    2,   2B3h>
		Background_t < 20h,    0,   2A1h>
		Background_t < 25h,    2,   376h>
		Background_t <	 0,    0,   2EFh>
		Background_t <	 3,    3,   2CDh>
		Background_t <	 5,    0,   376h>
		Background_t <	 7,    0,   376h>
		Background_t <	 0,    5,   2EFh>
		Background_t < 25h,    5,   376h>
		Background_t <	 0,  0Ah,   2EFh>
		Background_t <	 0,  0Fh,   2EFh>
		Background_t <	 5,  0Eh,   33Ch>
		Background_t <	 8,  11h,   33Ch>
		Background_t <	 5,  11h,   376h>
		Background_t < 0Bh,  11h,   137h>
		Background_t < 22h,    6,   315h>
		Background_t < 22h,    9,   2DEh>
		Background_t < 25h,    8,   376h>
		Background_t < 13h,  11h,    13h>
		Background_t < 25h,  0Ch,   376h>
		Background_t < 22h,  0Eh,   347h>
		Background_t < 1Fh,  11h,   347h>
		Background_t < 22h,  11h,   376h>
		Background_t < 25h,  0Fh,   376h>
		Background_t < 25h,  11h,   376h>
		Background_t < 25h,  0Ah,   376h>
		Background_t < 17h,  11h,   137h>
		Background_t <	 8,  0Fh,   125h>
		Background_t < 10h,  0Fh,   125h>
		Background_t < 18h,  0Fh,   125h>
		Background_t < 1Ah,  0Fh,   125h>
		Background_t < 0Dh,  0Ch,   125h>
		Background_t < 15h,  0Ch,   125h>
		Background_t < 1Dh,  0Ch,   125h>
		Background_t <	 8,  0Eh,   125h>
		Background_t < 10h,  0Eh,   125h>
		Background_t < 18h,  0Eh,   125h>
		Background_t < 1Ah,  0Eh,   125h>
		Background_t < 15h,  12h,   162h>
		Background_t < 0Ah,  12h,   162h>
		Background_t < 1Ah,  11h,   162h>
		Background_t <	 5,  0Ch,   125h>
		db 17h
		Background_t <	 0,  0Dh,   78Dh>
		Background_t <	 0,  0Fh,   2EFh>
		Background_t <	 0,    0,   7F2h>
		Background_t <	 8,    0,   7F2h>
		Background_t <	 5,  0Fh,   2EFh>
		Background_t < 0Ah,  0Fh,   2EFh>
		Background_t < 10h,    0,   78Dh>
		Background_t < 19h,    0,   78Dh>
		Background_t < 1Fh,    0,   78Dh>
		Background_t < 20h,  12h,   2A1h>
		Background_t <	 9,  0Eh,   7E8h>
		Background_t < 0Fh,  0Fh,   7E8h>
		Background_t < 15h,  10h,   7E8h>
		Background_t < 1Bh,  11h,   7E8h>
		Background_t < 0Fh,  12h,   2A1h>
		Background_t < 17h,  12h,   2A1h>
		Background_t < 18h,  12h,   2A1h>
		Background_t < 0Dh,  10h,   2A1h>
		Background_t < 13h,  11h,   2A1h>
		Background_t < 20h,  12h,   7E8h>
		Background_t < 1Dh,  10h,   87Bh>
		Background_t <	 0,    4,   81Ch>
		Background_t <	 6,    4,   81Ch>
		db 20h
		Background_t <	 0,    0,   83Bh>
		Background_t < 18h,    0,   83Bh>
		Background_t < 10h,    0,   85Dh>
		Background_t <	 8,  12h,   2A1h>
		Background_t < 10h,  12h,   2A1h>
		Background_t < 18h,  12h,   2A1h>
		Background_t < 20h,  12h,   2A1h>
		Background_t < 18h,    1,   2DEh>
		Background_t < 1Bh,    2,   381h>
		Background_t < 0Bh,    1,   2CDh>
		Background_t <	 3,    2,   2B3h>
		Background_t <	 0,    2,   376h>
		Background_t < 25h,    3,   315h>
		Background_t < 23h,    2,   2DEh>
		Background_t < 25h,    6,   376h>
		Background_t < 22h,    6,   315h>
		Background_t < 22h,    9,   2DEh>
		Background_t < 25h,  0Ch,   376h>
		Background_t < 25h,    9,   376h>
		Background_t < 22h,  0Fh,   315h>
		Background_t < 25h,  0Fh,   376h>
		Background_t <	 0,  0Ah,   2EFh>
		Background_t <	 5,  0Ah,   2EFh>
		Background_t <	 0,  0Fh,   2EFh>
		Background_t <	 9,  0Ah,   30Ah>
		Background_t <	 7,  0Dh,   2CDh>
		Background_t <	 5,  0Fh,   2CDh>
		Background_t <	 3,  12h,   2A1h>
		Background_t <	 0,    5,   86Fh>
		Background_t < 1Dh,  11h,   4A7h>
		Background_t <	 5,    9,   4A7h>
		Background_t <	 8,  11h,   87Bh>
		db 12h
		Background_t <	 8,  12h,   284h>
		Background_t < 10h,  12h,   284h>
		Background_t < 18h,  12h,   284h>
		Background_t < 20h,  12h,   284h>
		Background_t <	 0,  12h,   2A1h>
		Background_t <	 0,  12h,   7E8h>
		Background_t <	 4,  11h,   87Bh>
		Background_t < 10h,  11h,   832h>
		Background_t < 18h,  11h,   832h>
		Background_t < 20h,  11h,   832h>
		Background_t < 14h,  11h,   87Bh>
		Background_t <	 0,    0,   78Dh>
		Background_t <	 5,  10h,   87Bh>
		Background_t <	 6,  11h,   87Bh>
		Background_t <	 7,    4,    94h>
		Background_t < 15h,    2,    94h>
		Background_t < 20h,    4,    94h>
		Background_t <	 9,  11h,   832h>
		db 2Ch
		Background_t <	 0,    7,    3Fh>
		Background_t <	 6,    7,      1>
		Background_t < 1Bh,    7,   284h>
		Background_t < 20h,    7,   284h>
		Background_t < 22h,    4,   315h>
		Background_t < 22h,    3,   2DEh>
		Background_t < 24h,    4,   376h>
		Background_t < 22h,    0,   376h>
		Background_t < 25h,    0,   376h>
		Background_t < 25h,    3,   376h>
		Background_t < 25h,    4,   376h>
		Background_t < 1Ah,  0Bh,   2DEh>
		Background_t < 1Bh,    9,   376h>
		Background_t < 1Eh,    9,   2EFh>
		Background_t < 23h,    9,   2EFh>
		Background_t < 23h,    7,   376h>
		Background_t < 25h,    7,   376h>
		Background_t <	 0,  0Ah,    9Eh>
		Background_t <	 0,  0Eh,    9Eh>
		Background_t <	 3,  0Ah,   209h>
		Background_t <	 3,  0Fh,   11Ah>
		Background_t <	 5,  11h,   11Ah>
		Background_t <	 2,  11h,   166h>
		Background_t < 1Ah,  0Fh,   347h>
		Background_t < 1Dh,  0Eh,   2EFh>
		Background_t < 18h,  11h,   347h>
		Background_t < 1Bh,  12h,   2A1h>
		Background_t < 20h,  12h,   2A1h>
		Background_t < 22h,  0Eh,   2EFh>
		Background_t < 23h,  0Eh,   2EFh>
		Background_t <	 8,  11h,   137h>
		Background_t < 10h,  11h,   137h>
		Background_t <	 6,  0Fh,   125h>
		Background_t < 0Eh,  0Fh,   125h>
		Background_t < 12h,  0Fh,   125h>
		Background_t < 19h,    3,    94h>
		Background_t < 0Dh,    5,    94h>
		Background_t < 12h,    7,   272h>
		Background_t < 16h,    7,   284h>
		Background_t < 16h,    9,   381h>
		Background_t < 1Ah,    9,   2A1h>
		Background_t < 1Ch,    7,   87Fh>
		Background_t < 18h,    6,   4A7h>
		Background_t <	 7,    0,    94h>
		db 1Eh
		Background_t <	 0,    0,   83Bh>
		Background_t < 18h,    0,   83Bh>
		Background_t < 10h,    0,   85Dh>
		Background_t < 18h,    1,   2DEh>
		Background_t < 0Bh,    1,   2CDh>
		Background_t <	 0,    2,   2EFh>
		Background_t <	 0,    7,   2EFh>
		Background_t <	 0,  0Ch,   2EFh>
		Background_t <	 0,  0Fh,   2EFh>
		Background_t <	 5,    7,   2CDh>
		Background_t <	 7,  0Ah,   30Ah>
		Background_t < 0Ah,  0Fh,   30Ah>
		Background_t <	 5,  0Dh,   2EFh>
		Background_t <	 5,  12h,   2A1h>
		Background_t <	 4,  0Ah,   376h>
		Background_t < 0Dh,  12h,   2A1h>
		Background_t < 15h,  12h,   2A1h>
		Background_t <	 5,    2,   381h>
		Background_t <	 5,    2,   2EFh>
		Background_t < 1Bh,    2,   2B3h>
		Background_t < 1Dh,  12h,   2A1h>
		Background_t < 23h,    2,   2EFh>
		Background_t < 1Fh,    3,   2DEh>
		Background_t < 23h,    6,   2DEh>
		Background_t < 23h,  0Fh,   2EFh>
		Background_t < 20h,  0Fh,   315h>
		Background_t < 0Dh,  11h,   87Bh>
		Background_t < 1Bh,  11h,   4A7h>
		Background_t < 26h,  0Ah,   86Fh>
		Background_t < 23h,    7,   2DEh>
		db 0Fh
		Background_t <	 8,  12h,   284h>
		Background_t < 10h,  12h,   284h>
		Background_t < 18h,  12h,   284h>
		Background_t < 20h,  12h,   284h>
		Background_t <	 0,  12h,   284h>
		Background_t <	 8,    2,    94h>
		Background_t <	 1,  11h,   832h>
		Background_t < 0Ch,  11h,   832h>
		Background_t < 10h,  11h,   832h>
		Background_t < 22h,  11h,   886h>
		Background_t < 1Dh,  11h,   886h>
		Background_t < 22h,  10h,   886h>
		Background_t < 1Ah,    5,    94h>
		Background_t < 22h,    0,   8A2h>
		db 9
		Background_t < 11h,  7Bh,  2408h>
		Background_t <	 0,  13h,   88Eh>
		Background_t <	 8,  13h,   88Eh>
		Background_t < 10h,  13h,   88Eh>
		Background_t < 18h,  13h,   88Eh>
		Background_t < 20h,  13h,   88Eh>
		Background_t <	 8,  12h,   898h>
		Background_t < 10h,  12h,   898h>
		Background_t < 18h,  12h,   898h>
Bkg_3D		db 20h
		Background_t < 12h,  98h,      8>
		Background_t < 11h,  8Eh,      8>
		Background_t < 12h,  8Eh,      8>
		Background_t <	 0,  8Eh,   808h>
		Background_t <	 0,  8Eh,  1008h>
		Background_t <	 0,  8Eh,  1808h>
		Background_t <	 0,  8Eh,  2008h>
		Background_t <	 0,  8Eh,  2208h>
		Background_t < 0Eh, 0A2h,  1608h>
		Background_t < 11h,  86h,  1C08h>
		Background_t < 0Fh,  86h,  1F08h>
		Background_t < 0Eh,  86h,  2208h>
		Background_t < 0Dh,  86h,  1C08h>
		Background_t < 11h,  8Eh,  1E08h>
		Background_t < 10h,  8Eh,  1908h>
		Background_t < 10h,  86h,      8>
		Background_t <	 1, 0BCh,  2208h>
		Background_t <	 1, 0DCh,   308h>
		Background_t <	 3, 0FCh,  2308h>
		Background_t <	 3, 0FCh,  0A08h>
		Background_t <	 1, 0FCh,  1C08h>
		Background_t <	 1, 0FCh,  1308h>
		Background_t <	 1, 0FCh,   608h>
		Background_t <	 5,  91h,  1F05h>
		Background_t <	 5,  91h,  2305h>
		Background_t <0Bh, 4, 9>
		Background_t <10h, 0Eh,	409h>
		Background_t <11h, 0Eh,	1509h>
		Background_t <18h, 12h,	171h> ;	Col?
		Background_t <4, 0Ch, 39Dh>
		Background_t <13h, 0Ch,	39Dh>
		Background_t <0, 12h, 171h>
		Background_t <8, 12h, 171h>
		Background_t <2, 0Ah, 917h>
		Background_t <14h, 0Ah,	921h>
		Background_t <6, 0Ah, 92Bh>
		Background_t <0Ch, 0Ah,	92Bh>
		Background_t <9, 8, 917h>
		Background_t <0Dh, 8, 921h>
		Background_t <1Fh, 0Ch,	71Fh>
		Background_t <1Dh, 0Bh,	943h>
		Background_t <4, 11h, 832h>
		Background_t <0Ch, 11h,	832h>
		Background_t <15h, 11h,	832h>
		Background_t <1Bh, 0Eh,	224h>
		Background_t <2, 11h, 87Bh>
		Background_t <1, 0, 97Eh>
		Background_t <17h, 7, 94h>
		Background_t <4, 5, 94h>
		db    0
Tile8x8World	db    0,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	  0,   0,   0,	 0
					; DATA XREF: Draw8x8World+Bo
					; DrawFloatingLog+11o ...
		db  55h, 55h, 15h, 45h,	  4, 50h, 11h,	 4,   0,   4, 80h, 80h,	82h,0A0h,   2, 82h
		db  55h, 55h, 55h, 50h,	54h,   4,   1,	 0, 51h,   0, 68h,   0,	20h,   0, 80h,	 0
		db 0A0h, 0Ah, 82h, 20h,	0Ah, 80h, 2Ah,	 0, 20h,   0,	0,   0,	80h,   0,   0,	 0
		db  2Ah,   0,	8, 28h,	80h,0A8h,0A8h, 20h,   0,   0, 22h, 0Ah,	28h,0AAh,0A0h,	 8
		db  55h,0D5h, 55h,0D5h,	51h, 75h, 44h, 3Dh, 51h, 0Dh, 44h, 0Fh,	10h,   3, 40h,	 0
		db  55h, 55h, 54h, 15h,	10h, 51h,   4, 41h, 80h,   1,0A0h,   0,	80h,0A8h,   0,0A0h
		db  55h, 55h, 15h, 55h,	41h, 55h,   0, 10h,   2, 10h,	2, 82h,	  0, 20h,   0,	 8
		db 0A0h, 0Ah,	2,   0,	0Ah, 8Ah,   2,	 2,   0, 20h,	0, 28h,	  0,   2,   0, 0Ah
		db  80h,   2,0BAh, 88h,0BAh,0A2h, 2Eh,0A8h, 80h,   2,0BAh, 88h,0BAh,0A2h, 2Eh, 88h
		db    0,   0,	0,   0,	  0,   0,   0,	 3,   0, 0Dh,	0, 30h,	  0,0C4h,   0,0C0h
		db    0, 0Fh, 0Fh,0F5h,0F5h, 11h, 50h, 44h,   4,   0,	0,   0,	  0,   3,   0, 0Dh
		db    0, 35h,	0,0D0h,	  3,   4,   3,	 0, 0Ch, 40h, 0Ch,   0,	  0,   0,   0,	 0
		db 0FFh,0F0h,0DDh, 7Fh,	11h, 57h, 40h,0FDh, 0Fh, 57h,0F5h, 55h,	44h, 51h, 51h,	 4
		db    0,   0,	0,   0,0F0h, 0Fh,0FFh,0FFh, 5Fh,0F5h, 65h, 99h,	5Ah, 65h, 55h, 95h
		db    0,0FFh,0FFh,0D5h,0F5h, 54h,0D4h, 51h, 55h,   0, 5Fh,0F0h,	55h, 5Fh, 55h, 55h
		db  50h, 11h, 40h,   4,	  0,   0, 40h,	 0,   0,   0, 40h,   0,	  0,   0,   0,	 0
		db 0FFh,   0, 55h,0FFh,	51h, 55h,   4, 11h,   0, 40h,	0,   0,	  0,   0,0F0h,	 0
		db    0,   0,	0,   0,0C0h,   0, 7Ch,	 0, 53h,   0,	7,   0,	10h,0C0h,   0,0C0h
		db 0F0h,   0, 1Fh,   0,	47h,   0, 11h,0C0h,   0,0C0h,	1, 30h,	  0, 30h,   0, 30h
		db  55h, 55h, 15h, 54h,	15h, 51h, 54h, 54h, 15h, 44h, 11h, 55h,	54h, 51h, 11h, 14h
		db    0,   0,	0,   0,	  0,   0,   0, 14h,   1, 7Dh, 17h,0F7h,	7Dh,0FDh,0D7h, 7Fh
		db    0,   0,	0,   0,	  0,   5,   0, 1Dh,   5, 77h, 5Fh,0DFh,0F7h,0FFh,0FFh,0FFh
		db    1, 54h, 57h, 7Dh,0DDh,0D7h,0F7h,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh
		db    0,   0, 40h,   0,	50h,   0,0D0h,	 0,0F4h,   0,0F4h,   0,0FDh,   0,0FDh,	 0
		db  75h,0FFh, 1Fh,0FFh,	1Ch,0FCh, 0Fh, 33h,   0,0CCh,	0,   0,	  0,   0,   0,	 0
		db 0FFh,0FFh,0FFh,0FFh,0FFh,0FFh, 3Fh,0FFh,   3,0FFh, 0Ch, 3Fh,	  3,0CCh,   0, 33h
		db 0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0F0h,0F0h,0CFh, 0Fh, 30h,	 0
		db 0FFh, 30h,0FFh,0CCh,0FFh, 30h,0FCh,0CCh, 3Fh, 30h,0CCh,0F0h,	33h,0C0h,0CCh,	 0
		db  0Eh,   0, 0Eh,   0,	0Eh,   0,   3, 80h,   3, 80h, 0Eh,   0,	38h,   0, 38h,	 0
		db  0Eh,   0, 17h, 80h,	45h,0E0h, 54h,0E0h, 40h,0E0h,	3, 80h,	0Eh,   0, 38h,	 0
		db  66h, 66h, 99h, 99h,	66h, 66h, 99h, 99h, 66h, 66h, 99h, 99h,	66h, 66h, 99h, 99h
		db    0,   0,	0,   0,	  0,   0, 90h,	 0, 66h,   0, 99h, 90h,	66h, 64h, 99h, 99h
		db 0F5h, 65h, 3Dh, 9Dh,0F5h, 75h, 37h, 76h, 3Dh,0DDh,0CFh, 55h,	  3,0F7h,   0, 0Fh
		db  55h, 45h, 15h, 14h,	54h, 41h, 51h, 10h, 54h, 40h, 45h,   0,	50h, 40h, 40h,	 0
		db  50h,   0,	4,   0,	  4,   0, 44h,	 0, 90h,   0, 54h,   0,	95h,   0, 65h, 40h
		db    0, 0Fh,	0, 3Ch,	  0, 10h,   0, 0Fh,   3,0F0h,	4, 54h,	10h, 3Fh,   7,0FCh
		db 0FCh, 0Fh, 1Fh, 3Ch,0FFh, 10h,0FCh, 0Fh,   3,0F0h,	4, 54h,	10h, 3Fh,   7,0FCh
		db 0C0h,   0,	0,   0,	0Ch,0C0h,   0,	 0, 30h,   0,	0, 0Ch,	  0,   0,   0,	 3
		db  64h,   0, 99h, 90h,	66h, 66h, 99h, 99h, 66h, 66h, 99h, 99h,	66h, 66h, 99h, 99h
		db    0, 0Ch,	0,   0,	  3,   0,   0, 30h,0C0h,   0,	3,   0,	  0,   0,0C0h,	 0
		db  40h,   0, 98h,   0,	66h,   0, 99h, 80h, 66h, 60h, 99h, 90h,	66h, 64h, 99h, 98h
		db 0FCh,   0, 1Fh,   0,0FFh,   0,0FCh,	 0,   3,0F0h,	4, 54h,	10h, 3Fh,   7,0FCh
		db    0, 15h,	0, 40h,	  0, 41h,   0, 46h,   0, 19h,	0, 56h,	  1, 59h,   5, 66h
		db 0A6h, 66h, 88h, 99h,	80h, 26h,   2, 99h, 8Ah,   2,	8,   9,	80h,0AAh,0A8h, 28h
		db  66h, 66h, 99h, 99h,	66h, 66h,0A9h, 99h, 0Ah, 66h,	2,0A8h,	  0,0A0h,   0, 80h
		db  66h, 66h, 99h, 99h,	60h,   0, 80h,	 0,   0, 20h,	0,   8,	  8,   0, 80h,	 0
		db  66h, 66h, 99h, 99h,0A6h, 66h, 29h, 9Ah, 2Ah, 42h, 0Ah,   0,	0Ah,   0, 2Ah,	 0
		db  80h,   2,	8, 28h,	22h,   0, 88h, 20h, 88h, 88h, 20h, 82h,	  0, 22h, 2Ah,	 8
		db 0B3h, 30h,	8,0CCh,	22h, 33h, 88h,0CCh, 88h, 33h, 20h,0FCh,	33h, 33h,0CCh,0CCh
		db    0,   0,0CCh,   0,	3Fh, 30h,0CCh,0CCh, 33h, 33h,0CCh,0FCh,	33h, 33h,0CCh,0CCh
		db    0,   0,	0,   0,	  0,   0,0C0h,	 0, 33h,   0,0CCh,0C0h,	33h, 30h,0CCh,0CCh
		db  28h, 22h, 28h,0A8h,	  8,   0,   0, 20h,   0, 88h,	0, 82h,	  0, 22h,   0,	 8
		db    2, 88h,0A8h, 28h,	22h, 28h, 22h,	 0,   8, 28h,	0, 82h,	0Ah, 2Ah,   2, 80h
		db    0,   0,0A8h,   0,	22h,   0, 22h,	 0,   8,   0,	0,0A0h,	0Ah, 28h,   2, 80h
		db    0,   2,	0,   8,	  0, 0Ah,   0,	 0,   0, 28h,	0, 82h,	0Ah, 2Ah,   2, 80h
		db    0,   8,0A8h, 28h,	22h, 20h, 22h,	 0,   8,   0, 80h,   0,	20h,   0, 80h,	 0
		db    0,   0,	0,   0,	  0,   0,   0, 0Ch,   3, 33h, 0Ch,0FCh,	33h, 33h, 0Ch,0CCh
		db  55h, 56h, 95h, 55h,	55h, 95h, 59h, 59h, 65h, 95h, 56h, 65h,	55h, 95h, 55h, 55h
		db  59h, 56h, 95h,0A5h,	56h, 59h, 55h, 56h, 56h, 56h, 65h, 59h,	99h, 55h, 55h, 95h
		db  0Ah,   0, 28h,   0,	22h,   0, 28h, 80h, 20h,   0, 28h,   0,	8Ah,   2, 22h, 88h
		db  80h,   0, 28h,   2,	  0, 0Ah,   0, 2Ah, 0Ah, 8Ah, 22h,0AAh,	8Ah,0A8h,0AAh, 80h
		db  2Ah,   2,0AAh,   2,0A8h, 0Ah,0A2h, 28h, 80h,0A2h, 80h, 99h,	  2, 66h,   9, 99h
		db  0Ah, 2Ah, 2Ah,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,	8Ah, 22h,0A2h, 88h
		db 0AAh, 28h,0AAh, 2Ah,0A8h, 8Ah,0A2h, 0Ah, 88h, 8Ah,0A2h, 88h,0AAh,   0, 28h,	 0
		db    0,   0,	0,0CCh,	33h, 33h,0CCh,0CCh, 33h,0F3h,0CCh,0CCh,	33h, 33h,0CCh,0CCh
		db    3, 32h,0CCh,0E8h,	33h,   0,0CCh,0E0h, 3Fh, 88h,0CCh, 82h,	33h, 22h,0CCh,0C8h
		db  5Ah, 55h, 56h, 56h,	56h,0A9h, 55h,0A9h, 55h,0A5h, 55h,0A5h,	6Ah, 95h, 5Ah, 55h
		db    2,0AAh, 20h,0AAh,	  0,0AAh,   2,0AAh,   8,0A8h,	0, 20h,	  0,   0,   0,	 0
		db  55h, 99h, 55h, 69h,0A5h, 69h,0A9h,0A5h, 5Ah, 95h, 56h,0A9h,	55h, 65h, 55h, 55h
		db 0FFh,0FFh,0FDh, 55h,	  0,   0, 0Fh,0F5h,   3,0F5h,	0,0FDh,	  0, 0Fh,   0,	 0
		db 0FFh,0FFh, 55h, 55h,	  0,   0, 55h, 55h, 55h, 55h, 55h, 55h,	55h, 66h, 99h, 99h
		db 0FFh,0FFh, 56h, 66h,	  0,   0, 59h, 90h, 66h, 40h, 99h,   0,	60h,   0,   0,	 0
		db    0, 33h, 0Ch,0CCh,	33h, 33h,0AAh,0AAh,0AAh,0AAh, 11h, 11h,	  4, 44h,   0,	 0
		db  33h, 33h,0CCh,0CCh,	33h, 33h,0AAh,0AAh,0AAh,0AAh, 11h, 11h,	44h, 44h,   0,	 0
		db  30h,   0,0CCh,0C0h,	33h, 30h,0AAh,0A8h,0AAh,0A8h, 11h, 10h,	44h, 40h,   0,	 0
		db 0FFh, 55h,0FFh, 55h,0FFh, 55h,0FFh, 55h,0FFh, 55h,0FFh, 55h,0FFh, 55h,0FFh, 55h
		db 0BBh, 98h,0EEh, 64h,0BBh, 98h,0EEh, 64h,0BBh, 98h,0EEh, 64h,0BBh, 98h,0EEh, 64h
		db    0,0FFh,	3,0FFh,	0Fh,   3, 0Fh, 0Fh,   7,0DCh,	1, 73h,	  0, 3Fh,   0, 11h
		db  54h,   0,0FDh,   0,	  1, 40h,0C1h, 40h,0DDh, 40h, 35h,   0,	50h,   0, 10h,	 0
		db 0FFh,0FFh,0FEh,0BFh,0FEh,0BFh,0EAh,0ABh,0EAh,0ABh,0FEh,0BFh,0FEh,0BFh,0FFh,0FFh
		db    3,0A2h,	2,0A8h,	  0,0AAh,   2, 28h,   3,0A2h,	2,0A8h,	  0,0A2h,   3,0A8h
		db 0AAh, 80h, 2Ah, 20h,0AAh, 80h,0EAh, 20h,0AAh, 80h, 2Ah,0A0h,	8Ah, 80h,0EAh, 20h
		db    0,   0,0B2h,0B8h,0A8h,0AAh,0AAh,0AAh,0AAh, 8Ah, 8Ah, 22h,	28h, 88h,   0,	 0
		db 0FFh,0FFh, 3Fh,0CFh,0F3h, 33h,0FFh,0FFh,0FFh,0FFh, 3Ch,0CCh,0F3h,0F3h,0FFh,0FFh
		db    0,   3,	0, 3Fh,	  3,0CCh, 0Fh,0FFh, 3Fh,0FFh, 3Ch,0CFh,0CFh, 3Ch,0FFh,0FFh
		db  3Fh,0FFh, 33h,0F3h,	0Ch,0CCh,   3,0FFh,   0,0FFh,	0, 3Fh,	  0,   3,   0,	 0
		db 0FFh,0FCh, 33h, 3Ch,0CFh,0F0h,0FFh,0C0h,0FFh,   0,0FCh,   0,0C0h,   0,   0,	 0
		db 0C0h,   0,0FCh,   0,	33h,0C0h,0FFh,0F0h,0FFh,0FCh,0CCh,0CCh,	3Fh, 33h,0FFh,0FFh
		db  55h, 14h, 51h, 54h,	45h, 45h, 45h, 45h, 45h, 51h, 55h, 51h,	54h, 55h, 51h, 14h
		db 0AAh,0AAh, 20h, 20h,	8Ah, 8Ah, 8Ah, 8Ah, 8Ah, 8Ah, 8Ah, 8Ah,	20h, 20h,0AAh,0AAh
		db  66h,0FFh, 9Bh,0FFh,	6Fh,   3, 9Fh, 0Fh, 6Fh,0FCh, 9Bh,0F3h,	66h, 7Fh, 99h,0B3h
		db 0FEh, 66h,0FFh, 99h,	  3,0E6h,0C3h,0D9h,0FFh,0E6h, 3Fh, 99h,0FEh, 66h, 39h, 99h
		db 0E0h,   0,0E0h,   0,	38h, 50h, 39h,	 4, 38h, 55h, 38h,   1,	38h,   0, 38h,	 0
		db  3Fh, 59h,0FDh, 75h,	37h, 5Dh,0F5h, 7Fh,0FDh, 5Dh,0F5h,0E5h,	3Dh, 76h,   3,0DDh
		db  95h, 44h, 56h, 51h,	65h, 44h, 55h, 51h, 59h, 14h, 65h, 44h,	55h, 10h, 64h, 40h
		db  44h,   0, 10h,   0,	44h,   0, 51h,	 0, 45h, 10h, 54h, 40h,	55h, 14h, 54h, 51h
		db    0, 33h,	0, 0Dh,	  0, 37h, 0Ch,0F5h,   3, 1Dh, 0Fh, 75h,	0Fh, 5Dh, 3Dh, 76h
		db    0, 2Bh,	0, 0Ah,	  0, 50h,   1,	 5,   0,   1,	0, 11h,	  0, 45h,   0,	 1
		db 0A0h,   0, 80h,   0,	14h,   0, 41h,	 0,   0,   0, 10h,   0,	44h,   0,   0,	 0
		db    0, 22h,	0, 22h,	  0, 22h,   0, 22h,   0, 22h,	0, 22h,	  0, 22h,   0, 22h
		db  0Fh,0FFh, 30h,   3,	30h,   3, 0Fh,0FFh,   0,   3,	0,   3,	  0,0FFh,   0,	 3
		db 0FFh,0C0h,	0, 30h,	  0, 30h,0FFh,0C0h,   0,   0,	0,   0,0FCh,   0,   0,	 0
		db  60h,0C8h,0A0h, 32h,0B2h,   0, 32h,	 0,   0,0C8h,0C0h,0C8h,	  0,0C8h,   0, 32h
		db 0EAh, 88h,0B8h,0A2h,0EAh,0A8h,0BAh,0A2h,0EEh, 80h,0BAh,0A2h,0EAh, 28h,0BAh,0A2h
		db    0,0AAh,	2,0ACh,	0Ah,0A0h, 22h,0C0h,0AAh,   0,0ACh,   0,0A0h,   0,0C0h,	 0
		db 0EAh,   0, 2Ah, 80h,	0Eh, 20h,   2,0A8h,   0,0EAh,	0, 2Ah,	  0, 0Eh,   0,	 2
		db    0,   0,	3,0FDh,	  3,0F7h,   0,0FDh,   0, 3Fh,	0,   0,	  0, 66h,   0, 19h
		db    0,   0,0FFh,   0,	7Fh,   0,0FCh,	 0,0F0h,   0,	0,   0,	64h,   0, 90h,	 0
		db    3,0FFh,	3,0FFh,	  3,0FFh,   0,	 3,   0,   3,	2,0ABh,	2Ah,0AAh,0AAh,0AAh
		db 0FFh,   0,0FFh,   0,0FFh,   0,   0,	 0,   0,   0,0AAh,   0,	80h, 80h,   0, 20h
		db  2Ah,0A8h, 8Ah,0A8h,	28h, 88h,   2, 2Ah,   0,   3,	0,   3,	  0,   3,   0,	 3
		db    0,   8,	0,   8,	  0,   8, 40h, 14h, 55h, 55h,	5, 50h,	  0,   0,   0,	 0
		db    0,   3,	0,   3,	  0,   3,   0,	 3,   0,   3,	0,   3,	  0,   3,   0,	 3
		db    0,   1,	0,   5,	  1, 14h,   5, 55h, 15h, 44h, 51h, 15h,	45h, 15h, 11h, 51h
		db    0,   0,	0,   0,	  0,   0,   0,	 0,   0,   1,	0, 55h,	  1, 51h, 15h, 45h
		db 0B0h,   0, 6Eh,   0,	5Bh,0B0h, 56h,0ECh, 45h,0BBh, 51h, 6Eh,	73h, 59h, 55h, 55h
		db    0,   0,	0,   0,	  0,   0,0C0h,	 0,0B0h,   0,0ECh,   0,0BBh,0C0h,0EEh,0BBh
		db 0AAh,0AAh, 22h, 22h,	  8, 80h, 0Ah,	 0,   8, 80h, 0Ah,   0,	  8, 80h, 0Ah,	 0
		db 0F0h,   0,0CCh,   0,	  0,   0, 3Ch,	 0,0C3h,   0,0F0h,   0,0CCh,   0, 30h,	 0
		db    0,0F3h,	3, 0Fh,	  0, 33h,   0,	 0,   0, 33h,	0, 0Fh,	  0,   3,   0, 0Ch
		db  0Eh,0A0h,	8,0A0h,	  2,0A0h, 0Bh, 80h, 0Eh, 20h, 0Ah, 80h,	  2,0A0h, 0Ah,0A0h
		db  0Eh, 80h, 0Ah,0A0h,0EEh,0BAh,0ABh,0EAh,0ABh,0E8h, 2Eh,0B2h,	0Ah,0A0h, 0Ah,0A0h
		db    0,   0,	0,   0,0BAh,0EBh,0AAh,0AAh, 8Ah, 88h, 22h, 22h,	  0,   0,   0,	 0
		db  80h,   2,0BAh, 88h,0BAh,0A0h, 2Eh, 80h, 80h,   0,0B8h,   0,0B0h,   0,   0,	 0
		db  80h,   2, 3Ah, 88h,	0Ah,0A2h,   2,0A8h,   0,   2,	0,   8,	  0,   2,   0,	 0
		db    0,   2,	0,   8,	  0, 22h,   0,0A8h,   0,   2, 0Ah, 88h,	3Ah,0A2h, 2Eh, 88h
		db  55h, 57h,	5,0FCh,	17h,0C0h, 5Ch, 40h, 30h,0C0h, 30h,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0,   1,   0,	4,   0,	10h,   0, 40h,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0,   0, 40h,	0, 10h,	  0,   4,   0,	 1
		db    0, 14h, 10h, 41h,	44h, 40h,   5,	 0,   1, 14h, 50h, 41h,	  5,   0,   1,	 0
		db    0,0F0h, 0Fh,0AFh,	  0,0F0h, 11h,	 0,   4,   0,	4, 50h,	  1,   0,   1,	 0
		db 0B8h,   0,0EEh,0C0h,0BBh,0A0h,0AAh,0A0h,0AAh, 80h,0A8h, 20h,	22h, 80h, 88h,	 0
		db 0C8h,   0,0FAh,   0,0BAh,0C8h,0AAh,0FAh,0AAh,0BAh,0AAh,0FAh,0BAh,0C8h,0FAh,	 0
		db  30h, 0Ch,	3,0C3h,0C0h,   0, 3Ch,	 0,0C3h,   0, 3Ch,   0,0C0h,0C0h, 33h, 30h
		db  3Ch,0C0h,	0,0CCh,	30h, 30h,   0,0C0h,   0, 3Ch, 3Ch, 30h,0C3h,0C0h, 30h,	 3
		db 0F0h,0F0h, 0Ch, 0Ch,	  0,   0,   0,	 0,   0,0C0h,0C0h, 3Ch,	3Ch,   3,0C0h,0C3h
		db    2,   0, 28h, 88h,0A2h, 22h, 8Ah, 89h,0A6h, 2Ah, 5Ah,0A9h,	55h, 95h, 11h, 55h
		db  66h, 66h, 99h, 99h,	66h, 66h, 99h, 99h, 66h, 66h, 99h, 99h,	66h, 66h, 99h, 99h
		db    2,   0, 0Ah,   0,	26h,   0, 25h, 80h, 25h, 88h, 0Ah,   8,	  0, 26h,   0,	 8
		db  9Fh, 6Ah, 9Fh,0DAh,	9Fh,0DAh,0A7h,0DAh, 29h, 68h, 2Ah,0A8h,	0Ah,0A0h,   2, 80h
		db    0, 80h,	0, 80h,	  2, 80h, 0Ah, 80h, 0Ah, 80h, 29h,0A0h,	29h,0A0h,0A7h, 68h
		db    0,   2,	0, 2Ah,	  2,0AEh, 0Ah,0AAh, 2Bh,0AAh,0AAh,0AEh,	2Ah,0AAh, 0Ah,0EAh
		db  80h,   0,0A8h,   0,0EAh, 80h,0AEh,0A0h,0AAh,0A8h,0AAh,0EAh,0BAh,0A8h,0ABh,0A0h
		db    0,0AAh,	0,   3,	  0, 3Fh,   0,0FFh,   0,0FFh,	0,0FFh,	  0, 3Fh,   0,	 3
		db 0AAh,   0,0C0h,   0,0CCh,   0,0F3h,	 0,0FCh,   0,0F3h,   0,0CCh,   0,0C0h,	 0
		db    4,0C8h,	1,0D0h,	  4,0C8h,   1,0D0h,   0,0C0h,	0,0C0h,	  0,0C0h,   0,0C0h
		db    0,0C0h,	0,0C0h,	  0,0C0h,   0,0C0h,   1, 20h,	1, 60h,	  1, 60h,   0, 80h
		db    0,   0,	0,   0,	44h,   0, 11h,	 0,0FFh,0FFh, 11h,   0,	88h,   0,   0,	 0
		db    0,   0,	0,   0,	  0, 11h,   0, 44h,0FFh,0FFh,	0, 44h,	  0, 22h,   0,	 0
		db    0,   0,	0,   0,	  0,   0, 15h,	 0, 94h,0FFh, 2Ah,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0, 54h,0FFh, 16h,	0,0A8h,	  0,   0,   0,	 0
		db    0,   1,	0,   1,	  0,   4,   0,	 4,   0,   4,	0, 10h,	  0, 10h,   0, 10h
		db    4, 41h,	4, 41h,	  1,   1,   1,	 4,   4, 44h, 10h, 44h,	10h, 50h, 40h, 50h
		db  41h, 10h, 14h, 10h,	14h,   4, 41h,	 4,   0, 44h, 40h, 11h,	15h,   5,   0, 55h
		db    0,   1, 10h,   4,	  5, 10h,   0, 40h,   5, 15h, 50h,   5,	  1, 50h, 54h,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	  0, 15h, 55h, 41h
		db  40h,   0, 40h,   0,	10h,   0, 10h,	 0, 10h,   0,	4,   0,	  4,   0,   4,	 0
		db  41h, 10h, 41h, 10h,	40h, 40h, 10h, 40h, 11h, 10h, 11h,   4,	  5,   4,   5,	 1
		db    4, 41h,	4, 14h,	10h, 14h, 10h, 41h, 11h,   0, 44h,   1,	50h, 54h, 55h,	 0
		db  40h,   0, 10h,   4,	  4, 50h,   1,	 0, 54h, 50h, 50h,   5,	  5, 40h,   0, 15h
		db    0,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	54h,   0, 41h, 55h
		db  33h, 33h,0CCh,0CFh,	33h, 33h,0CCh,0CCh, 30h, 33h,0FCh,0C0h,	33h, 33h, 0Ch, 0Ch
		db  57h,0FFh,0FFh, 55h,0FFh,0FFh,0AAh,0AAh, 88h, 88h,0FEh, 25h,0D6h, 8Fh,0FEh, 2Fh
		db  56h, 2Fh,0FCh, 0Fh,0CAh,0A3h, 2Fh,0F8h,0BFh,0FEh,0BFh,0FEh,	2Fh,0F8h, 0Ah,0A0h
		db  33h, 33h,0CCh,0FCh,	33h, 30h,0C0h,0CEh, 33h, 32h,0FCh,0C0h,	33h, 28h,0C0h,0A0h
		db  33h, 33h,0CCh,0CCh,	3Fh, 33h,0CCh,0CCh, 33h, 33h,0CCh,0FCh,	33h, 33h,0CCh,0CCh
		db  33h, 33h,0CCh,0CCh,	3Fh, 33h,0CCh, 0Ch, 33h, 33h, 0Ch,0FCh,	23h, 33h,0A8h, 0Ch
		db    0,   0,	0,   0,	  4,   0, 50h, 10h, 55h, 10h, 15h, 54h,	44h, 55h, 51h, 15h
		db    0, 10h, 10h, 40h,	55h,   4, 55h, 55h, 11h, 55h, 44h, 51h,	55h, 45h, 55h, 54h
		db  55h, 54h, 55h, 45h,	51h, 11h, 55h, 55h, 55h, 51h, 14h, 44h,	51h, 15h, 55h, 55h
		db  55h, 15h, 45h, 45h,	51h, 54h, 15h, 55h, 54h, 54h, 51h, 11h,	55h, 55h, 55h, 55h
		db 0AAh,0AAh,0AAh,0AAh,	22h,0AAh, 0Ah, 2Ah,   2, 88h,	0, 22h,	  0,   2,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0, 0Ah,   0,0AAh, 0Ah,0AAh,	2Ah,0A8h,0A8h,0A2h
		db    0,   0,	0, 2Ah,	2Ah,0AAh,0AAh, 88h,0A8h,0A2h,0A2h,0AAh,0AAh, 2Ah, 2Ah, 8Ah
		db  54h, 55h, 55h, 14h,	15h, 45h, 45h, 51h,   1, 45h,	5, 54h,	10h, 55h, 10h,	 5
		db    0,   0,	0,   0,	  0, 40h,   0, 10h, 10h, 55h,	5, 55h,	55h, 54h, 55h, 11h
		db  40h, 10h, 11h,   5,	  5, 55h, 55h, 55h, 55h, 55h, 44h, 44h,	11h, 51h, 55h, 55h
		db  45h, 15h, 51h, 54h,	44h, 50h, 15h, 50h, 55h,   4, 50h, 40h,	50h,   0,   4,	 0
		db  40h, 10h, 10h, 10h,	54h, 54h, 5Dh, 5Dh, 73h, 37h,0C4h,0C4h,	15h, 11h, 55h, 55h
		db 0A2h, 8Ah,0AAh,0A2h,0AAh,0AAh,0AAh,0A8h,0A2h,0A2h, 8Ah,0A8h,0AAh, 8Ah,0AAh,0AAh
		db 0AAh,0AAh,0AAh,0AAh,0A8h,0A8h, 22h, 80h, 8Ah,   0,0A0h,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,0A0h,	 0,0AAh,   0, 2Ah,0A0h,0A2h,0A8h,0A8h,0AAh
		db    0,   0,0AAh,   0,0AAh,0AAh,0AAh,0AAh, 28h,0A8h,0A2h, 2Ah,0AAh,0AAh,0AAh,0AAh
		db 0AAh, 2Ah,0A8h,0A2h,	2Ah,0AAh,0AAh,0AAh,0A8h,0A8h, 22h, 22h,	88h, 88h,   2, 82h
		db 0FFh,0FFh,0FFh,0FFh,	55h, 55h, 99h, 99h,0EEh,0EEh, 99h, 99h,	66h, 66h,   0,	 0
		db 0FFh,0FFh,0FFh,0FFh,	  1, 55h,   0, 99h,   0, 2Eh,	0,   9,	  0,   2,   0,	 0
		db 0FFh,0FCh,0FFh,0FCh,	55h, 7Ch, 55h, 7Ch, 55h, 7Ch,0AAh,0ACh,0AAh,0A8h,   0,	 0
		db 0FFh,0FFh,0BFh,0FFh,0A5h, 55h,0A5h, 55h,0A5h, 55h,0AAh,0AAh,0AAh,0AAh,   0,	 0
		db  15h, 55h, 5Fh,0FFh,	7Fh,0FFh, 7Fh,0FFh, 7Fh,0FFh, 7Fh,0FFh,	2Eh,0EEh,   0,	 0
		db  55h, 50h,0FFh,0F8h,0FFh,0ECh,0FFh,0F8h,0FEh,0ECh,0BBh,0B8h,0EEh,0E0h,   0,	 0
		db  2Ah,   2,0AAh, 8Ah,0AAh,0AAh,0AAh,0AAh,0A8h, 8Ah, 22h, 22h,	88h,   8,   0,	 0
		db 0AAh,0AAh,0BFh,0FFh,0BAh,0AAh,0BAh,0AAh,0BAh,0AAh,0BAh,0AAh,0A8h, 88h,   0,	 0
		db 0AAh,0A8h,0FFh,0F8h,0AAh,0A8h,0AAh,0A0h,0AAh, 88h, 22h, 20h,	88h, 88h,   0,	 0
		db 0FFh, 33h,0FFh,0CCh,0FFh,0F3h,0FFh,0CCh,0FFh, 33h,0FFh,0CCh,0FFh, 33h,0FCh,0CCh
		db    0,   0,	2,   0,	  0, 80h,   2, 60h,   9,0D8h, 0Ah, 68h,	  2,0A0h,   0, 80h
		db 0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh
		db 0FFh, 33h,0FCh,0CCh,0CCh,0CCh,0F3h, 30h,0CCh,0C0h,0CFh,   0,0F0h,   0,   0,	 0
		db 0FFh,0FFh,0FFh,0FFh,0EFh,0FEh,0EFh,0FAh,0AAh,0EBh,0A6h,0ABh,	5Dh,0AAh,0FFh, 6Ah
		db 0EFh,0FBh,0AFh,0BBh,0EBh,0FBh,0AAh,0EAh,0EAh,0AAh,0EAh,0A6h,0AAh, 55h,0A9h, 7Fh
		db 0FFh,0FFh, 3Fh,0FFh,	3Fh,0FFh, 0Fh,0FFh,   3,0FFh,	0,0FFh,	  0, 0Fh,   0,	 0
		db  80h,   0,0B0h,   0,0B8h,   0, 2Eh,	 0, 80h,   0,0BAh, 80h,0BAh,0A0h, 2Eh, 88h
		db  14h, 50h,0C1h,0C4h,	  3,   3, 0Ch, 83h, 0Ch,   0,	0,   0,	  0,   0,   0,	 0
		db  10h, 14h, 0Ah,0A1h,	2Fh,0F8h,0BFh,0FEh,0BFh,0FEh,0BFh,0FEh,	2Fh,0F8h, 0Ah,0A0h
		db  10h, 41h, 51h, 15h,	8Eh,0EEh, 33h,0B8h, 0Ah,0A8h, 22h,0A0h,	88h, 8Ah,   0,	 0
		db    3, 40h,	3, 40h,	  3, 40h,0FFh, 7Fh, 55h, 55h,	0,   0,	  3, 40h,   3, 40h
		db 0FFh,0CAh,	3,0E2h,0A8h,0F8h, 5Ah, 2Ch,0A8h,0B8h,	2,0E2h,0BBh, 8Ah,   0,	 0
		db 0A3h,0FFh, 8Fh,0C0h,	3Fh, 2Ah, 3Ch,0A5h, 3Fh, 2Ah, 8Fh,0C0h,0A3h,0BBh,   0,	 0
		db 0C1h, 50h,0F0h, 43h,0BCh, 0Fh, 6Fh, 3Eh, 5Bh,0F9h, 16h,0E5h,	  5, 94h,   0,	 0
		db 0FFh,0F0h, 55h, 58h,	55h, 64h, 55h, 58h, 56h, 64h, 99h, 98h,	66h, 60h,   0,	 0
		db  3Fh,0FFh,0F5h, 55h,0D5h, 55h,0D5h, 55h,0D5h, 55h,0D5h, 55h,	26h, 66h,   0,	 0
		db 0FFh,0FFh, 99h, 99h,	22h, 22h, 88h, 88h, 22h, 22h, 88h, 88h,	22h, 22h, 88h, 88h
		db 0A8h,0AAh,0F8h,0BFh,0A8h,0BAh,0A8h,0BAh,0A8h,0BAh,0A0h,0BAh,	88h,0A8h,   0,	 0
		db 0AAh,0A8h,0BFh,0F8h,0BAh,0A8h,0BAh,0A8h,0BAh,0A8h,0BAh,0A0h,0A8h, 88h,   0,	 0
		db 0EEh,0EEh,0BBh,0BBh,0EAh,0EAh,0AAh,0AAh,0AAh,0AAh,0A2h,0A2h,	88h, 88h, 22h, 22h
		db 0F0h,   0,0FFh,   1,0FCh,0C4h,0FFh, 30h,0FFh, 3Ch, 3Fh,0CCh,	0Ch,0FFh,   0, 3Fh
		db    2, 80h,	8,0A3h,	58h, 2Fh, 14h,0F0h, 57h,   3, 1Ch, 0Fh,	30h, 0Ch,0C0h,	 0
		db 0BBh,0BBh,0EEh,0EEh,0ABh,0AAh,0AAh,0A2h, 8Ah,0AAh,0A8h,0A8h,	20h, 22h, 88h, 88h
		db 0FFh,0FFh,0DDh,0DDh,	6Ah,0A9h,0A0h,	 9, 2Ah, 88h, 2Ah, 88h,	2Ah,0A8h,   0,	 0
		db 0FFh,0FFh,0DDh,0DDh,	55h, 55h, 99h, 99h,   0,   0,	0,   0,	  1, 40h,   5, 10h
		db  66h, 6Ch, 99h, 94h,	66h, 40h, 99h,	 0, 64h,0FCh, 93h, 54h,	50h,   0,   3,0D0h
		db 0E6h, 66h,0D9h, 99h,	  2, 66h, 0Ch, 99h, 4Dh, 66h, 45h, 99h,	  0, 12h, 43h,0F1h
		db    5, 8Ah, 1Fh,0E2h,	1Fh,0E2h, 7Fh,0F8h, 7Fh,0F8h, 1Fh,0E2h,	1Fh,0E2h,   5, 88h
		db    0, 0Ch,	0,   4,	  0,   0,   0,	 0,   0,0FCh,	3, 54h,	10h,   0,   3,0D0h
		db 0E0h,   0,0D8h,   0,	  0,   0,   8,	 0, 4Eh,   0, 46h,   0,	  0, 20h, 43h,0E2h
		db 0D0h,   8, 43h,0C0h,	0Ch, 80h, 36h,	 0,   8,   0,0C0h,   0,	60h,   0, 80h,	 0
		db  3Ch,   1, 0Dh,   0,	  0, 35h,   0, 0Dh,   0,   0,	0,   3,	  0,   0,   0,	 3
		db  10h, 0Dh,	3,0C1h,	  1, 40h,   0,	 3,   0, 3Dh,	0,   4,	  0,   0,   0,	 3
		db    5, 55h,	0,0FFh,	  0, 2Ah,   0, 3Fh,   0, 3Fh,	0,0FFh,	0Fh,0FFh, 3Fh,0FFh
		db  55h, 55h,0FFh,0FFh,0AAh,0AAh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh
		db  55h, 50h,0FFh,   0,0A8h,   0,0F0h,	 0,0FCh,   0,0F3h,   0,0FCh,0F0h,0FFh,0CCh
		db 0FCh,   1,0D5h,   0,	  0, 15h, 0Ch,	 5, 4Dh,   0, 45h,   1,	  0, 10h, 43h,0F1h
		db    0, 0Ch, 3Fh,   4,	35h, 40h,   0,	 0, 10h,0FCh, 73h, 54h,	  0,   0,   3,0D0h
		db 0E9h,0EAh,0B6h,0EAh,0FAh,0AAh,0E9h, 88h,0EAh, 88h,0AAh,   0,	88h,   0,   0,	 0
		db    0, 3Fh,	3,0FFh,	0Ch, 0Fh, 30h,0FFh, 30h,0FFh, 0Ch, 0Fh,	  3,0C0h,   0, 3Fh
		db    0,   0,0F0h,   0,0FFh,   0,0FFh,0C0h,0FCh,0F0h,0F3h, 30h,0CCh,0C0h, 33h,	 0
		db 0FFh,0FFh,0FFh,0FFh,	55h, 40h, 99h,	 0,0ECh,   0, 90h,   0,	40h,   0,   0,	 0
		db 0FFh,0FFh,0C0h,   0,0C9h, 99h,0C6h, 66h,0C9h,0C9h,0C6h,   6,0C9h, 99h,0C6h, 66h
		db 0A0h,0A8h,0A0h,   8,	  2, 80h, 22h,0A2h,0A0h,   0, 28h,0A8h,	  0,0A0h, 28h,	 2
		db 0A0h, 0Ah, 82h,   0,	0Ah, 82h, 2Ah,	 2, 20h, 20h,	0,0A8h,	88h, 80h,   8, 0Ah
		db  66h, 66h, 99h, 90h,	66h,   0, 98h, 22h, 60h, 80h, 92h,0A8h,	40h,0A0h, 28h,	 2
		db 0D0h, 0Dh, 43h,0C1h,	0Dh, 40h, 35h,	 3,   4, 3Dh,	0,0D4h,	30h,   0, 34h, 30h
		db  66h, 66h, 99h, 98h,	66h, 62h, 99h,	 0, 64h,   2, 90h, 0Ah,	40h,   8,   0,	 0
		db 0A6h, 66h,0AAh, 99h,0A8h,0A6h,0AAh, 29h,0AAh, 2Ah,0AAh, 8Ah,	8Ah,0AAh,0A2h,0AAh
		db 0C0h,   0, 30h,   0,	  0,0C0h,   0,0C0h,   0,0C0h,	0, 30h,	  0, 30h,   0, 30h
		db    0,   0,	0,   5,	  0, 55h,   5, 55h, 15h, 54h, 55h, 50h,	55h, 50h, 55h, 55h
		db    0,   0,	5, 55h,	55h, 55h, 55h, 55h,   0,   0,	0,   0,	  0,   0, 45h, 55h
		db    0,   0, 40h,   0,	54h,   0, 55h, 40h, 55h, 50h, 15h, 54h,	15h, 54h, 55h, 54h
		db  66h, 66h, 99h, 99h,	66h, 66h, 99h, 99h, 66h,0A6h, 98h, 29h,	60h, 2Ah, 80h, 8Ah
		db    0,0C0h,	0,0C0h,	  3, 30h, 0Ch,0FCh, 0Ch,0FCh, 0Fh,0FFh,	  3,0FCh,   8,	 2
		db  0Ah, 88h, 0Ah, 20h,	8Ah, 88h, 8Ah,0A0h, 0Ah, 88h, 0Ah,0A0h,	0Ah,   8, 20h, 80h
		db 0FFh,0C0h,0AAh, 64h,0A9h, 98h,   0,	 0,0FFh,0C0h,0AAh, 64h,0A9h, 98h,   0,	 0
		db    0, 15h,	0,0AAh,	  0,0FFh,   0,	 0,   0, 15h,	0,0AAh,	  0, 55h,   0,	 0
		db 0F0h,   0,0AAh,   0,	56h,   0,   0,	 0,0F0h,   0,0AAh,   0,	56h,   0,   0,	 0
		db  3Fh,0FFh,0AAh,0AAh,0AAh,0AAh,   0,	 0, 3Fh,0FFh,0AAh,0AAh,0AAh,0AAh,   0,	 0
		db 0A8h, 2Ah, 80h,   2,	80h,   2, 80h,	 2, 80h,   2, 80h,   2,	80h,   2,0A8h, 2Ah
Tile8x8Footer	db    0,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	  0,   0,   0,	 0
					; DATA XREF: Draw8x8Footer+Do
		db    0, 38h,	0,0EEh,	  1, 3Bh,   1, 4Eh,   5,0C3h,	5,0F0h,	17h,0FCh, 17h,0FFh
		db    0,   0,0C0h,   0,0B0h,   0,0ECh,	 0,0BBh,   0,0EEh,   0,	3Bh, 80h,0C2h,0C0h
		db  17h,0FEh, 5Fh,0FBh,	5Fh,0FEh, 5Fh,0FBh, 5Fh,0EEh, 5Fh,0FBh,	5Fh,0EEh, 5Fh,0FBh
		db 0B8h,   0,0E0h,   0,0B0h,   0,0E0h,	 0,0B0h,   0,0C0h,   0,	80h,   0,0C0h,	 0
		db  5Fh,0EEh, 5Fh,0FBh,	5Fh,0EEh, 5Fh,0FBh, 5Fh,0EEh, 5Fh,0FBh,	1Fh,0EEh, 1Fh,0FBh
		db  80h,   0,0C0h,   0,	80h,   0,0C0h,	 0, 80h,   0,0C0h,   0,	80h,   0,0C0h,	 0
		db  1Fh,0FEh,	7,0FBh,	  7,0FEh,   7,0FFh,   1,0FEh,	1,0FFh,	  0, 7Fh,   0, 7Fh
		db 0B0h,   0,0E0h,   0,0B0h,   0,0ECh,	 0,0B8h,   0,0ECh,   0,0BBh,   0,0EEh,	 0
		db    0, 1Fh,	0,   7,	  0,   1,   0,	 0,   0,   0,	0,   0,	  0,   0,   0,	 0
		db 0FBh, 80h,0FEh,0C0h,0BFh,0B0h,0EEh,0E0h, 3Bh,0B8h, 0Eh,0ECh,	  3,0BBh,   0, 2Eh
		db    0,   0,	0,   0,	  0,   0,   0,0FFh,0FFh,   0,	0, 55h,	  0,   0,   0,	 0
		db    0,   0, 0Fh,0C0h,0F0h, 3Ch,   5, 43h, 55h, 55h,	5, 41h,	50h, 14h,   5, 40h
		db    0,   0,	0,   0,	  0,0FCh,0FFh, 17h, 55h, 17h, 55h, 17h,	  0, 54h,   0,	 0
		db    0, 44h, 11h, 99h,	  6, 66h, 19h, 99h, 26h, 66h, 19h, 99h,	  6, 66h,   1, 11h
		db  44h,   0, 99h, 10h,	66h, 60h, 99h, 98h, 66h, 64h, 99h, 90h,	66h, 40h, 88h,	 0
		db  0Fh,0F0h, 3Ch, 3Ch,	3Ch, 3Ch, 3Ch, 3Ch, 3Ch, 3Ch, 3Ch, 3Ch,	0Fh,0F0h,   0,	 0
		db    3,0C0h, 0Fh,0C0h,	  3,0C0h,   3,0C0h,   3,0C0h,	3,0C0h,	0Fh,0F0h,   0,	 0
		db  0Fh,0F0h, 30h, 3Ch,	  0, 3Ch,   3,0F0h, 0Fh,   0, 3Ch, 0Ch,	3Fh,0FCh,   0,	 0
		db  0Fh,0F0h, 30h, 3Ch,	  0, 3Ch,   3,0F0h,   0, 3Ch, 30h, 3Ch,	0Fh,0F0h,   0,	 0
		db  3Ch,   0, 3Ch,0F0h,	3Ch,0F0h, 3Fh,0FCh,   0,0F0h,	0,0F0h,	  3,0FCh,   0,	 0
		db  3Fh,0FCh, 3Ch,   0,	3Fh,0F0h,   0, 3Ch,   0, 3Ch, 30h, 3Ch,	0Fh,0F0h,   0,	 0
		db  0Fh,0F0h, 3Ch, 3Ch,	3Ch,   0, 3Fh,0F0h, 3Ch, 3Ch, 3Ch, 3Ch,	0Fh,0F0h,   0,	 0
		db  3Fh,0FCh, 30h, 3Ch,	  0, 3Ch,   0,0F0h,   3,0C0h,	3,0C0h,	  3,0C0h,   0,	 0
		db  0Fh,0F0h, 3Ch, 3Ch,	3Ch, 3Ch, 0Fh,0F0h, 3Ch, 3Ch, 3Ch, 3Ch,	0Fh,0F0h,   0,	 0
		db  0Fh,0F0h, 3Ch, 3Ch,	3Ch, 3Ch, 0Fh,0FCh,   0, 3Ch, 3Ch, 3Ch,	0Fh,0F0h,   0,	 0
		db    0,   0,	0,   0,	  0,   0,0EEh,0EEh, 88h, 88h, 22h, 22h,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	3Fh,   0,0D4h,0FFh, 54h, 55h, 54h, 55h,	15h,   0,   0,	 0
		db    0,   0,	3,0F0h,	3Ch, 0Fh,0C1h, 50h, 55h, 55h, 41h, 50h,	14h,   5,   1, 50h
		db    0,   0,	0,   0,	  0,   0,0FFh,	 0,   0,0FFh, 55h,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   3,	  0, 0Eh,   0, 3Bh,   0,0EEh,	0,0BBh,	  2,0ECh,   3, 83h
		db  2Ch,   0,0BBh,   0,0ECh, 40h,0B1h, 40h,0C3h, 50h, 0Fh, 50h,	3Fh,0D4h,0BFh,0D4h
		db    0, 2Eh,	0, 0Bh,	  0, 0Eh,   0, 0Bh,   0, 0Eh,	0,   3,	  0,   2,   0,	 3
		db 0EFh,0D4h,0BFh,0F5h,0EFh,0F5h,0BFh,0F5h,0EFh,0F5h,0BBh,0F5h,0EFh,0F5h,0BBh,0F5h
		db    0,   2,	0,   3,	  0,   2,   0,	 3,   0,   2,	0,   3,	  0,   2,   0,	 3
		db 0EFh,0F5h,0BBh,0F5h,0EFh,0F5h,0BBh,0F5h,0EFh,0F5h,0BBh,0F5h,0EFh,0F4h,0BBh,0F4h
		db    0, 0Eh,	0, 0Bh,	  0, 0Eh,   0, 3Bh,   0, 2Eh,	0, 3Bh,	  0,0EEh,   0,0BBh
		db 0EFh,0F4h,0BFh,0D0h,0EFh,0D0h,0BFh,0D0h,0FFh, 40h,0BFh, 40h,0FDh,   0,0FDh,	 0
		db    2,0EFh,	3,0BFh,	0Eh,0FEh, 0Bh,0BBh, 2Eh,0ECh, 3Bh,0B0h,0EEh,0C0h,0B8h,	 0
		db 0F4h,   0,0D0h,   0,	40h,   0,   0,	 0,   0,   0,	0,   0,	  0,   0,   0,	 0
		db  3Fh,0C0h,0FFh,0FCh,0FFh,0FFh, 0Fh,0FFh, 33h,0FFh,0CCh,0FFh,0FFh,0CCh, 33h, 30h
		db    0,   0,	0,   0,0FFh,0FFh,0FFh,0FFh,0CCh,0CCh, 33h, 33h,	  0,   0,   0,	 0
		db  0Fh,0FCh,0FFh,0FFh,0FFh,0FFh,0FFh,0CCh,0FFh, 30h,0CFh,0CFh,	33h,0FFh,   3, 3Ch
		db    0,0FFh, 0Fh,0FFh,	3Fh,0FFh, 3Fh,	 3, 3Ch,   3, 3Ch,   3,	3Ch, 0Fh,0FFh,0FCh
		db 0FCh,   0,0FFh,0C0h,0FFh,0F0h,   3,0F0h,   0,0F0h,	0,0F0h,0C0h,0F0h,0FFh,0FCh
		db 0FFh,0F0h, 3Ch,0F3h,	  3,0FFh,   0,0CFh,   3, 33h,	3,0C0h,	  0,0F3h,   0, 3Fh
		db  3Fh,0FCh, 3Ch,0F0h,0FFh,   0,0CCh,	 0, 33h,   0, 0Fh,   0,	3Ch,   0,0F0h,	 0
		db    0,   0,	0,   1,	  0, 15h,   0, 55h,   0, 55h,	0,0AAh,	15h, 55h,   0,	 0
		db    0,   0, 40h,   0,	  4,   0, 51h,	 0, 55h,   0,0AAh,   0,	55h, 44h,   0,	 0
		db  55h, 55h, 6Ah,0AAh,	6Fh,0FFh, 6Fh,0FFh, 6Fh,0F0h, 6Fh,0C0h,	6Fh,   3, 6Fh, 0Fh
		db  55h, 55h,0AAh,0A9h,0FFh,0F9h,   3,0F9h, 0Fh,0F9h,0FFh,0F9h,0FFh,0F9h,0FFh,0F9h
		db  6Fh, 0Fh, 6Fh,   3,	6Fh,0C0h, 6Fh,0F0h, 6Fh,0FFh, 6Fh,0FFh,	6Ah,0AAh, 55h, 55h
		db 0FFh,0F9h,0FFh,0F9h,0FFh,0F9h, 0Fh,0F9h,   3,0F9h,0FFh,0F9h,0AAh,0A9h, 55h, 55h
		db  55h, 55h, 6Ah,0AAh,	6Fh,0FFh, 6Ch, 3Fh, 6Ch, 0Ch, 6Fh,   0,	6Fh,0C3h, 6Fh, 0Ch
		db  55h, 55h,0AAh,0A9h,0FFh,0F9h,0FFh,0F9h, 3Fh,0F9h,0FFh,0F9h,0FFh,0F9h, 3Fh,0F9h
		db  6Fh, 3Ch, 6Fh,0FFh,	6Fh,0FFh, 6Fh,0FFh, 6Fh,0FFh, 6Fh,0FFh,	6Ah,0AAh, 55h, 55h
		db  0Fh,0F9h,	3,0F9h,0C0h,0F9h,0F0h, 39h,0FCh, 39h,0FFh,0F9h,0AAh,0A9h, 55h, 55h
		db  55h, 55h, 6Ah,0AAh,	6Fh,0FFh, 6Fh,0F0h, 6Fh,0FCh, 6Fh,0F0h,	6Fh,0C0h, 6Fh,	 0
		db  55h, 55h,0AAh,0A9h,0FFh,0F9h, 0Fh,0F9h, 3Fh,0F9h, 0Fh,0F9h,	  3,0F9h,   0,0F9h
		db  6Fh,   0, 6Fh,   0,	6Fh,   0, 6Fh,0C0h, 6Fh,0FCh, 6Fh,0FFh,	6Ah,0AAh, 55h, 55h
		db    4,0F9h,	4,0F9h,	10h,0F9h,   3,0F9h, 3Fh,0F9h,0FFh,0F9h,0AAh,0A9h, 55h, 55h
		db  55h, 55h, 6Ah,0AAh,	6Fh,0FFh, 6Ch, 3Fh, 6Ch,   3, 6Fh,0C0h,	6Fh,0FCh, 6Fh,0FFh
		db  55h, 55h,0AAh,0A9h,0FFh,0F9h,0FFh,0F9h,0FFh,0F9h,0FFh,0F9h,	3Fh,0F9h, 0Fh,0F9h
		db  6Fh,0FFh, 6Fh,0FFh,	6Fh,0FFh, 6Fh,0FFh, 6Fh,0FFh, 6Fh,0FFh,	6Ah,0AAh, 55h, 55h
		db 0C3h,0F9h,0F0h,0F9h,0F0h,0F9h,0FCh, 39h,0FCh, 39h,0FFh,0F9h,0AAh,0A9h, 55h, 55h
		db    0,   1,	0,   6,	  0, 1Ah,   0, 6Ah,   1,0AAh,	4,0AAh,	1Ah, 2Ah, 6Ah, 8Ah
		db  6Ah,0A2h, 6Ah,0A8h,	6Ah,0A8h, 6Ah,0A8h, 6Ah,0A8h, 6Ah,0A8h,	6Ah,0A8h, 6Ah,0A2h
		db  6Ah, 8Ah, 1Ah, 2Ah,	  4,0AAh,   1,0AAh,   0, 6Ah,	0, 1Ah,	  0,   6,   0,	 1
		db  40h,   0, 90h,   0,0A4h,   0,0A9h,	 0,0AAh, 40h,0AAh, 10h,0A8h,0A4h,0A2h,0A9h
		db  8Ah,0A9h, 2Ah,0A9h,	2Ah,0A9h, 2Ah,0A9h, 2Ah,0A9h, 2Ah,0A9h,	2Ah,0A9h, 8Ah,0A9h
		db 0A2h,0A9h,0A8h,0A4h,0AAh, 10h,0AAh, 40h,0A9h,   0,0A4h,   0,	90h,   0, 40h,	 0
		db  55h, 55h,0AAh,0AAh,0A8h,   2,0A8h,0AAh,0A8h, 0Ah,0A8h,0AAh,0A8h,0AAh,0AAh,0AAh
		db  55h, 55h,0AAh,0AAh,	28h, 80h, 28h, 8Ah, 28h, 80h, 28h, 8Ah,	  0, 80h,0AAh,0AAh
		db  55h, 55h,0AAh,0AAh,	20h,   8,0A2h, 8Ah,0A0h, 0Ah,0A2h, 2Ah,	22h, 88h,0AAh,0AAh
		db  55h, 55h,0AAh,0AAh,	  2,   0, 8Ah, 28h, 2Ah,   0, 2Ah, 28h,	  2, 28h,0AAh,0AAh
		db  55h, 55h,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh
		db  55h, 55h,0AAh,0AAh,	20h, 0Ah, 22h, 8Ah, 20h, 0Ah, 22h, 8Ah,	22h, 8Ah,0AAh,0AAh
		db  55h, 55h,0AAh,0AAh,	  0, 8Ah, 2Ah, 8Ah, 20h, 8Ah, 28h, 8Ah,	  0, 80h,0AAh,0AAh
		db  55h, 55h,0AAh,0AAh,0A8h,   2,0A8h,0A2h,0A8h,   2,0A8h,0A2h,0A8h,0A2h,0AAh,0AAh
		db  55h, 55h,0AAh,0AAh,	28h, 80h, 28h,0A2h, 28h,0A2h, 28h,0A2h,	82h, 80h,0AAh,0AAh
		db  55h, 55h,0AAh,0AAh,	8Ah, 20h, 8Ah, 22h, 8Ah, 20h, 8Ah, 22h,0A0h,0A0h,0AAh,0AAh
		db  55h, 55h,0AAh,0AAh,	  8,   2,0A8h,0A2h, 28h,   2,0A8h, 8Ah,	  8,0A2h,0AAh,0AAh
		db  55h, 55h,0AAh,0AAh,	  0, 80h, 2Ah, 8Ah,   2, 80h, 2Ah,0AAh,	  0, 80h,0AAh,0AAh
		db  55h, 55h,0AAh,0AAh,	2Ah,0AAh,0AAh,0AAh, 2Ah,0AAh, 2Ah,0AAh,	2Ah,0AAh,0AAh,0AAh
		db 0AAh,0AAh,	0, 2Ah,	2Ah, 2Ah, 2Ah, 2Ah, 2Ah, 2Ah,	0, 2Ah,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh,0AAh,0A2h,0AAh, 82h,0AAh,0A2h,0AAh,0A2h,0AAh, 80h,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh,	0, 2Ah,0AAh, 2Ah,   0, 2Ah, 2Ah,0AAh,	0, 2Ah,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh,0AAh, 80h,0AAh,0AAh,0AAh,0A0h,0AAh,0AAh,0AAh, 80h,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh, 0Ah,0AAh,	8Ah,0AAh, 0Ah,0AAh, 8Ah,0AAh, 0Ah,0AAh,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh,0A2h, 8Ah,0A2h, 8Ah,0A0h,	 2,0AAh, 8Ah,0AAh,   2,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh,0AAh,0A8h,0AAh,0A8h,0AAh,0A8h,0AAh,0AAh,0AAh,0A8h,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh,	0,0AAh,0AAh,0AAh,   0,0AAh,0A8h,0AAh,	0,0AAh,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh,0AAh,   0,0AAh, 2Ah,0AAh,	 0,0AAh, 2Ah,0AAh,   0,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh, 2Ah,0AAh,0AAh,0AAh, 2Ah,0AAh, 2Ah,0AAh, 2Ah,0AAh,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh, 80h, 0Ah,	8Ah, 8Ah,0AAh, 2Ah,0A8h,0AAh,0A8h,0AAh,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh,0AAh,0A0h,0AAh,0A2h,0AAh,0A0h,0AAh,0A2h,0AAh,0A0h,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh,	2,0AAh,0A2h,0AAh,   2,0AAh,0A2h,0AAh,	2,0AAh,0AAh,0AAh, 55h, 55h
		db 0AAh,0AAh,0A8h,   0,0A8h,0A8h,0A8h,	 0,0AAh,0A8h,0A8h,   0,0AAh,0AAh, 55h, 55h
		db 0F0h,   0,0F0h,   0,	  0,   0, 66h, 66h, 99h, 99h,	0,   0,	55h, 55h, 55h, 55h
		db    0,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	  0,   0,   0,	 0
Blocks		db 8Eh			; DATA XREF: DecodeLocationBackground+49o
Block0		db 4
		db 4
		db 0B3h,0B3h,0A9h,0A8h
		db 0AAh,0ABh,0ABh,0B2h
		db    1,   6,	2,   0
		db    4,   3,	0,   0
Block1		db 8
		db 3
		db  8Ah, 8Ah, 8Ah, 8Ah,	8Ah, 8Ah, 8Ah, 8Ah
		db  8Ah, 8Ah, 8Ah, 8Ah,	8Ah, 8Ah, 8Ah, 8Ah
		db 0F8h,0F8h,0F8h,0F8h,0F8h,0F8h,0F8h,0F8h
Block02		db 4
		db 4
		db 0B0h,0B1h,0B3h,0B3h
		db 0AFh,0AAh,0ABh,0AAh
		db    0,   7,	6,   1
		db    0,   0,	8,   4
Block03		db 8
		db 4
		db 0B3h,0B3h,0B3h,0B3h,0B3h,0B3h,0B3h,0B3h
		db 0AAh,0AAh,0ABh,0AAh,0ABh,0AAh,0ABh,0ABh
		db    1,   6,	6,   1,	  6,   1,   6,	 1
		db    4,   4,	4,   4,	  4,   4,   4,	 4
Block04		db 7
		db 7
		db  0Ah, 0Bh, 0Dh, 0Eh,	0Fh, 11h, 12h
		db    0, 0Ch,	0, 14h,	10h, 13h,   0
		db    0,   0,	0,   9,	  0,   0,   0
		db    0,   0,	0,   9,	  0,   0,   0
		db    0,   0,	0,   9,	  0,   0,   0
		db    0,   0,	0,   9,	  0,   0,   0
		db    0,   0,	0,   9,	  0,   0,   0
Block05		db 4
		db 2
		db  15h, 16h, 17h, 18h
		db  19h, 1Ah, 1Bh, 1Ch
		db 4
		db 6
		db 0EEh,0EFh,0EFh,0EEh
		db 0EFh,0EEh,0EEh,0EFh
		db 0EEh,0EFh,0EFh,0EEh
		db 0EFh,0EEh,0EFh,0EFh
		db 0EEh,0EFh,0EEh,0EFh
		db 0EFh,0EEh,0EFh,0EEh
		db 8
		db 0Ch
		db  8Ah, 8Ah, 8Ah, 8Ah,	8Ah, 27h, 20h,	 0
		db  2Eh, 2Fh, 2Dh, 2Eh,	2Fh, 8Ah, 1Fh, 29h
		db  3Ch, 3Ch, 3Ch, 3Dh,	3Eh, 1Fh, 1Fh, 1Fh
		db  3Fh, 40h, 3Fh, 40h,	1Fh, 1Fh, 1Fh, 1Fh
		db    0,   0,	0,   0,	1Fh, 1Fh, 1Fh, 1Fh
		db    0,   0,	0,   0,	1Fh, 1Fh, 1Fh, 1Fh
		db    0,   0,	0,   0,	1Fh, 1Fh, 1Fh, 1Fh
		db    0,   0,	0,   0,	1Fh, 1Fh, 1Fh, 1Fh
		db    0,   0,	0,   0,	1Fh, 1Fh, 1Fh, 1Fh
		db    0,   0,	0,   0,	1Fh, 1Fh, 1Fh, 1Fh
		db    0,   0,	0,   0,	1Fh, 1Fh, 1Fh, 1Fh
		db    0,   0,	0,   0,	1Fh, 1Fh, 1Fh, 1Fh
		db 3
		db 3
		db  2Ch, 8Ah, 8Ah
		db 0EFh, 2Ch, 8Ah
		db 0EEh,0EFh, 2Ch
		db 8
		db 2
		db  8Ah, 8Ah, 8Ah, 8Ah,	8Ah, 8Ah, 8Ah, 8Ah
		db  8Ah, 8Ah, 8Ah, 8Ah,	8Ah, 8Ah, 8Ah, 8Ah
		db 8
		db 3
		db  8Ah, 8Ah, 8Ah, 8Ah,	8Ah, 8Ah, 8Ah, 8Ah
		db  8Ah, 8Ah, 8Ah,0F2h,0F3h, 8Ah, 8Ah, 8Ah
		db 0F2h,0F3h,0F2h, 3Ch,	44h,0F3h,0F2h,0F3h
		db 1
		db 1
		db 26h
		db 1
		db 1
		db 28h
		db 3
		db 3
		db  8Ah, 8Ah,0F0h
		db  8Ah,0F0h,0EEh
		db 0F0h,0EEh,0EFh
		db 2
		db 1
		db  5Bh, 5Ch
		db 3
		db 3
		db 0EEh	; î
		db 0EFh	; ï
		db 0EFh	; ï
		db 0EFh	; ï
		db 0EEh	; î
		db 0EEh	; î
		db 0EEh	; î
		db 0EFh	; ï
		db 0EFh	; ï
		db  10h
		db    2
		db 0B3h,0B3h,0B3h,0B3h,0B3h,0B3h,0B3h,0B3h,0B3h,0B3h,0B3h,0B3h,0B3h,0B3h,0B3h,0B3h
		db 0AAh,0AAh,0ABh,0AAh,0ABh,0AAh,0ABh,0ABh,0AAh,0AAh,0ABh,0AAh,0AAh,0AAh,0ABh,0AAh
		db 5
		db 4
		db    8,0EFh,0EEh,0EFh,0EEh
		db    0,   8,0EEh,0EEh,0EFh
		db    0,   0,	8,0EFh,0EEh
		db    0,   0,	0,0EEh,0EFh
		db 7
		db 2
		db 0Ah
		db 0Bh
		db 0Dh
		db 0Eh
		db 0Fh
		db 11h
		db 12h
		db 0
		db 0Ch
		db 0
		db 14h
		db 10h
		db 13h
		db 0
		db 8
		db 1
		db 89h
		db 89h
		db 89h
		db 89h
		db 89h
		db 89h
		db 89h
		db 89h
		db 1
		db 8
		db 1Eh
		db 1Dh
		db 5Dh
		db 1Dh
		db 1Eh
		db 1Dh
		db 5Dh
		db 1Dh
		db 8
		db 4
		db 5Eh
		db 45h
		db 3Ah
		db 43h
		db 3Ah
		db 3Bh
		db 3Ah
		db 5Fh
		db 21h
		db 5
		db 3Bh
		db 3Ah
		db 3Bh
		db 43h
		db 3Ah
		db 22h
		db 0
		db 0
		db 21h
		db 5
		db 45h
		db 3Ah
		db 5Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 21h
		db 22h
		db 0
		db 0
		db 8
		db 3
		db 21h
		db 5
		db 3Bh
		db 45h
		db 3Bh
		db 3Ah
		db 3Bh
		db 22h
		db 0
		db 0
		db 21h
		db 3Bh
		db 43h
		db 5
		db 22h
		db 0
		db 0
		db 0
		db 0
		db 21h
		db 22h
		db 0
		db 0
		db 0
		db 5
		db 5
		db 0EEh
		db 0EFh
		db 0EEh
		db 0EFh
		db 3
		db 0EEh
		db 0EFh
		db 0EEh
		db 3
		db 0
		db 0EFh
		db 0EFh
		db 3
		db 0
		db 0
		db 0EFh
		db 3
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 6
		db 4
		db 0
		db 0
		db 61h
		db 60h
		db 0
		db 0
		db 0
		db 61h
		db 3Bh
		db 3Ah
		db 60h
		db 0
		db 61h
		db 3Bh
		db 3Ah
		db 3Bh
		db 3Ah
		db 60h
		db 5Eh
		db 3Ah
		db 3Bh
		db 3Bh
		db 3Ah
		db 5Fh
		db 6
		db 1
		db 62h
		db 63h
		db 0
		db 0
		db 62h
		db 63h
		db 8
		db 2
		db 0CBh
		db 0CCh
		db 0CBh
		db 0CCh
		db 0CBh
		db 0CCh
		db 0CBh
		db 0CCh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 2
		db 3
		db 71h
		db 0
		db 65h
		db 66h
		db 71h
		db 0
		db 4
		db 4
		db 0B4h
		db 0B4h
		db 0B7h
		db 0B6h
		db 0B8h
		db 0B8h
		db 0B8h
		db 0B5h
		db 0E7h
		db 0F1h
		db 0E1h
		db 0
		db 0E8h
		db 0E1h
		db 0
		db 0
		db 4
		db 4
		db 0ADh
		db 0AEh
		db 0B4h
		db 0B4h
		db 0ACh
		db 0B8h
		db 0B8h
		db 0B8h
		db 0
		db 0E3h
		db 0E7h
		db 0E8h
		db 0
		db 0
		db 0E3h
		db 0E8h
		db 8
		db 2
		db 0B4h
		db 0B4h
		db 0B4h
		db 0B4h
		db 0B4h
		db 0B4h
		db 0B4h
		db 0B4h
		db 0B8h
		db 0B8h
		db 0B8h
		db 0B8h
		db 0B8h
		db 0B8h
		db 0B8h
		db 0B8h
		db 3
		db 3
		db 0E2h
		db 0E7h
		db 0E1h
		db 0
		db 0E8h
		db 0
		db 0
		db 0E2h
		db 0
		db 8
		db 2
		db 0F1h
		db 0E7h
		db 0E8h
		db 0E7h
		db 0E8h
		db 0E7h
		db 0E8h
		db 0E8h
		db 0E7h
		db 0E8h
		db 0F1h
		db 0E8h
		db 0F1h
		db 0E7h
		db 0E8h
		db 0E7h
		db 8
		db 3
		db 0E7h
		db 0F1h
		db 0E7h
		db 0F1h
		db 0E8h
		db 0E7h
		db 0F1h
		db 0E8h
		db 0E8h
		db 0E1h
		db 0
		db 0E2h
		db 0E1h
		db 0
		db 0
		db 0E2h
		db 0E1h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 5
		db 3
		db 0E7h
		db 0F1h
		db 0E8h
		db 0E7h
		db 0E1h
		db 0F1h
		db 0E7h
		db 0F1h
		db 0E1h
		db 0
		db 0E8h
		db 0F1h
		db 0E1h
		db 0
		db 0
		db 5
		db 3
		db 0E2h
		db 0F1h
		db 0E8h
		db 0E7h
		db 0E8h
		db 0
		db 0E2h
		db 0F1h
		db 0E8h
		db 0E8h
		db 0
		db 0
		db 0E2h
		db 0E8h
		db 0E7h
		db 5
		db 5
		db 0E8h
		db 0F1h
		db 0E8h
		db 0E7h
		db 0E8h
		db 0F1h
		db 0E7h
		db 0E8h
		db 0E8h
		db 0F1h
		db 0E7h
		db 0E8h
		db 0E7h
		db 0E8h
		db 0E7h
		db 0E8h
		db 0E7h
		db 0F1h
		db 0E7h
		db 0F1h
		db 0E7h
		db 0E8h
		db 0E7h
		db 0E7h
		db 0E8h
		db 3
		db 3
		db 0E0h
		db 0
		db 0
		db 0F1h
		db 0E0h
		db 0
		db 0E7h
		db 0E8h
		db 0E0h
		db 3
		db 3
		db 0
		db 0
		db 0DFh
		db 0
		db 0DFh
		db 0F1h
		db 0DFh
		db 0E8h
		db 0E7h
		db 5
		db 4
		db 0
		db 0
		db 0DFh
		db 0E0h
		db 0
		db 0
		db 0DFh
		db 0E8h
		db 0E8h
		db 0
		db 0
		db 0E8h
		db 0E7h
		db 0E8h
		db 0E0h
		db 0DFh
		db 0E7h
		db 0F1h
		db 0E8h
		db 0E8h
		db 2
		db 2
		db 8Eh
		db 8Fh
		db 90h
		db 91h
		db 3
		db 3
		db 0DDh
		db 8Ah
		db 8Ah
		db 0E7h
		db 0DDh
		db 8Ah
		db 0E8h
		db 0F1h
		db 0DDh
		db 3
		db 3
		db 8Ah
		db 8Ah
		db 0DCh
		db 8Ah
		db 0DCh
		db 0E7h
		db 0DCh
		db 0F1h
		db 0E8h
		db 2
		db 2
		db 0DFh
		db 0E0h
		db 0E8h
		db 0E0h
		db 4
		db 7
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 1Fh
		db 3
		db 3
		db 0E7h
		db 0E8h
		db 0F1h
		db 0F1h
		db 0E7h
		db 0E8h
		db 0E7h
		db 0E8h
		db 0E7h
		db 8
		db 2
		db 0F1h
		db 0E7h
		db 0E8h
		db 0E7h
		db 0E8h
		db 0E7h
		db 0E8h
		db 0E8h
		db 0E2h
		db 0E1h
		db 0E2h
		db 0E1h
		db 0E2h
		db 0E1h
		db 0E2h
		db 0E1h
		db 1
		db 8
		db 68h
		db 68h
		db 68h
		db 68h
		db 68h
		db 68h
		db 68h
		db 68h
		db 3
		db 8
		db 6Ah
		db 68h
		db 69h
		db 0
		db 68h
		db 0
		db 0
		db 68h
		db 0
		db 0
		db 68h
		db 0
		db 0
		db 68h
		db 0
		db 0
		db 68h
		db 0
		db 0
		db 68h
		db 0
		db 0
		db 68h
		db 0
		db 8
		db 1
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 8
		db 2
		db 0DBh
		db 0DAh
		db 0DBh
		db 0DAh
		db 0DBh
		db 0DAh
		db 0DBh
		db 0DAh
		db 0E7h
		db 0E8h
		db 0F1h
		db 0E7h
		db 0E8h
		db 0E7h
		db 0F1h
		db 0E8h
		db 8
		db 2
		db 21h
		db 3Ah
		db 3Bh
		db 3Ah
		db 3Bh
		db 3Ah
		db 5
		db 22h
		db 0
		db 21h
		db 5
		db 21h
		db 5
		db 22h
		db 0
		db 0
		db 1
		db 1
		db 3Bh
		db 1
		db 1
		db 0BFh
		db 8
		db 3
		db 0D8h
		db 0D7h
		db 0D8h
		db 0D7h
		db 0D8h
		db 0D7h
		db 0D8h
		db 0D7h
		db 0E8h
		db 0F1h
		db 0E7h
		db 0E8h
		db 0E8h
		db 0E7h
		db 0E8h
		db 0E7h
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 5
		db 5
		db 0
		db 0
		db 0
		db 0
		db 24h
		db 0
		db 0
		db 0
		db 24h
		db 25h
		db 0
		db 0
		db 24h
		db 25h
		db 25h
		db 0
		db 24h
		db 25h
		db 25h
		db 25h
		db 24h
		db 25h
		db 25h
		db 25h
		db 25h
		db 4
		db 4
		db 2Ah
		db 0
		db 0
		db 0
		db 25h
		db 2Ah
		db 0
		db 0
		db 25h
		db 25h
		db 2Ah
		db 0
		db 25h
		db 25h
		db 25h
		db 2Ah
		db 2
		db 2
		db 2Bh
		db 23h
		db 6Bh
		db 6Ch
		db 2
		db 3
		db 6Dh
		db 6Eh
		db 6Fh
		db 70h
		db 71h
		db 0
		db 8
		db 7
		db 0
		db 0
		db 73h
		db 72h
		db 74h
		db 75h
		db 0
		db 0
		db 73h
		db 72h
		db 59h
		db 59h
		db 59h
		db 59h
		db 74h
		db 75h
		db 0
		db 0
		db 54h
		db 54h
		db 54h
		db 54h
		db 0
		db 0
		db 0
		db 55h
		db 54h
		db 54h
		db 54h
		db 54h
		db 58h
		db 0
		db 0
		db 54h
		db 54h
		db 5Ah
		db 5Ah
		db 54h
		db 54h
		db 0
		db 0
		db 56h
		db 54h
		db 5Ah
		db 5Ah
		db 54h
		db 57h
		db 0
		db 0D6h
		db 0D6h
		db 0D6h
		db 0D6h
		db 0D6h
		db 0D6h
		db 0D6h
		db 0D6h
		db 3
		db 2
		db 0EEh
		db 0A8h
		db 0
		db 0EFh
		db 0EFh
		db 0A8h
		db 6
		db 3
		db 51h
		db 51h
		db 0
		db 0
		db 52h
		db 52h
		db 51h
		db 53h
		db 53h
		db 53h
		db 53h
		db 52h
		db 51h
		db 51h
		db 0
		db 0
		db 52h
		db 52h
		db 4
		db 3
		db 0E4h
		db 0E5h
		db 0E5h
		db 0E6h
		db 0C4h
		db 0C4h
		db 0C4h
		db 0C2h
		db 0C8h
		db 0C7h
		db 0C6h
		db 0C5h
		db 1
		db 1
		db 50h
		db 2
		db 1
		db 4Eh
		db 4Fh
		db 6
		db 6
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 2
		db 8
		db 4Ch
		db 4Dh
		db 4Ch
		db 4Dh
		db 4Ch
		db 4Dh
		db 4Ch
		db 4Dh
		db 4Ch
		db 4Dh
		db 4Ch
		db 4Dh
		db 4Ch
		db 4Dh
		db 4Ch
		db 4Dh
		db 4
		db 1
		db 49h
		db 4Ah
		db 4Ah
		db 4Bh
		db 5
		db 2
		db 0
		db 0
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 9
		db 2
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0Eh
		db 2
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 6
		db 5
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0
		db 0D5h
		db 0D5h
		db 0D5h
		db 0
		db 0
		db 0
		db 0D4h
		db 0D4h
		db 0
		db 0
		db 0
		db 0
		db 0D5h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 6
		db 5
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0D5h
		db 0
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0
		db 0
		db 0
		db 0D5h
		db 0D5h
		db 0D5h
		db 0
		db 0
		db 0
		db 0
		db 0D4h
		db 0D4h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0D5h
		db 0Ch
		db 1
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 0D4h
		db 8
		db 2
		db 0CFh
		db 0CEh
		db 0CFh
		db 0CEh
		db 0CFh
		db 0CEh
		db 0CFh
		db 0CEh
		db 0CEh
		db 0CFh
		db 0CEh
		db 0CFh
		db 0CEh
		db 0CFh
		db 0CEh
		db 0CFh
		db 8
		db 1
		db 0D0h
		db 0D0h
		db 0D0h
		db 0D0h
		db 0D0h
		db 0D0h
		db 0D0h
		db 0D0h
		db 3
		db 3
		db 0
		db 8Dh
		db 0
		db 0C3h
		db 8Ch
		db 8Bh
		db 46h
		db 47h
		db 48h
		db 4
		db 1
		db 0C0h
		db 0C1h
		db 0C0h
		db 0C1h
		db 9
		db 2
		db 92h
		db 0
		db 0
		db 0
		db 92h
		db 0
		db 0
		db 0
		db 92h
		db 93h
		db 0
		db 0
		db 0
		db 93h
		db 0
		db 0
		db 0
		db 93h
		db 2
		db 6
		db 0FCh
		db 0FDh
		db 0FEh
		db 0FBh
		db 0FCh
		db 0FDh
		db 0FEh
		db 0FBh
		db 0FCh
		db 0FDh
		db 0FEh
		db 0FBh
		db 4
		db 2
		db 0D3h
		db 0D3h
		db 0
		db 0
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 6
		db 1
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 0D3h
		db 5
		db 6
		db 0CFh
		db 0CEh
		db 94h
		db 97h
		db 0
		db 0CEh
		db 0CFh
		db 0CEh
		db 94h
		db 97h
		db 0CFh
		db 0CEh
		db 94h
		db 97h
		db 0
		db 0CEh
		db 0CFh
		db 0CEh
		db 94h
		db 97h
		db 0CFh
		db 0CEh
		db 94h
		db 97h
		db 0
		db 0CEh
		db 0CFh
		db 0CEh
		db 94h
		db 97h
		db 5
		db 6
		db 0
		db 96h
		db 95h
		db 0CFh
		db 0CEh
		db 96h
		db 95h
		db 0CFh
		db 0CEh
		db 0CFh
		db 0
		db 96h
		db 95h
		db 0CFh
		db 0CEh
		db 96h
		db 95h
		db 0CFh
		db 0CEh
		db 0CFh
		db 0
		db 96h
		db 95h
		db 0CFh
		db 0CEh
		db 96h
		db 95h
		db 0CFh
		db 0CEh
		db 0CFh
		db 8
		db 1
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 9
		db 2
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 0D2h
		db 0D1h
		db 8
		db 2
		db 8Dh
		db 8Bh
		db 8Dh
		db 0
		db 8Dh
		db 8Bh
		db 8Dh
		db 0
		db 8Ch
		db 0C3h
		db 8Ch
		db 8Bh
		db 8Ch
		db 0C3h
		db 8Ch
		db 8Bh
		db 8
		db 3
		db 35h
		db 35h
		db 30h
		db 35h
		db 30h
		db 35h
		db 30h
		db 35h
		db 0A6h
		db 0A6h
		db 0A6h
		db 0A6h
		db 0A6h
		db 0A6h
		db 0A6h
		db 0A6h
		db 0A2h
		db 0A2h
		db 0A2h
		db 0A2h
		db 0A2h
		db 0A2h
		db 0A2h
		db 0A2h
		db 4
		db 3
		db 39h
		db 41h
		db 42h
		db 30h
		db 0A6h
		db 0A6h
		db 0A6h
		db 0A6h
		db 0A7h
		db 0A2h
		db 0A2h
		db 0A2h
		db 6
		db 6
		db 30h
		db 35h
		db 30h
		db 35h
		db 30h
		db 35h
		db 30h
		db 30h
		db 35h
		db 30h
		db 35h
		db 30h
		db 35h
		db 30h
		db 30h
		db 35h
		db 30h
		db 35h
		db 30h
		db 35h
		db 30h
		db 35h
		db 35h
		db 30h
		db 35h
		db 30h
		db 35h
		db 30h
		db 35h
		db 30h
		db 35h
		db 35h
		db 30h
		db 35h
		db 30h
		db 35h
		db 4
		db 4
		db 0
		db 0
		db 0
		db 37h
		db 0
		db 0
		db 37h
		db 30h
		db 0
		db 37h
		db 30h
		db 35h
		db 37h
		db 35h
		db 30h
		db 35h
		db 4
		db 4
		db 36h
		db 0
		db 0
		db 0
		db 30h
		db 36h
		db 0
		db 0
		db 35h
		db 30h
		db 36h
		db 0
		db 30h
		db 35h
		db 30h
		db 36h
		db 3
		db 3
		db 35h
		db 30h
		db 35h
		db 30h
		db 35h
		db 30h
		db 35h
		db 30h
		db 30h
		db 4
		db 4
		db 35h
		db 30h
		db 35h
		db 38h
		db 30h
		db 35h
		db 38h
		db 0
		db 35h
		db 38h
		db 0
		db 0
		db 38h
		db 0
		db 0
		db 0
		db 4
		db 4
		db 34h
		db 30h
		db 35h
		db 30h
		db 0
		db 34h
		db 30h
		db 35h
		db 0
		db 0
		db 34h
		db 30h
		db 0
		db 0
		db 0
		db 34h
		db 1
		db 2
		db 36h
		db 30h
		db 4
		db 3
		db 30h
		db 31h
		db 32h
		db 33h
		db 0A6h
		db 0A6h
		db 0A6h
		db 0A6h
		db 0A2h
		db 0A2h
		db 0A2h
		db 0A5h
		db 8
		db 3
		db 76h
		db 76h
		db 76h
		db 76h
		db 76h
		db 76h
		db 76h
		db 76h
		db 0A3h
		db 0A3h
		db 0A3h
		db 0A3h
		db 0A3h
		db 0A3h
		db 0A3h
		db 0A3h
		db 0A4h
		db 0A4h
		db 0A4h
		db 0A4h
		db 0A4h
		db 0A4h
		db 0A4h
		db 0A4h
		db 1
		db 2
		db 37h
		db 30h
		db 1
		db 2
		db 77h
		db 77h
		db 1
		db 2
		db 78h
		db 78h
		db 4
		db 6
		db 79h
		db 79h
		db 79h
		db 79h
		db 7Ah
		db 7Bh
		db 7Bh
		db 7Ah
		db 79h
		db 79h
		db 79h
		db 79h
		db 7Ah
		db 7Bh
		db 7Bh
		db 7Ah
		db 79h
		db 79h
		db 79h
		db 79h
		db 7Ah
		db 7Bh
		db 7Bh
		db 7Ah
		db 8
		db 1
		db 0BFh
		db 0BFh
		db 0BFh
		db 0BFh
		db 0BFh
		db 0BFh
		db 0BFh
		db 0BFh
		db 7
		db 5
		db 0F1h
		db 0E7h
		db 0BDh
		db 0BEh
		db 0BDh
		db 0E8h
		db 0BDh
		db 0E8h
		db 0E7h
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0E7h
		db 0F1h
		db 0BDh
		db 0BEh
		db 0BDh
		db 0F1h
		db 0BDh
		db 0E8h
		db 0E7h
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0F1h
		db 0E8h
		db 0F1h
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 7
		db 5
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0E8h
		db 0F1h
		db 0BEh
		db 0BDh
		db 0BEh
		db 0E8h
		db 0BEh
		db 0E7h
		db 0F1h
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0F1h
		db 0E7h
		db 0E8h
		db 0BEh
		db 0E7h
		db 0BEh
		db 0BDh
		db 0BEh
		db 0F1h
		db 0E7h
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0E7h
		db 0E8h
		db 9
		db 3
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 7Fh
		db 0E2h
		db 7Fh
		db 0E2h
		db 7Fh
		db 7Fh
		db 0E2h
		db 7Fh
		db 7Fh
		db 8
		db 2
		db 0F5h
		db 0F6h
		db 0F6h
		db 0F6h
		db 0F6h
		db 0F6h
		db 0F6h
		db 0F7h
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 7
		db 2
		db 0F9h
		db 0F9h
		db 0F9h
		db 0F9h
		db 0F9h
		db 0F9h
		db 0F9h
		db 0FAh
		db 0FAh
		db 0FAh
		db 0FAh
		db 0FAh
		db 0FAh
		db 0FAh
		db 3
		db 4
		db 9Dh
		db 0
		db 0
		db 9Eh
		db 80h
		db 0
		db 9Fh
		db 0A0h
		db 0A1h
		db 0BEh
		db 0BDh
		db 0BEh
		db 3
		db 4
		db 0
		db 0
		db 98h
		db 0
		db 81h
		db 99h
		db 9Ch
		db 9Bh
		db 9Ah
		db 0BDh
		db 0BEh
		db 0BDh
		db 8
		db 1
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 8
		db 5
		db 0F1h
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0F1h
		db 0BDh
		db 0BEh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BDh
		db 0E8h
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0BDh
		db 0BEh
		db 0Ah
		db 1
		db 7Fh
		db 0E2h
		db 7Fh
		db 7Fh
		db 7Fh
		db 7Fh
		db 0E2h
		db 7Fh
		db 0E2h
		db 7Fh
		db 4
		db 2
		db 8Ah
		db 8Ah
		db 8Ah
		db 8Ah
		db 8Ah
		db 8Ah
		db 8Ah
		db 8Ah
		db 7
		db 1
		db 82h
		db 0
		db 0
		db 83h
		db 0
		db 0
		db 82h
		db 10h
		db 2
		db 0AAh
		db 0AAh
		db 0ABh
		db 0AAh
		db 0ABh
		db 0ABh
		db 0ABh
		db 0ABh
		db 0AAh
		db 0AAh
		db 0ABh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0ABh
		db 0AAh
		db 0E7h
		db 0F1h
		db 0F1h
		db 0E8h
		db 0E7h
		db 0F1h
		db 0E8h
		db 0E8h
		db 0E7h
		db 0F1h
		db 0F1h
		db 0E7h
		db 0E8h
		db 0E7h
		db 0E8h
		db 0F1h
		db 8
		db 2
		db 0CBh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0CAh
		db 0CBh
		db 0CAh
		db 0CBh
		db 0
		db 0
		db 0
		db 0
		db 0CBh
		db 0CAh
		db 2
		db 5
		db 0F9h
		db 0F9h
		db 0FAh
		db 0FAh
		db 0FAh
		db 0FAh
		db 0FAh
		db 0FAh
		db 0FAh
		db 0FAh
		db 2
		db 1
		db 0EAh
		db 0EBh
		db 5
		db 1
		db 86h
		db 88h
		db 88h
		db 88h
		db 87h
		db 6
		db 1
		db 0BAh
		db 0B9h
		db 0B9h
		db 0B9h
		db 0B9h
		db 0B9h
		db 8
		db 1
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 8
		db 1
		db 0B9h
		db 0B9h
		db 0B9h
		db 0B9h
		db 0B9h
		db 0B9h
		db 0B9h
		db 0B9h
		db 6
		db 4
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 6
		db 5
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0
		db 0BCh
		db 0BBh
		db 0BCh
		db 0
		db 0
		db 0
		db 0BCh
		db 0BBh
		db 0
		db 0
		db 0
		db 0
		db 0BCh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 6
		db 5
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0
		db 0BBh
		db 0BCh
		db 0BBh
		db 0BCh
		db 0BBh
		db 0
		db 0
		db 0
		db 0BBh
		db 0BCh
		db 0BBh
		db 0
		db 0
		db 0
		db 0
		db 0BCh
		db 0BBh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0BBh
		db 2
		db 3
		db 0FEh
		db 0FBh
		db 0FCh
		db 0FDh
		db 0FCh
		db 0FDh
		db 4
		db 2
		db 0EDh
		db 0EDh
		db 0EDh
		db 0EDh
		db 0EDh
		db 0EDh
		db 0EDh
		db 0EDh
		db 7
		db 1
		db 0B9h
		db 0B9h
		db 0B9h
		db 0B9h
		db 0B9h
		db 0B9h
		db 0ECh
		db 4
		db 2
		db 0
		db 0
		db 73h
		db 72h
		db 73h
		db 72h
		db 59h
		db 59h
		db 4
		db 2
		db 74h
		db 75h
		db 0
		db 0
		db 59h
		db 59h
		db 74h
		db 75h
		db 8
		db 2
		db 59h
		db 59h
		db 59h
		db 59h
		db 59h
		db 59h
		db 59h
		db 59h
		db 59h
		db 59h
		db 59h
		db 59h
		db 59h
		db 59h
		db 59h
		db 59h
		db 1
		db 1
		db 0FEh
		db 1
		db 1
		db 0FCh
		db 8
		db 1
		db 0D6h
		db 0D6h
		db 0D6h
		db 0D6h
		db 0D6h
		db 0D6h
		db 0D6h
		db 0D6h
		db 0Ah
		db 1
		db 0DEh
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 0D9h
		db 84h
		db 2
		db 4
		db 0EEh
		db 0BFh
		db 0EEh
		db 0EFh
		db 0EFh
		db 3
		db 3
		db 0
		db 2
		db 1
		db 0EEh
		db 0EFh
		db 1
		db 5
		db 0EEh
		db 0EFh
		db 0EEh
		db 0EFh
		db 3
		db 3
		db 2
		db 0CFh
		db 0CEh
		db 0CFh
		db 0CEh
		db 0CFh
		db 0CEh
		db 3
		db 2
		db 0D2h,0D1h,0D2h
		db 0D1h,0D2h,0D1h
		db 26h
		db 4
		db    9,   0,	0,   9,	  0,   9,   0,	 9,   0,   9,	0, 7Eh,	  9,   9,   0, 7Eh,   9,   9,	0, 7Eh,	  9,   9,   0,	 9,   9,   9,	0, 7Eh,	  9,   9,   0, 7Eh,   9,   9,	0, 7Eh,	  9,   9
		db    9,   0,	0,   9,	  0,   9,   0,	 9,   0,   9,	0,   9,	  0,   9,   0,	 9,   0,   0,	0, 7Dh,0C9h,   0,   0,	 0,   9,   0,	0,   9,	  0,   9,   0,	 9,   0,   9,	0,   9,	  0,   0
		db    9,   0,	0,   9,	  0,   9,   0,	 9,   0,   9,	0,   9,	  0,   9,   0,	 9,   0,   9,	0,   0,	7Dh,0C9h,   0,	 0,   9,   0,	0,   9,	  0,   9,   0,	 9,   0,   9,	0,   9,	7Ch,   0
		db    9,   9,	0,   9,	  0, 7Dh,   9, 7Ch,   0,   9,	0,   9,	  0,   9,   0,	 9,   9, 7Ch,	0,   9,	  9, 7Ch,   0,	 0,   9,   0,	0,   9,	  9, 7Ch,   0,	 9,   0,   9,	0,   9,	  9, 7Ch
		db 9
SpriteIndex	dw offset PlayerAnimation ; DATA XREF: UpdateFrameDatao
		dw offset BoomerangAnimation
		dw offset KnifeAnimation
		dw offset BombAnimation
		dw offset RodAnimation
		dw offset ScoreAnimation
		dw offset ExplodeAnimation
		dw offset BirdAnimation
		dw offset BubbleAnimation
		dw offset PlantAnimation
		dw offset SwitchAnimation
		dw offset ScaryEyesAnimation
		dw offset MonkeyAnimation
		dw offset MinerAnimation
		dw offset DartsmanAnimation
		dw offset SpearmanAnimation
		dw offset ArcherAnimation
		dw offset StinkyIdolAnimation
		dw offset CoconutAnimation
		dw offset PickAnimation
		dw offset DartAnimation
		dw offset SpearAnimation
		dw offset ArrowAnimation
		dw offset StinkyGasAnimation
		dw offset WagonAnimation
		dw offset MineGasAnimation
		dw offset ScorpionAnimation
		dw offset GeckonAnimation
		dw offset TheBatAnimation
		dw offset BatonThrowerAnimation
		dw offset MerimaidAnimation
		dw offset BatonAnimation
		dw offset Heart
		dw offset WhirlwindAnimation
		dw offset FallingArrow
		dw offset DancingStatue
		dw offset DancingStatue
		dw offset DrLivingstonAnimation
		dw offset FlyingDevilAnimation
		dw offset FireballAnimation
		dw offset GoldenPieces
		dw offset FoodPictures
		dw offset WaterPictures
		dw offset SnakeAnimation
		dw offset SpiderAnimation
		dw offset RiflemanAnimation
		dw offset BulletAnimation
		dw offset Fish1Animation
		dw offset Fish2Animation
		dw offset CrocodileAnimation
		dw offset DrummerAnimation
		dw offset GoldenPiece
		dw offset OperasoftLogo
		dw offset SupongoWord
		dw offset PlayerPhrases
		dw offset DrLivingstonPhrases
PlayerAnimation	dw offset Player_Sprite0 ; DATA	XREF: CODE:SpriteIndexo
					; Player
		dw offset Player_Sprite1
		dw offset Player_Sprite0
		dw offset Player_Sprite2
		dw offset Player_Sprite3
		dw offset Player_Sprite4
		dw offset Player_Sprite5
		dw offset Player_Sprite6
		dw offset Player_Sprite7
		dw offset Player_Sprite8
		dw offset Player_Sprite9
		dw offset Player_Sprite0A
		dw offset Player_Sprite0B
		dw offset Player_Sprite0C
		dw offset Player_Sprite0D
		dw offset Player_Sprite1E
		dw offset Player_Sprite1F
		dw offset Player_Sprite10
		dw offset Player_Sprite11
		dw offset Player_Sprite10
		dw offset Player_Sprite12
		dw offset Player_Sprite13
		dw offset Player_Sprite14
		dw offset Player_Sprite15
		dw offset Player_Sprite16
		dw offset Player_Sprite17
		dw offset Player_Sprite18
		dw offset Player_Sprite19
		dw offset Player_Sprite1A
		dw offset Player_Sprite1B
		dw offset Player_Sprite1C
		dw offset Player_Sprite1D
		dw offset Player_Sprite1E
		dw offset Player_Sprite1F
		dw offset Player_Sprite20_Empty_
BoomerangAnimation dw offset Sprite11	; DATA XREF: CODE:7A47o
		dw offset Sprite12
		dw offset Sprite13
		dw offset Sprite14
KnifeAnimation	dw offset Sprite15	; DATA XREF: CODE:7A49o
		dw offset byte_C281
BombAnimation	dw offset Sprite16	; DATA XREF: CODE:7A4Bo
RodAnimation	dw offset Sprite17	; DATA XREF: CODE:7A4Do
		dw offset Sprite18
		dw offset Sprite19
		dw offset Sprite1A
		dw offset Sprite1B
		dw offset Sprite1C
		dw offset Sprite1D
		dw offset Sprite17
		dw offset byte_D607
		dw offset byte_D669
		dw offset byte_D70B
		dw offset byte_D7D5
		dw offset byte_D897
		dw offset Sprite1D
ScoreAnimation	dw offset Sprite1E	; DATA XREF: CODE:7A4Fo
		dw offset byte_9B23
		dw offset byte_9B49
ExplodeAnimation dw offset byte_9B6F	; DATA XREF: CODE:7A51o
		dw offset byte_9BEF
		dw offset byte_9C6F
		dw offset byte_9BEF
BirdAnimation	dw offset byte_C15B	; DATA XREF: CODE:7A53o
		dw offset byte_C1BD
		dw offset byte_C15B
		dw offset byte_C21F
		dw offset byte_9CEF
		dw offset byte_9D51
		dw offset byte_9CEF
		dw offset byte_9DB3
BubbleAnimation	dw offset byte_9E15	; DATA XREF: CODE:7A55o
		dw offset byte_9E41
		dw offset byte_9E6D
		dw offset byte_9E41
PlantAnimation	dw offset byte_DA95	; DATA XREF: CODE:7A57o
		dw offset byte_DB21
		dw offset byte_9FB1
		dw offset byte_9E99
		dw offset byte_9F25
		dw offset byte_9FB1
SwitchAnimation	dw offset byte_A03D	; DATA XREF: CODE:7A59o
		dw offset byte_A077
		dw offset byte_A03D
		dw offset byte_A077
ScaryEyesAnimation dw offset byte_A0B1	; DATA XREF: CODE:7A5Bo
		dw offset byte_A0D1
		dw offset byte_A0F1
		dw offset byte_A111
		dw offset byte_A0F1
		dw offset byte_A0D1
		dw offset byte_A0B1
		dw offset Player_Sprite20_Empty_
MonkeyAnimation	dw offset byte_D213	; DATA XREF: CODE:7A5Do
		dw offset byte_D28D
		dw offset byte_A131
		dw offset byte_A1AB
MinerAnimation	dw offset byte_D107	; DATA XREF: CODE:7A5Fo
		dw offset byte_D18D
		dw offset byte_A225
		dw offset byte_A2AB
DartsmanAnimation dw offset byte_D3FB	; DATA XREF: CODE:7A61o
		dw offset byte_D47B
		dw offset byte_A331
		dw offset byte_A3B1
SpearmanAnimation dw offset byte_D4FB	; DATA XREF: CODE:7A63o
		dw offset byte_D581
		dw offset byte_A431
		dw offset byte_A4B7
ArcherAnimation	dw offset byte_D307	; DATA XREF: CODE:7A65o
		dw offset byte_D381
		dw offset byte_A53D
		dw offset byte_A5B7
StinkyIdolAnimation dw offset byte_D007	; DATA XREF: CODE:7A67o
		dw offset byte_D087
		dw offset byte_A631
		dw offset byte_A6B1
CoconutAnimation dw offset byte_A731	; DATA XREF: CODE:7A69o
PickAnimation	dw offset byte_A741	; DATA XREF: CODE:7A6Bo
		dw offset byte_A753
		dw offset byte_A765
		dw offset byte_A777
		dw offset byte_A741
		dw offset byte_A753
		dw offset byte_A765
		dw offset byte_A777
DartAnimation	dw offset byte_C543	; DATA XREF: CODE:7A6Do
		dw offset byte_A789
SpearAnimation	dw offset byte_CFF3	; DATA XREF: CODE:7A6Fo
		dw offset byte_A795
ArrowAnimation	dw offset byte_CFD9	; DATA XREF: CODE:7A71o
		dw offset byte_A7A9
StinkyGasAnimation dw offset byte_A7C3	; DATA XREF: CODE:7A73o
		dw offset byte_A7F5
		dw offset byte_A827
		dw offset byte_A7F5
WagonAnimation	dw offset byte_A859	; DATA XREF: CODE:7A75o
		dw offset byte_A8AF
MineGasAnimation dw offset byte_A905	; DATA XREF: CODE:7A77o
		dw offset byte_A95B
		dw offset byte_A9B1
		dw offset byte_A95B
ScorpionAnimation dw offset byte_C785	; DATA XREF: CODE:7A79o
		dw offset byte_C7DB
		dw offset byte_AA07
		dw offset byte_AA5D
GeckonAnimation	dw offset byte_DCB9	; DATA XREF: CODE:7A7Bo
		dw offset byte_DCE5
		dw offset byte_AAB3
		dw offset byte_AADF
FoodPictures	dw offset byte_AB0B	; DATA XREF: CODE:7A97o
		dw offset byte_AB45
WaterPictures	dw offset byte_ABBD	; DATA XREF: CODE:7A99o
		dw offset byte_AB7B
GoldenPieces	dw offset byte_ABF7	; DATA XREF: CODE:7A95o
		dw offset byte_ABF7
		dw offset byte_ABF7
		dw offset byte_AC15
TheBatAnimation	dw offset byte_AC33	; DATA XREF: CODE:7A7Do
		dw offset byte_AC89
		dw offset byte_ACDF
		dw offset byte_AC89
Fish1Animation	dw offset byte_D9D1	; DATA XREF: CODE:7AA3o
		dw offset byte_DA33
		dw offset byte_AD35
		dw offset byte_AD97
Fish2Animation	dw offset byte_D93D	; DATA XREF: CODE:7AA5o
		dw offset byte_D987
		dw offset byte_ADF9
		dw offset byte_AE43
DrummerAnimation dw offset byte_AE8D	; DATA XREF: CODE:7AA9o
		dw offset byte_AF13
WhirlwindAnimation dw offset byte_AF99	; DATA XREF: CODE:7A87o
		dw offset byte_B019
MerimaidAnimation dw offset byte_B099	; DATA XREF: CODE:7A81o
		dw offset byte_B0F3
		dw offset byte_B099
		dw offset byte_B0F3
BatonThrowerAnimation dw offset	byte_DBAD ; DATA XREF: CODE:7A7Fo
		dw offset byte_DC33
		dw offset byte_B14D
		dw offset byte_B1D3
Heart		dw offset byte_B259	; DATA XREF: CODE:7A85o
BatonAnimation	dw offset byte_B26D	; DATA XREF: CODE:7A83o
		dw offset byte_B27F
		dw offset byte_B291
		dw offset byte_B2A3
		dw offset byte_B26D
		dw offset byte_B27F
		dw offset byte_B291
		dw offset byte_B2A3
FallingArrow	dw offset byte_B2B5	; DATA XREF: CODE:7A89o
		dw offset byte_B2B5
DancingStatue	dw offset byte_B8DF	; DATA XREF: CODE:7A8Bo CODE:7A8Do
		dw offset byte_C54F
DrLivingstonAnimation dw offset	byte_B2D7 ; DATA XREF: CODE:7A8Fo
		dw offset byte_B2D7
		dw offset byte_B34B
		dw offset byte_B34B
SnakeAnimation	dw offset byte_DD11	; DATA XREF: CODE:7A9Bo
		dw offset byte_DD55
		dw offset byte_B3BF
		dw offset byte_B403
FlyingDevilAnimation dw	offset FlyingDevil_Sprite0 ; DATA XREF:	CODE:7A91o
		dw offset FlyingDevil_Sprite1
		dw offset FlyingDevil_Sprite0
		dw offset FlyingDevil_Sprite1
FireballAnimation dw offset byte_B547	; DATA XREF: CODE:7A93o
		dw offset byte_B56D
SpiderAnimation	dw offset byte_B593	; DATA XREF: CODE:7A9Do
		dw offset byte_B5D5
RiflemanAnimation dw offset byte_C293	; DATA XREF: CODE:7A9Fo
		dw offset byte_C31F
		dw offset byte_C3AB
		dw offset byte_C31F
		dw offset byte_B617
		dw offset byte_B6A3
		dw offset byte_B72F
		dw offset byte_B6A3
BulletAnimation	dw offset byte_B8C7	; DATA XREF: CODE:7AA1o
		dw offset byte_B8CF
		dw offset byte_B8C7
		dw offset byte_B8D7
CrocodileAnimation dw offset byte_C437	; DATA XREF: CODE:7AA7o
		dw offset byte_C4BD
		dw offset byte_B7BB
		dw offset byte_B841
GoldenPiece	dw offset byte_ABF7	; DATA XREF: CODE:7AABo
OperasoftLogo	dw offset byte_BB15	; DATA XREF: CODE:7AADo
SupongoWord	dw offset SupongoStandbyLogo ; DATA XREF: CODE:7AAFo
PlayerPhrases	dw offset LivingstoneSupongo ; DATA XREF: CODE:7AB1o
		dw offset Continuara
DrLivingstonPhrases dw offset PhraseNo	; DATA XREF: CODE:7AB3o
		dw offset PhraseOK
BkgList		dw	1,   4Eh,  0AFh,  110h,	 1A1h,	21Ah,  297h,  324h; 0
					; DATA XREF: DecodeLocationBackground+23o
		dw   3B1h,  446h,  4DBh,  56Ch,	 5F9h,	682h,  6EBh,  75Ch; 8
		dw   7A9h,  832h,  8AFh,  8FCh,	 931h,	98Eh,  9DFh, 0A20h; 16
		dw  0A75h, 0ABAh, 0AFBh, 0B34h,	0B85h, 0BCAh, 0C3Bh, 0CA8h; 24
		dw  0D15h, 0D8Ah, 0DF7h, 0E54h,	0EDDh, 0F36h, 0FC7h, 1050h; 32
		dw  10E5h, 1162h, 11EFh, 123Ch,	1295h, 12DEh, 1323h, 1364h; 40
		dw  13B5h, 1416h, 146Fh, 14D4h,	154Dh, 15BAh, 1677h, 16D4h; 48
		dw  1755h, 179Eh, 184Fh, 18C8h,	1905h, 1996h; 56
		dw 19EBh
Key1		db 2			; DATA XREF: PollKeyboard:loc_3444r
					; INT09h_Vector+1Co
Key2		db 3			; DATA XREF: PollKeyboard:loc_3451r
Key3		db 4			; DATA XREF: PollKeyboard:loc_345Er
Key4		db 5			; DATA XREF: PollKeyboard:loc_346Br
KeyO		db 18h			; DATA XREF: PollKeyboard:loc_33F0r
					; INT09h_Vector:loc_3DBDr
KeyP		db 19h			; DATA XREF: PollKeyboard:loc_3400r
					; INT09h_Vector+55r
KeyQ		db 10h			; DATA XREF: PollKeyboard+5r
KeyA		db 1Eh			; DATA XREF: PollKeyboard:loc_33E0r
					; INT09h_Vector+6Ar
KeySpace	db 39h			; DATA XREF: PollKeyboard:loc_3410r
					; IfSpacePressedr
KeyScrollLock	db 46h			; DATA XREF: HandleDemoStep+Br
					; PollKeyboard:loc_3424r
KeyEnter	db 1Ch			; DATA XREF: CheckForEnterKeyr
KeyE		db 12h			; DATA XREF: INT09h_Vector+5Cr
KeyR		db 13h			; DATA XREF: INT09h_Vector+63r
KeyS		db 1Fh			; DATA XREF: INT09h_Vector:loc_3DECr
KeyD		db 20h			; DATA XREF: start+7Dr
KeyAlt		db 38h			; DATA XREF: INT09h_Vector+34r
KeyCtrl		db 1Dh			; DATA XREF: INT09h_Vector+3Br
KeyDel		db 53h			; DATA XREF: INT09h_Vector+42r
KeyF1		db 3Bh			; DATA XREF: PollKeyboard:loc_3430r
KeyLeft		db 7Ah			; DATA XREF: PollKeyboard+28r
KeyRight	db 79h			; DATA XREF: PollKeyboard+38r
KeyUp		db 7Ch			; DATA XREF: PollKeyboard+8r
KeyDown		db 7Bh			; DATA XREF: PollKeyboard+18r
KeyAct2		db 77h			; DATA XREF: PollKeyboard+48r
KeyAct3		db 78h			; DATA XREF: PollKeyboard+4Cr
		db    0
Music_Phrase0	Snd_Command_2 <SND_PLAY, 2420, 12> ; DATA XREF:	CODE:_Musico
					; CODE:7EA9o
		Snd_Command_2 <SND_PLAY, 2032, 6>
		Snd_Command_2 <SND_PLAY, 2420, 12>
		Snd_Command_2 <SND_PLAY, 3626, 12>
		Snd_Command_2 <SND_PLAY, 3043, 54>
		Snd_Command_2 <SND_PLAY, 2281, 12>
		Snd_Command_2 <SND_PLAY, 2032, 6>
		Snd_Command_2 <SND_PLAY, 2420, 12>
		Snd_Command_2 <SND_PLAY, 3043, 18>
		Snd_Command_2 <SND_PLAY, 2032, 2>
		Snd_Command_2 <SND_PLAY, 1918, 2>
		Snd_Command_2 <SND_PLAY, 1810, 12>
		Snd_Command_2 <SND_PLAY, 1918, 16>
		Snd_Command_2 <SND_PLAY, 2032, 16>
		Snd_Command_2 <SND_PLAY, 2420, 12>
		Snd_Command_2 <SND_PLAY, 2032, 6>
		Snd_Command_2 <SND_PLAY, 2420, 12>
		Snd_Command_2 <SND_PLAY, 3626, 12>
		Snd_Command_2 <SND_PLAY, 2711, 54>
		Snd_Command_4 <SND_PAUSE, 12>
		Snd_Command_2 <SND_PLAY, 3043, 12>
		Snd_Command_2 <SND_PLAY, 2560, 12>
		Snd_Command_2 <SND_PLAY, 2032, 12>
		Snd_Command_2 <SND_PLAY, 1355, 16>
		Snd_Command_2 <SND_PLAY, 1521, 16>
		Snd_Command_2 <SND_PLAY, 1709, 16>
		Snd_Command_2 <SND_PLAY, 1810, 72>
		Snd_Command_2 <SND_PLAY, 1521, 8>
		Snd_Command_2 <SND_PLAY, 1709, 8>
		Snd_Command_2 <SND_PLAY, 1810, 8>
		Snd_Command_2 <SND_PLAY, 1918, 12>
		Snd_Command_2 <SND_PLAY, 2032, 12>
		Snd_Command_2 <SND_PLAY, 2281, 12>
		Snd_Command_2 <SND_PLAY, 2560, 12>
		Snd_Command_2 <SND_PLAY, 2875, 18>
		Snd_Command_2 <SND_PLAY, 2281, 18>
		Snd_Command_2 <SND_PLAY, 3043, 60>
		Snd_Command_2 <SND_PLAY, 2711, 16>
		Snd_Command_2 <SND_PLAY, 2281, 16>
		Snd_Command_2 <SND_PLAY, 2032, 16>
		Snd_Command_2 <SND_PLAY, 1810, 18>
		Snd_Command_2 <SND_PLAY, 1918, 18>
		Snd_Command_2 <SND_PLAY, 2032, 108>
		Snd_Command_2 <SND_PLAY, 2711, 16>
		Snd_Command_2 <SND_PLAY, 2281, 16>
		Snd_Command_2 <SND_PLAY, 2032, 16>
		Snd_Command_2 <SND_PLAY, 1810, 18>
		Snd_Command_2 <SND_PLAY, 1918, 18>
		Snd_Command_2 <SND_PLAY, 2032, 60>
		Snd_Command_8 <SND_RET>
Music_Phrase1	Snd_Command_2 <SND_PLAY, 2281, 12> ; DATA XREF:	CODE:7EACo
		Snd_Command_4 <SND_PAUSE, 36>
		Snd_Command_2 <SND_PLAY, 2281, 24>
		Snd_Command_2 <SND_PLAY, 2420, 24>
		Snd_Command_2 <SND_PLAY, 2560, 84>
		Snd_Command_2 <SND_PLAY, 1355, 12>
		Snd_Command_2 <SND_PLAY, 1521, 44>
		Snd_Command_4 <SND_PAUSE, 4>
		Snd_Command_2 <SND_PLAY, 1521, 16>
		Snd_Command_2 <SND_PLAY, 1810, 16>
		Snd_Command_2 <SND_PLAY, 2281, 16>
		Snd_Command_2 <SND_PLAY, 1709, 36>
		Snd_Command_2 <SND_PLAY, 2032, 36>
		Snd_Command_2 <SND_PLAY, 1521, 72>
		Snd_Command_2 <SND_PLAY, 2281, 24>
		Snd_Command_2 <SND_PLAY, 2420, 24>
		Snd_Command_2 <SND_PLAY, 2560, 84>
		Snd_Command_2 <SND_PLAY, 1355, 12>
		Snd_Command_2 <SND_PLAY, 1521, 44>
		Snd_Command_4 <SND_PAUSE, 4>
		Snd_Command_2 <SND_PLAY, 1521, 16>
		Snd_Command_2 <SND_PLAY, 1810, 16>
		Snd_Command_2 <SND_PLAY, 1521, 16>
		Snd_Command_2 <SND_PLAY, 1437, 12>
		Snd_Command_2 <SND_PLAY, 1521, 6>
		Snd_Command_2 <SND_PLAY, 1709, 12>
		Snd_Command_2 <SND_PLAY, 1918, 12>
		Snd_Command_2 <SND_PLAY, 2153, 102>
		Snd_Command_2 <SND_PLAY, 2875, 24>
		Snd_Command_2 <SND_PLAY, 2560, 24>
		Snd_Command_8 <SND_RET>
_Music		Snd_Command_6 <SND_JSR,	offset Music_Phrase0> ;	DATA XREF: StartMusic+5o
					; CODE:7EAFo
		Snd_Command_6 <SND_JSR,	offset Music_Phrase0>
		Snd_Command_6 <SND_JSR,	offset Music_Phrase1>
		Snd_Command_A <SND_JUMP, offset	_Music>
_Sound7		Snd_Command_C <SND_MODULATE, 1,	offset Snd_Mod0> ; DATA	XREF: FireWeapon+71o
		Snd_Command_2 <SND_PLAY, 1000, 100>
		Snd_Command_8 <SND_RET>
_Sound3		Snd_Command_C <SND_MODULATE, 1,	offset Snd_Mod0>
					; DATA XREF: HandleJumpsAndDucks+5Eo
		Snd_Command_2 <SND_PLAY, 900, 20>
		Snd_Command_8 <SND_RET>
_Sound2		Snd_Command_C <SND_MODULATE,	1, offset Snd_Mod2>
					; DATA XREF: HandleJumpsAndDucks+34o
		Snd_Command_2 <SND_PLAY, 400, 20>
		Snd_Command_8 <SND_RET>
_Sound1		Snd_Command_C <SND_MODULATE,	1, offset Snd_NoModulation>
					; DATA XREF: BombScript+2Co
					; sub_2378+4Co
		Snd_Command_2 <SND_PLAY, 900, 1>
		Snd_Command_4 <SND_PAUSE, 1>
		Snd_Command_2 <SND_PLAY, 1000, 1>
		Snd_Command_4 <SND_PAUSE, 1>
		Snd_Command_2 <SND_PLAY, 2000, 1>
		Snd_Command_4 <SND_PAUSE, 1>
		Snd_Command_2 <SND_PLAY, 3000, 1>
		Snd_Command_4 <SND_PAUSE, 1>
		Snd_Command_2 <SND_PLAY, 4000, 1>
		Snd_Command_4 <SND_PAUSE, 1>
		Snd_Command_2 <SND_PLAY, 5000, 1>
		Snd_Command_4 <SND_PAUSE, 1>
		Snd_Command_2 <SND_PLAY, 6000, 1>
		Snd_Command_4 <SND_PAUSE, 1>
		Snd_Command_2 <SND_PLAY, 7000, 1>
		Snd_Command_4 <SND_PAUSE, 1>
		Snd_Command_2 <SND_PLAY, 8000, 1>
		Snd_Command_4 <SND_PAUSE, 1>
		Snd_Command_2 <SND_PLAY, 9000, 1>
		Snd_Command_4 <SND_PAUSE, 1>
		Snd_Command_2 <SND_PLAY, 10000,	1>
		Snd_Command_4 <SND_PAUSE, 1>
		Snd_Command_8 <SND_RET>
_Sound0		Snd_Command_8 <SND_RET>	; DATA XREF: MonkeyScript:LaunchProjectileo
Snd_Extermination Snd_Command_6	<SND_JSR, offset Snd_Phrase0> ;	DATA XREF: KillIfKicked-B0Eo
		Snd_Command_6 <SND_JSR,	offset Snd_Phrase0>
		Snd_Command_6 <SND_JSR,	offset Snd_Phrase0>
		Snd_Command_6 <SND_JSR,	offset Snd_Phrase0>
		Snd_Command_8 <SND_RET>
_Sound5		Snd_Command_C <SND_MODULATE,	1, offset Snd_Mod1>
					; DATA XREF: FireWeapon+A8o
		Snd_Command_2 <SND_PLAY, 100, 15>
		Snd_Command_8 <SND_RET>
Snd_PickUp	Snd_Command_C <SND_MODULATE,	1, offset Snd_NoModulation>
					; DATA XREF: SwitchScript+18o
					; FoodScript+Fo ...
		Snd_Command_2 <SND_PLAY, 400, 10>
		Snd_Command_2 <SND_PLAY, 500, 10>
		Snd_Command_2 <SND_PLAY, 600, 10>
		Snd_Command_8 <SND_RET>
Snd_Phrase0	Snd_Command_2 <SND_PLAY, 400, 2> ; DATA	XREF: CODE:Snd_Exterminationo
					; CODE:7F31o ...
		Snd_Command_2 <SND_PLAY, 800, 2>
		Snd_Command_2 <SND_PLAY, 200, 2>
		Snd_Command_2 <SND_PLAY, 400, 2>
		Snd_Command_2 <SND_PLAY, 1600, 2>
		Snd_Command_8 <SND_RET>
Snd_NoModulation db 81h			; DATA XREF: CODE:_Sound1o
					; CODE:Snd_PickUpo
Snd_Mod0	db 0ECh			; DATA XREF: CODE:_Sound7o
					; CODE:_Sound3o
		db 28h
		db 80h
Snd_Mod1	db 28h			; DATA XREF: CODE:_Sound5o
		db 80h
Snd_Mod2	db 40			; DATA XREF: CODE:_Sound2o
		db -80
		db 30
		db -60
		db 40
		db -20
		db 30
		db -50
		db 20
		db -50
		db 50
		db -20
		db 50
		db -20
		db 10
		db -30
		db 60
		db 80h
Snd_Flags	db 0			; DATA XREF: StartMusic+28w
					; Snd_Handlerr	...
Snd_Command_Ptr	dw 7F3Bh		; DATA XREF: StartMusic+24w
					; Snd_Handler:loc_3E49r ...
Snd_Duration	dw 0			; DATA XREF: Snd_Handler:loc_3E65r
					; Snd_Handler+2Dw ...
Snd_Backstack_Ptr dw 7F9Ah		; DATA XREF: StartMusic+13w Snd_RETr ...
Snd_Mod_Ptr_Reload dw 3E3Ch		; DATA XREF: StartMusic+19w
					; Snd_Handler+69r ...
Snd_Mod_Period_Reload db 1		; DATA XREF: StartMusic+1Fw
					; Snd_Handler:loc_3E8Fr ...
Snd_Mod_Ptr	dw 3E3Ch		; DATA XREF: Snd_Handler+5Ar
					; Snd_Handler+6Dw ...
Snd_Mod_Period	db 1			; DATA XREF: Snd_Handler+45r
					; Snd_Handler+4Dw ...
Tone		dw 640h			; DATA XREF: Snd_Handler+7Ar
					; Snd_Handler+80w ...
Snd_Stack	dw  7F3Ah,     0,     0,     0 ; DATA XREF: StartMusic+13o
					; Snd_RETo
		dw	0,     0,     0,     0
		dw	0,     0,     0,     0
Timer0		db 7Ch			; DATA XREF: MainLoopw
					; MainLoop:loc_274r ...
Timer2		dw 97E2h		; DATA XREF: INT1C_Vector+29w
					; INT1C_Vector+2Dr
Snd_IsPlaying	db 0			; DATA XREF: Snd_TurnOffExw
					; StartMusicw ...
byte_7FB6	db  1Bh, 1Eh, 21h, 24h	; DATA XREF: _LoadWeaponRect+2o
AnimRects	dw  1017h		; 0 ; DATA XREF: CalcAnimRecto
		dw   608h		; 1
		dw   904h		; 2
		dw   607h		; 3
		dw  2401h		; 4
		dw  1008h		; 5
		dw  1016h		; 6
		dw  1010h		; 7
		dw   515h		; 8
		dw  0F16h		; 9
		dw  0D0Fh		; 0Ah
		dw  0C06h		; 0Bh
		dw  0F16h		; 0Ch
		dw  0E16h		; 0Dh
		dw  1016h		; 0Eh
		dw  1016h		; 0Fh
		dw  1016h		; 10h
		dw  1016h		; 11h
		dw   407h		; 12h
		dw   90Ch		; 13h
		dw   503h		; 14h
		dw  1003h		; 15h
		dw  0A0Ah		; 16h
		dw  0E0Ch		; 17h
		dw  1210h		; 18h
		dw  1012h		; 19h
		dw  100Fh		; 1Ah
		dw  1007h		; 1Bh
		dw  0E10h		; 1Ch
		dw  1016h		; 1Dh
		dw  111Ah		; 1Eh
		dw   90Ch		; 1Fh
		dw   707h		; 20h
		dw  0C14h		; 21h
		dw   610h		; 22h
		dw  1227h		; 23h
		dw  1227h		; 24h
		dw  1309h		; 25h
		dw  1016h		; 26h
		dw   90Ch		; 27h
		dw  0C09h		; 28h
		dw  0B10h		; 29h
		dw  0C0Eh		; 2Ah
		dw  1008h		; 2Bh
		dw  0B0Fh		; 2Ch
		dw  1016h		; 2Dh
		dw   504h		; 2Eh
		dw  1011h		; 2Fh
		dw  100Eh		; 30h
		dw  200Bh		; 31h
		dw  1116h		; 32h
		dw   219h		; 33h
		dw   60Bh		; 34h
PickableItems	dw offset Water1	; DATA XREF: RespawnPickables+5o
					; _DisablePickedItem+5o
		dw offset Food1		; Water
		dw offset Food2
		dw offset Water2
		dw offset Water3
		dw offset Food3
		dw offset Food4
		dw offset Water4
		dw offset Water5
		dw offset Food5
		dw offset Gem1
		dw offset Gem2
		dw offset Gem3
		dw offset Gem4
		dw offset Gem5
		dw offset Water6
		dw offset Food6
		dw offset Water7
		dw offset Food7
		db 4, 20h, 4, 10h, 4, 40h, 2, 40h, 4, 64h, 0, 0FAh, 0
		db 0F4h, 1, 10h, 8, 4, 2, 10h, 40h, 4, 10h, 0, 40h, 3
		db 0, 10h, 2, 40h, 1, 88h, 22h,	0, 40h
StandbyScript	db  0Ah,   8, 84h, 0Fh,	10h, 3Fh,   0, 0Ah ; DATA XREF:	PreInit+14o
		db    4, 84h, 0Fh, 10h,	3Fh,   0, 0Fh,	 8
		db  81h, 0Ah, 10h, 7Eh,	  0, 0Fh,   4,	 5
		db    8, 82h, 0Fh, 10h,	3Fh,   0, 83h, 0Fh
		db  10h, 3Fh,	0,   5,	  4,0FFh
unk_8093	db  7Eh	; ~		; DATA XREF: Loc3CScript0+14o
		db    0
		db  22h	; "
		db    8
		db  3Fh	; ?
		db    0
		db 0FFh
off_809A	dw offset byte_D9DE	; DATA XREF: _AnimateLogo
		dw offset byte_D9D9
		dw offset byte_D9D9
		dw offset byte_D9D9
		dw offset stru_84D4.LI_Y
byte_80A4	db    0, 0Bh, 0Fh, 13h,	17h, 1Bh, 23h ;	DATA XREF: VertArrows0o
byte_80AB	db 0FFh,   4,	8, 0Ch,	10h, 14h, 18h ;	DATA XREF: VertArrows0:VertArrows1o
byte_80B2	db 0FFh, 0Fh, 13h, 17h,	1Bh, 1Fh, 23h ;	DATA XREF: VertArrows0:VertArrows2o
byte_80B9	db 0FFh,   8, 0Ch, 10h,	14h, 18h, 1Ch ;	DATA XREF: VertArrows0:VertArrows3o
		db 20h
		db 24h
		db 0FFh			;
					; AnimDelay - StartFrame - EndFrame - HSpeed - VSpeed
_RightMotion	AnimationDesc_t	<   1,	  0,	3,    1,    0>
					; DATA XREF: HandlePlayer:loc_495o
					; HandlePlayer+38Do ...
RightUpJump	AnimationDesc_t	<   0,	  5,	6,  7Fh,  81h>
					; DATA XREF: HandlePlayer+295o
					; HandleJumpsAndDucks:Jumpino ...
DuckRight	AnimationDesc_t	<   1,	  4,	4,    1,    0>
					; DATA XREF: HandleJumpsAndDucks:loc_5E7o
ThrowRight	AnimationDesc_t	<  1,	7,   8,	   0,	 0>
					; DATA XREF: HandlePlayer:DoThrowo
					; ServeFireKey+5Bo
FallingDownRight AnimationDesc_t <   0,	   6,	 6,    0,  7Fh>
					; DATA XREF: HandlePlayer:loc_339o
DeathRight	AnimationDesc_t	<  20,	  9,   10,    0,    0>
					; DATA XREF: HandlePlayer+1B1o
					; HandlePlayer:loc_690o
CoconutedRight	AnimationDesc_t	<   4,	 11,   12,    0,    0>
					; DATA XREF: HandlePlayer:loc_6B9o
EatenRight	AnimationDesc_t	<   4,	 13,   14,    0,    0>
					; DATA XREF: HandlePlayer:HandlePlayer_Eateno
SwampedRight	AnimationDesc_t	<   4,	 15,   16,    0,    0>
					; DATA XREF: HandlePlayer:loc_3F8o
_LeftMotion	AnimationDesc_t	<   1,	 17,   20, 0FFh,    0>
					; DATA XREF: HandlePlayer:loc_4C4o
					; HandlePlayer+392o ...
LeftUpJump	AnimationDesc_t	<   0,	 22,   23,  81h,  81h>
					; DATA XREF: HandlePlayer+2A5o
					; HandleJumpsAndDucks+20o ...
DuckLeft	AnimationDesc_t	<  1,  21,  21,	0FFh,	 0>
					; DATA XREF: HandleJumpsAndDucks+7Ao
ThrowLeft	AnimationDesc_t	<  1,  24,  25,	   0,	 0> ; DATA XREF: HandlePlayer+2CCo
					; ServeFireKey+64o
FallingDownLeft	AnimationDesc_t	<   0,	 23,   23,    0,  7Fh> ; DATA XREF: HandlePlayer+BEo
DeathLeft	AnimationDesc_t	<  20,	 26,   27,    0,    0>
					; DATA XREF: HandlePlayer+1BAo
					; HandlePlayer+415o
CoconutedLeft	AnimationDesc_t	<   4,	 28,   29,    0,    0>
					; DATA XREF: HandlePlayer+43Eo
EatenLeft	AnimationDesc_t	<   4,	 30,   31,    0,    0>
					; DATA XREF: HandlePlayer+1F6o
SwampedLeft	AnimationDesc_t	<  4,  32,  33,	   0,	 0>
_Offsets	db   0,	40, 80,255	; DATA XREF: UpdateObstacles+Ft
		db   3,	43, 83,255
		db 0FFh
		db   0,	 1,  2,255
PoleDataLeft	db 5 dup(0FFh)		; DATA XREF: ServeFireKey:PreparePoleJumpo
PoleDataRight	db 5 dup(1)		; DATA XREF: ServeFireKey:JumpToRighto
ScriptTable	dw offset locret_1435	; DATA XREF: RunChrScripts+24o
					; Player has no	special	script
		dw offset BoomerangScript
		dw offset KnifeScript
		dw offset BombScript
		dw offset locret_1435	; Jumping rod has no special script
		dw offset BonusScoreScript
		dw offset ExplodeScript
		dw offset BirdScript
		dw offset BubbleScript
		dw offset PlantScript
		dw offset SwitchScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset WagonScript
		dw offset MineGasScrpit
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset MineGasScrpit
		dw offset VertArrow1Script
		dw offset VertArrow2Script
		dw offset locret_1435
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset StarflashScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset BulletScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset CallCustomScript
		dw offset GemScript
		dw offset locret_1435
		dw offset locret_1435
		dw offset locret_1435
		dw offset locret_1435
Locations	dw offset Location0	; DATA XREF: LoadLocationData+Ao
		dw offset Location1
		dw offset Location2
		dw offset Location3
		dw offset Location4
		dw offset Location5
		dw offset Location6
		dw offset Location7
		dw offset Location8
		dw offset Location9
		dw offset Location0A
		dw offset Location0B
		dw offset Location0C
		dw offset Location0D
		dw offset Location0E
		dw offset Location0F
		dw offset Location10
		dw offset Location11
		dw offset Location12
		dw offset Location13
		dw offset Location14
		dw offset Location15
		dw offset Location16
		dw offset Location17
		dw offset Location18
		dw offset Location19
		dw offset Location1A
		dw offset Location1B
		dw offset Location1C
		dw offset Location1D
		dw offset Location1E
		dw offset Location1F
		dw offset Location20
		dw offset Location21
		dw offset Location22
		dw offset Location23
		dw offset Location24
		dw offset Location25
		dw offset Location26
		dw offset Location27
		dw offset Location28
		dw offset Location29
		dw offset Location2A
		dw offset Location2B
		dw offset Location2C
		dw offset Location2D
		dw offset Location2E
		dw offset Location2F
		dw offset Location30
		dw offset Location31
		dw offset Location32
		dw offset Location33
		dw offset Location34
		dw offset Location35
		dw offset Location36
		dw offset Location37
		dw offset Location38
		dw offset Location39
		dw offset Location3A
		dw offset Location3B
		dw offset Location3C
		dw offset Location3D
Location0	Location_t <0FFh, 11h, 81h, 81h, 3> ; DATA XREF: CODE:Locationso
		LocationItem_t <IF_DoNotLoad, ABird, 4,	9216, 768, 0> ;	Item0
		LocationItem_t <1, AMonkey, 0, 768, 416, offset	MonkeyDataSet> ; Item1
		LocationItem_t <0, ABigFish, 0,	1792, 4352, offset FishDataSet>	; Item2
		db	3
		dw offset Loc0Script0
		dw offset Loc0Script1
		dw offset Loc0Script2
Location1	Location_t <7, 0FFh, 18h, 82h, 3> ; DATA XREF: CODE:81A6o
		LocationItem_t <0, AScorpion, 0, 7424, 1376, offset ReptileDataSet>
		LocationItem_t <0, ASmallFish, 2, 8192,	4096, offset FishDataSet2>
		LocationItem_t <1, AMonkey, 0, 8704, 320, offset MonkeyDataSet>
		db 2
		dw offset Loc1Script0
		dw offset Loc0Script1
Location2	Location_t <0FFh, 0FFh,	39h, 83h, 1> ; DATA XREF: CODE:81A8o
		LocationItem_t <0, ABigFish, 2,	8192, 4096, offset FishDataSet2>
		db 2
		dw offset Loc1Script0
		dw offset Loc0Script1
Location3	Location_t <0FFh, 0FFh,	6, 0FFh, 2> ; DATA XREF: CODE:81AAo
		LocationItem_t <1, AMonkey, 2, 8960, 416, offset MonkeyDataSet>
		LocationItem_t <0, ASmallFish, 0, 1280,	3584, offset FishDataSet3>
		db 2
		dw offset Loc1Script0
		dw offset Loc0Script1
Location4	Location_t <5, 5, 11h, 11h, 3> ; DATA XREF: CODE:81ACo
		LocationItem_t <IF_DoNotLoad, ARifleman, 0, 0, 3904, \
				offset RiflemanDataSet2>
		LocationItem_t <0, AHungryPlant, 0, 3584, 3904,	0>
		LocationItem_t <0, ASnake, 2, 4096, 4352, offset ReptileDataSet4>
		db 1
		dw offset Loc38Script0	; test 4th
Location5	Location_t <6, 6, 4, 4,	4> ; DATA XREF:	CODE:81AEo
		LocationItem_t <IF_DoNotLoad, ARifleman, 4, 9216, 3904,	\ ; Item0
				offset RiflemanDataSet>
Water1		LocationItem_t <IF_DoNotLoad, AWater, 0, 4608, 4256, \
					; DATA XREF: CODE:PickableItemso
				offset WaterDataSet> ; Water
Food1		LocationItem_t <IF_DoNotLoad or	2, AFood, 0, 8448, 4224, \
					; DATA XREF: CODE:PickableItemso
				offset FoodDataSet> ; Food
		LocationItem_t <0, ASnake, 0, 7936, 1536, offset ReptileDataSet>
		db 2
		dw offset PitFall
		dw offset Loc38Script0	; test 4th
Location6	Location_t <0FFh, 3, 5,	5, 3> ;	DATA XREF: CODE:81B0o
		LocationItem_t <0, APlayer, 0, 768, 3904, 0> ; Item0
		LocationItem_t <0, AHungryPlant, 0, 7936, 3904,	0> ; Item1
		LocationItem_t <0, ASnake, 0, 7424, 1536, offset ReptileDataSet2> ; Item2
		db 1
		dw offset PitFall
Location7	Location_t <8, 8, 1, 1,	4> ; DATA XREF:	CODE:81B2o
		LocationItem_t <0, ALizard, 2, 1856, 1856, offset ReptileDataSet5> ; Item0
		LocationItem_t <0, AScorpion, 0, 5120, 4192, offset ReptileDataSet2> ; Item1
		LocationItem_t <0, ABat, 0, 3072, 1024,	offset BatDataSet> ; Item2
Food2		LocationItem_t <4, AFood, 1, 0,	1792, offset FoodDataSet>
					; DATA XREF: CODE:PickableItemso
					; Item3
		db 0
Location8	Location_t <9, 9, 7, 7,	3> ; DATA XREF:	CODE:81B4o
		LocationItem_t <0, ALizard, 0, 7424, 4384, offset ReptileDataSet2>
		LocationItem_t <0, ASmallFish, 0, 3584,	4352, \
				offset FishInCaveDataSet>
Gem1		LocationItem_t <IF_DoNotLoad or	14h, AGem, 0, 512, 512,	\
					; DATA XREF: CODE:PickableItemso
				offset GemDataSet>
		db 0
Location9	Location_t <0Ah, 0Ah, 8, 8, 3> ; DATA XREF: CODE:81B6o
		LocationItem_t <IF_DoNotLoad, ARifleman, 4, 9216, 3360,	\
				offset RiflemanDataSet>
		LocationItem_t <0, AScorpion, 0, 2048, 4192, offset ReptileDataSet3>
		LocationItem_t <0, ABat, 0, 3328, 1792,	offset BatDataSet>
		db 1
		dw offset Loc38Script0	; test 4th
Location0A	Location_t <0Bh, 0Bh, 9, 9, 4> ; DATA XREF: CODE:81B8o
		LocationItem_t <0, ALizard, 0, 6912, 4384, offset ReptileDataSet2> ; Item0
		LocationItem_t <0, AScorpion, 2, 3072, 1888, offset ReptileDataSet4> ; Item1
		LocationItem_t <0, AScorpion, 0, 1536, 4192, offset ReptileDataSet3> ; Item2
Water2		LocationItem_t <6, AWater, 1, 1280, 4128, offset WaterDataSet>
					; DATA XREF: CODE:PickableItemso
					; Item3
		db 0
Location0B	Location_t <0Ch, 0Ch, 0Ah, 0Ah,	4> ; DATA XREF:	CODE:81BAo
		LocationItem_t <0, ABat, 0, 2560, 1536,	offset BatDataSet>
		LocationItem_t <0, ABat, 0, 6144, 768, offset BatDataSet>
		LocationItem_t <0, ALizard, 0, 1280, 4384, offset ReptileDataSet>
		LocationItem_t <0, AScorpion, 0, 5120, 4192, offset ReptileDataSet2>
		db 0
Location0C	Location_t <0Dh, 0Dh, 0Bh, 0Bh,	3> ; DATA XREF:	CODE:81BCo
		LocationItem_t <IF_DoNotLoad, ARifleman, 0, 0, 3872, \
				offset RiflemanDataSet2>
		LocationItem_t <0, ABat, 0, 4096, 2304,	offset BatDataSet>
Water3		LocationItem_t <IF_DoNotLoad or	8, AWater, 0, 1536, 2112, \
					; DATA XREF: CODE:PickableItemso
				offset WaterDataSet>
		db 2
		dw offset Loc0EScript0
		dw offset Loc38Script0	; test 4th
Location0D	Location_t <0Eh, 0Eh, 25h, 0Ch,	3> ; DATA XREF:	CODE:81BEo
		LocationItem_t <IF_DoNotLoad, ARifleman, 0, 0, 1600, \
				offset RiflemanDataSet2>
		LocationItem_t <1, AMiner, 2, 8192, 1344, offset MinerDataSet>
Food3		LocationItem_t <IF_DoNotLoad or	0Ah, AFood, 0, 4096, 768, \
					; DATA XREF: CODE:PickableItemso
				offset FoodDataSet>
		db 3
		dw offset Loc0DScript1
		dw offset Loc0EScript0
		dw offset Loc38Script0	; test 4th
Location0E	Location_t <0Fh, 0Fh, 0Dh, 0Dh,	2> ; DATA XREF:	CODE:81C0o
		LocationItem_t <IF_DoNotLoad, ARifleman, 4, 9216, 1568,	\
				offset RiflemanDataSet>
		LocationItem_t <1, AMiner, 0, 3584, 1600, offset MinerDataSet>
		db 3
		dw offset Loc0DScript1
		dw offset Loc0EScript0
		dw offset Loc38Script0	; test 4th
Location0F	Location_t <10h, 10h, 0Eh, 0Eh,	3> ; DATA XREF:	CODE:81C2o
		LocationItem_t <IF_DoNotLoad, ARifleman, 4, 9216, 1600,	\
				offset RiflemanDataSet>
		LocationItem_t <1, AMiner, 2, 6656, 1600, offset MinerDataSet>
		LocationItem_t <2, AMiner, 0, 1280, 1600, offset MinerDataSet>
		db 3
		dw offset Loc0DScript1
		dw offset Loc0EScript0
		dw offset Loc38Script0	; test 4th
Location10	Location_t <12h, 18h, 0Fh, 0Fh,	3> ; DATA XREF:	CODE:81C4o
		LocationItem_t <1, AMiner, 0, 7168, 1600, offset MinerDataSet>
		LocationItem_t <2, AMiner, 0, 2304, 1600, offset MinerDataSet>
Gem2		LocationItem_t <IF_DoNotLoad or	16h, AGem, 0, 1536, 1536, \
					; DATA XREF: CODE:PickableItemso
				offset GemDataSet>
		db 2
		dw offset Loc0DScript1
		dw offset Loc0EScript0
Location11	Location_t <4, 4, 0, 0,	3> ; DATA XREF:	CODE:81C6o
		LocationItem_t <IF_DoNotLoad, ABird, 0,	512, 1792, 0>
		LocationItem_t <1, AMonkey, 2, 8960, 416, offset MonkeyDataSet>
		LocationItem_t <2, AMonkey, 0, 5120, 2208, offset MonkeyDataSet>
		db 2
		dw offset Loc0Script2
		dw offset PitFall
Location12	Location_t <13h, 13h, 0FFh, 10h, 3> ; DATA XREF: CODE:81C8o
		LocationItem_t <IF_DoNotLoad, ABird, 0,	256, 768, 0>
		LocationItem_t <1, AMonkey, 2, 5888, 2208, offset MonkeyDataSet>
		LocationItem_t <0, ACrocodile, 0, 1280,	4352, offset CrocoDataSet>
		db 1
		dw offset Loc0Script2
Location13	Location_t <14h, 14h, 12h, 12h,	3> ; DATA XREF:	CODE:81CAo
stru_84D4	LocationItem_t <1, ASpearman, 2, 6656, 1344, offset SpearmanDataSet>
					; DATA XREF: CODE:80A2o
		LocationItem_t <2, ASpearman, 0, 3328, 2112, offset SpearmanDataSet>
		LocationItem_t <3, AArcher, 0, 5376, 4000, offset ArcherDataSet>
		db 0
Location14	Location_t <15h, 15h, 13h, 13h,	5> ; DATA XREF:	CODE:81CCo
		LocationItem_t <IF_DoNotLoad, ARifleman, 0, 0, 3904, \
				offset RiflemanDataSet2>
		LocationItem_t <1, ADartsman, 0, 1536, 3968, offset DartsmanDataSet>
		LocationItem_t <2, ASpearman, 0, 4736, 2368, offset SpearmanDataSet>
		LocationItem_t <3, AStinkyIdol,	2, 3840, 3200, offset IdolDataSet>
		LocationItem_t <4, AArcher, 0, 8192, 4000, offset ArcherDataSet>
		db 1
		dw offset Loc38Script0	; test 4th
Location15	Location_t <16h, 16h, 14h, 14h,	5> ; DATA XREF:	CODE:81CEo
		LocationItem_t <IF_DoNotLoad, ARifleman, 0, 0, 3904, \
				offset RiflemanDataSet2>
		LocationItem_t <1, ASpearman, 0, 8192, 1344, offset SpearmanDataSet>
		LocationItem_t <2, ADartsman, 0, 1792, 2144, offset DartsmanDataSet>
		LocationItem_t <3, AArcher, 0, 5376, 4000, offset ArcherDataSet>
Food4		LocationItem_t <0Ch, AFood, 1, 2560, 3584, offset FoodDataSet>
					; DATA XREF: CODE:PickableItemso
		db 2
		dw offset PitFall
		dw offset Loc38Script0	; test 4th
Location16	Location_t <17h, 17h, 15h, 15h,	5> ; DATA XREF:	CODE:81D0o
		LocationItem_t <1, ASpearman, 0, 5120, 832, offset SpearmanDataSet>
		LocationItem_t <2, ADartsman, 0, 2816, 2912, offset DartsmanDataSet>
		LocationItem_t <3, AStinkyIdol,	2, 6656, 3200, offset IdolDataSet>
		LocationItem_t <4, AArcher, 2, 4864, 4000, offset ArcherDataSet>
Water4		LocationItem_t <0Eh, AWater, 1,	1024, 4192, offset WaterDataSet>
					; DATA XREF: CODE:PickableItemso
		db 0
Location17	Location_t <18h, 18h, 16h, 16h,	5> ; DATA XREF:	CODE:81D2o
		LocationItem_t <1, ADartsman, 0, 1536, 2144, offset DartsmanDataSet>
		LocationItem_t <2, ADartsman, 0, 8192, 2144, offset DartsmanDataSet>
		LocationItem_t <3, ASpearman, 0, 4096, 832, offset SpearmanDataSet>
		LocationItem_t <5, AStinkyIdol,	2, 2304, 3168, offset IdolDataSet>
Gem3		LocationItem_t <IF_DoNotLoad or	18h, AGem, 0, 5376, 1280, \
					; DATA XREF: CODE:PickableItemso
				offset GemDataSet>
		db 1
		dw offset PitFall
Location18	Location_t <0FFh, 1, 17h, 17h, 2> ; DATA XREF: CODE:81D4o
		LocationItem_t <1, ADartsman, 0, 1536, 3968, offset DartsmanDataSet>
		LocationItem_t <2, AArcher, 2, 6656, 4000, offset ArcherDataSet>
		db 0
Location19	Location_t <2Ah, 2Ah, 1Ah, 1Ah,	3> ; DATA XREF:	CODE:81D6o
		LocationItem_t <0, AHungryPlant, 0, 8448, 3936,	0>
		LocationItem_t <1, AArcher, 2, 5632, 4000, offset ArcherDataSet>
		LocationItem_t <2, ADartsman, 0, 1536, 3968, offset DartsmanDataSet>
		db 0
Location1A	Location_t <19h, 19h, 1Bh, 1Bh,	4> ; DATA XREF:	CODE:81D8o
		LocationItem_t <IF_DoNotLoad, ABird, 0,	512, 768, 0>
		LocationItem_t <0, ACrocodile, 0, 1280,	4320, offset CrocoDataSet>
		LocationItem_t <0, AHungryPlant, 0, 8704, 3936,	0>
Water6		LocationItem_t <1Eh, AWater, 1,	7424, 4160, offset WaterDataSet>
					; DATA XREF: CODE:PickableItemso
		db 1
		dw offset Loc0Script2
Location1B	Location_t <1Ah, 1Ah, 1Ch, 1Ch,	2> ; DATA XREF:	CODE:81DAo
		LocationItem_t <1, ADartsman, 0, 3840, 3968, offset DartsmanDataSet>
		LocationItem_t <2, ADartsman, 2, 7936, 3424, offset DartsmanDataSet>
		db 0
Location1C	Location_t <1Bh, 1Bh, 1Dh, 1Dh,	2> ; DATA XREF:	CODE:81DCo
		LocationItem_t <0, APlayer, 0, 0, 3392,	0>
		LocationItem_t <0, AVerticalArrow2, 0, 4384, 1568, 0>
		db 1
		dw offset InFirstTemple
Location1D	Location_t <0FFh, 0FFh,	1Eh, 1Eh, 3> ; DATA XREF: CODE:81DEo
		LocationItem_t <1, ASwitch, 2, 1792, 512, offset Switch1D_1_Script> ; Item0
		LocationItem_t <2, ASwitch, 2, 7680, 512, offset Switch1D_2_Script> ; Item1
		LocationItem_t <0, AFlyingDevil, 0, 7936, 3904,	\ ; Item2
				offset FlyingDevilDataSet>
		db 2
		dw offset Loc1DScript0
		dw offset VertArrows0
Location1E	Location_t <1Dh, 1Dh, 1Fh, 1Fh,	2> ; DATA XREF:	CODE:81E0o
		LocationItem_t <1, ASpearman, 2, 8704, 1344, offset SpearmanDataSet>
		LocationItem_t <2, AArcher, 2, 7680, 3200, offset ArcherDataSet>
		db 1
		dw offset VertArrows1
Location1F	Location_t <1Eh, 1Eh, 20h, 20h,	2> ; DATA XREF:	CODE:81E2o
		LocationItem_t <1, ASpearman, 0, 768, 1344, offset SpearmanDataSet>
		LocationItem_t <2, AArcher, 2, 6656, 3712, offset ArcherDataSet>
		db 1
		dw offset VertArrows2
Location20	Location_t <1Fh, 1Fh, 21h, 21h,	2> ; DATA XREF:	CODE:81E4o
		LocationItem_t <1, ASpearman, 2, 8192, 2368, offset SpearmanDataSet>
		LocationItem_t <2, ADartsman, 2, 5888, 3168, offset DartsmanDataSet>
		db 1
		dw offset VertArrows3
Location21	Location_t <20h, 20h, 22h, 22h,	3> ; DATA XREF:	CODE:81E6o
		LocationItem_t <1, AArcher, 0, 2560, 3456, offset ArcherDataSet2>
		LocationItem_t <2, AArcher, 0, 6656, 3456, offset ArcherDataSet2>
		LocationItem_t <3, AFlyingDevil, 0, 7936, 2368,	\
				offset FlyingDevilDataSet>
		db 0
Location22	Location_t <21h, 21h, 23h, 23h,	4> ; DATA XREF:	CODE:81E8o
		LocationItem_t <IF_DoNotLoad, ARifleman, 4, 9216, 2336,	\
				offset RiflemanDataSet>
		LocationItem_t <0, ACrocodile, 0, 2048,	4288, offset CrocoDataSet2>
		LocationItem_t <0, ACrocodile, 2, 7168,	4288, offset CrocoDataSet3>
Food6		LocationItem_t <20h, AFood, 0, 2048, 4160, offset FoodDataSet>
					; DATA XREF: CODE:PickableItemso
		db 1
		dw offset Loc38Script0	; test 4th
Location23	Location_t <22h, 22h, 24h, 24h,	1> ; DATA XREF:	CODE:81EAo
		LocationItem_t <IF_DoNotLoad, ARifleman, 4, 9216, 2336,	\
				offset RiflemanDataSet>
		db 3
		dw offset Loc23Script1
		dw offset Loc23Script0
		dw offset Loc38Script0	; test 4th
Location24	Location_t <23h, 23h, 2Bh, 2Bh,	3> ; DATA XREF:	CODE:81ECo
		LocationItem_t <IF_DoNotLoad, ABird, 0,	8960, 512, 0>
		LocationItem_t <0, ASnake, 0, 5632, 4352, offset ReptileDataSet3>
		LocationItem_t <0, AHungryPlant, 0, 6656, 3904,	0>
		db 1
		dw offset Loc0Script2
Location25	Location_t <0FFh, 0Dh, 26h, 0FFh, 3> ; DATA XREF: CODE:81EEo
		LocationItem_t <1, AMermaid, 0,	2816, 4160, offset MaidDataSet>
		LocationItem_t <2, AMermaid, 2,	7168, 4160, offset MaidDataSet>
		LocationItem_t <3, ABatonThrower, 2, 6144, 1088, \
				offset BatonerDataSet>
		db 3
		dw offset Loc25Script0
		dw offset Loc0Script1
		dw offset Loc25Script1
Location26	Location_t <0FFh, 25h, 27h, 0FFh, 4> ; DATA XREF: CODE:81F0o
		LocationItem_t <1, AMermaid, 0,	5632, 4160, offset MaidDataSet>
		LocationItem_t <2, ABatonThrower, 2, 1280, 1088, \
				offset BatonerDataSet>
		LocationItem_t <3, ABatonThrower, 0, 7168, 1088, \
				offset BatonerDataSet>
Gem4		LocationItem_t <IF_DoNotLoad or	1Ah, AGem, 0, 5632, 2560, \
					; DATA XREF: CODE:PickableItemso
				offset GemDataSet>
		db 3
		dw offset Loc26Script0
		dw offset Loc0Script1
		dw offset Loc25Script1
Location27	Location_t <0FFh, 26h, 28h, 0FFh, 3> ; DATA XREF: CODE:81F2o
		LocationItem_t <1, AMermaid, 0,	4096, 4160, offset MaidDataSet>
		LocationItem_t <2, ABatonThrower, 2, 6400, 1088, \
				offset BatonerDataSet>
Food5		LocationItem_t <IF_DoNotLoad or	12h, AFood, 1, 768, 512, \
					; DATA XREF: CODE:PickableItemso
				offset FoodDataSet>
		db 1
		dw offset Loc25Script1
Location28	Location_t <0FFh, 27h, 29h, 0FFh, 2> ; DATA XREF: CODE:81F4o
		LocationItem_t <1, AMermaid, 0,	4608, 4160, offset MaidDataSet>
		LocationItem_t <2, ABatonThrower, 0, 4352, 1088, \
				offset BatonerDataSet>
		db 1
		dw offset Loc25Script1
Location29	Location_t <0FFh, 28h, 2Ah, 0FFh, 3> ; DATA XREF: CODE:81F6o
		LocationItem_t <1, AMermaid, 0,	4608, 4160, offset MaidDataSet>
		LocationItem_t <2, ABatonThrower, 2, 8192, 1600, \
				offset BatonerDataSet>
Water5		LocationItem_t <IF_DoNotLoad or	10h, AWater, 0,	9472, 1856, \
					; DATA XREF: CODE:PickableItemso
				offset WaterDataSet>
		db 3
		dw offset Loc26Script0
		dw offset Loc0Script1
		dw offset Loc25Script1
Location2A	Location_t <0FFh, 29h, 19h, 81h, 2> ; DATA XREF: CODE:81F8o
		LocationItem_t <0, AHungryPlant, 0, 8448, 1856,	0>
		LocationItem_t <0, ABigFish, 2,	7936, 4352, offset FishDataSet2>
		db 2
		dw offset Loc2AScript0
		dw offset Loc0Script1
Location2B	Location_t <24h, 24h, 0FFh, 0FFh, 5> ; DATA XREF: CODE:81FAo
		LocationItem_t <IF_DoNotLoad, ABird, 0,	7680, 512, 0>
		LocationItem_t <1, AMonkey, 2, 7168, 1696, offset MonkeyDataSet>
		LocationItem_t <0, AHungryPlant, 0, 4352, 3936,	0>
		LocationItem_t <0, AHungryPlant, 0, 7168, 3904,	0>
Water7		LocationItem_t <22h, AWater, 0,	8448, 2112, offset WaterDataSet>
					; DATA XREF: CODE:PickableItemso
		db 2
		dw offset Loc2BScript0
		dw offset Loc0Script2
Location2C	Location_t <0FFh, 0FFh,	0FFh, 6Dh, 3> ;	DATA XREF: CODE:81FCo
		LocationItem_t <0, APlayer, 0, 6400, 0,	0>
		LocationItem_t <0, ABat, 0, 4096, 3584,	offset BatDataSet>
		LocationItem_t <0, ASpider, 0, 2048, 3328, offset SpiderDataSet>
		db 0
Location2D	Location_t <0FFh, 0FFh,	31h, 6Eh, 3> ; DATA XREF: CODE:81FEo
		LocationItem_t <0, ABat, 0, 5888, 1280,	offset BatDataSet>
		LocationItem_t <0, ASnake, 0, 7936, 2752, offset ReptileDataSet5>
		LocationItem_t <0, ASpider, 0, 7680, 256, offset SpiderDataSet>
		db 1
		dw offset DeathOnCandle
Location2E	Location_t <0FFh, 0FFh,	0FFh, 6Fh, 4> ;	DATA XREF: CODE:8200o
		LocationItem_t <0, ABat, 0, 4608, 2560,	offset BatDataSet>
		LocationItem_t <0, ASpider, 0, 1792, 512, offset SpiderDataSet>
		LocationItem_t <0, ASpider, 0, 7936, 1024, offset SpiderDataSet>
		LocationItem_t <0, ASpider, 0, 7680, 4352, offset SpiderDataSet>
		db 0
Location2F	Location_t <0FFh, 32h, 0FFh, 70h, 2> ; DATA XREF: CODE:8202o
		LocationItem_t <0, ABat, 0, 2560, 2560,	offset BatDataSet>
		LocationItem_t <0, ASpider, 0, 5888, 2304, offset SpiderDataSet>
		db 1
		dw offset DeathOnCandle
Location30	Location_t <0FFh, 0FFh,	33h, 33h, 2> ; DATA XREF: CODE:8204o
		LocationItem_t <0, ABat, 0, 6400, 1792,	offset BatDataSet>
		LocationItem_t <0, AScorpion, 0, 768, 2144, offset ReptileDataSet2>
		db 0
Location31	Location_t <2Dh, 2Dh, 0FFh, 0FFh, 3> ; DATA XREF: CODE:8206o
		LocationItem_t <0, ASwitch, 2, 4608, 512, offset Switch31DataSet> ; Item0
		LocationItem_t <0, AScaryEyes, 0, 6656,	1536, offset EyesDataSet> ; Item1
Food7		LocationItem_t <24h, AFood, 1, 8448, 1280, offset FoodDataSet>
					; DATA XREF: CODE:PickableItemso
					; Item2
		db 2
		dw offset sub_1A5B
		dw offset DeathOnCandle
Location32	Location_t <0FFh, 0FFh,	2Fh, 2Fh, 2> ; DATA XREF: CODE:8208o
		LocationItem_t <0, ASwitch, 2, 2304, 512, offset Switch32DataSet> ; Item0
		LocationItem_t <0, AScaryEyes, 0, 4864,	2560, offset EyesDataSet> ; Item1
		db 2
		dw offset sub_1A6F
		dw offset DeathOnCandle
Location33	Location_t <30h, 30h, 34h, 34h,	0> ; DATA XREF:	CODE:820Ao
		db 0
Location34	Location_t <33h, 33h, 36h, 36h,	0> ; DATA XREF:	CODE:820Co
		db 1
		dw offset FallToHopelessWell
Location35	Location_t <0FFh, 0FFh,	0FFh, 0FFh, 2> ; DATA XREF: CODE:820Eo
		LocationItem_t <0, APlayer, 0, 5120, 0,	0> ; Item0
		LocationItem_t <0, ASmallFish, 0, 1792,	3328, offset FishDataSet3> ; Item1
		db 0
Location36	Location_t <34h, 34h, 38h, 38h,	2> ; DATA XREF:	CODE:8210o
		LocationItem_t <0, ABat, 0, 8704, 2560,	offset BatDataSet> ; Item0
		LocationItem_t <0, ABat, 0, 5120, 1280,	offset BatDataSet> ; Item1
		db 0
Location37	Location_t <0FFh, 0FEh,	0FFh, 0FFh, 3> ; DATA XREF: CODE:8212o
		LocationItem_t <0, APlayer, 0, 4864, 0,	0> ; Item0
		LocationItem_t <1, ASwitch, 2, 8192, 1024, offset Switch37Script> ; Item1
		LocationItem_t <2, AScaryEyes, 0, 3072,	3072, offset EyesDataSet> ; Item2
		db 0
Location38	Location_t <36h, 36h, 3Bh, 3Bh,	2> ; DATA XREF:	CODE:8214o
		LocationItem_t <IF_DoNotLoad, ARifleman, 4, 9216, 3904,	\
				offset RiflemanDataSet>
		LocationItem_t <0, ACrocodile, 0, 2048,	4256, offset CrocoDataSet>
		db 1
		dw offset Loc38Script0	; test 4th
Location39	Location_t <0FFh, 2, 0FFh, 0FFh, 4> ; DATA XREF: CODE:8216o
		LocationItem_t <0, APlayer, 5, 512, 1024, 0>
		LocationItem_t <0, ABird, 0, 512, 512, 0>
		LocationItem_t <0, ASmallFish, 0, 1536,	4096, offset FishDataSet3>
Gem5		LocationItem_t <IF_DoNotLoad or	1Ch, AGem, 0, 7424, 1536, \
					; DATA XREF: CODE:PickableItemso
				offset GemDataSet>
		db 0
Location3A	Location_t <0FFh, 0FFh,	0FEh, 0FEh, 3> ; DATA XREF: CODE:8218o
		LocationItem_t <0, APlayer, 0, 4864, 0,	0>
		LocationItem_t <1, ASwitch, 2, 7424, 768, offset Switch3AScript>
		LocationItem_t <2, AScaryEyes, 0, 3072,	3072, offset EyesDataSet>
		db 0
Location3B	Location_t <38h, 38h, 3Ch, 3Ch,	3> ; DATA XREF:	CODE:821Ao
		LocationItem_t <IF_DoNotLoad, ABird, 0,	256, 1536, 0> ;	FukkenBird
		LocationItem_t <1, ASpearman, 2, 8960, 3392, offset SpearmanDataSet>
		LocationItem_t <2, ADartsman, 2, 7680, 3680, offset DartsmanDataSet>
		db 1
		dw offset Loc0Script2
Location3C	Location_t <3Bh, 3Bh, 0FFh, 0FFh, 2> ; DATA XREF: CODE:821Co
		LocationItem_t <0, APlayer, 0, 256, 3392, 0> ; Item0
		LocationItem_t <0, ALivingstone, 0, 8544, 2336,	offset GemDataSet> ; Livingstone
		db 1
		dw offset Loc3CScript0
Location3D	Location_t <0FFh, 0FFh,	0FFh, 0FFh, 5> ; DATA XREF: CODE:821Eo
		LocationItem_t <0, APlayer, 0, 1280, 3872, 0>
		LocationItem_t <0, AOperaSoft, 0, 2304,	1280, 0> ; OPERASoft
		LocationItem_t <0, ADrummer, 0,	7424, 2112, offset SpiderDataSet> ; Drummer
		LocationItem_t <0, ADrummer, 1,	8704, 2112, offset SpiderDataSet> ; Drummer
		LocationItem_t <0, ASupongo, 0,	7680, 1280, 0> ; SUPONGO
		db 0			; Zero - no scripts
					;
EyesDataSet	CustomDataSet_t	<6, 0, 7, 0, 7,	offset EyeScript, 0C06h>
					; DATA XREF: CODE:890Fo CODE:8934o ...
MonkeyDataSet	CustomDataSet_t	<10, 0,	1, 2, 3, offset	MonkeyScript, 160Fh>
					; DATA XREF: CODE:822Eo CODE:825Eo ...
		EnemyShootingData_t <0Fh, 8Bh, ACoconut>
MinerDataSet	CustomDataSet_t	<10, 0,	1, 2, 3, offset	BatonerScript, 1610h>
					; DATA XREF: CODE:8404o CODE:842Bo ...
		EnemyShootingData_t <0F4h, 8Ah,	APick>
SpearmanDataSet	CustomDataSet_t	<10, 0,	1, 2, 3, offset	SpearmanScript,	1610h>
					; DATA XREF: CODE:stru_84D4o
					; CODE:84DDo ...
		EnemyShootingData_t <18h, 8Bh, ASpear>
DartsmanDataSet	CustomDataSet_t	<7, 0, 1, 2, 3,	offset BatonerScript, 1610h>
					; DATA XREF: CODE:84FEo CODE:853Co ...
		EnemyShootingData_t <21h, 8Bh, ADart>
IdolDataSet	CustomDataSet_t	<15, 0,	1, 2, 3, offset	IdolScript, 1610h>
					; DATA XREF: CODE:8510o CODE:8573o ...
		EnemyShootingData_t <3Ch, 8Bh, AStink>
BatonerDataSet	CustomDataSet_t	<10, 0,	1, 2, 3, offset	BatonerScript, 1610h>
					; DATA XREF: CODE:876Ao CODE:8788o ...
		EnemyShootingData_t <0F4h, 8Ah,	ABaton>
ArcherDataSet	CustomDataSet_t	<10, 0,	1, 2, 3, offset	ArcherScript, 1610h>
					; DATA XREF: CODE:84E6o CODE:8519o ...
		EnemyShootingData_t <0FDh, 8Ah,	AArrow>
ArcherDataSet2	CustomDataSet_t	<5, 0, 1, 2, 3,	offset Archer2Script, 1610h>
					; DATA XREF: CODE:86D3o CODE:86DCo
		EnemyShootingData_t <0FDh, 8Ah,	AArrow>
MaidDataSet	CustomDataSet_t	<15, 0,	1, 2, 3, offset	MaidScript, 1610h>
					; DATA XREF: CODE:8758o CODE:8761o ...
		EnemyShootingData_t <6,	8Bh, AHeart>
BatDataSet	CustomDataSet_t	<2, 0, 3, 0, 3,	offset BatScript, 0F0Eh>
					; DATA XREF: CODE:8326o CODE:8371o ...
		db 0
		db 0
		db 3
		db 4
		db 7
		db 83h
		db 21h
		db 6
		db 7
		db 0
		db 0
		db 0
		db 1
		db 1
		db 0B8h
		dw 0A21h
		db 0Ah
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0DDh
		db 21h
		db 7
		db 7
		db 0
		db 0
		db 0
		db 0
		db 0
		db 40h
		db 21h
		db 4
		db 7
		db 0
		db 0
		db 0
		db 1
		db 1
		db 0A3h
		db 21h
		db 10h
		db 3
		db 0
		db 0
		db 0
		db    1
		db 1
		db 83h
		db 21h
		db    5
		db 3
MineGasDataSet	CustomDataSet_t	<2, 0, 3, 0, 3,	offset MineGasDataSet, 0A10h>
					; DATA XREF: CODE:MineGasDataSeto
					; Loc0EScript0+21o
		db 2
		db 0
		db 1
		db    0
		db    1
		db  33h
		db  8Bh
		db  0Ch
		db  14h
		db    2
		db    0
		db    3
		db    0
		db    3
		db 0B0h
		db  21h
		db  0Ah
		db  0Ch
ReptileDataSet	CustomDataSet_t	<2, 0, 1, 2, 3,	offset SimpleScript, 0F10h>
					; DATA XREF: CODE:824Co CODE:82DEo ...
		EnemyAnimationRec_t <18h, 64, 0>
		EnemyAnimationRec_t <18h, 192, 0>
		db 0FFh
ReptileDataSet5	CustomDataSet_t	<2, 0, 1, 2, 3,	offset SimpleScript, 0F10h>
					; DATA XREF: CODE:8314o CODE:8890o
		EnemyAnimationRec_t <1Ch, 192, 0>
		EnemyAnimationRec_t <1Ch, 64, 0>
		db 0FFh
ReptileDataSet2	CustomDataSet_t	<2, 0, 1, 2, 3,	offset SimpleScript, 0F10h>
					; DATA XREF: CODE:8303o CODE:831Do ...
		EnemyAnimationRec_t <1Ch, 64, 0>
		EnemyAnimationRec_t <1Ch, 192, 0>
		db 0FFh
ReptileDataSet3	CustomDataSet_t	<2, 0, 1, 2, 3,	offset SimpleScript, 0F10h>
					; DATA XREF: CODE:8368o CODE:8394o ...
		EnemyAnimationRec_t <28h, 64, 0>
		EnemyAnimationRec_t <28h, 192, 0>
		db 0FFh
ReptileDataSet4	CustomDataSet_t	<2, 0, 1, 2, 3,	offset SimpleScript, 0F10h>
					; DATA XREF: CODE:82B2o CODE:838Bo
		EnemyAnimationRec_t <28h, 192, 0>
		EnemyAnimationRec_t <28h, 64, 0>
		db 0FFh
CrocoDataSet	CustomDataSet_t	<2, 0, 1, 2, 3,	offset CrocoScript, 0B20h>
					; DATA XREF: CODE:84C3o CODE:860Bo ...
		EnemyAnimationRec_t <50h, 64, 0>
		EnemyAnimationRec_t <50h, 192, 0>
		db 0FFh
SpiderDataSet	CustomDataSet_t	<2, 0, 1, 0, 1,	offset SimpleScript, 0F0Bh>
					; DATA XREF: CODE:8878o CODE:8899o ...
		EnemyAnimationRec_t <64h, 0, 0>
		db 0FFh
FishDataSet	CustomDataSet_t	<2, 0, 1, 2, 3,	offset SimpleScript, 1010h>
					; DATA XREF: CODE:8237o
		EnemyAnimationRec_t <0Ch, 64, 0>
		EnemyAnimationRec_t <10h, 32, 192>
		EnemyAnimationRec_t <20h, 64, 0>
		EnemyAnimationRec_t <10h, 32, 64>
		EnemyAnimationRec_t <0Ch, 64, 0>
		EnemyAnimationRec_t <0Ch, 192, 0>
		EnemyAnimationRec_t <10h, 224, 192>
		EnemyAnimationRec_t <20h, 192, 0>
		EnemyAnimationRec_t <10h, 224, 64>
		EnemyAnimationRec_t <0Ch, 192, 0>
		db 0FFh
FishDataSet2	CustomDataSet_t	<2, 0, 1, 2, 3,	offset SimpleScript, 1010h>
					; DATA XREF: CODE:8255o CODE:8271o ...
		EnemyAnimationRec_t <20h, 192, 0>
		EnemyAnimationRec_t <0Ch, 224, 192>
		EnemyAnimationRec_t <14h, 192, 0>
		EnemyAnimationRec_t <0Ch, 224, 64>
		EnemyAnimationRec_t <10h, 192, 0>
		EnemyAnimationRec_t <10h, 64, 0>
		EnemyAnimationRec_t <0Ch, 32, 192>
		EnemyAnimationRec_t <14h, 64, 0>
		EnemyAnimationRec_t <0Ch, 32, 64>
		EnemyAnimationRec_t <20h, 64, 0>
		db 0FFh
FishDataSet3	CustomDataSet_t	<2, 0, 1, 2, 3,	offset SimpleScript, 1010h>
					; DATA XREF: CODE:828Do CODE:895Eo ...
		EnemyAnimationRec_t <10h, 64, 0>
		EnemyAnimationRec_t <0Ch, 32, 192>
		EnemyAnimationRec_t <10h, 64, 0>
		EnemyAnimationRec_t <0Ch, 32, 64>
		EnemyAnimationRec_t <10h, 64, 0>
		EnemyAnimationRec_t <10h, 192, 0>
		EnemyAnimationRec_t <0Ch, 224, 192>
		EnemyAnimationRec_t <10h, 192, 0>
		EnemyAnimationRec_t <0Ch, 224, 64>
		EnemyAnimationRec_t <10h, 192, 0>
		db 0FFh
FishInCaveDataSet CustomDataSet_t <2, 0, 1, 2, 3, offset SimpleScript, 1010h>
					; DATA XREF: CODE:8347o
		EnemyAnimationRec_t <4,	64, 0>
		EnemyAnimationRec_t <0Ch, 32, 192>
		EnemyAnimationRec_t <0Ch, 64, 0>
		EnemyAnimationRec_t <0Ch, 32, 64>
		EnemyAnimationRec_t <0Ch, 64, 0>
		EnemyAnimationRec_t <0Ch, 192, 0>
		EnemyAnimationRec_t <0Ch, 224, 192>
		EnemyAnimationRec_t <0Ch, 192, 0>
		EnemyAnimationRec_t <0Ch, 224, 64>
		EnemyAnimationRec_t <4,	192, 0>
		db 0FFh
CrocoDataSet2	CustomDataSet_t	<2, 0, 1, 2, 3,	offset CrocoScript, 0B20h>
					; DATA XREF: CODE:86FDo
		EnemyAnimationRec_t <48h, 64, 0>
		EnemyAnimationRec_t <48h, 192, 0>
		db 0FFh
CrocoDataSet3	CustomDataSet_t	<2, 0, 1, 2, 3,	offset CrocoScript, 0B20h>
					; DATA XREF: CODE:8706o
		EnemyAnimationRec_t <48h, 192, 0>
		EnemyAnimationRec_t <48h, 64, 0>
		db 0FFh
FlyingDevilDataSet CustomDataSet_t <1, 0, 1, 2,	3, offset SimpleScript,	1610h>
					; DATA XREF: CODE:8672o CODE:86E5o
		EnemyAnimationRec_t <0Ch, 129, 192>
		EnemyAnimationRec_t <0Ch, 129, 64>
		EnemyAnimationRec_t <0Ch, 129, 192>
		EnemyAnimationRec_t <0Ch, 129, 64>
		EnemyAnimationRec_t <0Ch, 127, 192>
		EnemyAnimationRec_t <0Ch, 127, 64>
		EnemyAnimationRec_t <0Ch, 127, 192>
		EnemyAnimationRec_t <0Ch, 127, 64>
		db 0FFh
FoodDataSet	CustomDataSet_t	<255, 0, 0, 0, 0, offset FoodScript, 0D0Eh>
					; DATA XREF: CODE:Food1o CODE:Food2o ...
		EnemyAnimationRec_t <64h, 0, 0>
		db 0FFh
WaterDataSet	CustomDataSet_t	<255, 0, 0, 0, 0, offset WaterScript, 0D0Eh>
					; DATA XREF: CODE:Water1o CODE:Water2o ...
		EnemyAnimationRec_t <64h, 0, 0>
		db 0FFh
GemDataSet	CustomDataSet_t	<5, 0, 3, 0, 3,	offset OnFindGem, 0A0Ch>
					; DATA XREF: CODE:Gem1o CODE:Gem2o ...
		EnemyAnimationRec_t <64h, 0, 0>
		db 0FFh
RiflemanDataSet	CustomDataSet_t	<2, 0, 3, 4, 7,	offset RiflemanScript, 1610h>
					; DATA XREF: CODE:82C3o CODE:835Fo ...
		EnemyAnimationRec_t <10h, 192, 0>
		EnemyAnimationRec_t <10h, 64, 0>
		db 0FFh
RiflemanDataSet2 CustomDataSet_t <2, 0,	3, 4, 7, offset	RiflemanScript,	1610h>
					; DATA XREF: CODE:82A0o CODE:83D6o ...
stru_8CD4	EnemyAnimationRec_t <10h, 64, 0> ; DATA	XREF: InFirstTemple+A9o
		EnemyAnimationRec_t <10h, 192, 0>
		EnemyAnimationRec_t <0FFh, 57, 0>
		EnemyAnimationRec_t <0>
		EnemyAnimationRec_t <40h, 4, 38>
		EnemyAnimationRec_t <0>
		EnemyAnimationRec_t <0,	64, 5>
		EnemyAnimationRec_t <17h, 0, 17>
		EnemyAnimationRec_t <0,	35, 64>
		EnemyAnimationRec_t <0Fh, 16, 0>
		EnemyAnimationRec_t <0>
		EnemyAnimationRec_t <40h, 15, 8>
		EnemyAnimationRec_t <0,	17, 0>
		EnemyAnimationRec_t <23h, 64, 5>
SpareLocationItem LocationItem_t <0, APlayer, 0, 0, 3904, offset Loc0BScript0>
					; DATA XREF: InFirstTemple+96o
Footer		db 0			; DATA XREF: PrepareFootert
		db 1
		db 2
		db 65h
		db 0Bh
		db 0Ch
		db 0Dh
		db 0Eh
		db 0Fh
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 2Bh
		db 2Ch
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 0Eh
		db 0Fh
		db 1Bh
		db 1Ch
		db 1Dh
		db 65h
		db 1Eh
		db 1Fh
		db 0
		db 15h
		db 0
		db 3
		db 4
		db 41h
		db 47h
		db 48h
		db 49h
		db 4Ah
		db 4Bh
		db 4Bh
		db 4Fh
		db 50h
		db 51h
		db 52h
		db 53h
		db 4Bh
		db 4Eh
		db 4Dh
		db 4Ch
		db 44h
		db 2Dh
		db 2Eh
		db 65h
		db 2Fh
		db 30h
		db 2Fh
		db 30h
		db 2Fh
		db 30h
		db 2Fh
		db 30h
		db 2Fh
		db 30h
		db 2Fh
		db 30h
		db 2Fh
		db 30h
		db 65h
		db 65h
		db 20h
		db 21h
		db 0
		db 16h
		db 0
		db 5
		db 6
		db 42h
		db 63h
		db 64h
		db 64h
		db 64h
		db 64h
		db 64h
		db 64h
		db 64h
		db 64h
		db 64h
		db 64h
		db 64h
		db 65h
		db 65h
		db 65h
		db 45h
		db 65h
		db 65h
		db 65h
		db 65h
		db 65h
		db 65h
		db 65h
		db 65h
		db 31h
		db 32h
		db 65h
		db 35h
		db 36h
		db 65h
		db 39h
		db 3Ah
		db 65h
		db 3Dh
		db 3Eh
		db 22h
		db 23h
		db 0
		db 17h
		db 0
		db 7
		db 8
		db 43h
		db 54h
		db 55h
		db 56h
		db 57h
		db 58h
		db 59h
		db 5Ah
		db 5Bh
		db 5Ch
		db 5Dh
		db 5Eh
		db 5Fh
		db 60h
		db 61h
		db 62h
		db 46h
		db 65h
		db 10h
		db 10h
		db 10h
		db 10h
		db 10h
		db 10h
		db 65h
		db 33h
		db 34h
		db 65h
		db 37h
		db 38h
		db 65h
		db 3Bh
		db 3Ch
		db 65h
		db 3Fh
		db 40h
		db 24h
		db 25h
		db 0
		db 18h
		db 0
		db 9
		db 0Ah
		db 65h
		db 0Bh
		db 0Ch
		db 0Dh
		db 0Eh
		db 0Fh
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 65h
		db 28h
		db 29h
		db 29h
		db 2Ah
		db 65h
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 1Ah
		db 0Eh
		db 0Fh
		db 1Bh
		db 1Ch
		db 1Dh
		db 65h
		db 26h
		db 27h
FooterEnd	db 0FFh
Player_Sprite20_Empty_ db 6		; DATA XREF: CODE:7AF9o CODE:7B6Do
		db 17h
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
Player_Sprite0	db 6			; DATA XREF: CODE:PlayerAnimationo
					; CODE:7AB9o
		db 17h
		db    0,   0, 0Fh,   0,	  0,   0
		db    0,   0,0FFh,0F0h,	  0,   0
		db    0,   0,0AAh,0A0h,	  0,   0
		db    0, 0Fh,0FFh,0FFh,	  0,   0
		db    0,   0, 55h,0A0h,	  0,   0
		db    0,   0, 56h, 3Ah,	  0,   0
		db    0,   0, 6Ah,0AAh,	  0,   0
		db    0,   0, 7Ah,0A0h,	  0,   0
		db    0, 15h, 57h, 80h,	  0,   0
		db    1, 57h,0E5h,0FCh,	  0,   0
		db    5, 5Fh,0A5h,0FFh,	  0,   0
		db    5, 5Fh,0A5h,0FFh,	  0,   0
		db    5, 5Fh,0A9h,0FCh,	  0,   0
		db    5, 5Dh,0EAh,0A8h,	  0,   0
		db    1, 53h,0FFh,0AAh,	  0,   0
		db    0,   0, 3Fh,0F2h,	  0,   0
		db    0,   0, 0Ah, 80h,	  0,   0
		db    0,   0, 1Ah,   0,	  0,   0
		db    0,   0, 15h,   0,	  0,   0
		db    0,   0, 34h,   0,	  0,   0
		db    0,   0, 3Ch,   0,	  0,   0
		db    0,   0, 2Ah,0A8h,	  0,   0
		db    0,   0, 3Fh,0FFh,	  0,   0
Player_Sprite1	db 6			; DATA XREF: CODE:7AB7o
		db 17h
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,0F0h,	  0,   0
		db    0,   0, 0Fh,0FFh,	  0,   0
		db    0,   0, 0Ah,0AAh,	  0,   0
		db    0,   0,0FFh,0FFh,0F0h,   0
		db    0,   0,	5, 5Ah,	  0,   0
		db    0,   0,	5, 63h,0A0h,   0
		db    0,   0,	6,0AAh,0A0h,   0
		db    0,   0, 3Ah,0AAh,	  0,   0
		db    0, 15h, 5Fh,0A0h,	  0,   0
		db    1, 57h, 97h,0F0h,	  0,   0
		db    5, 5Ah,0A5h,0FCh,	  0,   0
		db    5, 6Ah,0F5h,0FFh,	  0,   0
		db    5,0AFh,0F5h,0FFh,	  0,   0
		db    1,0ADh, 96h, 5Eh,	  0,   0
		db    0,0A3h,0FFh,0FAh,0A8h,   0
		db  0Ah, 80h, 3Fh,0F0h,0A2h,   0
		db    0,   2, 8Fh,0A0h,	  0,   0
		db    0,   6,0A0h,0A9h,	  0,   0
		db  0Bh,0D5h,	0, 15h,	  0,0A0h
		db  3Ah,0F0h,	0, 17h,0FAh,0F0h
		db  0Fh,0A8h,	0,   3,0AFh,   0
		db    0,0FFh,	0,   0,0F0h,   0
Player_Sprite2	db 6			; DATA XREF: CODE:7ABBo
		db 17h
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,0F0h,	  0,   0
		db    0,   0, 0Fh,0FFh,	  0,   0
		db    0,   0, 0Ah,0AAh,	  0,   0
		db    0,   0,0FFh,0FFh,0F0h,   0
		db    0,   0,	5, 5Ah,	  0,   0
		db    0,   0,	5, 63h,0A0h,   0
		db    0,   0,	6,0AAh,0A0h,   0
		db    0,   0, 3Ah,0AAh,	  0,   0
		db    0, 15h, 5Fh,0A0h,	  0,   0
		db    1, 57h, 67h,0F0h,	  0,   0
		db    5, 5Fh,0A9h,0FCh,	  0,   0
		db    5, 5Fh,0AAh,0FFh,	  0,   0
		db    5, 5Fh,0FAh,0AAh,	  0,   0
		db    1, 5Dh, 96h,0AAh,0A0h,   0
		db    0,0A3h,0FFh, 30h,0A8h,   0
		db    2, 83h,0FCh,0F2h,	  8,   0
		db    0,   2,0B3h,0A0h,	  0,   0
		db    0,   6,0A0h,0A9h,	  0,   0
		db  0Bh,0D5h,	0, 15h,	  0,0A0h
		db  3Ah,0F0h,	0, 17h,0FAh,0F0h
		db  0Fh,0A8h,	0,   3,0AFh,   0
		db    0,0FFh,	0,   0,0F0h,   0
Player_Sprite3	db 6			; DATA XREF: CODE:7ABDo
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 0A0h
		db 0
		db 0
		db 0Ah
		db 80h
		db 56h
		db 0Ah
		db 0
		db 0
		db 0AAh
		db 0AFh
		db 6Ah
		db 0AAh
		db 0
		db 0Ah
		db 0A0h
		db 0ABh
		db 0FAh
		db 0A0h
		db 0
		db 2
		db 80h
		db 2Fh
		db 0FFh
		db 0
		db 0
		db 8
		db 80h
		db 0D7h
		db 0EBh
		db 2Ah
		db 0
		db 0
		db 3
		db 0FCh
		db 0A9h
		db 0A6h
		db 0A0h
		db 0
		db 3
		db 0FFh
		db 25h
		db 0E4h
		db 0A8h
		db 0
		db 0
		db 0FFh
		db 0C3h
		db 0F0h
		db 88h
		db 0
		db 0
		db 2Ah
		db 0A8h
		db 0A0h
		db 0
		db 0
		db 0
		db 3Fh
		db 0FFh
		db 3Ch
		db 0
Player_Sprite5	db 6			; DATA XREF: CODE:7AC1o
		db 17h
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 56h
		db 3Ah
		db 0
		db 0
		db 0
		db 0
		db 6Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 8
		db 0
		db 0
		db 15h
		db 5Ah
		db 0
		db 0AAh
		db 0
		db 1
		db 57h
		db 0D7h
		db 0C2h
		db 0A8h
		db 0
		db 5
		db 5Fh
		db 0E9h
		db 0FAh
		db 0
		db 0
		db 5
		db 5Fh
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 5
		db 5Fh
		db 0FAh
		db 0A0h
		db 0
		db 0
		db 1
		db 5Fh
		db 0F5h
		db 0FCh
		db 0
		db 0
		db 0
		db 0Dh
		db 9Fh
		db 3Ah
		db 0
		db 0
		db 0
		db 3
		db 0FFh
		db 0CAh
		db 90h
		db 0Ah
		db 0
		db 0
		db 3Fh
		db 0A0h
		db 5Fh
		db 0AFh
		db 0
		db 0
		db 0
		db 0A8h
		db 3Ah
		db 0F0h
		db 0
		db 0
		db 0
		db 29h
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 15h
		db 0C0h
		db 0A0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0CAh
		db 0F0h
		db 0
		db 0
		db 0
		db 3
		db 0AFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
Player_Sprite4	db 6			; DATA XREF: CODE:7ABFo
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 5
		db 5Ah
		db 0
		db 0
		db 0
		db 0
		db 5
		db 63h
		db 0A0h
		db 0
		db 0
		db 0
		db 6
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 3Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 15h
		db 5Fh
		db 0A0h
		db 0
		db 0
		db 1
		db 57h
		db 0A7h
		db 0F0h
		db 0
		db 0
		db 5
		db 56h
		db 0A9h
		db 0FCh
		db 0
		db 0
		db 5
		db 5Ah
		db 0ADh
		db 0FFh
		db 0
		db 0
		db 5
		db 6Ah
		db 0F5h
		db 0FFh
		db 0
		db 0
		db 1
		db 5Ah
		db 0AFh
		db 0FCh
		db 0
		db 0
		db 0
		db 0Fh
		db 0AAh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FAh
		db 0C0h
		db 0
		db 0
		db 0
		db 3
		db 0FEh
		db 0
		db 0
		db 0
		db 0
		db 2Bh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 6Ah
		db 0
		db 0
		db 0
		db 0
		db 0BDh
		db 50h
		db 0
		db 0
		db 0
		db 3
		db 0AFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FAh
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0F0h
		db 0
		db 0
		db 0
Player_Sprite6	db 6			; DATA XREF: CODE:7AC3o
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 2Ah
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0AAh
		db 5
		db 5Ah
		db 0
		db 0
		db 0
		db 0AAh
		db 5
		db 63h
		db 0A0h
		db 0
		db 0
		db 28h
		db 6
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 28h
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0Ah
		db 15h
		db 0A8h
		db 0
		db 0
		db 0
		db 0Ah
		db 9Dh
		db 5Fh
		db 0F0h
		db 0
		db 0
		db 6
		db 0AAh
		db 97h
		db 0FCh
		db 0
		db 0
		db 5
		db 6Ah
		db 0D7h
		db 0FFh
		db 0
		db 0
		db 5
		db 5Fh
		db 0D7h
		db 0FFh
		db 0
		db 0
		db 1
		db 55h
		db 96h
		db 66h
		db 0A0h
		db 0
		db 0
		db 3
		db 0FFh
		db 30h
		db 0A8h
		db 0
		db 0
		db 3
		db 0FCh
		db 0F2h
		db 8
		db 0
		db 0
		db 2
		db 0B3h
		db 0A0h
		db 0
		db 0
		db 0
		db 6
		db 0A0h
		db 0A9h
		db 0
		db 0
		db 0Bh
		db 0D5h
		db 0
		db 15h
		db 0
		db 0A0h
		db 3Ah
		db 0F0h
		db 0
		db 17h
		db 0FAh
		db 0F0h
		db 0Fh
		db 0A8h
		db 0
		db 3
		db 0AFh
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0F0h
		db 0
Player_Sprite7	db 6			; DATA XREF: CODE:7AC5o
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 0A0h
		db 0
		db 0
		db 2
		db 80h
		db 56h
		db 3Ah
		db 0
		db 0
		db 0Ah
		db 0A1h
		db 6Ah
		db 0AAh
		db 0
		db 0
		db 55h
		db 75h
		db 0AAh
		db 0A0h
		db 0
		db 1
		db 55h
		db 0D5h
		db 0E8h
		db 0
		db 0
		db 5
		db 57h
		db 0FFh
		db 0AAh
		db 80h
		db 0
		db 5
		db 5Fh
		db 0FEh
		db 0AAh
		db 0AAh
		db 0A8h
		db 5
		db 5Fh
		db 0FFh
		db 5Fh
		db 2
		db 0AAh
		db 1
		db 5Fh
		db 0FDh
		db 7Fh
		db 0
		db 82h
		db 0
		db 0Dh
		db 96h
		db 5Ch
		db 0
		db 0
		db 0
		db 3
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 3Fh
		db 0F0h
		db 0
		db 0
		db 0
		db 2
		db 8Fh
		db 0A0h
		db 0
		db 0
		db 0
		db 6
		db 0A0h
		db 0A9h
		db 0
		db 0
		db 0Bh
		db 0D5h
		db 0
		db 15h
		db 0
		db 0A0h
		db 3Ah
		db 0F0h
		db 0
		db 17h
		db 0FAh
		db 0F0h
		db 0Fh
		db 0A8h
		db 0
		db 3
		db 0AFh
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0F0h
		db 0
Player_Sprite8	db 6			; DATA XREF: CODE:7AC7o
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 5
		db 5Ah
		db 0
		db 0
		db 0
		db 0
		db 5
		db 6Ah
		db 0A0h
		db 0
		db 0
		db 0
		db 6
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0A0h
		db 0
		db 0
		db 0
		db 1
		db 55h
		db 70h
		db 0
		db 0
		db 0
		db 15h
		db 0FBh
		db 5Ch
		db 0
		db 0
		db 0
		db 55h
		db 0EAh
		db 5Fh
		db 0
		db 0
		db 0
		db 55h
		db 0ABh
		db 5Fh
		db 0
		db 0
		db 0
		db 56h
		db 0AFh
		db 55h
		db 0
		db 0
		db 0Bh
		db 16h
		db 0BFh
		db 6Fh
		db 0FEh
		db 0A0h
		db 0Bh
		db 2
		db 95h
		db 0FFh
		db 0FEh
		db 0A9h
		db 0Bh
		db 2
		db 0AFh
		db 0FFh
		db 0F0h
		db 5
		db 0FBh
		db 2Ah
		db 0ABh
		db 0FFh
		db 0
		db 0
		db 0FBh
Player_Sprite9	db 6			; DATA XREF: CODE:7AC9o
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 5
		db 0
		db 0
		db 0
		db 0
		db 0
		db 29h
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 28h
		db 0
		db 0FFh
		db 0C0h
		db 0
		db 0
		db 0A8h
		db 0
		db 0FFh
		db 0AFh
		db 0
		db 0
		db 0A8h
		db 0
		db 0FAh
		db 0FCh
		db 0
		db 0
		db 0FFh
		db 0
		db 0AFh
		db 0E8h
		db 0
		db 0
		db 0FFh
		db 0
		db 0FDh
		db 0A8h
		db 3
		db 0FFh
		db 3Fh
		db 0C0h
		db 0D5h
		db 0A8h
		db 35h
		db 55h
		db 5Fh
		db 0F0h
		db 15h
		db 0A8h
		db 0D6h
		db 0FFh
		db 0DFh
		db 0F0h
		db 5
		db 0AFh
		db 5Ah
		db 0AFh
		db 0DAh
		db 0A0h
		db 0
		db 0BDh
		db 7Fh
		db 0AAh
		db 0AAh
		db 8
Player_Sprite0A	db 6			; DATA XREF: CODE:7ACBo
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 1
		db 0
		db 0
		db 0
		db 2
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 40h
		db 0
		db 30h
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 30h
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 5
		db 5Ah
		db 0
		db 0
		db 0
		db 0
		db 5
		db 63h
		db 0A0h
		db 0
		db 0
		db 0
		db 6
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0A0h
		db 0
		db 0
		db 0
		db 1
		db 55h
		db 70h
		db 0
		db 0
		db 0
		db 15h
		db 0FBh
		db 5Ch
		db 0
		db 0
		db 0
		db 55h
		db 0FAh
		db 5Fh
		db 0
		db 0
		db 0
		db 55h
		db 0FAh
		db 5Fh
		db 0
		db 0
		db 0
		db 55h
		db 0EBh
		db 55h
		db 0
		db 0
		db 0Bh
		db 15h
		db 6Bh
		db 6Fh
		db 0C0h
		db 0
		db 0Bh
		db 0
		db 29h
		db 0FFh
		db 0FCh
		db 0
		db 0Bh
		db 0
		db 2Ah
		db 0FFh
		db 0FEh
		db 0A5h
		db 0FBh
		db 2
		db 0AAh
		db 0BFh
		db 0FEh
		db 0A5h
		db 0FBh
Player_Sprite0B	db 6			; DATA XREF: CODE:7ACDo
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 4
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 4
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0Ch
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0A0h
		db 0
		db 80h
		db 0
		db 10h
		db 1
		db 0A4h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 5Ah
		db 0
		db 0
		db 0
		db 0
		db 5
		db 6Ah
		db 0A0h
		db 0
		db 0
		db 0
		db 6
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0A0h
		db 0
		db 0
		db 0
		db 1
		db 55h
		db 70h
		db 0
		db 0
		db 0
		db 15h
		db 0FBh
		db 5Ch
		db 0
		db 0
		db 0
		db 55h
		db 0EAh
		db 5Fh
		db 0
		db 0
		db 0
		db 55h
		db 0ABh
		db 5Fh
		db 0
		db 0
		db 0
		db 56h
		db 0AFh
		db 55h
		db 0
		db 0
		db 0Bh
		db 16h
		db 0BFh
		db 6Fh
		db 0FEh
		db 0A0h
		db 0Bh
		db 2
		db 95h
		db 0FFh
		db 0FEh
		db 0A9h
		db 0Bh
		db 2
		db 0AFh
		db 0FFh
		db 0F0h
		db 5
		db 0FBh
		db 2Ah
		db 0ABh
		db 0FFh
		db 0
		db 0
		db 0FBh
Player_Sprite0C	db 6			; DATA XREF: CODE:7ACFo
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 15h
		db 54h
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 55h
		db 0
		db 0
		db 0F0h
		db 0
		db 55h
		db 55h
		db 0
		db 0Fh
		db 0A0h
		db 0
		db 15h
		db 55h
		db 0
		db 0FAh
		db 0B0h
		db 3
		db 7Fh
		db 0FFh
		db 0
		db 0A0h
		db 0F4h
		db 0Fh
		db 7Fh
		db 0FFh
		db 0
		db 0
		db 1Ah
		db 0CFh
		db 0EFh
		db 0EAh
		db 0
		db 0
		db 0Bh
		db 3Fh
		db 0F6h
		db 0ABh
		db 0
		db 0
		db 0
		db 0FFh
		db 0FAh
		db 80h
		db 0
		db 0
		db 0Ah
		db 0FFh
		db 0Ah
		db 0
		db 0
		db 0
		db 5Ah
		db 0B0h
		db 0Ah
		db 0
		db 0
		db 0Fh
		db 0D8h
		db 0
		db 0Ah
		db 0
		db 0
		db 0ABh
		db 0
		db 0
		db 22h
		db 80h
		db 0
		db 0FAh
		db 0
		db 0
		db 2
		db 0
		db 0
		db 0Fh
		db 0A0h
		db 0
		db 2
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
Player_Sprite0D	db 6			; DATA XREF: CODE:7AD1o
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 15h
		db 54h
		db 0
		db 0
		db 0
		db 88h
		db 55h
		db 55h
		db 0
		db 0
		db 0
		db 2Ah
		db 0A9h
		db 55h
		db 0
		db 38h
		db 0
		db 0Ah
		db 0AAh
		db 95h
		db 0
		db 0EBh
		db 0
		db 23h
		db 7Eh
		db 0AFh
		db 3
		db 0AFh
		db 0D0h
		db 0Fh
		db 7Fh
		db 0ABh
		db 0Eh
		db 80h
		db 6Ah
		db 0BFh
		db 0EFh
		db 0EAh
		db 0Ah
		db 0
		db 0Ah
		db 0FFh
		db 0F7h
		db 0FFh
		db 0
		db 0
		db 0
		db 0FFh
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Dh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
Player_Sprite1E	db 6			; DATA XREF: CODE:7AD3o CODE:7AF5o
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 22h
		db 20h
		db 0
		db 0
		db 3Fh
		db 0FCh
		db 0Ah
		db 80h
		db 0
		db 0
		db 2Ah
		db 0A8h
		db 2Ah
		db 0
		db 0
		db 3
		db 0FFh
		db 0FFh
		db 0CAh
		db 0
		db 0
		db 0
		db 2Ah
		db 94h
		db 0Ah
		db 0
		db 0
		db 0
		db 3Ah
		db 0E4h
		db 0Ah
		db 0
		db 8
		db 0
		db 20h
		db 0A4h
		db 0Ah
		db 0
		db 88h
		db 80h
		db 20h
		db 28h
		db 28h
		db 0
		db 2Ah
		db 0
		db 8
		db 0A0h
		db 0A8h
		db 0
		db 0Ah
		db 82h
		db 9Fh
		db 0F6h
		db 0A0h
		db 0
		db 0Ah
		db 2Ah
		db 0DFh
		db 0F7h
		db 80h
		db 0
		db 0Ah
		db 0A8h
		db 0DFh
		db 0F7h
		db 0
		db 0
		db 2
		db 80h
		db 0DFh
		db 0F7h
		db 0
		db 0
		db 0
		db 0
		db 0DFh
		db 0F7h
		db 0
		db 0
Player_Sprite1F	db 6			; DATA XREF: CODE:7AD5o CODE:7AF7o
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 8
		db 88h
		db 3
		db 0C0h
		db 0
		db 0
		db 2
		db 0A0h
		db 3Fh
		db 0FCh
		db 0
		db 0
		db 0
		db 0A8h
		db 2Ah
		db 0A8h
		db 0
		db 0
		db 0
		db 0A3h
		db 0FFh
		db 0FFh
		db 0C0h
		db 0
		db 0
		db 0A0h
		db 16h
		db 0A8h
		db 0
		db 0
		db 0
		db 0A0h
		db 1Bh
		db 0ACh
		db 0
		db 0
		db 0
		db 0A0h
		db 1Ah
		db 8
		db 0
		db 20h
		db 0
		db 28h
		db 28h
		db 8
		db 2
		db 22h
		db 0
		db 2Ah
		db 0Ah
		db 20h
		db 0
		db 0A8h
		db 0
		db 0Ah
		db 9Fh
		db 0F6h
		db 82h
		db 0A0h
		db 0
		db 2
		db 0DFh
		db 0F7h
		db 0A8h
		db 0A0h
		db 0
		db 0
		db 0DFh
		db 0F7h
		db 2Ah
		db 0A0h
		db 0
		db 0
		db 0DFh
		db 0F7h
		db 2
		db 80h
		db 0
		db 0
		db 0DFh
		db 0F7h
		db 0
		db 0
Sprite11	db 2			; DATA XREF: CODE:BoomerangAnimationo
		db 7
		db 0FFh
		db 0FCh
		db 55h
		db 57h
		db 0
		db 7
		db 0
		db 7
		db 0
		db 7
		db 0
		db 7
		db 0
		db 7
Sprite12	db 2			; DATA XREF: CODE:7AFDo
		db 7
		db 0
		db 7
		db 0
		db 7
		db 0
		db 7
		db 0
		db 7
		db 0
		db 7
		db 55h
		db 57h
		db 0FFh
		db 0FCh
Sprite13	db 2			; DATA XREF: CODE:7AFFo
		db 7
		db 0D0h
		db 0
		db 0D0h
		db 0
		db 0D0h
		db 0
		db 0D0h
		db 0
		db 0D0h
		db 0
		db 0D5h
		db 55h
		db 3Fh
		db 0FFh
Sprite14	db 2			; DATA XREF: CODE:7B01o
		db 7
		db 3Fh
		db 0FFh
		db 0D5h
		db 55h
		db 0D0h
		db 0
		db 0D0h
		db 0
		db 0D0h
		db 0
		db 0D0h
		db 0
		db 0D0h
		db 0
Sprite15	db 3			; DATA XREF: CODE:KnifeAnimationo
		db 4
		db 2
		db 80h
		db 0
		db 0AAh
		db 95h
		db 54h
		db 0AAh
		db 0BFh
		db 0FFh
		db 2
		db 80h
		db 0
Sprite16	db 2			; DATA XREF: CODE:BombAnimationo
		db 7
		db 0Ah
		db 0A0h
		db 2
		db 80h
		db 0Ah
		db 0E0h
		db 2Bh
		db 0B8h
		db 2Eh
		db 0ECh
		db 2Bh
		db 0B8h
		db 0Ah
		db 0E0h
Sprite17	db 0Ch			; DATA XREF: CODE:RodAnimationo
					; CODE:7B17o
		db 1
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
Sprite18	db 0Ch			; DATA XREF: CODE:7B0Bo
		db 8
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
Sprite19	db 0Ah			; DATA XREF: CODE:7B0Do
		db 10h
		db 0FCh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0FCh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0FCh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0FCh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0FCh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
Sprite1A	db 8			; DATA XREF: CODE:7B0Fo
		db 19h
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
Sprite1B	db 6			; DATA XREF: CODE:7B11o
		db 20h
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
Sprite1C	db 4			; DATA XREF: CODE:7B13o
		db 29h
		db 0F0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 3
Sprite1D	db 1			; DATA XREF: CODE:7B15o CODE:7B23o
		db 30h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
		db 0C0h
Sprite1E	db 6			; DATA XREF: CODE:ScoreAnimationo
		db 6
		db 0Fh
		db 3
		db 0FCh
		db 3
		db 0FCh
		db 0
		db 3Fh
		db 0Fh
		db 0Fh
		db 0Fh
		db 0Fh
		db 0
		db 0Fh
		db 0Fh
		db 0Fh
		db 0Fh
		db 0Fh
		db 0
		db 0Fh
		db 0Fh
		db 0Fh
		db 0Fh
		db 0Fh
		db 0
		db 0Fh
		db 0Fh
		db 0Fh
		db 0Fh
		db 0Fh
		db 0
		db 3Fh
		db 0C3h
		db 0FCh
		db 3
		db 0FCh
		db 0
byte_9B23	db 6			; DATA XREF: CODE:7B27o
		db 6
		db 5
		db 50h
		db 15h
		db 54h
		db 5
		db 50h
		db 14h
		db 14h
		db 14h
		db 0
		db 14h
		db 14h
		db 0
		db 54h
		db 15h
		db 50h
		db 14h
		db 14h
		db 5
		db 50h
		db 0
		db 54h
		db 14h
		db 14h
		db 15h
		db 0
		db 14h
		db 14h
		db 14h
		db 14h
		db 15h
		db 54h
		db 5
		db 50h
		db 5
		db 50h
byte_9B49	db 6			; DATA XREF: CODE:7B29o
		db 6
		db 2Ah
		db 0A8h
		db 0Ah
		db 0A0h
		db 0Ah
		db 0A0h
		db 28h
		db 0
		db 28h
		db 28h
		db 28h
		db 28h
		db 2Ah
		db 0A0h
		db 28h
		db 28h
		db 28h
		db 28h
		db 0
		db 0A8h
		db 28h
		db 28h
		db 28h
		db 28h
		db 28h
		db 28h
		db 28h
		db 28h
		db 28h
		db 28h
		db 0Ah
		db 0A0h
		db 0Ah
		db 0A0h
		db 0Ah
		db 0A0h
byte_9B6F	db 6			; DATA XREF: CODE:ExplodeAnimationo
		db 15h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 3Dh
		db 70h
		db 0FCh
		db 0
		db 0
		db 0
		db 35h
		db 57h
		db 0D7h
		db 0C0h
		db 0
		db 0
		db 0Dh
		db 97h
		db 55h
		db 70h
		db 0
		db 0
		db 5
		db 55h
		db 59h
		db 70h
		db 0
		db 0
		db 35h
		db 65h
		db 95h
		db 0C0h
		db 0
		db 0
		db 0D6h
		db 59h
		db 55h
		db 0C0h
		db 0
		db 0
		db 0D5h
		db 56h
		db 65h
		db 0
		db 0
		db 0
		db 0F7h
		db 0D5h
		db 57h
		db 0
		db 0
		db 0
		db 3Ch
		db 33h
		db 5Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FCh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_9BEF	db 6			; DATA XREF: CODE:7B2Do CODE:7B31o
		db 15h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FCh
		db 0
		db 0FFh
		db 0
		db 0
		db 3
		db 0D7h
		db 3
		db 0D5h
		db 0C0h
		db 0
		db 3
		db 55h
		db 0F5h
		db 55h
		db 40h
		db 0
		db 3
		db 55h
		db 55h
		db 55h
		db 7Ch
		db 0
		db 0
		db 0D5h
		db 55h
		db 0A5h
		db 57h
		db 0
		db 0
		db 0D5h
		db 0A5h
		db 59h
		db 57h
		db 0
		db 0
		db 1Ah
		db 56h
		db 69h
		db 5Fh
		db 0
		db 0
		db 29h
		db 65h
		db 65h
		db 0FCh
		db 0
		db 3
		db 65h
		db 95h
		db 65h
		db 0C0h
		db 0
		db 0Dh
		db 59h
		db 59h
		db 95h
		db 0C0h
		db 0
		db 0Dh
		db 56h
		db 55h
		db 55h
		db 50h
		db 0
		db 0Fh
		db 55h
		db 59h
		db 0A5h
		db 5Ch
		db 0
		db 3
		db 0D5h
		db 0D6h
		db 95h
		db 5Fh
		db 0
		db 0
		db 35h
		db 55h
		db 57h
		db 0D7h
		db 0
		db 0
		db 0
		db 0F5h
		db 0C0h
		db 3Ch
		db 0
		db 0
		db 0
		db 3Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_9C6F	db 6			; DATA XREF: CODE:7B2Fo
		db 15h
		db 20h
		db 0
		db 0
		db 20h
		db 0
		db 28h
		db 8
		db 8
		db 0
		db 0A8h
		db 2
		db 0A0h
		db 0Ah
		db 0
		db 0FCh
		db 0A8h
		db 0Ah
		db 80h
		db 2
		db 0A3h
		db 0DFh
		db 0C8h
		db 0FAh
		db 0
		db 2
		db 0A3h
		db 55h
		db 77h
		db 7Ch
		db 0
		db 0
		db 2Fh
		db 59h
		db 55h
		db 5Ch
		db 0
		db 2
		db 0Dh
		db 55h
		db 59h
		db 5Ch
		db 0
		db 28h
		db 15h
		db 5Ah
		db 55h
		db 70h
		db 0
		db 0
		db 0D9h
		db 55h
		db 55h
		db 42h
		db 80h
		db 3
		db 55h
		db 66h
		db 65h
		db 7Ah
		db 0A8h
		db 3
		db 56h
		db 59h
		db 95h
		db 7Eh
		db 0
		db 3
		db 0D5h
		db 55h
		db 59h
		db 5Ch
		db 0
		db 0
		db 0FFh
		db 0D5h
		db 95h
		db 0F0h
		db 0
		db 20h
		db 2Fh
		db 25h
		db 56h
		db 0
		db 20h
		db 0
		db 0AAh
		db 0Dh
		db 5Eh
		db 80h
		db 20h
		db 0
		db 0A8h
		db 0Dh
		db 0FAh
		db 0A0h
		db 0
		db 2
		db 80h
		db 0Bh
		db 0C2h
		db 0A8h
		db 0
		db 0Ah
		db 0
		db 28h
		db 0
		db 0Ah
		db 0
		db 20h
		db 0
		db 28h
		db 28h
		db 0
		db 80h
		db 0
		db 0
		db 20h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_9CEF	db 6			; DATA XREF: CODE:7B3Bo CODE:7B3Fo
		db 10h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 20h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A9h
		db 0
		db 0A8h
		db 0
		db 0
		db 2
		db 0A4h
		db 2
		db 0Ah
		db 7Fh
		db 0FFh
		db 0AAh
		db 50h
		db 3Eh
		db 0A5h
		db 7Fh
		db 0FFh
		db 0FFh
		db 0
		db 73h
		db 0AAh
		db 5Fh
		db 0FFh
		db 0F5h
		db 50h
		db 4Ch
		db 0Ah
		db 85h
		db 55h
		db 50h
		db 0
		db 0
		db 0
		db 0A2h
		db 68h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 10h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 11h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_9D51	db 6			; DATA XREF: CODE:7B3Do
		db 10h
		db 0
		db 0
		db 5
		db 55h
		db 0A0h
		db 0
		db 0
		db 0
		db 5Fh
		db 0FFh
		db 0FAh
		db 0A0h
		db 0
		db 1
		db 0FFh
		db 0AAh
		db 0AAh
		db 80h
		db 0
		db 7
		db 0FFh
		db 0FFh
		db 0AAh
		db 0
		db 0
		db 7
		db 0FAh
		db 0AAh
		db 0A0h
		db 20h
		db 0
		db 7
		db 0FFh
		db 0FAh
		db 0
		db 28h
		db 0
		db 1
		db 0FAh
		db 0A8h
		db 0
		db 0A9h
		db 0
		db 0AAh
		db 7Fh
		db 0A0h
		db 2
		db 0A4h
		db 2
		db 0Ah
		db 9Fh
		db 0FAh
		db 0AAh
		db 50h
		db 3Eh
		db 0AAh
		db 9Fh
		db 0EAh
		db 0A9h
		db 0
		db 7Fh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0A0h
		db 0
		db 40h
		db 0Ah
		db 8Ah
		db 8Ah
		db 0
		db 0
		db 0
		db 0
		db 0A2h
		db 68h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 10h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 11h
		db 0
		db 0
		db 0
byte_9DB3	db 6			; DATA XREF: CODE:7B41o
		db 10h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 20h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A9h
		db 0
		db 0AAh
		db 0
		db 0
		db 2
		db 0A4h
		db 2
		db 0Ah
		db 8Ah
		db 0AAh
		db 0AAh
		db 50h
		db 3Eh
		db 0AAh
		db 0ABh
		db 2Ah
		db 0A9h
		db 0
		db 0FFh
		db 0AAh
		db 9Fh
		db 8Ah
		db 0A0h
		db 0
		db 0C0h
		db 0Ah
		db 7Eh
		db 8Ah
		db 0
		db 0
		db 0
		db 0
		db 7Eh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 7Fh
		db 0AAh
		db 0A9h
		db 0
		db 0
		db 0
		db 17h
		db 0FFh
		db 0FDh
		db 50h
		db 0
		db 0
		db 1
		db 55h
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_9E15	db 2			; DATA XREF: CODE:BubbleAnimationo
		db 15h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 3
		db 0C0h
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0Ch
		db 30h
		db 0F0h
		db 0Fh
		db 0
		db 0
		db 0
byte_9E41	db 2			; DATA XREF: CODE:7B45o CODE:7B49o
		db 15h
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 30h
		db 0C0h
		db 3Fh
		db 0C0h
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
byte_9E6D	db 2			; DATA XREF: CODE:7B47o
		db 15h
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 3
		db 0Ch
		db 3
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
byte_9E99	db 6			; DATA XREF: CODE:7B51o
		db 17h
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0
		db 30h
		db 0Fh
		db 14h
		db 0F0h
		db 0
		db 0
		db 0
		db 0F0h
		db 55h
		db 4Fh
		db 0
		db 0
		db 0Fh
		db 45h
		db 55h
		db 54h
		db 0C0h
		db 0
		db 35h
		db 55h
		db 55h
		db 55h
		db 30h
		db 0
		db 0
		db 55h
		db 1
		db 45h
		db 5Ch
		db 0
		db 15h
		db 0
		db 54h
		db 15h
		db 55h
		db 40h
		db 5
		db 55h
		db 55h
		db 55h
		db 41h
		db 50h
		db 0
		db 55h
		db 55h
		db 5
		db 0
		db 54h
		db 0Fh
		db 5
		db 54h
		db 50h
		db 0
		db 14h
		db 0
		db 0
		db 55h
		db 0
		db 0
		db 14h
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 14h
		db 0
		db 0
		db 0
		db 28h
		db 0
		db 14h
		db 0
		db 0
		db 2
		db 0BEh
		db 80h
		db 50h
		db 0
		db 0
		db 0
		db 28h
		db 5
		db 40h
		db 0
		db 0
		db 0
		db 1
		db 54h
		db 0
		db 0
		db 0
		db 0
		db 15h
		db 42h
		db 80h
		db 0
		db 0
		db 0
		db 50h
		db 2Bh
		db 0E8h
		db 0
		db 0
		db 1
		db 40h
		db 2
		db 80h
		db 0
		db 0
		db 51h
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 44h
		db 0
		db 0
		db 0
		db 0
		db 1
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 40h
		db 0
		db 0
byte_9F25	db 6			; DATA XREF: CODE:7B53o
		db 17h
		db 0
		db 3
		db 0C0h
		db 0FFh
		db 0
		db 0
		db 0
		db 0Dh
		db 7Fh
		db 54h
		db 0F0h
		db 0
		db 0
		db 34h
		db 1
		db 55h
		db 4Fh
		db 0
		db 0
		db 0
		db 54h
		db 5
		db 54h
		db 0C0h
		db 0
		db 0
		db 1
		db 51h
		db 55h
		db 30h
		db 0
		db 0
		db 0
		db 4
		db 15h
		db 30h
		db 0
		db 0
		db 0
		db 51h
		db 55h
		db 54h
		db 0
		db 0
		db 5
		db 45h
		db 51h
		db 14h
		db 0
		db 15h
		db 54h
		db 55h
		db 5
		db 14h
		db 0
		db 5
		db 51h
		db 50h
		db 50h
		db 14h
		db 0
		db 0
		db 15h
		db 55h
		db 0
		db 14h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 40h
		db 0
		db 0
		db 28h
		db 0
		db 54h
		db 0
		db 0
		db 2
		db 0BEh
		db 85h
		db 40h
		db 0
		db 0
		db 0
		db 28h
		db 14h
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 52h
		db 0BEh
		db 80h
		db 0
		db 0
		db 0
		db 50h
		db 28h
		db 0
		db 0
		db 0
		db 1
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 51h
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 44h
		db 0
		db 0
		db 0
		db 0
		db 1
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 40h
		db 0
		db 0
byte_9FB1	db 6			; DATA XREF: CODE:7B4Fo CODE:7B55o
		db 17h
		db 0
		db 0
		db 0Fh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0F5h
		db 5Fh
		db 0
		db 0
		db 0
		db 0Fh
		db 50h
		db 5
		db 0F0h
		db 0
		db 0
		db 35h
		db 5
		db 50h
		db 5Ch
		db 0
		db 0
		db 0D4h
		db 50h
		db 5
		db 17h
		db 0
		db 0
		db 55h
		db 0
		db 0
		db 55h
		db 0
		db 0
		db 50h
		db 0
		db 0
		db 5
		db 0
		db 0
		db 14h
		db 50h
		db 5
		db 14h
		db 0
		db 0
		db 5
		db 5
		db 50h
		db 50h
		db 0
		db 0
		db 0
		db 50h
		db 5
		db 0
		db 0
		db 0
		db 0
		db 5
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 1
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 1
		db 40h
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 52h
		db 0BEh
		db 80h
		db 0
		db 0
		db 0
		db 14h
		db 28h
		db 0
		db 0
		db 0Ah
		db 0
		db 14h
		db 0
		db 0
		db 0
		db 0AFh
		db 0A0h
		db 50h
		db 0
		db 0
		db 0
		db 0Ah
		db 1
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 1
		db 41h
		db 0
		db 0
		db 0
		db 0
		db 11h
		db 44h
		db 0
		db 0
		db 0
		db 0
		db 11h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 1
		db 40h
		db 0
		db 0
byte_A03D	db 4			; DATA XREF: CODE:SwitchAnimationo
					; CODE:7B5Bo
		db 0Eh
		db 2Ah
		db 0AAh
		db 0AAh
		db 0A8h
		db 33h
		db 33h
		db 0CCh
		db 0CCh
		db 2Ah
		db 0AAh
		db 0AAh
		db 0A8h
		db 0Fh
		db 0FCh
		db 0Fh
		db 0F0h
		db 3
		db 0F0h
		db 3Fh
		db 0C0h
		db 0
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0Fh
		db 0F0h
		db 0
		db 0
		db 0Ah
		db 80h
		db 0
		db 0
		db 2Ah
		db 0
		db 0
		db 0
		db 0A8h
		db 0
		db 0
		db 2
		db 0A0h
		db 0
		db 0
		db 0Ch
		db 80h
		db 0
		db 0
		db 3Fh
		db 0
		db 0
		db 0
		db 3Fh
		db 0
		db 0
		db 0
byte_A077	db 4			; DATA XREF: CODE:7B59o CODE:7B5Do
		db 0Eh
		db 2Ah
		db 0AAh
		db 0AAh
		db 0A8h
		db 33h
		db 33h
		db 0CCh
		db 0CCh
		db 2Ah
		db 0AAh
		db 0AAh
		db 0A8h
		db 0Fh
		db 0F0h
		db 3Fh
		db 0F0h
		db 3
		db 0FCh
		db 0Fh
		db 0C0h
		db 0
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0Fh
		db 0F0h
		db 0
		db 0
		db 2
		db 0A0h
		db 0
		db 0
		db 0
		db 0A8h
		db 0
		db 0
		db 0
		db 2Ah
		db 0
		db 0
		db 0
		db 0Ah
		db 80h
		db 0
		db 0
		db 2
		db 30h
		db 0
		db 0
		db 0
		db 0FCh
		db 0
		db 0
		db 0
		db 0FCh
byte_A0B1	db 5			; DATA XREF: CODE:ScaryEyesAnimationo
					; CODE:7B6Bo
		db 6
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 82h
		db 80h
		db 0
		db 0
		db 0Bh
		db 0EBh
		db 0E0h
		db 0
		db 0
		db 2
		db 82h
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_A0D1	db 5			; DATA XREF: CODE:7B61o CODE:7B69o
		db 6
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 82h
		db 0A8h
		db 0
		db 0
		db 0B3h
		db 0AAh
		db 0CEh
		db 0
		db 0
		db 0B3h
		db 0AAh
		db 0CEh
		db 0
		db 0
		db 2Ah
		db 82h
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_A0F1	db 5			; DATA XREF: CODE:7B63o CODE:7B67o
		db 6
		db 2
		db 0AAh
		db 0
		db 0AAh
		db 80h
		db 0Bh
		db 0FEh
		db 82h
		db 0BFh
		db 0E0h
		db 2Fh
		db 0Fh
		db 0AAh
		db 0F0h
		db 0F8h
		db 2Fh
		db 0Fh
		db 0AAh
		db 0F0h
		db 0F8h
		db 0Bh
		db 0FEh
		db 82h
		db 0BFh
		db 0E0h
		db 2
		db 0A8h
		db 0
		db 2Ah
		db 80h
byte_A111	db 5			; DATA XREF: CODE:7B65o
		db 6
		db 2
		db 2Ah
		db 0
		db 0A8h
		db 80h
		db 8
		db 0AAh
		db 82h
		db 0AAh
		db 20h
		db 2Ah
		db 0AAh
		db 0AAh
		db 0AAh
		db 0A8h
		db 2Bh
		db 0Fh
		db 0AAh
		db 0F0h
		db 0E8h
		db 0Ah
		db 0FEh
		db 82h
		db 0BFh
		db 0A0h
		db 2
		db 0A8h
		db 0
		db 2Ah
		db 80h
byte_A131	db 6			; DATA XREF: CODE:7B73o
		db 14h
		db 0
		db 0
		db 0
		db 2
		db 0AAh
		db 0
		db 0
		db 0Ah
		db 80h
		db 0Ah
		db 2Ah
		db 80h
		db 3
		db 0EAh
		db 0A3h
		db 0C8h
		db 0BAh
		db 80h
		db 0Ch
		db 3Ah
		db 0F8h
		db 0F0h
		db 0AFh
		db 0C0h
		db 0Ch
		db 8Ah
		db 28h
		db 30h
		db 0Ah
		db 80h
		db 2
		db 0AEh
		db 0ABh
		db 0C0h
		db 0Ah
		db 80h
		db 0
		db 0B3h
		db 0A8h
		db 0
		db 0AAh
		db 80h
		db 0
		db 0BFh
		db 0A0h
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0BFh
		db 8Ah
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 2Ah
		db 2Ah
		db 0AAh
		db 8
		db 0
		db 0
		db 0
		db 2Ah
		db 0A8h
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0AAh
		db 0BCh
		db 0
		db 0
		db 8Ah
		db 0A0h
		db 2Ah
		db 0BCh
		db 0
		db 0
		db 0A2h
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 2
		db 0A0h
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 0Ah
		db 82h
		db 0AAh
		db 2
		db 0A0h
		db 0
		db 2Ah
		db 0Ah
		db 0A0h
		db 0
		db 0A8h
		db 0
		db 88h
		db 2
		db 0A0h
		db 0
		db 0A8h
		db 0
		db 0B0h
		db 2
		db 0A8h
		db 0
		db 0A8h
		db 0
		db 0AFh
		db 3Ah
		db 0AAh
		db 0Eh
		db 0A8h
byte_A1AB	db 6			; DATA XREF: CODE:7B75o
		db 14h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 3Eh
		db 0AAh
		db 3Ch
		db 0
		db 0
		db 0
		db 0C3h
		db 0AFh
		db 8Fh
		db 0
		db 0
		db 0
		db 0C8h
		db 0A2h
		db 83h
		db 0
		db 0
		db 0
		db 2Ah
		db 0EAh
		db 0BCh
		db 0
		db 0
		db 0
		db 0Bh
		db 3Ah
		db 80h
		db 0
		db 0
		db 0
		db 0Bh
		db 0FAh
		db 0Ah
		db 0A0h
		db 0
		db 0
		db 0Bh
		db 0F8h
		db 0AAh
		db 0AAh
		db 80h
		db 0
		db 2
		db 0A2h
		db 0A2h
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0
		db 0Ah
		db 0A0h
		db 0AAh
		db 0A0h
		db 0Ch
		db 2
		db 0AAh
		db 8Ah
		db 0AAh
		db 0BCh
		db 2
		db 0AAh
		db 0AAh
		db 2Ah
		db 0AAh
		db 0BCh
		db 3Ah
		db 0AAh
		db 0
		db 0AAh
		db 0AAh
		db 0A0h
		db 0
		db 0A0h
		db 0A0h
		db 0AAh
		db 0A8h
		db 0
		db 3
		db 0Ah
		db 82h
		db 0AAh
		db 2
		db 0A0h
		db 0
		db 2Ah
		db 0Ah
		db 0A0h
		db 0
		db 0A8h
		db 0
		db 88h
		db 2
		db 0A0h
		db 0
		db 0A8h
		db 0
		db 0B0h
		db 2
		db 0A8h
		db 0
		db 0A8h
		db 0
		db 0AFh
		db 3Ah
		db 0AAh
		db 0Eh
		db 0A8h
byte_A225	db 6			; DATA XREF: CODE:7B7Bo
		db 16h
		db 0
		db 0
		db 7
		db 0
		db 0
		db 40h
		db 0
		db 0Ah
		db 95h
		db 0F0h
		db 5
		db 54h
		db 0
		db 0Ah
		db 95h
		db 7Ch
		db 10h
		db 41h
		db 0
		db 3
		db 0FFh
		db 0FCh
		db 0
		db 40h
		db 2
		db 0AAh
		db 0Ah
		db 28h
		db 0
		db 40h
		db 0Ah
		db 82h
		db 0AAh
		db 0A0h
		db 2
		db 0A0h
		db 0Ah
		db 8
		db 0A2h
		db 80h
		db 2
		db 0A0h
		db 0
		db 2Ah
		db 8Ah
		db 0AFh
		db 0Ah
		db 40h
		db 0
		db 0Ah
		db 0Ah
		db 0BEh
		db 8Ah
		db 0
		db 0
		db 0
		db 3Bh
		db 0FAh
		db 0AAh
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0A8h
		db 0
		db 0
		db 0
		db 0DFh
		db 0FEh
		db 0
		db 0
		db 0
		db 0
		db 37h
		db 0E9h
		db 40h
		db 0
		db 0
		db 0
		db 0Ah
		db 95h
		db 40h
		db 0
		db 0
		db 0
		db 4
		db 55h
		db 40h
		db 0
		db 0
		db 0
		db 15h
		db 15h
		db 40h
		db 0
		db 0
		db 0
		db 54h
		db 5
		db 50h
		db 0
		db 0
		db 2
		db 90h
		db 1
		db 68h
		db 0
		db 0Ah
		db 82h
		db 80h
		db 0
		db 2Ah
		db 0
		db 5
		db 0AAh
		db 80h
		db 0
		db 0Ah
		db 80h
		db 0
		db 5Ah
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 5
		db 0
		db 1
		db 55h
		db 50h
byte_A2AB	db 6			; DATA XREF: CODE:7B7Do
		db 16h
		db 0
		db 0
		db 1Ch
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 57h
		db 0C0h
		db 0
		db 0
		db 0
		db 2Ah
		db 55h
		db 0F0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0Ah
		db 0A8h
		db 2Ah
		db 0A0h
		db 0
		db 0
		db 2Ah
		db 0Ah
		db 0AAh
		db 80h
		db 0
		db 0
		db 28h
		db 22h
		db 8Ah
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0FCh
		db 0
		db 0
		db 0
		db 28h
		db 0Ah
		db 0AFh
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0ABh
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0Fh
		db 28h
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
		db 0BEh
		db 2Ah
		db 80h
		db 2Ah
		db 0
		db 0Fh
		db 0E9h
		db 4Ah
		db 0
		db 82h
		db 0
		db 0Ah
		db 95h
		db 48h
		db 80h
		db 0
		db 0
		db 4
		db 55h
		db 40h
		db 0
		db 0
		db 0
		db 15h
		db 15h
		db 40h
		db 0
		db 0
		db 0
		db 54h
		db 5
		db 50h
		db 0
		db 0
		db 2
		db 90h
		db 1
		db 68h
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 2Ah
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0Ah
		db 80h
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0AAh
		db 0A0h
		db 1
		db 55h
		db 50h
		db 1
		db 55h
		db 50h
byte_A331	db 6			; DATA XREF: CODE:7B83o
		db 15h
		db 0
		db 0
		db 0
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0Bh
		db 0EAh
		db 0
		db 0
		db 0
		db 0
		db 0ABh
		db 0E2h
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0A2h
		db 0
		db 0
		db 2
		db 80h
		db 0FAh
		db 8Ah
		db 0
		db 0Eh
		db 0FEh
		db 0BFh
		db 3Eh
		db 0AAh
		db 0
		db 6
		db 56h
		db 95h
		db 3Eh
		db 0A8h
		db 0
		db 0
		db 2
		db 0A0h
		db 0F0h
		db 2Ah
		db 80h
		db 0
		db 0
		db 0A8h
		db 0Ah
		db 0AAh
		db 80h
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 2Ah
		db 0A0h
		db 2Ah
		db 0A0h
		db 0
		db 0
		db 2
		db 8Eh
		db 0ABh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0
		db 0
		db 0
		db 2Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0
byte_A3B1	db 6			; DATA XREF: CODE:7B85o
		db 15h
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0BAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Ah
		db 0BEh
		db 20h
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 20h
		db 0
		db 0
		db 28h
		db 0Fh
		db 0E8h
		db 0A0h
		db 0
		db 0EFh
		db 0EBh
		db 0F3h
		db 0EAh
		db 80h
		db 0
		db 65h
		db 69h
		db 53h
		db 0EAh
		db 0A8h
		db 0
		db 0
		db 2Ah
		db 0Fh
		db 2Ah
		db 0AAh
		db 0
		db 0
		db 0Ah
		db 80h
		db 0AAh
		db 0AAh
		db 80h
		db 0
		db 0Ah
		db 0AAh
		db 0AAh
		db 0AAh
		db 0A0h
		db 0
		db 2
		db 0AAh
		db 0A0h
		db 2Ah
		db 0A0h
		db 0
		db 0
		db 2Ah
		db 0Eh
		db 0ABh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0FAh
		db 0A0h
		db 0
		db 0
		db 0
		db 2
		db 8Ah
		db 0A0h
		db 0
		db 0
		db 0
		db 2
		db 0A2h
		db 0A0h
		db 0
		db 0
		db 0
		db 0Ah
		db 80h
		db 0A8h
		db 0
		db 0
		db 0
		db 0Ah
		db 80h
		db 0A8h
		db 0
		db 0
		db 2
		db 0AAh
		db 2Ah
		db 0A8h
		db 0
		db 0
		db 0Ah
		db 0A8h
		db 0AAh
		db 0A8h
byte_A431	db 6			; DATA XREF: CODE:7B8Bo
		db 16h
		db 0Ah
		db 0
		db 0
		db 2
		db 0A0h
		db 0
		db 0AAh
		db 95h
		db 55h
		db 56h
		db 0A5h
		db 54h
		db 0Ah
		db 0
		db 0BAh
		db 0A2h
		db 0A0h
		db 0
		db 0
		db 0Ah
		db 0FEh
		db 20h
		db 0A0h
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 20h
		db 0A0h
		db 0
		db 0
		db 3Fh
		db 0A8h
		db 0A0h
		db 0A0h
		db 0
		db 0
		db 3
		db 0EAh
		db 82h
		db 0A0h
		db 0
		db 0
		db 3Fh
		db 0AAh
		db 0AAh
		db 80h
		db 0
		db 0
		db 0
		db 2Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 8Ah
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 6
		db 0A9h
		db 40h
		db 0
		db 0
		db 0
		db 5
		db 55h
		db 40h
		db 0
		db 0
		db 0
		db 5
		db 55h
		db 80h
		db 0
		db 0
		db 0
		db 2Ah
		db 5Ah
		db 80h
		db 0
		db 0
		db 0
		db 0AAh
		db 0Ah
		db 0A0h
		db 0
		db 2
		db 2
		db 0A0h
		db 2
		db 0A8h
		db 0
		db 0Ah
		db 82h
		db 80h
		db 0
		db 2Ah
		db 0
		db 0Ah
		db 0AAh
		db 80h
		db 8
		db 0Ah
		db 80h
		db 0
		db 0AAh
		db 0
		db 2
		db 0AAh
		db 0A0h
		db 0
		db 0Ah
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
byte_A4B7	db 6			; DATA XREF: CODE:7B8Do
		db 16h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0EAh
		db 80h
		db 0
		db 0
		db 0
		db 2Bh
		db 0F8h
		db 80h
		db 0
		db 0
		db 2
		db 0AAh
		db 0A8h
		db 80h
		db 0
		db 0
		db 0
		db 0FEh
		db 0A2h
		db 80h
		db 0
		db 0
		db 0
		db 0Fh
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0FEh
		db 0A0h
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0Ah
		db 28h
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
		db 0AAh
		db 2Ah
		db 80h
		db 2Ah
		db 0
		db 6
		db 0A9h
		db 4Ah
		db 0
		db 82h
		db 0
		db 5
		db 55h
		db 48h
		db 80h
		db 0
		db 0
		db 5
		db 55h
		db 80h
		db 0
		db 0
		db 0
		db 2Ah
		db 5Ah
		db 80h
		db 0
		db 0
		db 0
		db 0A8h
		db 0Ah
		db 0A0h
		db 0
		db 0
		db 2
		db 0A0h
		db 2
		db 0A8h
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 2Ah
		db 0
		db 8
		db 2
		db 80h
		db 8
		db 0Ah
		db 80h
		db 2
		db 0AAh
		db 0A0h
		db 2
		db 0AAh
		db 0A0h
		db 0Ah
		db 0AAh
		db 0A0h
		db 0Ah
		db 0AAh
		db 0A0h
byte_A53D	db 6			; DATA XREF: CODE:7B93o
		db 14h
		db 0
		db 0
		db 0FCh
		db 0
		db 0
		db 0
		db 55h
		db 3
		db 0C1h
		db 42h
		db 0A8h
		db 0
		db 54h
		db 0Fh
		db 0
		db 17h
		db 0AAh
		db 0
		db 41h
		db 7Ch
		db 0
		db 0ADh
		db 62h
		db 0
		db 0
		db 0BEh
		db 0Ah
		db 0AAh
		db 96h
		db 28h
		db 0
		db 0BAh
		db 3
		db 0FAh
		db 89h
		db 4Ah
		db 0
		db 0FAh
		db 80h
		db 3Eh
		db 0A5h
		db 2Ah
		db 0
		db 0F2h
		db 0ABh
		db 0F2h
		db 50h
		db 0Ah
		db 0
		db 0F0h
		db 0A8h
		db 5
		db 0A8h
		db 8
		db 0
		db 0F0h
		db 0
		db 5Ah
		db 0AAh
		db 28h
		db 0
		db 0F0h
		db 5
		db 0AAh
		db 0Ah
		db 0A8h
		db 0
		db 3Ch
		db 5Ah
		db 0AAh
		db 0A2h
		db 0A0h
		db 0
		db 0Fh
		db 8
		db 0AAh
		db 80h
		db 80h
		db 0
		db 0Ah
		db 0A6h
		db 0AAh
		db 0
		db 0
		db 0
		db 2Ah
		db 0A5h
		db 55h
		db 40h
		db 0
		db 0
		db 2Ah
		db 25h
		db 55h
		db 40h
		db 0A0h
		db 0
		db 0Ah
		db 89h
		db 55h
		db 82h
		db 0A8h
		db 0
		db 2
		db 81h
		db 5Ah
		db 8Ah
		db 0A8h
		db 2
		db 0AAh
		db 0A0h
		db 42h
		db 0A8h
		db 28h
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 0A0h
		db 0A8h
byte_A5B7	db 6			; DATA XREF: CODE:7B95o
		db 14h
		db 0
		db 0
		db 0FCh
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 2
		db 0A8h
		db 0
		db 0
		db 0Fh
		db 0
		db 0Bh
		db 0AAh
		db 0
		db 0
		db 3Ch
		db 0
		db 0AFh
		db 0E2h
		db 20h
		db 0
		db 0BEh
		db 0Ah
		db 0AAh
		db 0A2h
		db 8
		db 0
		db 0BAh
		db 3
		db 0FAh
		db 8Ah
		db 0Ah
		db 0
		db 0FAh
		db 80h
		db 3Eh
		db 0A8h
		db 2Ah
		db 0
		db 0F2h
		db 0ABh
		db 0F2h
		db 0A0h
		db 0Ah
		db 0
		db 0F0h
		db 0A8h
		db 0Ah
		db 0A8h
		db 8
		db 0
		db 0F0h
		db 0
		db 0AAh
		db 0AAh
		db 28h
		db 0
		db 0F0h
		db 2
		db 0AAh
		db 0Ah
		db 0A8h
		db 0
		db 3Ch
		db 0Ah
		db 0AAh
		db 0A2h
		db 0A0h
		db 0
		db 0Fh
		db 8
		db 0AAh
		db 80h
		db 80h
		db 0
		db 0Ah
		db 0A6h
		db 0AAh
		db 0
		db 0
		db 0
		db 2Ah
		db 0A5h
		db 55h
		db 40h
		db 0
		db 0
		db 2Ah
		db 25h
		db 55h
		db 40h
		db 0A0h
		db 0
		db 0Ah
		db 89h
		db 55h
		db 82h
		db 0A8h
		db 0
		db 2
		db 81h
		db 5Ah
		db 8Ah
		db 0A8h
		db 2
		db 0AAh
		db 0A0h
		db 42h
		db 0A8h
		db 28h
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 0A0h
		db 0A8h
byte_A631	db 6			; DATA XREF: CODE:7B9Bo
		db 15h
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 3
		db 0C0h
		db 55h
		db 55h
		db 50h
		db 3Ch
		db 0
		db 0FDh
		db 6Ah
		db 0AAh
		db 97h
		db 0F0h
		db 0
		db 35h
		db 0BFh
		db 0FFh
		db 0E5h
		db 0C0h
		db 0
		db 6
		db 0F0h
		db 0F0h
		db 0F9h
		db 0
		db 0Ah
		db 6
		db 0F3h
		db 0Ch
		db 0F9h
		db 0
		db 2Ah
		db 85h
		db 0BFh
		db 0FFh
		db 0E5h
		db 0
		db 2Ah
		db 0A4h
		db 6Ch
		db 0F3h
		db 91h
		db 0
		db 28h
		db 0A0h
		db 51h
		db 4
		db 50h
		db 0
		db 8
		db 0A4h
		db 5
		db 55h
		db 0
		db 0
		db 0
		db 65h
		db 40h
		db 0A0h
		db 0
		db 0
		db 0
		db 45h
		db 54h
		db 5
		db 40h
		db 0
		db 0
		db 54h
		db 55h
		db 55h
		db 50h
		db 0
		db 0
		db 10h
		db 5
		db 50h
		db 50h
		db 0
		db 0
		db 4
		db 0
		db 5
		db 40h
		db 0
		db 0
		db 4
		db 5
		db 55h
		db 50h
		db 0
		db 0
		db 0
		db 5
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 1
		db 15h
		db 50h
		db 0
		db 0
		db 2
		db 5
		db 55h
		db 40h
		db 0
		db 0
		db 0
		db 0AAh
		db 85h
		db 50h
		db 0
		db 0
		db 2
		db 0AAh
		db 0A1h
		db 55h
		db 40h
byte_A6B1	db 6			; DATA XREF: CODE:7B9Do
		db 15h
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 3
		db 0C0h
		db 55h
		db 55h
		db 50h
		db 3Ch
		db 0
		db 0FDh
		db 6Ah
		db 0AAh
		db 97h
		db 0F0h
		db 0
		db 35h
		db 0BFh
		db 0FFh
		db 0E5h
		db 0C0h
		db 0
		db 6
		db 0F0h
		db 0F0h
		db 0F9h
		db 0
		db 0
		db 6
		db 0F3h
		db 0Ch
		db 0F9h
		db 0
		db 0
		db 5
		db 0BFh
		db 0FFh
		db 0E5h
		db 0
		db 0
		db 4
		db 6Ch
		db 0F3h
		db 91h
		db 0
		db 0
		db 0
		db 51h
		db 4
		db 50h
		db 0
		db 0
		db 0
		db 5
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 1
		db 5
		db 40h
		db 0
		db 1
		db 40h
		db 15h
		db 55h
		db 50h
		db 0
		db 0Ah
		db 55h
		db 55h
		db 50h
		db 50h
		db 0
		db 2Ah
		db 95h
		db 40h
		db 5
		db 40h
		db 0
		db 2Ah
		db 85h
		db 5
		db 55h
		db 50h
		db 0
		db 28h
		db 94h
		db 5
		db 55h
		db 0
		db 0
		db 8
		db 4
		db 1
		db 15h
		db 50h
		db 0
		db 1
		db 6
		db 5
		db 55h
		db 40h
		db 0
		db 30h
		db 0C0h
		db 0AAh
		db 85h
		db 50h
		db 0
		db 4
		db 2
		db 0AAh
		db 0A1h
		db 55h
		db 40h
byte_A731	db 2			; DATA XREF: CODE:CoconutAnimationo
		db 7
		db 0Ah
		db 0A0h
		db 2Ah
		db 88h
		db 0AAh
		db 0A2h
		db 0AAh
		db 88h
		db 0AAh
		db 0A2h
		db 2Ah
		db 88h
		db 0Ah
		db 0A0h
byte_A741	db 2			; DATA XREF: CODE:PickAnimationo
					; CODE:7BA9o
		db 8
		db 0
		db 0
		db 0
		db 10h
		db 0
		db 4
		db 0
		db 4
		db 55h
		db 55h
		db 0
		db 4
		db 0
		db 4
		db 0
		db 10h
byte_A753	db 2			; DATA XREF: CODE:7BA3o CODE:7BABo
		db 8
		db 1
		db 0
		db 1
		db 0
		db 1
		db 0
		db 1
		db 0
		db 1
		db 0
		db 41h
		db 4
		db 15h
		db 50h
		db 1
		db 0
byte_A765	db 2			; DATA XREF: CODE:7BA5o CODE:7BADo
		db 8
		db 4
		db 0
		db 10h
		db 0
		db 10h
		db 0
		db 55h
		db 55h
		db 10h
		db 0
		db 10h
		db 0
		db 4
		db 0
		db 0
		db 0
byte_A777	db 2			; DATA XREF: CODE:7BA7o CODE:7BAFo
		db 8
		db 0
		db 40h
		db 5
		db 54h
		db 10h
		db 41h
		db 0
		db 40h
		db 0
		db 40h
		db 0
		db 40h
		db 0
		db 40h
		db 0
		db 40h
byte_A789	db 2			; DATA XREF: CODE:7BB3o
		db 5
		db 0
		db 0
		db 0
		db 54h
		db 3Fh
		db 50h
		db 0
		db 54h
		db 0
		db 0
byte_A795	db 6			; DATA XREF: CODE:7BB7o
		db 3
		db 0Ah
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 95h
		db 55h
		db 55h
		db 55h
		db 55h
		db 0Ah
		db 0
		db 0
		db 0
		db 0
		db 0
byte_A7A9	db 3			; DATA XREF: CODE:7BBBo
		db 8
		db 0FFh
		db 0
		db 0
		db 0FCh
		db 0
		db 0
		db 0C3h
		db 0C0h
		db 0
		db 0
		db 3Ch
		db 28h
		db 0
		db 3
		db 0EAh
		db 0
		db 2
		db 0BCh
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 80h
byte_A7C3	db 4			; DATA XREF: CODE:StinkyGasAnimationo
		db 0Ch
		db 0Fh
		db 0
		db 0Fh
		db 0F0h
		db 3Fh
		db 0CFh
		db 0F0h
		db 0FCh
		db 0Ch
		db 3Fh
		db 0CFh
		db 0
		db 0Fh
		db 0F3h
		db 0F3h
		db 0F0h
		db 3Fh
		db 0CFh
		db 0F3h
		db 0F0h
		db 3Fh
		db 0FFh
		db 0FCh
		db 0FCh
		db 33h
		db 0FFh
		db 0FCh
		db 0FCh
		db 0Fh
		db 0CFh
		db 0C3h
		db 0F0h
		db 0
		db 0F0h
		db 3Fh
		db 0
		db 0Fh
		db 3Fh
		db 0F0h
		db 0
		db 3Fh
		db 0C0h
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
byte_A7F5	db 4			; DATA XREF: CODE:7BBFo CODE:7BC3o
		db 0Ch
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0FCh
		db 3Ch
		db 0C0h
		db 3
		db 0FFh
		db 0Fh
		db 0
		db 0Fh
		db 0F3h
		db 0C0h
		db 0
		db 0Fh
		db 0
		db 3Fh
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0C0h
		db 0Fh
		db 0C3h
		db 0F3h
		db 0F0h
		db 0Fh
		db 3Fh
		db 0F3h
		db 0C0h
		db 3
		db 0FFh
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0FCh
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
byte_A827	db 4			; DATA XREF: CODE:7BC1o
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 3Fh
		db 0C0h
		db 0Fh
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0Fh
		db 0FCh
		db 0F0h
		db 0
		db 0Fh
		db 0FFh
		db 0F0h
		db 0
		db 3
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_A859	db 6			; DATA XREF: CODE:WagonAnimationo
		db 0Eh
		db 0
		db 8Ah
		db 0AAh
		db 0
		db 0Ah
		db 0
		db 0Ah
		db 0AAh
		db 80h
		db 0A0h
		db 0A8h
		db 80h
		db 15h
		db 55h
		db 55h
		db 55h
		db 55h
		db 54h
		db 11h
		db 11h
		db 11h
		db 44h
		db 44h
		db 44h
		db 0Fh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0F1h
		db 10h
		db 0Fh
		db 0FFh
		db 0FDh
		db 55h
		db 51h
		db 10h
		db 3
		db 0FDh
		db 55h
		db 55h
		db 44h
		db 40h
		db 0
		db 0F5h
		db 55h
		db 55h
		db 51h
		db 0
		db 0
		db 0C1h
		db 14h
		db 14h
		db 41h
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 60h
		db 28h
		db 18h
		db 0Ah
		db 0
		db 0
		db 5Ah
		db 0A8h
		db 16h
		db 0AAh
		db 0
		db 0
		db 6
		db 80h
		db 1
		db 0A0h
		db 0
byte_A8AF	db 6			; DATA XREF: CODE:7BC7o
		db 0Eh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 8Ah
		db 0AAh
		db 0
		db 0Ah
		db 0
		db 0Ah
		db 0AAh
		db 80h
		db 0A0h
		db 0A8h
		db 80h
		db 15h
		db 55h
		db 55h
		db 55h
		db 55h
		db 54h
		db 11h
		db 11h
		db 11h
		db 44h
		db 44h
		db 44h
		db 0Fh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0F1h
		db 10h
		db 0Fh
		db 0FFh
		db 0FDh
		db 55h
		db 51h
		db 10h
		db 3
		db 0FDh
		db 55h
		db 55h
		db 44h
		db 40h
		db 0
		db 0F5h
		db 55h
		db 55h
		db 51h
		db 0
		db 0
		db 0C1h
		db 14h
		db 14h
		db 41h
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 0A0h
		db 24h
		db 28h
		db 9
		db 0
		db 0
		db 0AAh
		db 94h
		db 2Ah
		db 0A5h
		db 0
		db 0
		db 0Ah
		db 40h
		db 2
		db 90h
		db 0
byte_A905	db 6			; DATA XREF: CODE:MineGasAnimationo
		db 0Eh
		db 3
		db 0F0h
		db 0Fh
		db 0C0h
		db 0
		db 30h
		db 0Fh
		db 3Fh
		db 0FCh
		db 0F0h
		db 3Fh
		db 0
		db 0Ch
		db 0CCh
		db 0CCh
		db 0F0h
		db 0FFh
		db 0C0h
		db 0Fh
		db 3Fh
		db 33h
		db 3Fh
		db 0FFh
		db 0C0h
		db 3
		db 0CCh
		db 0CFh
		db 0CCh
		db 0CFh
		db 0C0h
		db 0
		db 3Fh
		db 33h
		db 33h
		db 3Fh
		db 0
		db 0Ch
		db 0Ch
		db 0CCh
		db 0CCh
		db 0FCh
		db 0
		db 0
		db 33h
		db 0F3h
		db 0F3h
		db 3Ch
		db 0
		db 0
		db 0CCh
		db 0CCh
		db 0CCh
		db 0FCh
		db 0
		db 3
		db 3Fh
		db 3Fh
		db 33h
		db 0F0h
		db 0
		db 3
		db 0CCh
		db 0CCh
		db 0CFh
		db 0F0h
		db 0
		db 0
		db 0F3h
		db 33h
		db 0FFh
		db 0C3h
		db 0F0h
		db 3Ch
		db 3Fh
		db 0CCh
		db 3Fh
		db 0Ch
		db 0FCh
		db 0
		db 0
		db 0F0h
		db 0
		db 3
		db 0F0h
byte_A95B	db 6			; DATA XREF: CODE:7BCBo CODE:7BCFo
		db 0Eh
		db 0Fh
		db 0
		db 0Fh
		db 0C0h
		db 0
		db 30h
		db 33h
		db 0C0h
		db 3Fh
		db 0F0h
		db 0F0h
		db 0FCh
		db 0Fh
		db 0Fh
		db 0CCh
		db 0FFh
		db 0FCh
		db 30h
		db 0
		db 3Fh
		db 33h
		db 3Fh
		db 0FFh
		db 0
		db 3
		db 0CCh
		db 0CCh
		db 0CCh
		db 0FFh
		db 0
		db 0Fh
		db 33h
		db 3Fh
		db 33h
		db 3Fh
		db 0
		db 3Ch
		db 0CCh
		db 0CCh
		db 0FCh
		db 0FCh
		db 0
		db 0Fh
		db 3Fh
		db 33h
		db 33h
		db 3Ch
		db 0
		db 3
		db 0CFh
		db 0CFh
		db 0CCh
		db 0FCh
		db 0
		db 0Fh
		db 33h
		db 33h
		db 33h
		db 0F0h
		db 0
		db 3Ch
		db 0CFh
		db 0FCh
		db 0CFh
		db 0F3h
		db 0F0h
		db 33h
		db 3Ch
		db 3Fh
		db 0FFh
		db 0CFh
		db 0FCh
		db 0Ch
		db 0CCh
		db 3
		db 0FCh
		db 0Ch
		db 0FCh
		db 3
		db 0F0h
		db 0C0h
		db 0
		db 3
		db 0F0h
byte_A9B1	db 6			; DATA XREF: CODE:7BCDo
		db 0Eh
		db 0Ch
		db 0
		db 0FFh
		db 0
		db 0
		db 0F0h
		db 3Fh
		db 3
		db 33h
		db 0C0h
		db 3
		db 3Ch
		db 0Ch
		db 3Ch
		db 0CFh
		db 0C0h
		db 0F0h
		db 0F0h
		db 3
		db 0F3h
		db 0F3h
		db 0FFh
		db 0FFh
		db 0
		db 0Ch
		db 0CCh
		db 0CCh
		db 0CFh
		db 0FFh
		db 0C0h
		db 0Fh
		db 33h
		db 33h
		db 33h
		db 3Fh
		db 0C0h
		db 3Ch
		db 0FCh
		db 0CFh
		db 0CCh
		db 0FFh
		db 30h
		db 33h
		db 33h
		db 33h
		db 3Fh
		db 0FCh
		db 0FCh
		db 3Ch
		db 0CFh
		db 0CCh
		db 0CFh
		db 0
		db 30h
		db 33h
		db 33h
		db 3Fh
		db 3Ch
		db 3Fh
		db 0C0h
		db 0Fh
		db 0CCh
		db 0CCh
		db 0FCh
		db 0CFh
		db 0F0h
		db 0
		db 0FFh
		db 0F3h
		db 0F0h
		db 0CCh
		db 0F0h
		db 0Ch
		db 3
		db 0FFh
		db 0F0h
		db 33h
		db 0F0h
		db 0Ch
		db 0
		db 3Fh
		db 0
		db 0Fh
		db 0C0h
byte_AA07	db 6			; DATA XREF: CODE:7BD5o
		db 0Eh
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A0h
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0B0h
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 0Ah
		db 0
		db 0
		db 0
		db 0
		db 0A0h
		db 2Ah
		db 0A0h
		db 0
		db 0
		db 2
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0
		db 0AAh
		db 0A0h
		db 2
		db 0AAh
		db 0
		db 2
		db 0Ah
		db 88h
		db 8Ah
		db 0A8h
		db 0
		db 0
		db 0AAh
		db 0A2h
		db 2Ah
		db 80h
		db 0
		db 0
		db 0
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 2Ah
		db 0AAh
		db 22h
		db 8Ah
		db 0
		db 0
		db 0Ah
		db 0A0h
		db 20h
		db 20h
		db 80h
		db 0
byte_AA5D	db 6			; DATA XREF: CODE:7BD7o
		db 0Eh
		db 0
		db 0
		db 0
		db 0Ah
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0A8h
		db 0A8h
		db 0
		db 0
		db 0
		db 2
		db 80h
		db 0Ah
		db 0
		db 0
		db 0
		db 2
		db 0C0h
		db 2
		db 80h
		db 2Ah
		db 0
		db 0
		db 30h
		db 2
		db 80h
		db 0Ah
		db 80h
		db 0
		db 0
		db 2
		db 80h
		db 2Ah
		db 0A0h
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0AAh
		db 0
		db 2
		db 0Ah
		db 88h
		db 8Ah
		db 0A8h
		db 0
		db 0
		db 0AAh
		db 0A2h
		db 2Ah
		db 80h
		db 0
		db 28h
		db 0
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 2
		db 0AAh
		db 22h
		db 20h
		db 0
		db 0
		db 2Ah
		db 0A0h
		db 88h
		db 20h
		db 0
		db 0
byte_AAB3	db 6			; DATA XREF: CODE:7BDDo
		db 7
		db 0
		db 1
		db 55h
		db 54h
		db 0
		db 0
		db 5
		db 55h
		db 66h
		db 55h
		db 50h
		db 0
		db 50h
		db 55h
		db 0A5h
		db 55h
		db 95h
		db 0
		db 55h
		db 55h
		db 55h
		db 0A5h
		db 55h
		db 50h
		db 5
		db 56h
		db 15h
		db 64h
		db 50h
		db 14h
		db 20h
		db 5
		db 40h
		db 15h
		db 0
		db 4
		db 0
		db 1
		db 40h
		db 5
		db 0
		db 1
byte_AADF	db 6			; DATA XREF: CODE:7BDFo
		db 7
		db 0
		db 1
		db 55h
		db 54h
		db 0
		db 5
		db 5
		db 55h
		db 66h
		db 55h
		db 50h
		db 50h
		db 50h
		db 55h
		db 0A5h
		db 55h
		db 95h
		db 40h
		db 55h
		db 55h
		db 55h
		db 0A5h
		db 55h
		db 0
		db 5
		db 52h
		db 55h
		db 45h
		db 50h
		db 0
		db 0
		db 5
		db 40h
		db 15h
		db 0
		db 0
		db 0
		db 15h
		db 0
		db 54h
		db 0
		db 0
byte_AB0B	db 4			; DATA XREF: CODE:FoodPictureso
		db 0Eh
		db 0
		db 0
		db 0Fh
		db 0F0h
		db 0
		db 0
		db 0FFh
		db 0F4h
		db 0
		db 3
		db 0Fh
		db 0C4h
		db 0
		db 0Fh
		db 0F3h
		db 0C4h
		db 0
		db 3Fh
		db 0FFh
		db 14h
		db 0
		db 0C3h
		db 0FFh
		db 10h
		db 0
		db 0FCh
		db 0FCh
		db 50h
		db 3
		db 0FFh
		db 0F1h
		db 40h
		db 0Ch
		db 3Fh
		db 0C5h
		db 0
		db 0Fh
		db 0CFh
		db 14h
		db 0
		db 3Fh
		db 0FFh
		db 14h
		db 0
		db 3Fh
		db 0FCh
		db 50h
		db 0
		db 3Fh
		db 0F1h
		db 40h
		db 0
		db 0Fh
		db 15h
		db 0
		db 0
byte_AB45	db 4			; DATA XREF: CODE:7BE3o
		db 0Dh
		db 0
		db 3Fh
		db 0FCh
		db 0
		db 3
		db 0FCh
		db 0FFh
		db 0C0h
		db 0Fh
		db 3Fh
		db 0FCh
		db 0F0h
		db 3Fh
		db 0FFh
		db 0FFh
		db 0CCh
		db 33h
		db 0FFh
		db 0F3h
		db 0FCh
		db 3Fh
		db 0FCh
		db 0FFh
		db 0FCh
		db 3Fh
		db 3Fh
		db 0FFh
		db 0CCh
		db 0Fh
		db 0FFh
		db 0CFh
		db 0F0h
		db 3Ah
		db 66h
		db 0A6h
		db 0ECh
		db 3Eh
		db 99h
		db 9Ah
		db 0BCh
		db 0Fh
		db 0E5h
		db 6Fh
		db 0F0h
		db 0
		db 0D5h
		db 3Fh
		db 0
		db 0
		db 15h
		db 0
		db 0
byte_AB7B	db 4			; DATA XREF: CODE:7BE7o
		db 10h
		db 0
		db 0
		db 0
		db 70h
		db 0
		db 0
		db 5
		db 5Fh
		db 3Fh
		db 0Fh
		db 0F0h
		db 50h
		db 0F0h
		db 0F0h
		db 0
		db 0A0h
		db 0F0h
		db 0
		db 0
		db 0A0h
		db 0F0h
		db 0
		db 2
		db 0A8h
		db 0F0h
		db 0
		db 0Ah
		db 0A2h
		db 3Fh
		db 0C0h
		db 0AAh
		db 0A8h
		db 2
		db 0FAh
		db 8Ah
		db 0A2h
		db 0Ah
		db 0F2h
		db 2Ah
		db 0A8h
		db 22h
		db 3Ch
		db 0AAh
		db 0A2h
		db 28h
		db 8Ah
		db 0AAh
		db 8Ah
		db 22h
		db 2Ah
		db 0A2h
		db 28h
		db 28h
		db 0AAh
		db 88h
		db 0A0h
		db 0Ah
		db 0AAh
		db 0A2h
		db 80h
		db 0
		db 0AAh
		db 0A8h
		db 0
byte_ABBD	db 4			; DATA XREF: CODE:WaterPictureso
		db 0Eh
		db 0
		db 0Fh
		db 0F0h
		db 0
		db 0
		db 3Ch
		db 3Ch
		db 0
		db 0
		db 0F0h
		db 0Fh
		db 0
		db 0F0h
		db 0F3h
		db 0FFh
		db 0
		db 3Ch
		db 0FFh
		db 0FFh
		db 0Fh
		db 3Fh
		db 33h
		db 0FFh
		db 0FFh
		db 0Fh
		db 0CFh
		db 0FFh
		db 30h
		db 0Fh
		db 0FFh
		db 0FFh
		db 30h
		db 0Fh
		db 0FFh
		db 0FFh
		db 30h
		db 3
		db 0FFh
		db 0FCh
		db 0C0h
		db 0
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0Fh
		db 0F0h
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0F0h
byte_ABF7	db 4			; DATA XREF: CODE:GoldenPieceso
					; CODE:7BEBo ...
		db 7
		db 1
		db 55h
		db 55h
		db 40h
		db 5
		db 57h
		db 0FFh
		db 30h
		db 15h
		db 7Fh
		db 0FFh
		db 0CCh
		db 15h
		db 0FFh
		db 0FFh
		db 30h
		db 15h
		db 0FFh
		db 0FFh
		db 0CCh
		db 5
		db 0FFh
		db 0FFh
		db 30h
		db 1
		db 0FFh
		db 0FCh
		db 0C0h
byte_AC15	db 4			; DATA XREF: CODE:7BEFo
		db 7
		db 1
		db 55h
		db 55h
		db 40h
		db 5
		db 53h
		db 0FFh
		db 30h
		db 15h
		db 73h
		db 0FFh
		db 0CCh
		db 14h
		db 3Fh
		db 0Fh
		db 30h
		db 15h
		db 0F3h
		db 0FFh
		db 0CCh
		db 5
		db 0F3h
		db 0FFh
		db 30h
		db 1
		db 0FFh
		db 0FCh
		db 0C0h
byte_AC33	db 6			; DATA XREF: CODE:TheBatAnimationo
		db 0Eh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 2Ah
		db 80h
		db 0
		db 0
		db 2
		db 0A8h
		db 2Ah
		db 80h
		db 0
		db 0
		db 2
		db 0A8h
		db 28h
		db 80h
		db 8
		db 20h
		db 2
		db 28h
		db 2
		db 28h
		db 28h
		db 28h
		db 28h
		db 80h
		db 2
		db 88h
		db 28h
		db 28h
		db 22h
		db 80h
		db 0
		db 2Ah
		db 0A2h
		db 8Ah
		db 0A8h
		db 0
		db 0
		db 2
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0Eh
		db 0B0h
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_AC89	db 6			; DATA XREF: CODE:7BF3o CODE:7BF7o
		db 0Eh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 8
		db 0
		db 0
		db 20h
		db 0
		db 0
		db 28h
		db 8
		db 20h
		db 28h
		db 0
		db 2
		db 0AAh
		db 28h
		db 28h
		db 2Ah
		db 80h
		db 2
		db 0AAh
		db 28h
		db 2Ah
		db 2Ah
		db 80h
		db 2Ah
		db 82h
		db 0A2h
		db 8Ah
		db 82h
		db 0A8h
		db 2Ah
		db 28h
		db 0AAh
		db 0AAh
		db 28h
		db 0A8h
		db 22h
		db 80h
		db 0Eh
		db 0B0h
		db 2
		db 88h
		db 28h
		db 0
		db 0Ch
		db 30h
		db 0
		db 28h
		db 8
		db 0
		db 0
		db 0
		db 0
		db 20h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_ACDF	db 6			; DATA XREF: CODE:7BF5o
		db 0Eh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 8
		db 20h
		db 0
		db 0
		db 0
		db 20h
		db 28h
		db 28h
		db 8
		db 0
		db 0
		db 28h
		db 2Ah
		db 0A8h
		db 28h
		db 0
		db 2
		db 0AAh
		db 0A2h
		db 8Ah
		db 0AAh
		db 80h
		db 2
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 80h
		db 2Ah
		db 88h
		db 0Eh
		db 0B0h
		db 22h
		db 0A8h
		db 2Ah
		db 28h
		db 0Ch
		db 30h
		db 28h
		db 0A8h
		db 28h
		db 80h
		db 0
		db 0
		db 2
		db 28h
		db 2Ah
		db 80h
		db 0
		db 0
		db 2
		db 0A8h
		db 2Ah
		db 0
		db 0
		db 0
		db 0
		db 0A8h
		db 0Ah
		db 0
		db 0
		db 0
		db 0
		db 0A0h
		db 2
		db 80h
		db 0
		db 0
		db 2
		db 80h
byte_AD35	db 6			; DATA XREF: CODE:7BFDo
		db 10h
		db 0
		db 0
		db 0Ch
		db 0Fh
		db 0
		db 0
		db 0
		db 3Fh
		db 0F0h
		db 0F0h
		db 0
		db 0
		db 3
		db 0EBh
		db 0FFh
		db 0
		db 0
		db 3Ch
		db 3Fh
		db 0BEh
		db 0FFh
		db 0CFh
		db 0
		db 0F0h
		db 0FFh
		db 0EBh
		db 0FFh
		db 0F0h
		db 0F0h
		db 0F0h
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0Fh
		db 0C0h
		db 5
		db 5
		db 0Fh
		db 0CFh
		db 0FCh
		db 0C0h
		db 1
		db 1
		db 0
		db 0F3h
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0F3h
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0Fh
		db 0CFh
		db 0
		db 3Fh
		db 3Ch
		db 0Fh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 3Fh
		db 0FFh
		db 0FFh
		db 0Fh
		db 0C0h
		db 0
		db 0Fh
		db 0FCh
		db 0FCh
		db 0
		db 0
		db 0
		db 0
		db 0FCh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Fh
		db 3
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
byte_AD97	db 6			; DATA XREF: CODE:7BFFo
		db 10h
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0F0h
		db 0FCh
		db 0
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0
		db 3
		db 0FFh
		db 0FFh
		db 0CFh
		db 0
		db 0
		db 3Fh
		db 0BEh
		db 0FFh
		db 0F0h
		db 0F0h
		db 0
		db 0FFh
		db 0EBh
		db 0FFh
		db 0FFh
		db 0
		db 3Fh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0CFh
		db 0FFh
		db 0F0h
		db 3Ah
		db 0AFh
		db 0FFh
		db 0F3h
		db 0FCh
		db 0
		db 3Fh
		db 0FAh
		db 0AFh
		db 0F3h
		db 0FFh
		db 0C0h
		db 3Ch
		db 0FFh
		db 0FBh
		db 0CFh
		db 0Fh
		db 0C0h
		db 0Fh
		db 0Fh
		db 0FFh
		db 0F0h
		db 0
		db 0F0h
		db 3
		db 0FFh
		db 0FFh
		db 0Fh
		db 0
		db 3Ch
		db 0
		db 0FFh
		db 3Fh
		db 0
		db 0
		db 0Ch
		db 0
		db 3Fh
		db 0CFh
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 3
		db 0C0h
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 3Ch
		db 0
		db 0
byte_ADF9	db 6			; DATA XREF: CODE:7C05o
		db 0Ch
		db 0
		db 3
		db 33h
		db 0Ch
		db 0
		db 0
		db 0
		db 33h
		db 33h
		db 30h
		db 0C0h
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0C3h
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0C0h
		db 0FCh
		db 30h
		db 3Ch
		db 3Ch
		db 0Fh
		db 0Ch
		db 3Fh
		db 0C0h
		db 0C0h
		db 0
		db 3
		db 0C0h
		db 0F3h
		db 0FFh
		db 30h
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0FFh
		db 0C0h
		db 0
		db 0
		db 0FFh
		db 0C3h
		db 0C0h
		db 0F0h
		db 0Fh
		db 0C3h
		db 0F3h
		db 0FCh
		db 0
		db 3Ch
		db 0
		db 0FFh
		db 0FCh
		db 0C0h
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 3Ch
		db 0
		db 0
byte_AE43	db 6			; DATA XREF: CODE:7C07o
		db 0Ch
		db 0
		db 3
		db 33h
		db 0Ch
		db 0
		db 0
		db 0
		db 33h
		db 33h
		db 30h
		db 0C0h
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0C3h
		db 0
		db 30h
		db 0Fh
		db 0FFh
		db 0FFh
		db 0FCh
		db 30h
		db 0C0h
		db 3Fh
		db 0FFh
		db 3Fh
		db 3Fh
		db 0C3h
		db 0
		db 0
		db 3Fh
		db 0C0h
		db 0F3h
		db 0FCh
		db 0C0h
		db 3Fh
		db 0C3h
		db 0FFh
		db 0F0h
		db 0FFh
		db 0
		db 33h
		db 0FFh
		db 0FFh
		db 0C3h
		db 0C3h
		db 0C0h
		db 0Fh
		db 0FFh
		db 0F3h
		db 0FCh
		db 0
		db 0C0h
		db 0
		db 0FFh
		db 0F3h
		db 0C0h
		db 0
		db 30h
		db 0
		db 3Ch
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 3Ch
		db 0
		db 0
		db 0
byte_AE8D	db 6			; DATA XREF: CODE:DrummerAnimationo
		db 16h
		db 0
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 2Bh
		db 0EBh
		db 0E8h
		db 0
		db 80h
		db 0
		db 2Fh
		db 0AAh
		db 0F8h
		db 8
		db 82h
		db 0
		db 0Ah
		db 0FFh
		db 0A0h
		db 2
		db 0A8h
		db 0
		db 0Bh
		db 0
		db 0E0h
		db 0Ah
		db 0A0h
		db 0
		db 0
		db 0FFh
		db 0Ah
		db 0
		db 0A0h
		db 0
		db 2Ah
		db 0
		db 0AAh
		db 0A0h
		db 0A0h
		db 2
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0A0h
		db 0Ah
		db 0A8h
		db 2
		db 0AAh
		db 2Ah
		db 80h
		db 2
		db 0AAh
		db 0A8h
		db 0AAh
		db 80h
		db 0
		db 0
		db 0Ah
		db 8Ah
		db 2Ah
		db 80h
		db 0
		db 0
		db 5
		db 55h
		db 55h
		db 50h
		db 0
		db 0
		db 20h
		db 0
		db 0
		db 8
		db 0
		db 0
		db 0ABh
		db 3Fh
		db 0FDh
		db 6Ah
		db 0
		db 2
		db 0A0h
		db 0CFh
		db 0FDh
		db 4Ah
		db 80h
		db 0Ah
		db 83h
		db 33h
		db 0F5h
		db 42h
		db 0A0h
		db 2
		db 0A0h
		db 0CFh
		db 0F5h
		db 0Ah
		db 80h
		db 0
		db 0A0h
		db 33h
		db 0F5h
		db 0Ah
		db 0
		db 0
		db 0A0h
		db 0CFh
		db 0F5h
		db 0Ah
		db 0
		db 2Ah
		db 0A0h
		db 11h
		db 54h
		db 0Ah
		db 0A8h
		db 0AAh
		db 0A0h
		db 3Fh
		db 0FCh
		db 0Ah
		db 0AAh
byte_AF13	db 6			; DATA XREF: CODE:7C0Bo
		db 16h
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 2
		db 0
		db 2Bh
		db 0EBh
		db 0E8h
		db 0
		db 82h
		db 20h
		db 2Fh
		db 0AAh
		db 0F8h
		db 0
		db 2Ah
		db 80h
		db 0Ah
		db 0FFh
		db 0A0h
		db 0
		db 0Ah
		db 0A0h
		db 0Bh
		db 0
		db 0E0h
		db 0
		db 0Ah
		db 0
		db 0A0h
		db 0FFh
		db 0
		db 0
		db 0Ah
		db 0Ah
		db 0AAh
		db 0
		db 0A8h
		db 0
		db 0Ah
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 80h
		db 2
		db 0A8h
		db 0AAh
		db 80h
		db 2Ah
		db 0A0h
		db 0
		db 2
		db 0AAh
		db 2Ah
		db 0AAh
		db 80h
		db 0
		db 2
		db 0A8h
		db 0A2h
		db 0A0h
		db 0
		db 0
		db 5
		db 55h
		db 55h
		db 50h
		db 0
		db 0
		db 20h
		db 0
		db 0
		db 8
		db 0
		db 0
		db 0ABh
		db 3Fh
		db 0FDh
		db 6Ah
		db 0
		db 2
		db 0A0h
		db 0CFh
		db 0FDh
		db 4Ah
		db 80h
		db 0Ah
		db 83h
		db 33h
		db 0F5h
		db 42h
		db 0A0h
		db 2
		db 0A0h
		db 0CFh
		db 0F5h
		db 0Ah
		db 80h
		db 0
		db 0A0h
		db 33h
		db 0F5h
		db 0Ah
		db 0
		db 0
		db 0A0h
		db 0CFh
		db 0F5h
		db 0Ah
		db 0
		db 2Ah
		db 0A0h
		db 11h
		db 54h
		db 0Ah
		db 0A8h
		db 0AAh
		db 0A0h
		db 3Fh
		db 0FCh
		db 0Ah
		db 0AAh
byte_AF99	db 6			; DATA XREF: CODE:WhirlwindAnimationo
		db 15h
		db 0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0Fh
		db 88h
		db 88h
		db 88h
		db 0F0h
		db 0
		db 3Eh
		db 22h
		db 2Ah
		db 0AAh
		db 0BCh
		db 0
		db 38h
		db 88h
		db 0AAh
		db 0AAh
		db 0ACh
		db 0
		db 3Eh
		db 22h
		db 2Ah
		db 0AAh
		db 0BCh
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 5
		db 5Fh
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 5
		db 55h
		db 7Fh
		db 0FFh
		db 0C0h
		db 0
		db 1
		db 5Fh
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 1
		db 55h
		db 5Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 57h
		db 0FFh
		db 0FCh
		db 0
		db 0
		db 0
		db 15h
		db 5Fh
		db 0F0h
		db 0
		db 0
		db 0
		db 5
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 1
		db 57h
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 5Fh
		db 0FCh
		db 0
		db 0
		db 0
		db 0
		db 5
		db 5Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 7Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 1Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 10h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 40h
		db 0
		db 0
byte_B019	db 6			; DATA XREF: CODE:7C0Fo
		db 15h
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0Fh
		db 22h
		db 22h
		db 22h
		db 0F0h
		db 0
		db 3Eh
		db 0AAh
		db 0A8h
		db 88h
		db 0BCh
		db 0
		db 3Ah
		db 0AAh
		db 0AAh
		db 22h
		db 2Ch
		db 0
		db 3Eh
		db 0AAh
		db 0A8h
		db 88h
		db 0BCh
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0F5h
		db 50h
		db 0
		db 3
		db 0FFh
		db 0FDh
		db 55h
		db 50h
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0F5h
		db 40h
		db 0
		db 0
		db 0FFh
		db 0F5h
		db 55h
		db 40h
		db 0
		db 0
		db 3Fh
		db 0FFh
		db 0D5h
		db 0
		db 0
		db 0
		db 0Fh
		db 0F5h
		db 54h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 50h
		db 0
		db 0
		db 0
		db 0Fh
		db 0D5h
		db 40h
		db 0
		db 0
		db 0
		db 3Fh
		db 0F5h
		db 0
		db 0
		db 0
		db 0
		db 0F5h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0FDh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0D4h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 34h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 4
		db 0
		db 0
		db 0
		db 0
		db 0
		db 1
		db 0
		db 0
		db 0
byte_B099	db 4			; DATA XREF: CODE:MerimaidAnimationo
					; CODE:7C15o
		db 16h
		db 0
		db 0Ah
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 2
		db 0BFh
		db 0E8h
		db 0
		db 0Ah
		db 0FBh
		db 0BAh
		db 0
		db 0Ah
		db 0FFh
		db 0FAh
		db 0
		db 2Ah
		db 0BEh
		db 0E8h
		db 0
		db 28h
		db 2Fh
		db 80h
		db 0
		db 23h
		db 0C0h
		db 0Ch
		db 0
		db 0Fh
		db 3Ch
		db 0F3h
		db 0
		db 3Ch
		db 0F3h
		db 0FCh
		db 0C0h
		db 0F0h
		db 0F3h
		db 0FCh
		db 0F0h
		db 0FCh
		db 3Ch
		db 0F3h
		db 0F0h
		db 3Fh
		db 5
		db 0Fh
		db 0C0h
		db 0Ch
		db 55h
		db 53h
		db 0
		db 1
		db 55h
		db 54h
		db 0
		db 5
		db 55h
		db 14h
		db 0
		db 5
		db 54h
		db 50h
		db 0
		db 5
		db 55h
		db 0
		db 54h
		db 5
		db 54h
		db 1
		db 40h
		db 1
		db 50h
		db 15h
		db 54h
		db 1
		db 55h
		db 50h
		db 0
		db 0
		db 55h
		db 40h
		db 0
byte_B0F3	db 4			; DATA XREF: CODE:7C13o CODE:7C17o
		db 16h
		db 0
		db 0Ah
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 2
		db 0BFh
		db 0E8h
		db 0
		db 0Ah
		db 0EEh
		db 0FAh
		db 0
		db 0Ah
		db 0FFh
		db 0FAh
		db 0
		db 2
		db 0BBh
		db 0EAh
		db 80h
		db 0
		db 2Fh
		db 82h
		db 80h
		db 3
		db 0
		db 3Ch
		db 80h
		db 0Ch
		db 0F3h
		db 0CFh
		db 0
		db 33h
		db 0CFh
		db 0F3h
		db 0C0h
		db 0F3h
		db 0CFh
		db 0F0h
		db 0F0h
		db 0FCh
		db 0F3h
		db 0C3h
		db 0F0h
		db 3Fh
		db 5
		db 0Fh
		db 0C0h
		db 0Ch
		db 55h
		db 53h
		db 0
		db 1
		db 55h
		db 54h
		db 0
		db 5
		db 55h
		db 14h
		db 0
		db 5
		db 54h
		db 50h
		db 54h
		db 5
		db 55h
		db 1
		db 40h
		db 5
		db 54h
		db 5
		db 54h
		db 1
		db 55h
		db 54h
		db 0
		db 0
		db 55h
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 0
byte_B14D	db 6			; DATA XREF: CODE:7C1Do
		db 16h
		db 0
		db 0
		db 3Ch
		db 0F0h
		db 0
		db 50h
		db 0
		db 3
		db 0FFh
		db 0FFh
		db 31h
		db 64h
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0C1h
		db 54h
		db 0
		db 0AAh
		db 8Bh
		db 0FFh
		db 0C1h
		db 54h
		db 2
		db 82h
		db 82h
		db 0FFh
		db 0
		db 50h
		db 2
		db 0ABh
		db 0EBh
		db 0FCh
		db 0C2h
		db 0A0h
		db 0
		db 0Fh
		db 0FFh
		db 80h
		db 2
		db 0A0h
		db 0
		db 0Fh
		db 0FAh
		db 68h
		db 0Ah
		db 50h
		db 0
		db 3Ch
		db 29h
		db 0AAh
		db 8Ah
		db 0
		db 0
		db 0C0h
		db 0A9h
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0
		db 0A5h
		db 0A0h
		db 0A8h
		db 0
		db 0
		db 0
		db 25h
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 5
		db 69h
		db 40h
		db 0
		db 0
		db 0
		db 5
		db 55h
		db 40h
		db 0
		db 0
		db 0
		db 5
		db 55h
		db 40h
		db 0
		db 0
		db 0
		db 2Ah
		db 56h
		db 90h
		db 0
		db 0
		db 0
		db 0AAh
		db 1Ah
		db 0A0h
		db 0
		db 2
		db 2
		db 0A0h
		db 12h
		db 0A8h
		db 0
		db 0Ah
		db 82h
		db 80h
		db 0
		db 2Ah
		db 0
		db 0Ah
		db 0AAh
		db 80h
		db 8
		db 0Ah
		db 80h
		db 0
		db 0AAh
		db 0
		db 2
		db 0AAh
		db 0A0h
		db 0
		db 0Ah
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
byte_B1D3	db 6			; DATA XREF: CODE:7C1Fo
		db 16h
		db 0
		db 0
		db 0F3h
		db 0C0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0FCh
		db 0C0h
		db 0
		db 0
		db 3
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 2
		db 0AAh
		db 2Fh
		db 0FFh
		db 0
		db 0
		db 0Ah
		db 0Ah
		db 0Bh
		db 0FCh
		db 0
		db 0
		db 0Ah
		db 0AFh
		db 0AFh
		db 0F3h
		db 0
		db 0
		db 0
		db 3Fh
		db 0FFh
		db 80h
		db 0
		db 0
		db 0
		db 3Fh
		db 0C0h
		db 68h
		db 0
		db 0
		db 0
		db 0F0h
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 3
		db 0
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0Ah
		db 28h
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
		db 0AAh
		db 2Ah
		db 80h
		db 2Ah
		db 0
		db 5
		db 69h
		db 4Ah
		db 0
		db 82h
		db 0
		db 5
		db 55h
		db 48h
		db 80h
		db 0
		db 0
		db 5
		db 55h
		db 40h
		db 0
		db 0
		db 0
		db 2Ah
		db 56h
		db 90h
		db 0
		db 0
		db 0
		db 0A8h
		db 1Ah
		db 0A0h
		db 0
		db 0
		db 2
		db 0A0h
		db 12h
		db 0A8h
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 2Ah
		db 0
		db 8
		db 2
		db 80h
		db 8
		db 0Ah
		db 80h
		db 2
		db 0AAh
		db 0A0h
		db 2
		db 0AAh
		db 0A0h
		db 0Ah
		db 0AAh
		db 0A0h
		db 0Ah
		db 0AAh
		db 0A0h
byte_B259	db 3			; DATA XREF: CODE:Hearto
		db 6
		db 0Ah
		db 82h
		db 0A0h
		db 20h
		db 0AAh
		db 0A8h
		db 22h
		db 0AAh
		db 0A8h
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 0AAh
		db 0
		db 0
		db 28h
		db 0
byte_B26D	db 2			; DATA XREF: CODE:BatonAnimationo
					; CODE:7C2Bo
		db 8
		db 0
		db 0
		db 0
		db 0
		db 0
		db 54h
		db 55h
		db 55h
		db 55h
		db 55h
		db 0
		db 54h
		db 0
		db 0
		db 0
		db 0
byte_B27F	db 2			; DATA XREF: CODE:7C25o CODE:7C2Do
		db 8
		db 1
		db 40h
		db 1
		db 40h
		db 1
		db 40h
		db 1
		db 40h
		db 5
		db 50h
		db 5
		db 50h
		db 5
		db 50h
		db 1
		db 40h
byte_B291	db 2			; DATA XREF: CODE:7C27o CODE:7C2Fo
		db 8
		db 0
		db 0
		db 0
		db 0
		db 15h
		db 0
		db 55h
		db 55h
		db 55h
		db 55h
		db 15h
		db 0
		db 0
		db 0
		db 0
		db 0
byte_B2A3	db 2			; DATA XREF: CODE:7C29o CODE:7C31o
		db 8
		db 1
		db 40h
		db 5
		db 50h
		db 5
		db 50h
		db 5
		db 50h
		db 1
		db 40h
		db 1
		db 40h
		db 1
		db 40h
		db 1
		db 40h
byte_B2B5	db 2			; DATA XREF: CODE:FallingArrowo
					; CODE:7C35o
		db 10h
		db 4
		db 0C8h
		db 1
		db 0D0h
		db 4
		db 0C8h
		db 1
		db 0D0h
		db 0
		db 0C0h
		db 0
		db 0C0h
		db 0
		db 0C0h
		db 0
		db 0C0h
		db 0
		db 0C0h
		db 0
		db 0C0h
		db 0
		db 0C0h
		db 0
		db 0C0h
		db 0
		db 0C0h
		db 1
		db 20h
		db 1
		db 60h
		db 0
		db 80h
byte_B2D7	db 6			; DATA XREF: CODE:DrLivingstonAnimationo
					; CODE:7C3Do
		db 13h
		db 0
		db 0
		db 0
		db 14h
		db 40h
		db 0
		db 0
		db 30h
		db 0
		db 55h
		db 10h
		db 0
		db 0
		db 0C0h
		db 0
		db 88h
		db 80h
		db 0
		db 0
		db 0C0h
		db 5
		db 55h
		db 51h
		db 0
		db 0
		db 30h
		db 0
		db 0AFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Ah
		db 4Bh
		db 0F0h
		db 0
		db 0
		db 0C0h
		db 2Ah
		db 0AFh
		db 0C4h
		db 0
		db 0
		db 30h
		db 0
		db 0FFh
		db 15h
		db 40h
		db 0
		db 0
		db 57h
		db 0F0h
		db 69h
		db 50h
		db 0
		db 1
		db 43h
		db 0C5h
		db 5Ah
		db 50h
		db 1
		db 55h
		db 0Ch
		db 5
		db 56h
		db 94h
		db 1
		db 55h
		db 0
		db 1
		db 56h
		db 80h
		db 0
		db 54h
		db 0
		db 0
		db 2
		db 94h
		db 0
		db 0
		db 0
		db 55h
		db 5Ah
		db 90h
		db 0
		db 0
		db 1
		db 55h
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 1
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
byte_B34B	db 6			; DATA XREF: CODE:7C3Fo CODE:7C41o
		db 13h
		db 0
		db 0
		db 0
		db 14h
		db 40h
		db 0
		db 0
		db 30h
		db 0
		db 55h
		db 10h
		db 0
		db 0
		db 30h
		db 0
		db 88h
		db 80h
		db 0
		db 0
		db 0Ch
		db 5
		db 55h
		db 51h
		db 0
		db 0
		db 30h
		db 0
		db 0AFh
		db 0F0h
		db 0
		db 0
		db 0C0h
		db 0Ah
		db 4Bh
		db 0F0h
		db 0
		db 0
		db 0
		db 2Ah
		db 0AFh
		db 0C4h
		db 0
		db 0
		db 30h
		db 0
		db 0FFh
		db 15h
		db 40h
		db 0
		db 30h
		db 57h
		db 0F0h
		db 69h
		db 50h
		db 0
		db 1
		db 43h
		db 0C5h
		db 5Ah
		db 50h
		db 1
		db 55h
		db 0Ch
		db 5
		db 56h
		db 94h
		db 1
		db 55h
		db 0
		db 1
		db 56h
		db 80h
		db 0
		db 54h
		db 0
		db 0
		db 2
		db 94h
		db 0
		db 0
		db 0
		db 55h
		db 5Ah
		db 90h
		db 0
		db 0A0h
		db 0Ah
		db 55h
		db 0AAh
		db 0A0h
		db 0
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_B3BF	db 6			; DATA XREF: CODE:7C47o
		db 0Bh
		db 0
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 5Ah
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A0h
		db 0
		db 0
		db 0
		db 8
		db 0
		db 0A0h
		db 0
		db 2Ah
		db 0
		db 8
		db 0
		db 0A8h
		db 0
		db 0AAh
		db 80h
		db 2
		db 0
		db 2Ah
		db 2
		db 0A0h
		db 0A0h
		db 2
		db 0
		db 0Ah
		db 0AAh
		db 80h
		db 0Ah
		db 8
		db 0
		db 2
		db 0AAh
		db 0
		db 0
		db 0A0h
byte_B403	db 6			; DATA XREF: CODE:7C49o
		db 0Bh
		db 0
		db 0Ah
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0A5h
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0A0h
		db 0
		db 0
		db 0
		db 28h
		db 2
		db 0A8h
		db 0
		db 0A0h
		db 0
		db 0A0h
		db 0Ah
		db 0Ah
		db 2
		db 0
		db 0
		db 0A0h
		db 0Ah
		db 0Ah
		db 8
		db 0
		db 0
		db 0A8h
		db 0Ah
		db 0Ah
		db 8
		db 0
		db 0
		db 2Ah
		db 0A8h
		db 0Ah
		db 8
		db 0
		db 0
		db 2
		db 0A0h
		db 2
		db 0A0h
		db 0
FlyingDevil_Sprite0 db 6		; DATA XREF: CODE:FlyingDevilAnimationo
					; CODE:7C4Fo
		db 15h
		db 0
		db 30h
		db 0
		db 0Ch
		db 0Ch
		db 0C0h
		db 0
		db 0FCh
		db 0FFh
		db 3Fh
		db 3Fh
		db 30h
		db 0
		db 0Fh
		db 0FFh
		db 0F0h
		db 3Fh
		db 30h
		db 0
		db 0F0h
		db 3Ch
		db 0Fh
		db 0Fh
		db 0C0h
		db 0
		db 0FCh
		db 0FFh
		db 3Fh
		db 3
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0F0h
		db 0Ah
		db 80h
		db 0
		db 0Fh
		db 0
		db 0F0h
		db 2Ah
		db 80h
		db 0
		db 0
		db 0FFh
		db 0
		db 0ABh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0A3h
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 3
		db 0
		db 0
		db 2
		db 0AAh
		db 0A0h
		db 82h
		db 80h
		db 0
		db 2
		db 0A0h
		db 0Ah
		db 8Ah
		db 80h
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 3
		db 0
		db 0
		db 0
		db 2Ah
		db 28h
		db 3
		db 0
		db 0
		db 2Ah
		db 5Ah
		db 0A5h
		db 0ABh
		db 0
		db 2
		db 0AAh
		db 0B5h
		db 5Eh
		db 0ABh
		db 80h
		db 0Ah
		db 80h
		db 39h
		db 6Ch
		db 3
		db 0A0h
		db 2
		db 0A0h
		db 36h
		db 9Ch
		db 3
		db 80h
		db 20h
		db 0A0h
		db 0Dh
		db 70h
		db 0Bh
		db 8
		db 0Ah
		db 28h
		db 3
		db 0C0h
		db 2Bh
		db 0A0h
		db 2Ah
		db 0AAh
		db 0
		db 0
		db 0AAh
		db 0A8h
FlyingDevil_Sprite1 db 6		; DATA XREF: CODE:7C4Do CODE:7C51o
		db 15h
		db 3
		db 30h
		db 30h
		db 0
		db 0Ch
		db 0
		db 0Ch
		db 0FCh
		db 0FCh
		db 0FFh
		db 3Fh
		db 0
		db 0Ch
		db 0FCh
		db 0Fh
		db 0FFh
		db 0F0h
		db 0
		db 3
		db 0F0h
		db 0F0h
		db 3Ch
		db 0Fh
		db 0
		db 0
		db 0C0h
		db 0FCh
		db 0FFh
		db 3Fh
		db 0
		db 2
		db 0A0h
		db 0Fh
		db 0FFh
		db 0F0h
		db 0
		db 2
		db 0A8h
		db 0Fh
		db 0
		db 0F0h
		db 0
		db 0
		db 0EAh
		db 0
		db 0FFh
		db 0
		db 0
		db 0
		db 0CAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 2
		db 82h
		db 0Ah
		db 0AAh
		db 80h
		db 0
		db 2
		db 0A2h
		db 0A0h
		db 0Ah
		db 80h
		db 0
		db 0
		db 0C0h
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0
		db 0C0h
		db 28h
		db 0A8h
		db 0
		db 0
		db 0
		db 0EAh
		db 5Ah
		db 0A5h
		db 0A8h
		db 0
		db 2
		db 0EAh
		db 0B5h
		db 5Eh
		db 0AAh
		db 80h
		db 0Ah
		db 0C0h
		db 39h
		db 6Ch
		db 2
		db 0A0h
		db 2
		db 0C0h
		db 36h
		db 9Ch
		db 0Ah
		db 80h
		db 20h
		db 0E0h
		db 0Dh
		db 70h
		db 0Ah
		db 8
		db 0Ah
		db 0E8h
		db 3
		db 0C0h
		db 28h
		db 0A0h
		db 2Ah
		db 0AAh
		db 0
		db 0
		db 0AAh
		db 0A8h
byte_B547	db 4			; DATA XREF: CODE:FireballAnimationo
		db 9
		db 8
		db 2
		db 2
		db 80h
		db 2
		db 8Ah
		db 0AAh
		db 0
		db 2
		db 0A5h
		db 68h
		db 0
		db 0Ah
		db 5Fh
		db 0DAh
		db 80h
		db 2Ah
		db 7Fh
		db 0F6h
		db 0A0h
		db 2
		db 9Fh
		db 0DAh
		db 0
		db 0Ah
		db 0A9h
		db 68h
		db 0
		db 2
		db 0Ah
		db 8Ah
		db 0
		db 8
		db 2
		db 2
		db 80h
byte_B56D	db 4			; DATA XREF: CODE:7C55o
		db 9
		db 0
		db 0
		db 0
		db 0
		db 0
		db 82h
		db 0Ah
		db 0
		db 0
		db 22h
		db 0A0h
		db 0
		db 0
		db 29h
		db 60h
		db 0
		db 2
		db 9Fh
		db 0DAh
		db 0
		db 0
		db 27h
		db 68h
		db 0
		db 0
		db 0A9h
		db 0A0h
		db 0
		db 2
		db 2
		db 8
		db 0
		db 0
		db 0
		db 0
		db 0
byte_B593	db 4			; DATA XREF: CODE:SpiderAnimationo
		db 10h
		db 0
		db 0
		db 0
		db 0
		db 2
		db 80h
		db 2
		db 80h
		db 8
		db 0
		db 0
		db 20h
		db 8
		db 2
		db 80h
		db 20h
		db 8
		db 0Ah
		db 0A0h
		db 20h
		db 2
		db 82h
		db 82h
		db 80h
		db 0
		db 3Fh
		db 0FCh
		db 0
		db 0
		db 0FBh
		db 0EFh
		db 0
		db 0Ah
		db 0FFh
		db 0FFh
		db 0A0h
		db 20h
		db 0FEh
		db 0BFh
		db 8
		db 2
		db 3Fh
		db 0FCh
		db 80h
		db 8
		db 3
		db 0C0h
		db 20h
		db 20h
		db 0
		db 0
		db 8
		db 20h
		db 0
		db 0
		db 8
		db 8
		db 0
		db 0
		db 20h
		db 0
		db 0
		db 0
		db 0
byte_B5D5	db 4			; DATA XREF: CODE:7C59o
		db 10h
		db 0
		db 0
		db 0
		db 0
		db 8
		db 0
		db 0
		db 20h
		db 20h
		db 0
		db 0
		db 8
		db 20h
		db 2
		db 80h
		db 8
		db 8
		db 0Ah
		db 0A0h
		db 20h
		db 2
		db 82h
		db 82h
		db 80h
		db 0
		db 3Fh
		db 0FCh
		db 0
		db 20h
		db 0FBh
		db 0EFh
		db 8
		db 0Ah
		db 0FFh
		db 0FFh
		db 0A0h
		db 0
		db 0FEh
		db 0BFh
		db 0
		db 2
		db 3Fh
		db 0FCh
		db 80h
		db 8
		db 3
		db 0C0h
		db 20h
		db 20h
		db 0
		db 0
		db 8
		db 20h
		db 0
		db 0
		db 8
		db 20h
		db 0
		db 0
		db 8
		db 0
		db 0
		db 0
		db 0
byte_B617	db 6			; DATA XREF: CODE:7C63o
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 54h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0A5h
		db 50h
		db 0
		db 0
		db 0
		db 15h
		db 55h
		db 53h
		db 0
		db 0
		db 0
		db 0
		db 0AFh
		db 0FCh
		db 0
		db 0
		db 0
		db 2Ah
		db 0CBh
		db 0FFh
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0BFh
		db 0
		db 0
		db 0
		db 3
		db 0FAh
		db 0A4h
		db 0
		db 0
		db 0
		db 0
		db 0FAh
		db 55h
		db 0
		db 0
		db 0
		db 0Fh
		db 0C5h
		db 65h
		db 40h
		db 0
		db 0Ch
		db 0
		db 15h
		db 69h
		db 50h
		db 0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0E9h
		db 50h
		db 0
		db 0FAh
		db 0FFh
		db 0FEh
		db 0ABh
		db 0D0h
		db 0
		db 0Ah
		db 0Ah
		db 0AAh
		db 0AFh
		db 0FCh
		db 0
		db 0
		db 2
		db 84h
		db 55h
		db 0FCh
		db 0
		db 0
		db 0
		db 5
		db 15h
		db 7Ch
		db 0
		db 0
		db 0
		db 5
		db 45h
		db 40h
		db 0
		db 0
		db 0
		db 15h
		db 1
		db 60h
		db 0
		db 0Ah
		db 0
		db 0A4h
		db 0
		db 0AAh
		db 0A0h
		db 0Fh
		db 0AAh
		db 0A0h
		db 0
		db 0Ah
		db 0ACh
		db 0
		db 0FAh
		db 80h
		db 0
		db 2Ah
		db 0F0h
		db 0
		db 0Fh
		db 0
		db 0
		db 0FFh
		db 0
byte_B6A3	db 6			; DATA XREF: CODE:7C65o CODE:7C69o
		db 17h
		db 0
		db 0
		db 5
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 45h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 55h
		db 0
		db 0
		db 0
		db 1
		db 55h
		db 55h
		db 30h
		db 0
		db 0
		db 0
		db 0Ah
		db 0FFh
		db 0C0h
		db 0
		db 0
		db 2
		db 0ACh
		db 0BFh
		db 0F0h
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0ABh
		db 0F0h
		db 0
		db 0
		db 0
		db 3Fh
		db 0A9h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 95h
		db 0
		db 0
		db 0
		db 0
		db 0F5h
		db 65h
		db 40h
		db 0
		db 0Ch
		db 0
		db 15h
		db 69h
		db 50h
		db 0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0E9h
		db 50h
		db 0
		db 0FAh
		db 0FFh
		db 0FEh
		db 0ABh
		db 0D0h
		db 0
		db 0Ah
		db 0Ah
		db 0AAh
		db 0AFh
		db 0FCh
		db 0
		db 0
		db 2
		db 85h
		db 55h
		db 0FCh
		db 0
		db 0
		db 0
		db 5
		db 54h
		db 3Ch
		db 0
		db 0
		db 0
		db 1
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 58h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0FCh
		db 0
		db 0
byte_B72F	db 6			; DATA XREF: CODE:7C67o
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 54h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0A5h
		db 50h
		db 0
		db 0
		db 0
		db 15h
		db 55h
		db 53h
		db 0
		db 0
		db 0
		db 0
		db 0AFh
		db 0FCh
		db 0
		db 0
		db 0
		db 2Ah
		db 0CBh
		db 0FFh
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0BFh
		db 0
		db 0
		db 0
		db 3
		db 0FAh
		db 0A4h
		db 0
		db 0
		db 0
		db 0
		db 0FAh
		db 55h
		db 0
		db 0
		db 0
		db 0Fh
		db 0C5h
		db 65h
		db 40h
		db 0
		db 0Ch
		db 0
		db 15h
		db 69h
		db 50h
		db 0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0E9h
		db 50h
		db 0
		db 0FAh
		db 0FFh
		db 0FEh
		db 0ABh
		db 0D0h
		db 0
		db 0Ah
		db 0Ah
		db 0AAh
		db 0AFh
		db 0FCh
		db 0
		db 0
		db 2
		db 85h
		db 55h
		db 0FCh
		db 0
		db 0
		db 0
		db 5
		db 54h
		db 3Ch
		db 0
		db 0
		db 0
		db 5
		db 51h
		db 40h
		db 0
		db 0
		db 0
		db 15h
		db 5
		db 60h
		db 0
		db 0Ah
		db 0
		db 0A4h
		db 0
		db 0AAh
		db 0A0h
		db 0Fh
		db 0AAh
		db 0A0h
		db 0
		db 0Ah
		db 0ACh
		db 0
		db 0FAh
		db 80h
		db 0
		db 2Ah
		db 0F0h
		db 0
		db 0Fh
		db 0
		db 0
		db 0FFh
		db 0
byte_B7BB	db 0Ch			; DATA XREF: CODE:7C77o
		db 0Bh
		db 2Ah
		db 0
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 82h
		db 0A0h
		db 0Ah
		db 0FAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 50h
		db 0Ah
		db 5Ah
		db 50h
		db 0
		db 0
		db 80h
		db 0A0h
		db 0AAh
		db 0AAh
		db 0A8h
		db 0A5h
		db 0AAh
		db 5Ah
		db 0A5h
		db 0AAh
		db 50h
		db 0
		db 0
		db 18h
		db 33h
		db 0AAh
		db 0AAh
		db 2Ah
		db 0A5h
		db 0A9h
		db 0AAh
		db 0A5h
		db 0AAh
		db 50h
		db 0
		db 0Ah
		db 0
		db 33h
		db 0Ah
		db 2Ah
		db 0AAh
		db 0AAh
		db 0AAh
byte_B800	db 0AAh
		db 0A5h
		db 0AAh
		db 0
		db 6
		db 0
		db 0
		db 28h
		db 0AAh
		db 0AAh
		db 0AAh
		db 22h
		db 2Ah
		db 0AAh
		db 0AAh
		db 50h
		db 0AAh
		db 3
		db 32h
		db 0AAh
		db 0A2h
		db 2Ah
		db 28h
		db 0AAh
		db 0A2h
		db 0A2h
		db 8Ah
		db 0AAh
		db 5Ah
		db 0Ah
		db 0AAh
		db 82h
		db 0A8h
		db 8Ah
		db 8Ah
		db 0AAh
		db 0A8h
		db 0A8h
		db 0A2h
		db 22h
		db 0A8h
		db 2
		db 0A8h
		db 0
		db 0
		db 8
		db 0A0h
		db 0AAh
		db 0A0h
		db 8Ah
		db 0
		db 88h
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0A2h
		db 2Ah
		db 0
		db 0Ah
		db 22h
		db 0A0h
		db 0
		db 0
byte_B841	db 0Ch			; DATA XREF: CODE:7C79o
		db 0Bh
		db 2Ah
		db 0
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 9Ah
		db 0A0h
		db 82h
		db 0A0h
		db 0Ah
		db 0FAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0A0h
		db 8
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 50h
		db 0Ah
		db 5Ah
		db 50h
		db 0
		db 2
		db 60h
		db 8
		db 0AAh
		db 0AAh
		db 0A8h
		db 0A5h
		db 0AAh
		db 5Ah
		db 0A5h
		db 0AAh
		db 50h
		db 0
		db 0AAh
		db 0
		db 3
		db 33h
		db 0AAh
		db 2Ah
		db 0A5h
		db 0A9h
		db 0AAh
		db 0A5h
		db 0AAh
		db 50h
		db 6
		db 80h
		db 0Ah
		db 0AAh
		db 0Ah
		db 2Ah
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0A5h
		db 0AAh
		db 0Ah
		db 80h
		db 0
		db 0AAh
		db 0A8h
		db 0AAh
		db 0AAh
		db 0AAh
		db 22h
		db 2Ah
		db 0AAh
		db 0AAh
		db 5Ah
		db 80h
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 8Ah
		db 88h
		db 0AAh
		db 88h
		db 0A8h
		db 8Ah
		db 0A8h
		db 80h
		db 0
		db 0
		db 0
		db 0Ah
		db 2Ah
		db 2Ah
		db 0AAh
		db 0A2h
		db 0A2h
		db 0A2h
		db 22h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 8Ah
		db 0
		db 0AAh
		db 8
		db 0A0h
		db 0Ah
		db 88h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 22h
		db 0A0h
		db 0
		db 0A2h
		db 2Ah
		db 0
		db 0
		db 0
byte_B8C7	db 2			; DATA XREF: CODE:BulletAnimationo
					; CODE:7C6Fo
		db 3
		db 0
		db 0
		db 0Fh
		db 0C0h
		db 0Fh
		db 0Ch
byte_B8CF	db 2			; DATA XREF: CODE:7C6Do
		db 3
		db 0Ch
		db 0C0h
		db 33h
		db 0FCh
		db 3Fh
		db 0F0h
byte_B8D7	db 2			; DATA XREF: CODE:7C71o
		db 3
		db 0
		db 0
		db 3Fh
		db 0
		db 0
		db 0
byte_B8DF	db 0Ch			; DATA XREF: CODE:DancingStatueo
		db 2Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 5
		db 57h
		db 0FFh
		db 0D5h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 35h
		db 0FFh
		db 5Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 5
		db 55h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Ah
		db 0
		db 0BFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 34h
		db 0A9h
		db 2Fh
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FAh
		db 2Ah
		db 0AFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0FAh
		db 0AAh
		db 2Fh
		db 0F0h
		db 0
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0FEh
		db 0Ah
		db 0BFh
		db 0F0h
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0FFh
		db 0AAh
		db 0FFh
		db 0C0h
		db 0AAh
		db 0AAh
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FCh
		db 2Bh
		db 0EAh
		db 0AAh
		db 0AAh
		db 1
		db 0AAh
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AFh
		db 80h
		db 2Ah
		db 0A0h
		db 0
		db 2Ah
		db 0
		db 2Ah
		db 0A0h
		db 0
		db 0
		db 0A8h
		db 3
		db 2Ah
		db 8Ah
		db 0
		db 0
		db 0Ah
		db 0A8h
		db 0
		db 0A8h
		db 0
		db 0Ah
		db 0A2h
		db 0A8h
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0AAh
		db 40h
		db 0AAh
		db 8Ah
		db 0A8h
		db 0A8h
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 1
		db 0AAh
		db 0AAh
		db 8
		db 0A8h
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0A0h
		db 0Ah
		db 0AAh
		db 2Ah
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0
		db 2
		db 0A8h
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0AAh
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 2Ah
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0AAh
		db 0E0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0BAh
		db 0ABh
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0BEh
		db 0AFh
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 8Fh
		db 0FFh
		db 0AAh
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0B3h
		db 0F2h
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0AAh
		db 0BCh
		db 0Eh
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 8Fh
		db 0FEh
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0B3h
		db 0C0h
		db 2Ah
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0AAh
		db 3Ch
		db 30h
		db 2
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0A0h
		db 0Fh
		db 0F0h
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0Fh
		db 0CCh
		db 0
		db 2Ah
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0A8h
		db 0
		db 33h
		db 0
		db 0
		db 0Ah
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0
		db 0
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0
		db 0
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 40h
		db 0
		db 0
		db 1
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 5
		db 80h
		db 0
		db 0
		db 2
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0A0h
		db 0
		db 0
		db 0Ah
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 0
byte_BB15	db 12h			; DATA XREF: CODE:OperasoftLogoo
		db 0Ch
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0ABh
		db 0FFh
		db 0ABh
		db 0FFh
		db 0ABh
		db 0FFh
		db 0ABh
		db 0FFh
		db 0ABh
		db 0FFh
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 20h
		db 0
		db 0AFh
		db 0FFh
		db 0EFh
		db 0FFh
		db 0EFh
		db 0FFh
		db 0EFh
		db 0FFh
		db 0EFh
		db 0FFh
		db 0E8h
		db 2
		db 0A0h
		db 2Ah
		db 2
		db 0AAh
		db 0AAh
		db 80h
		db 0AFh
		db 0ABh
		db 0EFh
		db 0ABh
		db 0EFh
		db 0AAh
		db 0AFh
		db 0ABh
		db 0EFh
		db 0ABh
		db 0E8h
		db 8
		db 8
		db 80h
		db 88h
		db 0
		db 20h
		db 0
		db 0AFh
		db 0ABh
		db 0EFh
		db 0FFh
		db 0EFh
		db 0FFh
		db 0AFh
		db 0FFh
		db 0EFh
		db 0FFh
		db 0E8h
		db 8
		db 0
		db 80h
		db 88h
		db 0
		db 20h
		db 0
		db 0AFh
		db 0ABh
		db 0EFh
		db 0FFh
		db 0AFh
		db 0FFh
		db 0AFh
		db 0FFh
		db 0AFh
		db 0FFh
		db 0E8h
		db 2
		db 82h
		db 0
		db 8Ah
		db 0A0h
		db 80h
		db 0
		db 0AFh
		db 0ABh
		db 0EFh
		db 0AAh
		db 0AFh
		db 0AAh
		db 0AFh
		db 0BEh
		db 0AFh
		db 0ABh
		db 0E8h
		db 0
		db 22h
		db 2
		db 8
		db 0
		db 80h
		db 0
		db 0AFh
		db 0FFh
		db 0EFh
		db 0AAh
		db 0AFh
		db 0FFh
		db 0EFh
		db 0AFh
		db 0EFh
		db 0ABh
		db 0E8h
		db 20h
		db 22h
		db 2
		db 20h
		db 2
		db 0
		db 0
		db 0ABh
		db 0FFh
		db 0ABh
		db 0AAh
		db 0ABh
		db 0FFh
		db 0ABh
		db 0ABh
		db 0ABh
		db 0ABh
		db 0A8h
		db 0Ah
		db 80h
		db 0A8h
		db 20h
		db 2
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
Continuara	db 0Ch			; DATA XREF: CODE:7C83o
		db 13h
		db  0Fh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FCh,   0,	3Fh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh
		db 0FFh,0FFh,0FFh,0FFh,	  0,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0C0h,0FFh,0FFh
		db 0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0C0h,0FFh,   3,	  3,   3,   3, 30h, 33h, 30h, 30h
		db  30h, 3Fh,0C0h,0FFh,	3Fh, 33h, 33h,0CFh, 33h, 33h, 33h, 33h,	33h, 3Fh,0C0h,0FFh, 3Fh, 33h, 33h
		db 0CFh, 33h, 33h, 30h,	30h, 30h, 3Fh,0C0h,0FFh, 3Fh, 33h, 33h,0CFh, 33h, 33h, 33h, 30h,0F3h, 3Fh
		db 0C0h,0FFh,	3,   3,	33h,0CFh, 33h, 30h, 33h, 33h, 33h, 3Fh,0C0h,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh
		db 0FFh,0FFh,0FFh,0FFh,0FFh,0C0h,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0C0h, 3Fh
		db 0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,	0, 0Fh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh
		db 0FFh,0FFh,0FCh,   0,	  0,   0,   0,	 0,   0, 0Fh,0C0h,   0,	  0,   0,   0,	 0,   0,   0,	0
		db    0,   0, 3Fh,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	  0,   0,0FFh,0F0h,   0,   0,	0
		db    0,   0,	0,   0,	  0,   0,   0, 0Fh,0C0h,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0
		db  0Fh,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	0Ch,   0,   0,	 0,   0,   0,	0
To_be_cont	db 0Ch
		db 13h
		db  0Fh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FCh,   0,	3Fh,0FFh,0FFh,0C0h,0C0h,0FFh,	3
		db    3,0FFh,0FFh,0FFh,	  0,0FFh,0FFh,0FFh,0F3h,0CCh,0FFh, 33h,	3Fh,0FFh,0FFh,0FFh,0C0h,0FFh,0FFh
		db 0FFh,0F3h,0CCh,0FFh,	0Fh, 0Fh,0FFh,0FFh,0FFh,0C0h,0FFh,0FFh,0FFh,0F3h,0CCh,0FFh, 33h, 3Fh,0FFh
		db 0FFh,0FFh,0C0h,0FFh,0FFh,0FFh,0F3h,0C0h,0FFh,   3,	3,0FFh,0FFh,0FFh,0C0h,0FFh,0FFh,0FFh,0FFh
		db 0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0C0h,0FFh,0F0h, 30h, 30h,	30h, 33h,   3, 33h,   3, 0Fh,0FFh
		db 0C0h,0FFh,0F3h,0F3h,	33h, 3Ch,0F3h, 33h, 33h, 3Fh, 33h,0FFh,0C0h,0FFh,0F3h,0F3h, 33h, 3Ch,0F3h
		db  33h, 33h, 0Fh, 33h,0FFh,0C0h,0FFh,0F3h,0F3h, 33h, 3Ch,0F3h,	33h, 33h, 3Fh, 33h,0FFh,0C0h, 3Fh
		db 0F0h, 30h, 33h, 3Ch,0F3h, 33h,   3,	 3, 0Fh,0FFh,	0, 0Fh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh
		db 0FFh,0FFh,0FCh,   0,	  0,   0,   0,	 0,   0, 0Fh,0C0h,   0,	  0,   0,   0,	 0,   0,   0,	0
		db    0,   0, 3Fh,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	  0,   0,0FFh,0F0h,   0,   0,	0
		db    0,   0,	0,   0,	  0,   0,   0, 0Fh,0C0h,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0
		db  0Fh,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	0Ch,   0,   0,	 0,   0,   0,	0
PhraseNo	db 4			; DATA XREF: CODE:DrLivingstonPhraseso
		db 0Fh
		db  0Fh,0FFh,0FFh,0F0h
		db  3Fh,0FFh,0FFh,0FCh
		db 0FFh,   3,0C0h,0FFh
		db 0FFh, 33h,0CCh,0FFh
		db 0FFh, 33h,0CCh,0FFh
		db 0FFh, 33h,0CCh,0FFh
		db 0FFh, 33h,0C0h,0FFh
		db  3Fh,0FFh,0FFh,0FCh
		db  0Fh,0FFh,0FFh,0F0h
		db    0, 0Fh,0C0h,   0
		db    0,   3,0F0h,   0
		db    0, 3Fh,0FCh,   0
		db    0, 0Fh,0C0h,   0
		db    0,   3,0C0h,   0
		db    0,   0,0C0h,   0
PhraseOK	db 4			; DATA XREF: CODE:7C87o
		db 0Fh
		db  0Fh,0FFh,0FFh,0F0h
		db  3Fh,0FFh,0FFh,0FCh
		db 0FFh,   3,0CCh,0FFh
		db 0FFh, 33h,0CCh,0FFh
		db 0FFh, 33h,0C3h,0FFh
		db 0FFh, 33h,0CCh,0FFh
		db 0FFh,   3,0CCh,0CFh
		db  3Fh,0FFh,0FFh,0FCh
		db  0Fh,0FFh,0FFh,0F0h
		db    0, 0Fh,0C0h,   0
		db    0,   3,0F0h,   0
		db    0, 3Fh,0FCh,   0
		db    0, 0Fh,0C0h,   0
		db    0,   3,0C0h,   0
		db    0,   0,0C0h,   0
Liv_I_Pres	db 0Ch
		db 13h
		db  0Fh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FCh,   0,	3Ch,0FCh,0CCh,0CCh, 0Ch, 0Ch, 0Ch
		db  0Ch, 0Ch, 0Ch, 0Fh,	  0,0FCh,0FCh,0CCh,0CCh,0CCh,0FCh,0FFh,	3Ch,0CCh,0CCh,0FFh,0C0h,0FCh,0FCh
		db 0CCh,0CCh,0CCh,0FCh,	0Fh, 3Ch,0CCh,0CCh, 3Fh,0C0h,0FCh,0FCh,0CCh,0CCh,0CCh,0CFh,0CFh, 3Ch,0CCh
		db 0CCh,0FFh,0C0h,0FCh,	0Ch,0F3h,0CCh,0CCh, 0Ch, 0Fh, 3Ch, 0Ch,0CCh, 0Fh,0C0h,0FFh,0FFh,0FFh,0FFh
		db 0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0C0h,0FFh,0F0h, 3Fh,   3,	  3,   3,   3, 33h, 33h,   3,0FFh
		db 0C0h,0FFh,0FCh,0FFh,	33h, 33h, 3Fh, 3Fh, 33h,   3, 3Fh,0FFh,0C0h,0FFh,0FCh,0FFh,   3,   3, 0Fh
		db    3, 33h, 33h, 0Fh,0FFh,0C0h,0FFh,0FCh,0FFh, 3Fh, 0Fh, 3Fh,0F3h, 33h, 33h, 3Fh,0FFh,0C0h, 3Fh
		db 0F0h, 3Fh, 3Fh, 33h,	  3,   3,   3, 33h,   3,0FFh,	0, 0Fh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh
		db 0FFh,0FFh,0FCh,   0,	  0,   0,   0,	 0,   0, 0Fh,0C0h,   0,	  0,   0,   0,	 0,   0,   0,	0
		db    0,   0, 3Fh,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	  0,   0,0FFh,0F0h,   0,   0,	0
		db    0,   0,	0,   0,	  0,   0,   0, 0Fh,0C0h,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0
		db  0Fh,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	0Ch,   0,   0,	 0,   0,   0,	0
LivingstoneSupongo db 0Ch		; DATA XREF: CODE:PlayerPhraseso
		db 13h
		db  0Fh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FCh,   0,	3Ch,0FCh,0CCh,0CCh, 0Ch, 0Ch, 0Ch
		db  0Ch, 0Ch, 0Ch, 0Fh,	  0,0FCh,0FCh,0CCh,0CCh,0CCh,0FCh,0FFh,	3Ch,0CCh,0CCh,0FFh,0C0h,0FCh,0FCh
		db 0CCh,0CCh,0CCh,0FCh,	0Fh, 3Ch,0CCh,0CCh, 3Fh,0C0h,0FCh,0FCh,0CCh,0CCh,0CCh,0CFh,0CFh, 3Ch,0CCh
		db 0CCh,0FFh,0C0h,0FCh,	0Ch,0F3h,0CCh,0CCh, 0Ch, 0Fh, 3Ch, 0Ch,0CCh, 0Fh,0C0h,0FFh,0FFh,0FFh,0FFh
		db 0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0C0h,0FFh,0FFh,0C0h,0CCh,0C0h,0C0h,0C0h,0C0h,0C0h,0FFh,0FFh
		db 0C0h,0FFh,0FFh,0CFh,0CCh,0CCh,0CCh,0CCh,0CFh,0CCh,0FFh,0FFh,0C0h,0FFh,0FFh,0C0h,0CCh,0C0h,0CCh
		db 0CCh,0CCh,0CCh,0FFh,0FFh,0C0h,0FFh,0FFh,0FCh,0CCh,0CFh,0CCh,0CCh,0CCh,0CCh,0FFh,0FFh,0C0h, 3Fh
		db 0FFh,0C0h,0C0h,0CFh,0C0h,0CCh,0C0h,0C0h,0FFh,0FFh,	0, 0Fh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh
		db 0FFh,0FFh,0FCh,   0,	  0,   0,   0,	 0,   0, 0Fh,0C0h,   0,	  0,   0,   0,	 0,   0,   0,	0
		db    0,   0, 3Fh,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	  0,   0,0FFh,0F0h,   0,   0,	0
		db    0,   0,	0,   0,	  0,   0,   0, 0Fh,0C0h,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0
		db  0Fh,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	0Ch,   0,   0,	 0,   0,   0,	0
SupongoStandbyLogo db 10h		; DATA XREF: CODE:SupongoWordo
		db 0Ah
byte_C005	db  3Fh,0F0h, 3Ch, 0Fh,	0Fh,0FFh,   0,0FFh,0C0h,0F3h,0F0h, 0Fh,0FCh,   3,0FFh,	 0
		db 0FFh,0FCh, 3Ch, 0Fh,	0Fh,0FFh,0C3h,0FFh,0F0h,0FFh,0FCh, 3Fh,0FFh, 0Fh,0FFh,0C0h
		db 0F0h, 3Ch, 3Ch, 0Fh,	0Fh,   3,0C3h,0C0h,0F0h,0FCh, 3Ch, 3Ch,	0Fh, 0Fh,   3,0C0h
		db 0F0h,   0, 3Ch, 0Fh,	0Fh,   3,0C3h,0C0h,0F0h,0F0h, 3Ch, 3Ch,	  0, 0Fh,   3,0C0h
		db 0FFh,0F0h, 3Ch, 0Fh,	0Fh,0FFh,0C3h,0C0h,0F0h,0F0h, 3Ch, 3Ch,	  0, 0Fh,   3,0C0h
		db  3Fh,0FCh, 3Ch, 0Fh,	0Fh,0FFh,   3,0C0h,0F0h,0F0h, 3Ch, 3Ch,0FFh, 0Fh,   3,0C0h
		db    0, 3Ch, 3Ch, 0Fh,	0Fh,   0,   3,0C0h,0F0h,0F0h, 3Ch, 3Ch,0FFh, 0Fh,   3,0C0h
		db 0F0h, 3Ch, 3Ch, 0Fh,	0Fh,   0,   3,0C0h,0F0h,0F0h, 3Ch, 3Ch,	0Fh, 0Fh,   3,0C0h
		db 0FFh,0FCh, 3Fh,0FFh,	0Fh,   0,   3,0FFh,0F0h,0F0h, 3Ch, 3Fh,0FFh, 0Fh,0FFh,0C0h
		db  3Fh,0F0h, 0Fh,0FCh,	0Fh,   0,   0,0FFh,0C0h,0F0h, 3Ch, 0Fh,0FCh,   3,0FFh,	 0
I_presume_stdby_logo db	12h
		db 0Ah
		db 0FFh,   0, 3Fh,0FCh,	0Fh,0FFh,   3,0FFh,0F0h, 3Fh,0F0h, 3Ch,	0Fh, 0Fh,   3,0C3h,0FFh,0F0h
		db 0FFh,   0, 3Fh,0FFh,	0Fh,0FFh,0C3h,0FFh,0F0h,0FFh,0FCh, 3Ch,	0Fh, 0Fh,   3,0C3h,0FFh,0F0h
		db  3Ch,   0, 3Ch, 0Fh,	0Fh,   3,0C3h,0C0h,   0,0F0h, 3Ch, 3Ch,	0Fh, 0Fh,0CFh,0C3h,0C0h,   0
		db  3Ch,   0, 3Ch, 0Fh,	0Fh,   3,0C3h,0C0h,   0,0F0h,	0, 3Ch,	0Fh, 0Fh,0FFh,0C3h,0C0h,   0
		db  3Ch,   0, 3Fh,0FFh,	0Fh,0FFh,0C3h,0FFh,   0,0FFh,0F0h, 3Ch,	0Fh, 0Fh,0FFh,0C3h,0FFh,0C0h
		db  3Ch,   0, 3Fh,0FCh,	0Fh,0FFh,   3,0FFh,   0, 3Fh,0FCh, 3Ch,	0Fh, 0Fh, 33h,0C3h,0FFh,0C0h
		db  3Ch,   0, 3Ch,   0,	0Fh, 3Ch,   3,0C0h,   0,   0, 3Ch, 3Ch,	0Fh, 0Fh,   3,0C3h,0C0h,   0
		db  3Ch,   0, 3Ch,   0,	0Fh, 0Fh,   3,0C0h,   0,0F0h, 3Ch, 3Ch,	0Fh, 0Fh,   3,0C3h,0C0h,   0
		db 0FFh,   0, 3Ch,   0,	0Fh,   3,0C3h,0FFh,0F0h,0FFh,0FCh, 3Fh,0FFh, 0Fh,   3,0C3h,0FFh,0F0h
		db 0FFh,   0, 3Ch,   0,	0Fh,   3,0C3h,0FFh,0F0h, 3Fh,0F0h, 0Fh,0FCh, 0Fh,   3,0C3h,0FFh,0F0h
byte_C15B	db 6			; DATA XREF: CODE:BirdAnimationo
					; CODE:7B37o
		db 10h
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    8,   0,	0,   0,	  0,   0
		db  28h,   0,	0,   0,	  0,   0
		db  6Ah,   0,	0,   0,	  0,   0
		db  1Ah, 80h,	0,   0,	2Ah,   0
		db    5,0AAh,0FFh,0FDh,0A0h, 80h
		db    0,0FFh,0FFh,0FDh,	5Ah,0BCh
		db    5, 5Fh,0FFh,0F5h,0AAh,0CDh
		db    0,   5, 55h, 52h,0A0h, 31h
		db    0,   0, 29h, 8Ah,	  0,   0
		db    0,   0,	4,   0,	  0,   0
		db    0,   0,	1, 50h,	  0,   0
		db    0,   0,	0, 44h,	  0,   0
		db    0,   0,	0,   0,	  0,   0
		db    0,   0,	0,   0,	  0,   0
byte_C1BD	db 6			; DATA XREF: CODE:7B35o
		db 10h
		db    0, 0Ah, 55h, 50h,	  0,   0
		db  0Ah,0AFh,0FFh,0F5h,	  0,   0
		db    2,0AAh,0AAh,0FFh,	40h,   0
		db    0,0AAh,0FFh,0FFh,0D0h,   0
		db    8, 0Ah,0AAh,0AFh,0D0h,   0
		db  28h,   0,0AFh,0FFh,0D0h,   0
		db  6Ah,   0, 2Ah,0AFh,	40h,   0
		db  1Ah, 80h, 0Ah,0FDh,0AAh,   0
		db    5,0AAh,0AFh,0F6h,0A0h, 80h
		db    0, 6Ah,0ABh,0F6h,0AAh,0BCh
		db    0, 0Ah,0AAh,0AAh,0AAh,0FDh
		db    0,   0,0A2h,0A2h,0A0h,   1
		db    0,   0, 29h, 8Ah,	  0,   0
		db    0,   0,	4,   0,	  0,   0
		db    0,   0,	1, 50h,	  0,   0
		db    0,   0,	0, 44h,	  0,   0
byte_C21F	db 6			; DATA XREF: CODE:7B39o
		db 10h
		db 8
		db 0
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 6Ah
		db 0
		db 0
		db 0
		db 0
		db 0
		db 1Ah
		db 80h
		db 0
		db 0
		db 0AAh
		db 0
		db 5
		db 0AAh
		db 0AAh
		db 0A2h
		db 0A0h
		db 80h
		db 0
		db 6Ah
		db 0A8h
		db 0EAh
		db 0AAh
		db 0BCh
		db 0
		db 0Ah
		db 0A2h
		db 0F6h
		db 0AAh
		db 0FFh
		db 0
		db 0
		db 0A2h
		db 0BDh
		db 0A0h
		db 3
		db 0
		db 0
		db 0Ah
		db 0BDh
		db 0
		db 0
		db 0
		db 6Ah
		db 0AAh
		db 0FDh
		db 0
		db 0
		db 5
		db 7Fh
		db 0FFh
		db 0D4h
		db 0
		db 0
		db 0
		db 55h
		db 55h
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_C281	db 4			; DATA XREF: CODE:7B05o
		db 4
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 55h
		db 56h
		db 0AAh
		db 0
		db 3Fh
		db 0FEh
		db 0AAh
		db 0
		db 0
		db 2
		db 80h
byte_C293	db 6			; DATA XREF: CODE:RiflemanAnimationo
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 15h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 5Ah
		db 0
		db 0
		db 0
		db 0
		db 0C5h
		db 55h
		db 54h
		db 0
		db 0
		db 0
		db 3Fh
		db 0FAh
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0E3h
		db 0A8h
		db 0
		db 0
		db 0
		db 0FEh
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0
		db 1Ah
		db 0AFh
		db 0C0h
		db 0
		db 0
		db 0
		db 55h
		db 0AFh
		db 0
		db 0
		db 0
		db 1
		db 59h
		db 53h
		db 0F0h
		db 0
		db 0
		db 5
		db 69h
		db 54h
		db 0
		db 30h
		db 0
		db 5
		db 6Bh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0
		db 7
		db 0EAh
		db 0BFh
		db 0FFh
		db 0AFh
		db 0
		db 3Fh
		db 0FAh
		db 0AAh
		db 0A0h
		db 0A0h
		db 0
		db 3Fh
		db 55h
		db 52h
		db 80h
		db 0
		db 0
		db 3Ch
		db 15h
		db 50h
		db 0
		db 0
		db 0
		db 1
		db 45h
		db 50h
		db 0
		db 0
		db 0
		db 9
		db 50h
		db 54h
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 1Ah
		db 0
		db 0A0h
		db 3Ah
		db 0A0h
		db 0
		db 0Ah
		db 0AAh
		db 0F0h
		db 0Fh
		db 0A8h
		db 0
		db 2
		db 0AFh
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0F0h
		db 0
byte_C31F	db 6			; DATA XREF: CODE:7C5Do CODE:7C61o
		db 17h
		db 0
		db 0
		db 5
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 51h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 0A0h
		db 0
		db 0
		db 0
		db 0Ch
		db 55h
		db 55h
		db 40h
		db 0
		db 0
		db 3
		db 0FFh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FEh
		db 3Ah
		db 80h
		db 0
		db 0
		db 0Fh
		db 0EAh
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 6Ah
		db 0FCh
		db 0
		db 0
		db 0
		db 0
		db 56h
		db 0F0h
		db 0
		db 0
		db 0
		db 1
		db 59h
		db 5Fh
		db 0
		db 0
		db 0
		db 5
		db 69h
		db 54h
		db 0
		db 30h
		db 0
		db 5
		db 6Bh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0
		db 7
		db 0EAh
		db 0BFh
		db 0FFh
		db 0AFh
		db 0
		db 3Fh
		db 0FAh
		db 0AAh
		db 0A0h
		db 0A0h
		db 0
		db 3Fh
		db 55h
		db 52h
		db 80h
		db 0
		db 0
		db 3Ch
		db 15h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 0
		db 0
		db 0
		db 0
		db 0
		db 25h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 3Fh
		db 0FFh
		db 0
		db 0
byte_C3AB	db 6			; DATA XREF: CODE:7C5Fo
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 15h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 5Ah
		db 0
		db 0
		db 0
		db 0
		db 0C5h
		db 55h
		db 54h
		db 0
		db 0
		db 0
		db 3Fh
		db 0FAh
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0E3h
		db 0A8h
		db 0
		db 0
		db 0
		db 0FEh
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0
		db 1Ah
		db 0AFh
		db 0C0h
		db 0
		db 0
		db 0
		db 55h
		db 0AFh
		db 0
		db 0
		db 0
		db 1
		db 59h
		db 53h
		db 0F0h
		db 0
		db 0
		db 5
		db 69h
		db 54h
		db 0
		db 30h
		db 0
		db 5
		db 6Bh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0
		db 7
		db 0EAh
		db 0BFh
		db 0FFh
		db 0AFh
		db 0
		db 3Fh
		db 0FAh
		db 0AAh
		db 0A0h
		db 0A0h
		db 0
		db 3Fh
		db 55h
		db 12h
		db 80h
		db 0
		db 0
		db 3Dh
		db 54h
		db 50h
		db 0
		db 0
		db 0
		db 1
		db 51h
		db 50h
		db 0
		db 0
		db 0
		db 9
		db 40h
		db 54h
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 1Ah
		db 0
		db 0A0h
		db 3Ah
		db 0A0h
		db 0
		db 0Ah
		db 0AAh
		db 0F0h
		db 0Fh
		db 0A8h
		db 0
		db 2
		db 0AFh
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0F0h
		db 0
byte_C437	db 0Ch			; DATA XREF: CODE:CrocodileAnimationo
		db 0Bh
		db 0Ah
		db 0A6h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0
		db 0A8h
		db 20h
		db 0Ah
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AFh
		db 0A0h
		db 0Ah
		db 82h
		db 20h
		db 9
		db 80h
		db 0
		db 5
		db 0A5h
		db 0A0h
		db 5
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0
		db 0AAh
		db 0
		db 5
		db 0AAh
		db 5Ah
		db 0A5h
		db 0AAh
		db 5Ah
		db 2Ah
		db 0AAh
		db 0AAh
		db 2
		db 90h
		db 5
		db 0AAh
		db 5Ah
		db 0AAh
		db 6Ah
		db 5Ah
		db 0A8h
		db 0AAh
		db 0CCh
		db 0C0h
		db 2
		db 0A0h
		db 0AAh
		db 5Ah
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0A8h
		db 0A0h
		db 0AAh
		db 0A0h
		db 2
		db 0A5h
		db 0AAh
		db 0AAh
		db 0A8h
		db 88h
		db 0AAh
		db 0AAh
		db 0AAh
		db 2Ah
		db 0AAh
		db 0
		db 2
		db 2Ah
		db 0A2h
		db 2Ah
		db 22h
		db 0AAh
		db 22h
		db 0A2h
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 88h
		db 8Ah
		db 8Ah
		db 8Ah
		db 0AAh
		db 0A8h
		db 0A8h
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 22h
		db 0A0h
		db 0Ah
		db 20h
		db 0AAh
		db 0
		db 0A2h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A8h
		db 8Ah
		db 0
		db 0Ah
		db 88h
		db 0A0h
		db 0
		db 0
		db 0
byte_C4BD	db 0Ch			; DATA XREF: CODE:7C75o
		db 0Bh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0
		db 0A8h
		db 0
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AFh
		db 0A0h
		db 0Ah
		db 82h
		db 0Ah
		db 2
		db 0
		db 0
		db 5
		db 0A5h
		db 0A0h
		db 5
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 24h
		db 0
		db 0
		db 5
		db 0AAh
		db 5Ah
		db 0A5h
		db 0AAh
		db 5Ah
		db 2Ah
		db 0AAh
		db 0AAh
		db 0A0h
		db 0
		db 5
		db 0AAh
		db 5Ah
		db 0AAh
		db 6Ah
		db 5Ah
		db 0A8h
		db 0AAh
		db 0AAh
		db 0CCh
		db 90h
		db 0
		db 0AAh
		db 5Ah
		db 0AAh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0A8h
		db 0A0h
		db 0CCh
		db 0
		db 0AAh
		db 5
		db 0AAh
		db 0AAh
		db 0A8h
		db 88h
		db 0AAh
		db 0AAh
		db 0AAh
		db 28h
		db 0
		db 0
		db 0A5h
		db 0AAh
		db 0A2h
		db 8Ah
		db 8Ah
		db 0AAh
		db 28h
		db 0A8h
		db 8Ah
		db 0AAh
		db 8Ch
		db 0C0h
		db 2Ah
		db 88h
		db 8Ah
		db 2Ah
		db 2Ah
		db 0AAh
		db 0A2h
		db 0A2h
		db 2Ah
		db 82h
		db 0AAh
		db 0A0h
		db 2
		db 22h
		db 0
		db 0A2h
		db 0Ah
		db 0AAh
		db 0Ah
		db 20h
		db 0
		db 0
		db 2Ah
		db 80h
		db 0
		db 0
		db 0Ah
		db 88h
		db 0A0h
		db 0
		db 0A8h
		db 8Ah
		db 0
		db 0
		db 0
		db 0
byte_C543	db 2			; DATA XREF: CODE:DartAnimationo
		db 5
		db 0
		db 0
		db 15h
		db 0
		db 5
		db 0FCh
		db 15h
		db 0
		db 0
		db 0
byte_C54F	db 0Ch			; DATA XREF: CODE:7C39o
		db 2Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 5
		db 57h
		db 0FFh
		db 0D5h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 35h
		db 0FFh
		db 5Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 5
		db 55h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FEh
		db 0
		db 0ACh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0F8h
		db 6Ah
		db 1Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FAh
		db 0A8h
		db 0AFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0
		db 0Fh
		db 0F8h
		db 0AAh
		db 0AFh
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0Fh
		db 0FEh
		db 0A0h
		db 0BFh
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 1
		db 0AAh
		db 0AAh
		db 3
		db 0FFh
		db 0AAh
		db 0FFh
		db 0C0h
		db 0
		db 0
		db 0
		db 2
		db 0AAh
		db 40h
		db 0AAh
		db 0AAh
		db 0ABh
		db 0E8h
		db 3Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A8h
		db 0
		db 0Ah
		db 0A8h
		db 2
		db 0FAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0A0h
		db 0
		db 0
		db 0A2h
		db 0A8h
		db 0C0h
		db 2Ah
		db 0
		db 0
		db 0Ah
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 2Ah
		db 8Ah
		db 0A0h
		db 0
		db 2Ah
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 2Ah
		db 2Ah
		db 0A2h
		db 0AAh
		db 1
		db 0AAh
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 2Ah
		db 20h
		db 0AAh
		db 0AAh
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0A8h
		db 0AAh
		db 0A0h
		db 0Ah
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 2Ah
		db 80h
		db 0
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0AAh
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0A8h
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Bh
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0EAh
		db 0AEh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0FAh
		db 0BEh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0AAh
		db 0FFh
		db 0F2h
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 8Fh
		db 0CEh
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0B0h
		db 3Eh
		db 0AAh
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0AAh
		db 0BFh
		db 0F2h
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0A8h
		db 3
		db 0CEh
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 80h
		db 0Ch
		db 3Ch
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0Fh
		db 0F0h
		db 0Ah
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0A8h
		db 0
		db 33h
		db 0F0h
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0A0h
		db 0
		db 0
		db 0CCh
		db 0
		db 2Ah
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0
		db 0
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0
		db 0
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 40h
		db 0
		db 0
		db 1
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 5
		db 80h
		db 0
		db 0
		db 2
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0A0h
		db 0
		db 0
		db 0Ah
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 0
byte_C785	db 6			; DATA XREF: CODE:ScorpionAnimationo
		db 0Eh
		db 0
		db 2
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 2Ah
		db 0
		db 0
		db 0
		db 0
		db 0A0h
		db 2
		db 80h
		db 0
		db 0
		db 2
		db 80h
		db 3
		db 80h
		db 0
		db 0
		db 2
		db 80h
		db 0Ch
		db 0
		db 0
		db 0A8h
		db 2
		db 80h
		db 0
		db 0
		db 2
		db 0A0h
		db 2
		db 80h
		db 0
		db 0
		db 0Ah
		db 0A8h
		db 0
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 2Ah
		db 0A2h
		db 22h
		db 0A0h
		db 80h
		db 0
		db 2
		db 0A8h
		db 8Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 2Ah
		db 0AAh
		db 0
		db 28h
		db 0
		db 0
		db 8
		db 88h
		db 0AAh
		db 80h
		db 0
		db 0
		db 8
		db 22h
		db 0Ah
		db 0A8h
byte_C7DB	db 6			; DATA XREF: CODE:7BD3o
		db 0Eh
		db 0
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0Ah
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 0Eh
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0
		db 0
		db 0
		db 0
		db 0A0h
		db 0Ah
		db 80h
		db 0
		db 0
		db 0Ah
		db 0A8h
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 80h
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 2Ah
		db 0A2h
		db 22h
		db 0A0h
		db 80h
		db 0
		db 2
		db 0A8h
		db 8Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 2Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0A2h
		db 88h
		db 0AAh
		db 0A8h
		db 0
		db 2
		db 8
		db 8
		db 0Ah
		db 0A0h
Player_Sprite10	db 6			; DATA XREF: CODE:7AD7o CODE:7ADBo
		db 17h
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Ah
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 0ACh
		db 95h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A9h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0ADh
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0D5h
		db 54h
		db 0
		db 0
		db 0
		db 3Fh
		db 5Bh
		db 0D5h
		db 40h
		db 0
		db 0
		db 0FFh
		db 5Ah
		db 0F5h
		db 50h
		db 0
		db 0
		db 0FFh
		db 5Ah
		db 0F5h
		db 50h
		db 0
		db 0
		db 3Fh
		db 6Ah
		db 0F5h
		db 50h
		db 0
		db 0
		db 2Ah
		db 0ABh
		db 75h
		db 50h
		db 0
		db 0
		db 0AAh
		db 0FFh
		db 0C5h
		db 40h
		db 0
		db 0
		db 8Fh
		db 0FCh
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A4h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 54h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 1Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0FCh
		db 0
		db 0
Player_Sprite11	db 6			; DATA XREF: CODE:7AD9o
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0A5h
		db 50h
		db 0
		db 0
		db 0
		db 0Ah
		db 0C9h
		db 50h
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 90h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0ACh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0F5h
		db 54h
		db 0
		db 0
		db 0
		db 0Fh
		db 0D6h
		db 0D5h
		db 40h
		db 0
		db 0
		db 3Fh
		db 5Ah
		db 0A5h
		db 50h
		db 0
		db 0
		db 0FFh
		db 5Fh
		db 0A9h
		db 50h
		db 0
		db 0
		db 0FFh
		db 5Fh
		db 0FAh
		db 50h
		db 0
		db 0
		db 0B5h
		db 96h
		db 7Ah
		db 40h
		db 0
		db 2Ah
		db 0AFh
		db 0FFh
		db 0CAh
		db 0
		db 0
		db 8Ah
		db 0Fh
		db 0FCh
		db 2
		db 0A0h
		db 0
		db 0
		db 0Ah
		db 0F2h
		db 80h
		db 0
		db 0
		db 0
		db 6Ah
		db 0Ah
		db 90h
		db 0
		db 0Ah
		db 0
		db 54h
		db 0
		db 57h
		db 0E0h
		db 0Fh
		db 0AFh
		db 0D4h
		db 0
		db 0Fh
		db 0ACh
		db 0
		db 0FAh
		db 0C0h
		db 0
		db 2Ah
		db 0F0h
		db 0
		db 0Fh
		db 0
		db 0
		db 0FFh
		db 0
Player_Sprite12	db 6			; DATA XREF: CODE:7ADDo
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0A5h
		db 50h
		db 0
		db 0
		db 0
		db 0Ah
		db 0C9h
		db 50h
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 90h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0ACh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0F5h
		db 54h
		db 0
		db 0
		db 0
		db 0Fh
		db 0D9h
		db 0D5h
		db 40h
		db 0
		db 0
		db 3Fh
		db 6Ah
		db 0F5h
		db 50h
		db 0
		db 0
		db 0FFh
		db 0AAh
		db 0F5h
		db 50h
		db 0
		db 0
		db 0AAh
		db 0AFh
		db 0F5h
		db 50h
		db 0
		db 0Ah
		db 0AAh
		db 96h
		db 75h
		db 40h
		db 0
		db 2Ah
		db 0Ch
		db 0FFh
		db 0CAh
		db 0
		db 0
		db 20h
		db 8Fh
		db 3Fh
		db 0C2h
		db 80h
		db 0
		db 0
		db 0Ah
		db 0CEh
		db 80h
		db 0
		db 0
		db 0
		db 6Ah
		db 0Ah
		db 90h
		db 0
		db 0Ah
		db 0
		db 54h
		db 0
		db 57h
		db 0E0h
		db 0Fh
		db 0AFh
		db 0D4h
		db 0
		db 0Fh
		db 0ACh
		db 0
		db 0FAh
		db 0C0h
		db 0
		db 2Ah
		db 0F0h
		db 0
		db 0Fh
		db 0
		db 0
		db 0FFh
		db 0
Player_Sprite13	db 6			; DATA XREF: CODE:7ADFo
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Ah
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 0A0h
		db 95h
		db 2
		db 0A0h
		db 0
		db 0
		db 0AAh
		db 0A9h
		db 0FAh
		db 0AAh
		db 0
		db 0
		db 0Ah
		db 0AFh
		db 0EAh
		db 0Ah
		db 0A0h
		db 0
		db 0
		db 0FFh
		db 0F8h
		db 2
		db 80h
		db 0
		db 0A8h
		db 0EBh
		db 0D7h
		db 2
		db 20h
		db 0Ah
		db 9Ah
		db 6Ah
		db 3Fh
		db 0C0h
		db 0
		db 2Ah
		db 1Bh
		db 58h
		db 0FFh
		db 0C0h
		db 0
		db 22h
		db 0Fh
		db 0C3h
		db 0FFh
		db 0
		db 0
		db 0
		db 0Ah
		db 2Ah
		db 0A8h
		db 0
		db 0
		db 0
		db 3Ch
		db 0FFh
		db 0FCh
		db 0
		db 0
Player_Sprite14	db 6			; DATA XREF: CODE:7AE1o
		db 17h
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0A5h
		db 50h
		db 0
		db 0
		db 0
		db 0Ah
		db 0C9h
		db 50h
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 90h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0ACh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0F5h
		db 54h
		db 0
		db 0
		db 0
		db 0Fh
		db 0DAh
		db 0D5h
		db 40h
		db 0
		db 0
		db 3Fh
		db 6Ah
		db 95h
		db 50h
		db 0
		db 0
		db 0FFh
		db 7Ah
		db 0A5h
		db 50h
		db 0
		db 0
		db 0FFh
		db 5Fh
		db 0A9h
		db 50h
		db 0
		db 0
		db 3Fh
		db 0FAh
		db 0A5h
		db 40h
		db 0
		db 0
		db 0Fh
		db 0AAh
		db 0F0h
		db 0
		db 0
		db 0
		db 3
		db 0AFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0BFh
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0E8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A9h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 5
		db 7Eh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FAh
		db 0C0h
		db 0
		db 0
		db 0
		db 2
		db 0AFh
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0F0h
		db 0
Player_Sprite15	db 6			; DATA XREF: CODE:7AE3o
		db 17h
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Ah
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 0ACh
		db 95h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A9h
		db 0
		db 0
		db 0
		db 20h
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0A5h
		db 54h
		db 0
		db 0
		db 2Ah
		db 83h
		db 0D7h
		db 0D5h
		db 40h
		db 0
		db 0
		db 0AFh
		db 6Bh
		db 0F5h
		db 50h
		db 0
		db 0
		db 2Ah
		db 0AAh
		db 0F5h
		db 50h
		db 0
		db 0
		db 0Ah
		db 0AFh
		db 0F5h
		db 50h
		db 0
		db 0
		db 3Fh
		db 5Fh
		db 0F5h
		db 40h
		db 0
		db 0
		db 0ACh
		db 0F6h
		db 70h
		db 0
		db 0A0h
		db 6
		db 0A3h
		db 0FFh
		db 0C0h
		db 0
		db 0FAh
		db 0F5h
		db 0Ah
		db 0FCh
		db 0
		db 0
		db 0Fh
		db 0ACh
		db 2Ah
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 68h
		db 0
		db 0
		db 0
		db 0Ah
		db 3
		db 54h
		db 0
		db 0
		db 0
		db 0Fh
		db 0A3h
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0FAh
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
Player_Sprite16	db 6			; DATA XREF: CODE:7AE5o
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0A8h
		db 0
		db 0
		db 0
		db 0A5h
		db 50h
		db 0AAh
		db 0
		db 0
		db 0Ah
		db 0C9h
		db 50h
		db 0AAh
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 90h
		db 28h
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 28h
		db 0
		db 0
		db 0
		db 2Ah
		db 54h
		db 0A0h
		db 0
		db 0
		db 0Fh
		db 0F5h
		db 76h
		db 0A0h
		db 0
		db 0
		db 3Fh
		db 0D6h
		db 0AAh
		db 90h
		db 0
		db 0
		db 0FFh
		db 0D7h
		db 0A9h
		db 50h
		db 0
		db 0
		db 0FFh
		db 0D7h
		db 0F5h
		db 50h
		db 0
		db 0Ah
		db 99h
		db 96h
		db 55h
		db 40h
		db 0
		db 2Ah
		db 0Ch
		db 0FFh
		db 0C0h
		db 0
		db 0
		db 20h
		db 8Fh
		db 3Fh
		db 0C0h
		db 0
		db 0
		db 0
		db 0Ah
		db 0CEh
		db 80h
		db 0
		db 0
		db 0
		db 6Ah
		db 0Ah
		db 90h
		db 0
		db 0Ah
		db 0
		db 54h
		db 0
		db 57h
		db 0E0h
		db 0Fh
		db 0AFh
		db 0D4h
		db 0
		db 0Fh
		db 0ACh
		db 0
		db 0FAh
		db 0C0h
		db 0
		db 2Ah
		db 0F0h
		db 0
		db 0Fh
		db 0
		db 0
		db 0FFh
		db 0
Player_Sprite17	db 6			; DATA XREF: CODE:7AE7o
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Ah
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 0ACh
		db 95h
		db 2
		db 80h
		db 0
		db 0
		db 0AAh
		db 0A9h
		db 4Ah
		db 0A0h
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 5Dh
		db 55h
		db 0
		db 0
		db 0
		db 2Bh
		db 57h
		db 55h
		db 40h
		db 0
		db 2
		db 0AAh
		db 0FFh
		db 0D5h
		db 50h
		db 2Ah
		db 0AAh
		db 0AAh
		db 0BFh
		db 0F5h
		db 50h
		db 0AAh
		db 80h
		db 0F5h
		db 0FFh
		db 0F5h
		db 50h
		db 82h
		db 0
		db 0FDh
		db 7Fh
		db 0F5h
		db 40h
		db 0
		db 0
		db 35h
		db 96h
		db 70h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0C0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FCh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0F2h
		db 80h
		db 0
		db 0
		db 0
		db 6Ah
		db 0Ah
		db 90h
		db 0
		db 0Ah
		db 0
		db 54h
		db 0
		db 57h
		db 0E0h
		db 0Fh
		db 0AFh
		db 0D4h
		db 0
		db 0Fh
		db 0ACh
		db 0
		db 0FAh
		db 0C0h
		db 0
		db 2Ah
		db 0F0h
		db 0
		db 0Fh
		db 0
		db 0
		db 0FFh
		db 0
Player_Sprite18	db 6			; DATA XREF: CODE:7AE9o
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0A5h
		db 50h
		db 0
		db 0
		db 0
		db 0Ah
		db 0A9h
		db 50h
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 90h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Dh
		db 55h
		db 40h
		db 0
		db 0
		db 0
		db 35h
		db 0EFh
		db 54h
		db 0
		db 0
		db 0
		db 0F5h
		db 0ABh
		db 55h
		db 0
		db 0
		db 0
		db 0F5h
		db 0EAh
		db 55h
		db 0E0h
		db 0
		db 0
		db 55h
		db 0FAh
		db 95h
		db 0E0h
		db 0Ah
		db 0BFh
		db 0F9h
		db 0FEh
		db 94h
		db 0E0h
		db 6Ah
		db 0BFh
		db 0FFh
		db 56h
		db 80h
		db 0EFh
		db 50h
		db 0Fh
		db 0FFh
		db 0FAh
		db 80h
		db 0EFh
		db 0
		db 0
		db 0FFh
		db 0EAh
		db 0A8h
Player_Sprite19	db 6			; DATA XREF: CODE:7AEBo
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0FCh
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 68h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 2Ah
		db 0
		db 0
		db 3
		db 0FFh
		db 0
		db 2Ah
		db 0
		db 0
		db 0FAh
		db 0FFh
		db 0
		db 0FFh
		db 0
		db 0
		db 3Fh
		db 0AFh
		db 0
		db 0FFh
		db 0
		db 0
		db 2Bh
		db 0FAh
		db 3
		db 0FCh
		db 0FFh
		db 0C0h
		db 2Ah
		db 7Fh
		db 0Fh
		db 0F5h
		db 55h
		db 5Ch
		db 2Ah
		db 57h
		db 0Fh
		db 0F7h
		db 0FFh
		db 97h
		db 2Ah
		db 54h
		db 0Ah
		db 0A7h
		db 0FAh
		db 0A5h
		db 0FAh
		db 50h
		db 20h
		db 0AAh
		db 0AAh
		db 0FDh
		db 7Eh
		db 0
Player_Sprite1C	db 6			; DATA XREF: CODE:7AF1o
		db 17h
		db 15h
		db 54h
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 55h
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 55h
		db 0
		db 0Fh
		db 0
		db 0
		db 55h
		db 54h
		db 0
		db 0Ah
		db 0F0h
		db 0
		db 0FFh
		db 0FDh
		db 0C0h
		db 0Eh
		db 0AFh
		db 0
		db 0FFh
		db 0FDh
		db 0F0h
		db 1Fh
		db 0Ah
		db 0
		db 0ABh
		db 0FBh
		db 0F3h
		db 0A4h
		db 0
		db 0
		db 0EAh
		db 9Fh
		db 0FCh
		db 0E0h
		db 0
		db 0
		db 2
		db 0AFh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0A0h
		db 0FFh
		db 0A0h
		db 0
		db 0
		db 0
		db 0A0h
		db 0Eh
		db 0A5h
		db 0
		db 0
		db 0
		db 0A0h
		db 0
		db 27h
		db 0F0h
		db 0
		db 2
		db 88h
		db 0
		db 0
		db 0EAh
		db 0
		db 0
		db 80h
		db 0
		db 0
		db 0AFh
		db 0
		db 0
		db 80h
		db 0
		db 0Ah
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
Player_Sprite1D	db 6			; DATA XREF: CODE:7AF3o
		db 17h
		db 15h
		db 54h
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 55h
		db 22h
		db 0
		db 0
		db 0
		db 55h
		db 6Ah
		db 0A8h
		db 0
		db 0
		db 0
		db 56h
		db 0AAh
		db 0A0h
		db 0
		db 2Ch
		db 0
		db 0FAh
		db 0BDh
		db 0C8h
		db 0
		db 0EBh
		db 0
		db 0EAh
		db 0FDh
		db 0F0h
		db 7
		db 0FAh
		db 0C0h
		db 0ABh
		db 0FBh
		db 0FEh
		db 0A9h
		db 2
		db 0B0h
		db 0FFh
		db 0DFh
		db 0FFh
		db 0A0h
		db 0
		db 0A0h
		db 0
		db 3
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 2
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 70h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
Player_Sprite1A	db 6			; DATA XREF: CODE:7AEDo
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 40h
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 1
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0Ch
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0A5h
		db 50h
		db 0
		db 0
		db 0
		db 0Ah
		db 0C9h
		db 50h
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 90h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Dh
		db 55h
		db 40h
		db 0
		db 0
		db 0
		db 35h
		db 0EFh
		db 54h
		db 0
		db 0
		db 0
		db 0F5h
		db 0AFh
		db 55h
		db 0
		db 0
		db 0
		db 0F5h
		db 0AFh
		db 55h
		db 0E0h
		db 0
		db 0
		db 55h
		db 0EBh
		db 55h
		db 0E0h
		db 0
		db 3
		db 0F9h
		db 0E9h
		db 54h
		db 0E0h
		db 0
		db 3Fh
		db 0FFh
		db 68h
		db 0
		db 0EFh
		db 5Ah
		db 0BFh
		db 0FFh
		db 0A8h
		db 0
		db 0EFh
		db 5Ah
		db 0BFh
		db 0FEh
		db 0AAh
		db 80h
Player_Sprite1B	db 6			; DATA XREF: CODE:7AEFo
		db 17h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 10h
		db 0
		db 0
		db 0
		db 10h
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 30h
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 2
		db 0
		db 0Ah
		db 0
		db 0
		db 0
		db 0
		db 0
		db 1Ah
		db 40h
		db 4
		db 0
		db 0
		db 0
		db 55h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0A5h
		db 50h
		db 0
		db 0
		db 0
		db 0Ah
		db 0A9h
		db 50h
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 90h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Dh
		db 55h
		db 40h
		db 0
		db 0
		db 0
		db 35h
		db 0EFh
		db 54h
		db 0
		db 0
		db 0
		db 0F5h
		db 0ABh
		db 55h
		db 0
		db 0
		db 0
		db 0F5h
		db 0EAh
		db 55h
		db 0E0h
		db 0
		db 0
		db 55h
		db 0FAh
		db 95h
		db 0E0h
		db 0Ah
		db 0BFh
		db 0F9h
		db 0FEh
		db 94h
		db 0E0h
		db 6Ah
		db 0BFh
		db 0FFh
		db 56h
		db 80h
		db 0EFh
		db 50h
		db 0Fh
		db 0FFh
		db 0FAh
		db 80h
		db 0EFh
		db 0
		db 0
		db 0FFh
		db 0EAh
		db 0A8h
byte_CFD9	db 3			; DATA XREF: CODE:ArrowAnimationo
		db 8
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 3Fh
		db 0
		db 3
		db 0C3h
		db 28h
		db 3Ch
		db 0
		db 0ABh
		db 0C0h
		db 0
		db 3Eh
		db 80h
		db 0
		db 2
		db 80h
		db 0
		db 2
		db 0
		db 0
byte_CFF3	db 6			; DATA XREF: CODE:SpearAnimationo
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A0h
		db 55h
		db 55h
		db 55h
		db 55h
		db 56h
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0A0h
byte_D007	db 6			; DATA XREF: CODE:StinkyIdolAnimationo
		db 15h
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 3Ch
		db 5
		db 55h
		db 55h
		db 3
		db 0C0h
		db 0Fh
		db 0D6h
		db 0AAh
		db 0A9h
		db 7Fh
		db 0
		db 3
		db 5Bh
		db 0FFh
		db 0FEh
		db 5Ch
		db 0
		db 0
		db 6Fh
		db 0Fh
		db 0Fh
		db 90h
		db 0
		db 0
		db 6Fh
		db 30h
		db 0CFh
		db 90h
		db 0A0h
		db 0
		db 5Bh
		db 0FFh
		db 0FEh
		db 52h
		db 0A8h
		db 0
		db 46h
		db 0CFh
		db 39h
		db 1Ah
		db 0A8h
		db 0
		db 5
		db 10h
		db 45h
		db 0Ah
		db 28h
		db 0
		db 0
		db 55h
		db 50h
		db 1Ah
		db 20h
		db 0
		db 0
		db 0Ah
		db 1
		db 59h
		db 0
		db 0
		db 1
		db 50h
		db 15h
		db 51h
		db 0
		db 0
		db 5
		db 55h
		db 55h
		db 15h
		db 0
		db 0
		db 5
		db 5
		db 50h
		db 4
		db 0
		db 0
		db 1
		db 50h
		db 0
		db 10h
		db 0
		db 0
		db 5
		db 55h
		db 50h
		db 10h
		db 0
		db 0
		db 0
		db 55h
		db 50h
		db 0
		db 0
		db 0
		db 5
		db 54h
		db 40h
		db 0
		db 0
		db 0
		db 1
		db 55h
		db 50h
		db 80h
		db 0
		db 0
		db 5
		db 52h
		db 0AAh
		db 0
		db 0
		db 1
		db 55h
		db 4Ah
		db 0AAh
		db 80h
		db 0
byte_D087	db 6			; DATA XREF: CODE:7B99o
		db 15h
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 3Ch
		db 5
		db 55h
		db 55h
		db 3
		db 0C0h
		db 0Fh
		db 0D6h
		db 0AAh
		db 0A9h
		db 7Fh
		db 0
		db 3
		db 5Bh
		db 0FFh
		db 0FEh
		db 5Ch
		db 0
		db 0
		db 6Fh
		db 0Fh
		db 0Fh
		db 90h
		db 0
		db 0
		db 6Fh
		db 30h
		db 0CFh
		db 90h
		db 0
		db 0
		db 5Bh
		db 0FFh
		db 0FEh
		db 50h
		db 0
		db 0
		db 46h
		db 0CFh
		db 39h
		db 10h
		db 0
		db 0
		db 5
		db 10h
		db 45h
		db 0
		db 0
		db 0
		db 0
		db 55h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0
		db 0
		db 0
		db 0
		db 1
		db 50h
		db 40h
		db 0
		db 0
		db 0
		db 5
		db 55h
		db 54h
		db 1
		db 40h
		db 0
		db 5
		db 5
		db 55h
		db 55h
		db 0A0h
		db 0
		db 1
		db 50h
		db 1
		db 56h
		db 0A8h
		db 0
		db 5
		db 55h
		db 50h
		db 52h
		db 0A8h
		db 0
		db 0
		db 55h
		db 50h
		db 16h
		db 28h
		db 0
		db 5
		db 54h
		db 40h
		db 10h
		db 20h
		db 0
		db 1
		db 55h
		db 50h
		db 90h
		db 40h
		db 0
		db 5
		db 52h
		db 0AAh
		db 3
		db 0Ch
		db 1
		db 55h
		db 4Ah
		db 0AAh
		db 80h
		db 10h
byte_D107	db 6			; DATA XREF: CODE:MinerAnimationo
		db 16h
		db 1
		db 0
		db 0
		db 0D0h
		db 0
		db 0
		db 15h
		db 50h
		db 0Fh
		db 56h
		db 0A0h
		db 0
		db 41h
		db 4
		db 3Dh
		db 56h
		db 0A0h
		db 0
		db 1
		db 0
		db 3Fh
		db 0FFh
		db 0C0h
		db 0
		db 1
		db 0
		db 28h
		db 0A0h
		db 0AAh
		db 80h
		db 0Ah
		db 80h
		db 0Ah
		db 0AAh
		db 82h
		db 0A0h
		db 0Ah
		db 80h
		db 2
		db 8Ah
		db 20h
		db 0A0h
		db 1
		db 0A0h
		db 0FAh
		db 0A2h
		db 0A8h
		db 0
		db 0
		db 0A2h
		db 0BEh
		db 0A0h
		db 0A0h
		db 0
		db 0
		db 0AAh
		db 0AFh
		db 0ECh
		db 0
		db 0
		db 0
		db 2Ah
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0BFh
		db 0F7h
		db 0
		db 0
		db 0
		db 1
		db 6Bh
		db 0DCh
		db 0
		db 0
		db 0
		db 1
		db 56h
		db 0A0h
		db 0
		db 0
		db 0
		db 1
		db 55h
		db 10h
		db 0
		db 0
		db 0
		db 1
		db 54h
		db 54h
		db 0
		db 0
		db 0
		db 5
		db 50h
		db 15h
		db 0
		db 0
		db 0
		db 29h
		db 40h
		db 6
		db 80h
		db 0
		db 0
		db 0A8h
		db 0
		db 2
		db 82h
		db 0A0h
		db 2
		db 0A0h
		db 0
		db 2
		db 0AAh
		db 50h
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0A5h
		db 0
		db 5
		db 55h
		db 40h
		db 0
		db 50h
		db 0
byte_D18D	db 6			; DATA XREF: CODE:7B79o
		db 16h
		db 0
		db 0
		db 0
		db 34h
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0D5h
		db 0A8h
		db 0
		db 0
		db 0
		db 0Fh
		db 55h
		db 0A8h
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Ah
		db 0A8h
		db 2Ah
		db 0A0h
		db 0
		db 0
		db 2
		db 0AAh
		db 0A0h
		db 0A8h
		db 0
		db 0
		db 0
		db 0A2h
		db 88h
		db 28h
		db 0
		db 0
		db 3Fh
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0FAh
		db 0A0h
		db 28h
		db 0
		db 0
		db 0
		db 0EAh
		db 0AAh
		db 0
		db 0
		db 0
		db 28h
		db 0F0h
		db 0AAh
		db 0AAh
		db 0
		db 2
		db 0A8h
		db 0BEh
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 0A1h
		db 6Bh
		db 0F0h
		db 0
		db 0A8h
		db 2
		db 21h
		db 56h
		db 0A0h
		db 0
		db 82h
		db 0
		db 1
		db 55h
		db 10h
		db 0
		db 0
		db 0
		db 1
		db 54h
		db 54h
		db 0
		db 0
		db 0
		db 5
		db 50h
		db 15h
		db 0
		db 0
		db 0
		db 29h
		db 40h
		db 6
		db 80h
		db 0
		db 0
		db 0A8h
		db 0
		db 2
		db 80h
		db 0
		db 2
		db 0A0h
		db 0
		db 2
		db 80h
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 5
		db 55h
		db 40h
		db 5
		db 55h
		db 40h
byte_D213	db 6			; DATA XREF: CODE:MonkeyAnimationo
		db 14h
		db 0
		db 0AAh
		db 80h
		db 0
		db 0
		db 0
		db 2
		db 0A8h
		db 0A0h
		db 2
		db 0A0h
		db 0
		db 2
		db 0AEh
		db 23h
		db 0CAh
		db 0ABh
		db 0C0h
		db 3
		db 0FAh
		db 0Fh
		db 2Fh
		db 0ACh
		db 30h
		db 2
		db 0A0h
		db 0Ch
		db 28h
		db 0A2h
		db 30h
		db 2
		db 0A0h
		db 3
		db 0EAh
		db 0BAh
		db 80h
		db 2
		db 0AAh
		db 0
		db 2Ah
		db 0CEh
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0Ah
		db 0FEh
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0A2h
		db 0FEh
		db 0
		db 0
		db 20h
		db 0AAh
		db 0A8h
		db 0A8h
		db 0
		db 0Ah
		db 0AAh
		db 2Ah
		db 0A8h
		db 0
		db 0
		db 3Eh
		db 0AAh
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 3Eh
		db 0A8h
		db 0Ah
		db 0A2h
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
		db 8Ah
		db 0
		db 0
		db 0
		db 2Ah
		db 0AAh
		db 0Ah
		db 80h
		db 0
		db 0Ah
		db 80h
		db 0AAh
		db 82h
		db 0A0h
		db 0
		db 2Ah
		db 0
		db 0Ah
		db 0A0h
		db 0A8h
		db 0
		db 2Ah
		db 0
		db 0Ah
		db 80h
		db 22h
		db 0
		db 2Ah
		db 0
		db 2Ah
		db 80h
		db 0Eh
		db 0
		db 2Ah
		db 0B0h
		db 0AAh
		db 0ACh
		db 0FAh
		db 0
byte_D28D	db 6			; DATA XREF: CODE:7B71o
		db 14h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 2Ah
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0AAh
		db 0BCh
		db 0
		db 0
		db 0
		db 0F2h
		db 0FAh
		db 0C3h
		db 0
		db 0
		db 0
		db 0C2h
		db 8Ah
		db 23h
		db 0
		db 0
		db 0
		db 3Eh
		db 0ABh
		db 0A8h
		db 0
		db 0
		db 0
		db 2
		db 0ACh
		db 0E0h
		db 0
		db 0
		db 0Ah
		db 0A0h
		db 0AFh
		db 0E0h
		db 0
		db 2
		db 0AAh
		db 0AAh
		db 2Fh
		db 0E0h
		db 0
		db 0AAh
		db 0AAh
		db 8Ah
		db 8Ah
		db 80h
		db 0Ah
		db 0AAh
		db 0Ah
		db 0A0h
		db 0
		db 0
		db 3Eh
		db 0AAh
		db 0A2h
		db 0AAh
		db 80h
		db 30h
		db 3Eh
		db 0AAh
		db 0A8h
		db 0AAh
		db 0AAh
		db 80h
		db 0Ah
		db 0AAh
		db 0AAh
		db 0
		db 0AAh
		db 0ACh
		db 0
		db 2Ah
		db 0AAh
		db 0Ah
		db 0Ah
		db 0
		db 0Ah
		db 80h
		db 0AAh
		db 82h
		db 0A0h
		db 0C0h
		db 2Ah
		db 0
		db 0Ah
		db 0A0h
		db 0A8h
		db 0
		db 2Ah
		db 0
		db 0Ah
		db 80h
		db 22h
		db 0
		db 2Ah
		db 0
		db 2Ah
		db 80h
		db 0Eh
		db 0
		db 2Ah
		db 0B0h
		db 0AAh
		db 0ACh
		db 0FAh
		db 0
byte_D307	db 6			; DATA XREF: CODE:ArcherAnimationo
		db 14h
		db 0
		db 0
		db 0
		db 3Fh
		db 0
		db 0
		db 0
		db 2Ah
		db 81h
		db 43h
		db 0C0h
		db 55h
		db 0
		db 0AAh
		db 0D4h
		db 0
		db 0F0h
		db 15h
		db 0
		db 89h
		db 7Ah
		db 0
		db 3Dh
		db 41h
		db 28h
		db 96h
		db 0AAh
		db 0A0h
		db 0BEh
		db 0
		db 0A1h
		db 62h
		db 0AFh
		db 0C0h
		db 0AEh
		db 0
		db 0A8h
		db 5Ah
		db 0BCh
		db 2
		db 0AFh
		db 0
		db 0A0h
		db 5
		db 8Fh
		db 0EAh
		db 8Fh
		db 0
		db 20h
		db 2Ah
		db 50h
		db 2Ah
		db 0Fh
		db 0
		db 28h
		db 0AAh
		db 0A5h
		db 0
		db 0Fh
		db 0
		db 2Ah
		db 0A0h
		db 0AAh
		db 50h
		db 0Fh
		db 0
		db 0Ah
		db 8Ah
		db 0AAh
		db 0A5h
		db 3Ch
		db 0
		db 2
		db 2
		db 0AAh
		db 20h
		db 0F0h
		db 0
		db 0
		db 0
		db 0AAh
		db 9Ah
		db 0A0h
		db 0
		db 0
		db 1
		db 55h
		db 5Ah
		db 0A8h
		db 0
		db 0Ah
		db 1
		db 55h
		db 58h
		db 0A8h
		db 0
		db 2Ah
		db 82h
		db 55h
		db 62h
		db 0A0h
		db 0
		db 2Ah
		db 0A2h
		db 0A5h
		db 42h
		db 80h
		db 0
		db 28h
		db 2Ah
		db 81h
		db 0Ah
		db 0AAh
		db 80h
		db 2Ah
		db 0Ah
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
byte_D381	db 6			; DATA XREF: CODE:7B91o
		db 14h
		db 0
		db 0
		db 0
		db 3Fh
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 3
		db 0C0h
		db 0
		db 0
		db 0AAh
		db 0E0h
		db 0
		db 0F0h
		db 0
		db 8
		db 8Bh
		db 0FAh
		db 0
		db 3Ch
		db 0
		db 20h
		db 8Ah
		db 0AAh
		db 0A0h
		db 0BEh
		db 0
		db 0A0h
		db 0A2h
		db 0AFh
		db 0C0h
		db 0AEh
		db 0
		db 0A8h
		db 2Ah
		db 0BCh
		db 2
		db 0AFh
		db 0
		db 0A0h
		db 0Ah
		db 8Fh
		db 0EAh
		db 8Fh
		db 0
		db 20h
		db 2Ah
		db 0A0h
		db 2Ah
		db 0Fh
		db 0
		db 28h
		db 0AAh
		db 0AAh
		db 0
		db 0Fh
		db 0
		db 2Ah
		db 0A0h
		db 0AAh
		db 80h
		db 0Fh
		db 0
		db 0Ah
		db 8Ah
		db 0AAh
		db 0A0h
		db 3Ch
		db 0
		db 2
		db 2
		db 0AAh
		db 20h
		db 0F0h
		db 0
		db 0
		db 0
		db 0AAh
		db 9Ah
		db 0A0h
		db 0
		db 0
		db 1
		db 55h
		db 5Ah
		db 0A8h
		db 0
		db 0Ah
		db 1
		db 55h
		db 58h
		db 0A8h
		db 0
		db 2Ah
		db 82h
		db 55h
		db 62h
		db 0A0h
		db 0
		db 2Ah
		db 0A2h
		db 0A5h
		db 42h
		db 80h
		db 0
		db 28h
		db 2Ah
		db 81h
		db 0Ah
		db 0AAh
		db 80h
		db 2Ah
		db 0Ah
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
byte_D3FB	db 6			; DATA XREF: CODE:DartsmanAnimationo
		db 15h
		db 0
		db 2Ah
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0ABh
		db 0E0h
		db 0
		db 0
		db 0
		db 0
		db 8Bh
		db 0EAh
		db 0
		db 0
		db 0
		db 0
		db 8Ah
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0A2h
		db 0AFh
		db 2
		db 80h
		db 0
		db 0
		db 0AAh
		db 0BCh
		db 0FEh
		db 0BFh
		db 0B0h
		db 0
		db 2Ah
		db 0BCh
		db 56h
		db 95h
		db 90h
		db 2
		db 0A8h
		db 0Fh
		db 0Ah
		db 80h
		db 0
		db 2
		db 0AAh
		db 0A0h
		db 2Ah
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0Ah
		db 0A8h
		db 0Ah
		db 0A8h
		db 0
		db 0
		db 0Fh
		db 0EAh
		db 0B2h
		db 80h
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 2Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0
byte_D47B	db 6			; DATA XREF: CODE:7B81o
		db 15h
		db 0
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AEh
		db 0
		db 0
		db 0
		db 0
		db 8
		db 0BEh
		db 0A0h
		db 0
		db 0
		db 0
		db 8
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0
		db 0Ah
		db 2Bh
		db 0F0h
		db 28h
		db 0
		db 0
		db 2
		db 0ABh
		db 0CFh
		db 0EBh
		db 0FBh
		db 0
		db 2Ah
		db 0ABh
		db 0C5h
		db 69h
		db 59h
		db 0
		db 0AAh
		db 0A8h
		db 0F0h
		db 0A8h
		db 0
		db 2
		db 0AAh
		db 0AAh
		db 2
		db 0A0h
		db 0
		db 0Ah
		db 0AAh
		db 0AAh
		db 0AAh
		db 0A0h
		db 0
		db 0Ah
		db 0A8h
		db 0Ah
		db 0AAh
		db 80h
		db 0
		db 0Fh
		db 0EAh
		db 0B0h
		db 0A8h
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Ah
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Ah
		db 0AFh
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0A2h
		db 80h
		db 0
		db 0
		db 0
		db 0Ah
		db 8Ah
		db 80h
		db 0
		db 0
		db 0
		db 2Ah
		db 2
		db 0A0h
		db 0
		db 0
		db 0
		db 2Ah
		db 2
		db 0A0h
		db 0
		db 0
		db 0
		db 2Ah
		db 0A8h
		db 0AAh
		db 80h
		db 0
		db 0
		db 2Ah
		db 0AAh
		db 2Ah
		db 0A0h
		db 0
		db 0
byte_D4FB	db 6			; DATA XREF: CODE:SpearmanAnimationo
		db 16h
		db 0
		db 0Ah
		db 80h
		db 0
		db 0
		db 0A0h
		db 15h
		db 5Ah
		db 95h
		db 55h
		db 56h
		db 0AAh
		db 0
		db 0Ah
		db 8Ah
		db 0AEh
		db 0
		db 0A0h
		db 0
		db 0Ah
		db 8
		db 0BFh
		db 0A0h
		db 0
		db 0
		db 0Ah
		db 8
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0Ah
		db 0Ah
		db 2Ah
		db 0FCh
		db 0
		db 0
		db 0Ah
		db 82h
		db 0ABh
		db 0C0h
		db 0
		db 0
		db 2
		db 0AAh
		db 0AAh
		db 0FCh
		db 0
		db 0
		db 0
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0A2h
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0A8h
		db 0
		db 0
		db 0
		db 1
		db 6Ah
		db 90h
		db 0
		db 0
		db 0
		db 1
		db 55h
		db 50h
		db 0
		db 0
		db 0
		db 2
		db 55h
		db 50h
		db 0
		db 0
		db 0
		db 2
		db 0A5h
		db 0A8h
		db 0
		db 0
		db 0
		db 0Ah
		db 0A0h
		db 0AAh
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0Ah
		db 80h
		db 80h
		db 0
		db 0A8h
		db 0
		db 2
		db 82h
		db 0A0h
		db 2
		db 0A0h
		db 20h
		db 2
		db 0AAh
		db 0A0h
		db 0Ah
		db 0AAh
		db 80h
		db 0
		db 0AAh
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 0A0h
		db 0
byte_D581	db 6			; DATA XREF: CODE:7B89o
		db 16h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0ABh
		db 80h
		db 0
		db 0
		db 0
		db 2
		db 2Fh
		db 0E8h
		db 0
		db 0
		db 0
		db 2
		db 2Ah
		db 0AAh
		db 80h
		db 0
		db 0
		db 2
		db 8Ah
		db 0BFh
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0F0h
		db 0
		db 0
		db 0
		db 2Ah
		db 0Ah
		db 0BFh
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0
		db 0
		db 0
		db 28h
		db 0A0h
		db 0AAh
		db 0AAh
		db 0
		db 2
		db 0A8h
		db 0AAh
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 0A1h
		db 6Ah
		db 90h
		db 0
		db 0A8h
		db 2
		db 21h
		db 55h
		db 50h
		db 0
		db 82h
		db 0
		db 2
		db 55h
		db 50h
		db 0
		db 0
		db 0
		db 2
		db 0A5h
		db 0A8h
		db 0
		db 0
		db 0
		db 0Ah
		db 0A0h
		db 2Ah
		db 0
		db 0
		db 0
		db 2Ah
		db 80h
		db 0Ah
		db 80h
		db 0
		db 0
		db 0A8h
		db 0
		db 2
		db 80h
		db 0
		db 2
		db 0A0h
		db 20h
		db 2
		db 80h
		db 20h
		db 0Ah
		db 0AAh
		db 80h
		db 0Ah
		db 0AAh
		db 80h
		db 0Ah
		db 0AAh
		db 0A0h
		db 0Ah
		db 0AAh
		db 0A0h
byte_D607	db 0Ch			; DATA XREF: CODE:7B19o
		db 8
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_D669	db 0Ah			; DATA XREF: CODE:7B1Bo
		db 10h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Fh
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Fh
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Fh
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Fh
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_D70B	db 8			; DATA XREF: CODE:7B1Do
		db 19h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
byte_D7D5	db 6			; DATA XREF: CODE:7B1Fo
		db 20h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0
		db 0
byte_D897	db 4			; DATA XREF: CODE:7B21o
		db 29h
		db 0
		db 0
		db 0
		db 0Fh
		db 0
		db 0
		db 0
		db 0F0h
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 3
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 0Ch
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
		db 0C0h
		db 0
		db 0
		db 0
byte_D93D	db 6			; DATA XREF: CODE:Fish2Animationo
		db 0Ch
		db 0
		db 0
		db 30h
		db 0CCh
		db 0C0h
		db 0
		db 0
		db 3
		db 0Ch
		db 0CCh
		db 0CCh
		db 0
		db 0Ch
		db 0
		db 0C3h
		db 0FFh
		db 0FFh
		db 0
		db 3
		db 0Ch
		db 3Fh
		db 0FFh
		db 0FFh
		db 0F0h
		db 0
		db 0C3h
		db 0FCh
		db 0FCh
		db 0FFh
		db 0FCh
		db 3
		db 3Fh
		db 0CFh
		db 3
		db 0FCh
		db 0
		db 0
		db 0FFh
		db 0Fh
		db 0FFh
		db 0C3h
		db 0FCh
		db 3
		db 0C3h
		db 0C3h
		db 0FFh
		db 0FFh
		db 0CCh
		db 3
		db 0
		db 3Fh
		db 0CFh
		db 0FFh
		db 0F0h
		db 0Ch
		db 0
		db 3
		db 0CFh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0F0h
		db 3Ch
		db 0
		db 0
		db 0
		db 0
		db 3Ch
		db 0Fh
		db 0
byte_D987	db 6			; DATA XREF: CODE:7C03o
		db 0Ch
		db 0
		db 0
		db 30h
		db 0CCh
		db 0C0h
		db 0
		db 0
		db 3
		db 0Ch
		db 0CCh
		db 0CCh
		db 0
		db 0
		db 0
		db 0C3h
		db 0FFh
		db 0FFh
		db 0
		db 3Ch
		db 0Ch
		db 3Fh
		db 3
		db 0FFh
		db 0F0h
		db 3
		db 3
		db 0FCh
		db 30h
		db 0F0h
		db 3Ch
		db 0Ch
		db 0FFh
		db 0CFh
		db 3
		db 0C0h
		db 0
		db 3
		db 0FFh
		db 0Fh
		db 0FFh
		db 0
		db 0
		db 0Fh
		db 3
		db 0C3h
		db 0FFh
		db 0
		db 0
		db 3Ch
		db 0
		db 3Fh
		db 0CFh
		db 0C3h
		db 0F0h
		db 0
		db 0
		db 3
		db 3Fh
		db 0FFh
		db 0
		db 0
		db 0
		db 0Fh
		db 3
		db 0C0h
		db 0
		db 0
		db 0
		db 3Ch
		db 0Fh
		db 0
		db 0
byte_D9D1	db 6			; DATA XREF: CODE:Fish1Animationo
		db 10h
		db 0
		db 0
		db 0
		db 30h
		db 0
		db 0
byte_D9D9	db 0			; DATA XREF: CODE:809Co CODE:809Eo ...
		db 0
		db 3Fh
		db 0Fh
		db 0F0h
byte_D9DE	db 0			; DATA XREF: CODE:off_809Ao
		db 0
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 0
		db 0F3h
		db 0FFh
		db 0FFh
		db 0C0h
		db 0
		db 0Fh
		db 0Fh
		db 0FFh
		db 0BEh
		db 0FCh
		db 0FCh
		db 0
		db 0FFh
		db 0FFh
		db 0EBh
		db 0FFh
		db 0Fh
		db 0FFh
		db 0F3h
		db 0FFh
		db 0FFh
		db 0FFh
		db 0
		db 3Fh
		db 0CFh
		db 0FFh
		db 0FAh
		db 0ACh
		db 3
		db 0FFh
		db 0CFh
		db 0FAh
		db 0AFh
		db 0FCh
		db 3
		db 0F0h
		db 0F3h
		db 0EFh
		db 0FFh
		db 3Ch
		db 0Fh
		db 0
		db 0Fh
		db 0FFh
		db 0F0h
		db 0F0h
		db 3Ch
		db 0
		db 0F0h
		db 0FFh
		db 0FFh
		db 0C0h
		db 30h
		db 0
		db 0
		db 0FCh
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0F3h
		db 0FCh
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 0Ch
		db 0
		db 0
		db 0
		db 3Ch
		db 0
		db 30h
		db 0
byte_DA33	db 6			; DATA XREF: CODE:7BFBo
		db 10h
		db 0
		db 0
		db 0F0h
		db 30h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0Fh
		db 0FCh
		db 0
		db 3Ch
		db 0
		db 0
		db 0FFh
		db 0EBh
		db 0C0h
		db 0Fh
		db 0
		db 0F3h
		db 0FFh
		db 0BEh
		db 0FCh
		db 0Fh
		db 0Fh
		db 0Fh
		db 0FFh
		db 0EBh
		db 0FFh
		db 3
		db 0F0h
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 3
		db 3Fh
		db 0F3h
		db 0F0h
		db 50h
		db 50h
		db 0
		db 0FFh
		db 0CFh
		db 0
		db 40h
		db 40h
		db 0Fh
		db 0FFh
		db 0CFh
		db 0
		db 0
		db 0
		db 0FCh
		db 0
		db 0F3h
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 0FFh
		db 0F0h
		db 3Ch
		db 0
		db 3
		db 0F0h
		db 0FFh
		db 0FFh
		db 0FCh
		db 0
		db 0
		db 0
		db 3Fh
		db 3Fh
		db 0F0h
		db 0
		db 0
		db 0
		db 0Fh
		db 3Fh
		db 0
		db 0
		db 0
		db 0
		db 3
		db 0C0h
		db 0F0h
		db 0
		db 0
		db 0
		db 0
		db 30h
		db 0
byte_DA95	db 6			; DATA XREF: CODE:PlantAnimationo
		db 17h
		db 0
		db 0
		db 0
		db 0FFh
		db 0
		db 0
		db 0
		db 0
		db 0Fh
		db 14h
		db 0F0h
		db 0Ch
		db 0
		db 0
		db 0F1h
		db 55h
		db 0Fh
		db 0
		db 0
		db 3
		db 15h
		db 55h
		db 51h
		db 0F0h
		db 0
		db 0Ch
		db 55h
		db 55h
		db 55h
		db 5Ch
		db 0
		db 35h
		db 51h
		db 40h
		db 55h
		db 0
		db 1
		db 55h
		db 54h
		db 15h
		db 0
		db 54h
		db 5
		db 41h
		db 55h
		db 55h
		db 55h
		db 50h
		db 15h
		db 0
		db 50h
		db 55h
		db 55h
		db 0
		db 14h
		db 0
		db 5
		db 15h
		db 50h
		db 0F0h
		db 14h
		db 0
		db 0
		db 55h
		db 0
		db 0
		db 14h
		db 0
		db 0
		db 0
		db 0
		db 0Ch
		db 14h
		db 0
		db 28h
		db 0
		db 0
		db 0
		db 5
		db 2
		db 0BEh
		db 80h
		db 0
		db 0
		db 1
		db 50h
		db 28h
		db 0
		db 0
		db 0
		db 0
		db 15h
		db 40h
		db 0
		db 0
		db 0
		db 2
		db 81h
		db 54h
		db 0
		db 0
		db 0
		db 2Bh
		db 0E8h
		db 5
		db 0
		db 0
		db 0
		db 2
		db 80h
		db 1
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 1
		db 45h
		db 0
		db 0
		db 0
		db 0
		db 11h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 1
		db 50h
		db 0
		db 0
byte_DB21	db 6			; DATA XREF: CODE:7B4Do
		db 17h
		db 0
		db 0
		db 0FFh
		db 3
		db 0C0h
		db 0
		db 0
		db 0Fh
		db 15h
		db 0FDh
		db 70h
		db 0
		db 0
		db 0F1h
		db 55h
		db 40h
		db 1Ch
		db 0
		db 3
		db 15h
		db 50h
		db 15h
		db 0
		db 0
		db 0Ch
		db 55h
		db 45h
		db 40h
		db 0
		db 0
		db 0Ch
		db 54h
		db 10h
		db 0
		db 0
		db 0
		db 15h
		db 55h
		db 45h
		db 0
		db 0
		db 0
		db 14h
		db 45h
		db 51h
		db 50h
		db 0
		db 0
		db 14h
		db 50h
		db 55h
		db 15h
		db 54h
		db 0
		db 14h
		db 5
		db 5
		db 45h
		db 50h
		db 0
		db 14h
		db 0
		db 55h
		db 54h
		db 0
		db 0
		db 5
		db 0
		db 0
		db 0
		db 0
		db 0
		db 1
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 15h
		db 0
		db 28h
		db 0
		db 0
		db 0
		db 1
		db 52h
		db 0BEh
		db 80h
		db 0
		db 0
		db 28h
		db 14h
		db 28h
		db 0
		db 0
		db 2
		db 0BEh
		db 85h
		db 0
		db 0
		db 0
		db 0
		db 28h
		db 5
		db 0
		db 0
		db 0
		db 0
		db 0
		db 1
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 1
		db 45h
		db 0
		db 0
		db 0
		db 0
		db 11h
		db 50h
		db 0
		db 0
		db 0
		db 0
		db 5
		db 40h
		db 0
		db 0
		db 0
		db 0
		db 1
		db 50h
		db 0
		db 0
byte_DBAD	db 6			; DATA XREF: CODE:BatonThrowerAnimationo
		db 16h
		db 5
		db 0
		db 0Fh
		db 3Ch
		db 0
		db 0
		db 19h
		db 4Ch
		db 0FFh
		db 0FFh
		db 0C0h
		db 0
		db 15h
		db 43h
		db 0FFh
		db 0FFh
		db 0
		db 0
		db 15h
		db 43h
		db 0FFh
		db 0E2h
		db 0AAh
		db 0
		db 5
		db 0
		db 0FFh
		db 82h
		db 82h
		db 80h
		db 0Ah
		db 83h
		db 3Fh
		db 0EBh
		db 0EAh
		db 80h
		db 0Ah
		db 80h
		db 2
		db 0FFh
		db 0F0h
		db 0
		db 5
		db 0A0h
		db 29h
		db 0AFh
		db 0F0h
		db 0
		db 0
		db 0A2h
		db 0AAh
		db 68h
		db 3Ch
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 6Ah
		db 3
		db 0
		db 0
		db 2Ah
		db 0Ah
		db 5Ah
		db 0
		db 0
		db 0
		db 0
		db 0AAh
		db 58h
		db 0
		db 0
		db 0
		db 1
		db 69h
		db 50h
		db 0
		db 0
		db 0
		db 1
		db 55h
		db 50h
		db 0
		db 0
		db 0
		db 1
		db 55h
		db 50h
		db 0
		db 0
		db 0
		db 6
		db 95h
		db 0A8h
		db 0
		db 0
		db 0
		db 0Ah
		db 0A4h
		db 0AAh
		db 0
		db 0
		db 0
		db 2Ah
		db 84h
		db 0Ah
		db 80h
		db 80h
		db 0
		db 0A8h
		db 0
		db 2
		db 82h
		db 0A0h
		db 2
		db 0A0h
		db 20h
		db 2
		db 0AAh
		db 0A0h
		db 0Ah
		db 0AAh
		db 80h
		db 0
		db 0AAh
		db 0
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 0A0h
		db 0
byte_DC33	db 6			; DATA XREF: CODE:7C1Bo
		db 16h
		db 0
		db 0
		db 3
		db 0CFh
		db 0
		db 0
		db 0
		db 3
		db 3Fh
		db 0FFh
		db 0F0h
		db 0
		db 0
		db 0
		db 0FFh
		db 0FFh
		db 0C0h
		db 0
		db 0
		db 0
		db 0FFh
		db 0F8h
		db 0AAh
		db 80h
		db 0
		db 0
		db 3Fh
		db 0E0h
		db 0A0h
		db 0A0h
		db 0
		db 0
		db 0CFh
		db 0FAh
		db 0FAh
		db 0A0h
		db 0
		db 0
		db 2
		db 0FFh
		db 0FCh
		db 0
		db 0
		db 0
		db 29h
		db 3
		db 0FCh
		db 0
		db 0
		db 0
		db 0AAh
		db 0A0h
		db 0Fh
		db 0
		db 0
		db 0
		db 0AAh
		db 0AAh
		db 0
		db 0C0h
		db 0
		db 28h
		db 0A0h
		db 0AAh
		db 0AAh
		db 0
		db 2
		db 0A8h
		db 0AAh
		db 0Ah
		db 0AAh
		db 0A0h
		db 0
		db 0A1h
		db 69h
		db 50h
		db 0
		db 0A8h
		db 2
		db 21h
		db 55h
		db 50h
		db 0
		db 82h
		db 0
		db 1
		db 55h
		db 50h
		db 0
		db 0
		db 0
		db 6
		db 95h
		db 0A8h
		db 0
		db 0
		db 0
		db 0Ah
		db 0A4h
		db 2Ah
		db 0
		db 0
		db 0
		db 2Ah
		db 84h
		db 0Ah
		db 80h
		db 0
		db 0
		db 0A8h
		db 0
		db 2
		db 80h
		db 0
		db 2
		db 0A0h
		db 20h
		db 2
		db 80h
		db 20h
		db 0Ah
		db 0AAh
		db 80h
		db 0Ah
		db 0AAh
		db 80h
		db 0Ah
		db 0AAh
		db 0A0h
		db 0Ah
		db 0AAh
		db 0A0h
byte_DCB9	db 6			; DATA XREF: CODE:GeckonAnimationo
		db 7
		db 0
		db 0
		db 15h
		db 55h
		db 40h
		db 0
		db 0
		db 5
		db 55h
		db 99h
		db 55h
		db 50h
		db 0
		db 56h
		db 55h
		db 5Ah
		db 55h
		db 5
		db 5
		db 55h
		db 5Ah
		db 55h
		db 55h
		db 55h
		db 14h
		db 5
		db 19h
		db 54h
		db 95h
		db 50h
		db 10h
		db 0
		db 54h
		db 1
		db 50h
		db 8
		db 40h
		db 0
		db 50h
		db 1
		db 40h
		db 0
byte_DCE5	db 6			; DATA XREF: CODE:7BDBo
		db 7
		db 50h
		db 0
		db 15h
		db 55h
		db 40h
		db 0
		db 5
		db 5
		db 55h
		db 99h
		db 55h
		db 50h
		db 1
		db 56h
		db 55h
		db 5Ah
		db 55h
		db 5
		db 0
		db 55h
		db 5Ah
		db 55h
		db 55h
		db 55h
		db 0
		db 5
		db 51h
		db 55h
		db 85h
		db 50h
		db 0
		db 0
		db 54h
		db 1
		db 50h
		db 0
		db 0
		db 0
		db 15h
		db 0
		db 54h
		db 0
byte_DD11	db 6			; DATA XREF: CODE:SnakeAnimationo
		db 0Bh
		db 0
		db 0
		db 0
		db 0
		db 0A0h
		db 0
		db 0
		db 0
		db 0
		db 2
		db 0A8h
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 5Ah
		db 0
		db 0
		db 0
		db 0
		db 0Ah
		db 0A0h
		db 0
		db 0
		db 0
		db 0Ah
		db 2
		db 0A8h
		db 0
		db 0Ah
		db 0
		db 2Ah
		db 80h
		db 28h
		db 0
		db 0
		db 80h
		db 0A0h
		db 0A0h
		db 0Ah
		db 0
		db 0
		db 20h
		db 0A0h
		db 0A0h
		db 0Ah
		db 0
		db 0
		db 20h
		db 0A0h
		db 0A0h
		db 2Ah
		db 0
		db 0
		db 20h
		db 0A0h
		db 2Ah
		db 0A8h
		db 0
		db 0
		db 0Ah
		db 80h
		db 0Ah
		db 80h
		db 0
byte_DD55	db 6			; DATA XREF: CODE:7C45o
		db 0Bh
		db    0,   0,	0,   0,	0Ah,   0
		db    0,   0,	0,   0,	2Ah, 80h
		db    0,   0,	0,   0,0A5h,0A0h
		db    0,   0,	0,   0,0AAh,   0
		db    0,   0,	0,   0,	2Ah, 80h
		db  20h,   0,	0,   0,	0Ah,   0
		db  20h,   0,0A8h,   0,	0Ah,   0
		db  80h,   2,0AAh,   0,	2Ah,   0
		db  80h, 0Ah, 0Ah, 80h,0A8h,   0
		db  20h,0A0h,	2,0AAh,0A0h,   0
		db  0Ah,   0,	0,0AAh,	80h,   0
KeysPressed	dw 20h			; DATA XREF: start+14o
					; HandlePlayer+91r ...
Timer1		db 33h			; DATA XREF: INT1C_Vector+10w
					; INT1C_Vector+14r ...
					; Period = 200x10ms
		db 2 dup(0)
StandbyFlag	db 1			; DATA XREF: start+69r	start+A2w ...
					; 0 if standby
					; 1 if game/demo
					; FF when standby round	is over
GameOverFlag	db 0			; DATA XREF: start+A8w	PreInit+10w ...
		db 0
TwoSecondsFlag	db 40h			; DATA XREF: Check_2S_Flago
					; INT1C_Vector+20w
Lives		db 3			; DATA XREF: InitLivesAndWpn+2w
					; HandlePlayer+3BCr ...
		align 8
TileUnderPlayer	db 0BEh			; DATA XREF: HandlePlayer+3Bw
					; HandlePlayer+3F8w ...
		align 2
CharCounter	db 0			; DATA XREF: RunChrScripts+5w
					; RunChrScripts+3Dr ...
		align 2
FoodLevel	db 29h			; DATA XREF: HandlePlayer+3D0w
					; DecreaseFoodNWaterS:loc_1104r ...
WaterLevel	db 29h			; DATA XREF: HandlePlayer+3D4w
					; DecreaseFoodNWaterS+16r ...
MovingFloorDelay db 7			; DATA XREF: Loc1DScript0r
					; Loc1DScript0+6w ...
byte_DDAF	db 0			; DATA XREF: GoToNewLocation+5w
					; VertArrow1Script+10r	...
GemsFound	db 5			; DATA XREF: PreInit+6w
					; InFirstTemple+Br ...
Weapon		db 1			; DATA XREF: start+ACw
					; InitLivesAndWpn+9w ...
					; 7 6 5	4 3 2 1	0
					; | | |	| +-+-+-+--- Index of selected wpn
					; | | |	+----------- Rod fired
					; | | +------------- Bomb fired
					; | +--------------- Knife fired
					; +----------------- Boomerang fired
Temp		db 1			; DATA XREF: start+B0w
					; DrawUsedWeapon+2A1Fr	...
GameFlags	db 0			; DATA XREF: ClearData1+2o
					; HandlePlayero ...
					; ClearData1 works from	here...
byte_DDB4	db 0			; DATA XREF: ClearData1+8o
					; GoToNewLocation+9w ...
Force		dw 16h			; DATA XREF: HandlePlayer+2EDw
					; IncreaseForcer ...
_BoomerangState	db 1			; DATA XREF: FireWeapon+34w
					; FireWeapon+4Bw ...
		db 0
SelectedWeapon	db 3			; DATA XREF: DrawUsedWeapon+9r
					; DrawUsedWeapon+1Ar ...
					; Changes when player press keys '1'...'4'
		db 0
_LogRight	db 5			; DATA XREF: Loc0Script0+49w
					; InitFloatingLog+13w ...
_FloatingLogPos	dw 0			; DATA XREF: Loc0Script0:loc_8F9w
					; Loc0Script1:loc_150Dr ...
_LogLeft	db 0			; DATA XREF: Loc0Script1r
					; Loc0Script0:_HandleFloatingLogr ...
_IfCandlesAreRemoved db	1Ah		; DATA XREF: sub_1A5B:Switch31DataSetr
					; sub_1A5B+252w ...
byte_DDC0	db 1Ah			; DATA XREF: sub_1A6F:Switch32DataSetr
					; sub_1A6F+255w ...
FWDecPrescaler	db 0			; DATA XREF: DecreaseFoodNWater:loc_14BEr
					; DecreaseFoodNWater+15w ...
byte_DDC2	db 0			; DATA XREF: InFirstTemple+22r
					; InFirstTemple+28w ...
GemsFoundEx	db 0			; DATA XREF: InFirstTemple+Fw
					; InFirstTemple:loc_1A9Dr ...
StandbyModeCounter db 0			; DATA XREF: PreInit+Aw
					; HandleInput+31w ...
EscapeFromPitFlag db 0			; DATA XREF: ChangeLocation+A5w
					; AdjustCoordsWhenLocChangedr ...
		db 0
		db    0			; ...to	here
		db    0
		db    0
		db    0
		db    0
_RandomNumber	dw 0D496h		; DATA XREF: _Random+4r
					; _Random:loc_CFDw ...
		db 4 dup(0)
Spare0		dw 740h			; DATA XREF: Loc0EScript0+1Aw
					; Loc25Script1+1Aw ...
Spare1		dw 220Eh		; DATA XREF: PrepareRodJump+1Bw
					; PrepareRodJump+36r ...
Spare2		dw 8A0Fh		; DATA XREF: PrepareRodJump+1Fw
					; PrepareRodJump+3Ar ...
Spare3		dw 0DE00h		; DATA XREF: UpdateObstacles+Bw
					; UpdateObstacles+28r ...
		align 4
TileDest	dw 0			; DATA XREF: DrawFooter+22w
					; DrawFooterTiler ...
Score		dw 0C4Eh		; DATA XREF: ClearCharDataAndScore+6w
					; BonusScoreScript+19r	...
		db 2 dup(0)
CharTablePointer dw 0E02Eh		; DATA XREF: RunChrScripts+Aw
					; RunChrScripts:loc_1124r ...
AWidthInTiles	dw 1C0h			; DATA XREF: CalcTileUnderObject+1Fr
					; CalcAnimRect+31w ...
AHeightInTiles	dw 200h			; DATA XREF: CalcTileUnderObject+17r
					; CalcAnimRect+1Fw ...
PolePtr		dw 8134h		; DATA XREF: ServeFireKey+70w
					; ServeFireKey+80w ...
byte_DDEA	db 2Dh			; DATA XREF: FireWeapon+64w
					; sub_1D61:loc_1DAFr ...
byte_DDEB	db 50h			; DATA XREF: FireWeapon+68w
					; sub_1D61:loc_1DBEr
LocationScriptList dw 897Fh		; DATA XREF: LoadLocationData:_AllCharsProcessedw
					; RunLocationScriptsr
StandbyActionPointer dw	806Eh		; DATA XREF: PreInit+17w
					; HandleInput:DoStandbyActionr	...
StartEndFrames	dw 101h			; DATA XREF: BonusScoreScriptr
					; KillIfKicked:ShowEnemyDeathw
CurrentLocPtr	dw 8968h		; DATA XREF: Loc0Script2+27r
					; ChangeLocation:loc_A83r ...
_DecimalScore	db 0, 3, 1, 5, 0, 0FFh	; DATA XREF: ToDecimal+3Eo
InitialCoords	db    0,   0, 40h, 0Ah,	  1 ; DATA XREF: AdjustCoordsWhenLocChanged+Bo
					; AdjustCoordsWhenLocChanged+2Bo ...
_StoredCoords	db    0,   0, 40h,   7,	  1 ; DATA XREF: AdjustCoordsWhenLocChanged:Escapeo
					; FallDown+3o
_SomeLocNumber	db 6			; Location, where i'm fallen from
		db 8 dup(0)
---------------------------------------------------------------------------------------
-------------------------------- Drawing-related stuff --------------------------------
---------------------------------------------------------------------------------------
ExpandedFrameWidth dw 30h		; DATA XREF: DrawCharacter+B6w
					; DrawCharacter+ECr
FrameOrigin	dw 0AC8Bh		; DATA XREF: $DrawFrameLine+1Bw
					; $DrawFrameLine+42r
FrameWidth	db 6			; DATA XREF: $DrawFrameLine+7w
					; $DrawFrameLine+4Cr
		db 0
NextDrawable	dw 0E02Eh		; DATA XREF: DrawCharacter+102w
					; DrawCharacter+135r ...
Drawable	dw 2			; DATA XREF: _SetNextr	_SetNext+8w ...
Intersections	dw 0Ch dup(	0)	; 0 ; DATA XREF: GetFirstr
					; DrawCharacter+11o
CDV_DoubledCol	dw 1F02h		; DATA XREF: CalcDrawingVars+14w
					; CalcDrawingVars:loc_3796r
CDVAnimWidth	db 6			; DATA XREF: CalcDrawingVars+Dw
					; CalcDrawingVars:loc_37B8r
AnimHeight	db 0Eh			; DATA XREF: CalcDrawingVars+126r
_NoOfIntersections db 1			; DATA XREF: _DrawChr1+3w
					; _FindIntersections+7Ew ...
_DoubledCol2	db 2			; DATA XREF: _DrawChr1+Bw
					; _FindIntersections+6r ...
_AnimWidth2	db 8			; DATA XREF: _DrawChr1+12w
					; _FindIntersections+Ar ...
_QuadrupledRow2	db 1Fh			; DATA XREF: _DrawChr1+19w
					; _FindIntersections+1Cr ...
_AnimHeight2	db 39			; DATA XREF: _DrawChr1+20w
					; _FindIntersections+20r ...
byte_DE38	db 0			; DATA XREF: _DrawChr1+2Cw
					; _DrawChr1+42r ...
_DoubledCol3	db 2			; DATA XREF: DrawCharacter+7Cw
					; DrawCharacter+141r ...
_QuadrupledRow3	db 1Ch
_FrameWidth	dw 0C06h		; DATA XREF: DrawCharacter+8Aw
					; DrawCharacter+ADr ...
		db 2 dup(0)
Column		db 1			; DATA XREF: DrawCharacter+34w
					; DrawCharacter:loc_39C0r ...
Row		db 7			; DATA XREF: DrawCharacter+5Er
ColCount	db 3			; DATA XREF: DrawCharacter+5Aw
					; DrawCharacter+80r ...
RowCount	db 3			; DATA XREF: DrawCharacter+6Ew
		db 2 dup(0)
CDV_CharFlags2	db 0			; DATA XREF: CalcDrawingVars+1Bw
					; CalcDrawingVars+D0r
PlayerData	CharData_t <CFDrawable or CFActive,    0,  0Ch,	1108h, 0C40h, APlayer,\
					; DATA XREF: ClearEnemiesTable+6o
					; ClearCharDatao ...
			     11h,  40h,	   5, 1108h, 0C40h, APlayer,  11h, OAtBottom, \
			       5,   -1,	-129,	 1,  22h,  28h,	 31h,  3Dh,  22h, \
			     31h,    0,	   0,	 6,  17h,    7,	   0,	 0,    1, \
			     31h, 0C8h>
BoomerangData	CharData_t <CFDrawable or CFActive,    0,    0,	2373h, 949h, \
					; DATA XREF: ChangeLocation:loc_B54o
					; ByBoomerango	...
			    ABoomerang,	   3,	 0,    0, 2373h, 949h, ABoomerang, \
			       3,    0,	   0, -211,  -35,    0,	 45h,  48h,  25h, \
			     29h,  46h,	 25h,	 0,    0,    2,	   7,	 0,    0, \
			       0,    1,	 59h,  97h>
KnifeData	db    0,   0,	0,   0,	  0,   0,   0,	 0 ; DATA XREF:	ByKnifeo
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
BombData	db    0,   0,	0,   0,	  0,   0,   0,	 0
					; DATA XREF: CheckIfKicked:ByBombo
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
PoleData	db    0,   0,	0,   0,	  0,   0,   0,	 0
					; DATA XREF: HandlePlayer:HandlePlayer_RemovePoleo
					; ServeFireKey+9Eo ...
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
FirstEnemyData	CharData_t <   0,    0,	 31h, 0DAEh, 0A88h, ABonusScore,    1,	  0, \
					; DATA XREF: AddCharactero
			       0, 0DAEh, 0A88h,	ABonusScore,	1,    0,    0, -102, \
			    -239,    0,	 1Bh,  21h,  2Ah,  2Eh,	 1Bh,  2Ah,    0, \
			       0,    6,	   6, 8AF2h, 8AEBh,    0,    0,	 23h,  9Bh>
Char6Data	CharData_t <CFDrawable or CFActive,    0,  11h,	104h, 7F4h, ABat, \
					; DATA XREF: CODE:E02Co
			       3,    0,	   0, 104h, 7F4h, ABat,	   3,	 0,    0, \
			     -60, -214,	   2,	 2,    8,  1Fh,	 27h,	 2,  1Fh, \
			       0,    0,	   6,  0Eh, 8AF2h, 8AEBh,    0,	   0,  89h, \
			    0ACh>
Char7Data	db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
Char8Data	db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
Char9Data	db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
CharAData	db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
CharBData	db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
		db    0,   0,	0,   0,	  0,   0,   0,	 0
ChrData_End_Marker db 0FFh		; DATA XREF: ClearCharData+17o
CharCount	db 3			; DATA XREF: ClearEnemiesTable+2w
					; RunChrScriptso ...
Characters	dw offset BoomerangData	; DATA XREF: ClearEnemiesTable:loc_1DDw
					; DrawCharacters+1o ...
Character1	dw offset PlayerData	; DATA XREF: ClearEnemiesTable+10w
		dw offset Char6Data
		dw    0,   0,	0,   0,	  0,   0
		dw    0,   0,	0,   0,	  0,   0
		dw    0,   0
Location	db 36h			; DATA XREF: start+46w	start+9Cw ...
WorldRedrawn	db 1			; DATA XREF: DrawWorldDifferences+27w
					; DrawCharacters+3Fw ...
PrimaryBuffer	db 0F1h,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0F1h,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh
					; DATA XREF: GetTileAt+18o
					; ClearPrimaryBuffer+2o ...
		db 0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh
		db 0BDh,0BEh,0BDh,0BEh,0BDh,0F1h,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0F1h,0BDh,0BEh, 7Fh,0E2h, 7Fh,0E2h,	7Fh, 7Fh,0E2h, 7Fh, 7Fh, 7Fh,0E2h, 7Fh,0E2h, 7Fh, 7Fh, 7Fh,0E2h, 7Fh,0E2h, 7Fh,	7Fh,0E2h, 7Fh, 7Fh
		db 0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,0BEh,0BDh,   0,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	  0,   0,   0,	 0,   0,   0,	0,   0,	  0,   0,   0,	 0
		db  7Fh,0E2h, 7Fh, 7Fh,	7Fh, 7Fh, 7Fh,0E2h, 7Fh, 7Fh, 7Fh, 7Fh,0E2h, 7Fh,0E2h, 7Fh,   0,   0,	0,   0,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
		db    ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?,   ?,   ?,	?,   ?,	  ?,   ?,   ?,	 ?
SecondaryBuffer	db 320h	dup(   ?)	; DATA XREF: DecodeLocationBackground+3o
					; DrawWorldDifferences+3o ...
		db ?
CODE		ends

		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;

		end start
