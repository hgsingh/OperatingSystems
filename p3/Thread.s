! Name of package being compiled: Thread
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
! Externally visible functions in this package
	.export	_P_Thread_InitializeScheduler
	.export	_P_Thread_Run
	.export	_P_Thread_PrintReadyList
	.export	_P_Thread_ThreadStartMain
	.export	_P_Thread_ThreadFinish
	.export	_P_Thread_FatalError
	.export	_P_Thread_SetInterruptsTo
	.export	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Thread_Thread
	.export	_Method_P_Thread_Thread_1
	.export	_Method_P_Thread_Thread_2
	.export	_Method_P_Thread_Thread_3
	.export	_Method_P_Thread_Thread_4
	.export	_Method_P_Thread_Thread_5
	.export	_Method_P_Thread_Thread_6
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
	.export	_P_Thread_readyList
	.export	_P_Thread_currentThread
	.export	_P_Thread_mainThread
	.export	_P_Thread_idleThread
	.export	_P_Thread_threadsToBeDestroyed
	.export	_P_Thread_currentInterruptStatus
_P_Thread_readyList:
	.skip	12
_P_Thread_currentThread:
	.skip	4
_P_Thread_mainThread:
	.skip	4092
_P_Thread_idleThread:
	.skip	4092
_P_Thread_threadsToBeDestroyed:
	.skip	12
_P_Thread_currentInterruptStatus:
	.skip	4
	.align
! String constants
_StringConst_43:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_42:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_41:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_40:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_39:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_38:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_37:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_36:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_35:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_34:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_33:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_32:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_31:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_30:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_29:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_28:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_27:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_26:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_25:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_24:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_23:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_22:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_21:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_20:
	.word	18			! length
	.ascii	"Forking thread...\n"
	.align
_StringConst_19:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_18:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_17:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_16:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_15:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_14:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_13:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_12:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_11:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_10:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_9:
	.word	18			! length
	.ascii	"\" -- TERMINATING!\n"
	.align
_StringConst_8:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_7:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_6:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Thread.c\0"
_packageName:
	.ascii	"Thread\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Thread_:
	.export	_CheckVersion_P_Thread_
	set	0xd98e6cc5,r4		! myHashVal = -644977467
	cmp	r3,r4
	be	_Label_46
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_46:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_47
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_47
_Label_47:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Thread_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_374:
	push	r0
	sub	r1,1,r1
	bne	_Label_374
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_48 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_48  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_readyList = zeros  (sizeInBytes=12)
	set	_P_Thread_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Thread_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_mainThread = zeros  (sizeInBytes=4092)
	set	_P_Thread_mainThread,r4
	mov	1023,r3
_Label_375:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_375
!   _P_Thread_mainThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_52 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_53 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_52  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_54 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-36]
!   _temp_55 = _temp_54 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_55 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_idleThread = zeros  (sizeInBytes=4092)
	set	_P_Thread_idleThread,r4
	mov	1023,r3
_Label_376:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_376
!   _P_Thread_idleThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_57 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_58 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_57  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_59 = _function_45_IdleFunction
	set	_function_45_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_60 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_59  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Thread_currentThread = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	set	_P_Thread_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	26,r13		! source line 26
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_61
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_62
	.word	-12
	.word	4
	.word	_Label_63
	.word	-16
	.word	4
	.word	_Label_64
	.word	-20
	.word	4
	.word	_Label_65
	.word	-24
	.word	4
	.word	_Label_66
	.word	-28
	.word	4
	.word	_Label_67
	.word	-32
	.word	4
	.word	_Label_68
	.word	-36
	.word	4
	.word	_Label_69
	.word	-40
	.word	4
	.word	_Label_70
	.word	-44
	.word	4
	.word	_Label_71
	.word	-48
	.word	4
	.word	_Label_72
	.word	-52
	.word	4
	.word	_Label_73
	.word	-56
	.word	4
	.word	_Label_74
	.word	-60
	.word	4
	.word	0
_Label_61:
	.ascii	"InitializeScheduler\0"
	.align
_Label_62:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_63:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_64:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_65:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_66:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_67:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_68:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_72:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_74:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_45_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_45_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_377:
	push	r0
	sub	r1,1,r1
	bne	_Label_377
	mov	31,r13		! source line 31
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0WH",r10
_Label_75:
!	jmp	_Label_76
_Label_76:
	mov	41,r13		! source line 41
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	42,r13		! source line 42
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0IF",r10
	mov	43,r13		! source line 43
	mov	"\0\0SE",r10
!   _temp_80 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_78 else goto _Label_79
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_79
	jmp	_Label_78
_Label_78:
! THEN...
	mov	44,r13		! source line 44
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	44,r13		! source line 44
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_81
_Label_79:
! ELSE...
	mov	46,r13		! source line 46
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_81:
! END WHILE...
	jmp	_Label_75
_Label_77:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_45_IdleFunction:
	.word	_sourceFileName
	.word	_Label_82
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_83
	.word	8
	.word	4
	.word	_Label_84
	.word	-12
	.word	4
	.word	_Label_85
	.word	-16
	.word	4
	.word	0
_Label_82:
	.ascii	"IdleFunction\0"
	.align
_Label_83:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_85:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Thread_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_Run,r1
	push	r1
	mov	9,r1
_Label_378:
	push	r0
	sub	r1,1,r1
	bne	_Label_378
	mov	53,r13		! source line 53
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0AS",r10
!   prevThread = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-32]
! SEND STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0AS",r10
!   _P_Thread_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Thread_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_86 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_86 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0WH",r10
_Label_87:
	mov	77,r13		! source line 77
	mov	"\0\0SE",r10
!   _temp_91 = &_P_Thread_threadsToBeDestroyed
	set	_P_Thread_threadsToBeDestroyed,r1
	store	r1,[r14+-24]
!   Send message IsEmpty
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_90  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_90 then goto _Label_89 else goto _Label_88
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_88
	jmp	_Label_89
_Label_88:
	mov	77,r13		! source line 77
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0AS",r10
	mov	78,r13		! source line 78
	mov	"\0\0SE",r10
!   _temp_92 = &_P_Thread_threadsToBeDestroyed
	set	_P_Thread_threadsToBeDestroyed,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_93 = th + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_93 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-16],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_87
_Label_89:
! RETURN STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_Run:
	.word	_sourceFileName
	.word	_Label_94
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_95
	.word	8
	.word	4
	.word	_Label_96
	.word	-16
	.word	4
	.word	_Label_97
	.word	-20
	.word	4
	.word	_Label_98
	.word	-24
	.word	4
	.word	_Label_99
	.word	-9
	.word	1
	.word	_Label_100
	.word	-28
	.word	4
	.word	_Label_101
	.word	-32
	.word	4
	.word	_Label_102
	.word	-36
	.word	4
	.word	0
_Label_94:
	.ascii	"Run\0"
	.align
_Label_95:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_99:
	.byte	'C'
	.ascii	"_temp_90\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_101:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_102:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Thread_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_379:
	push	r0
	sub	r1,1,r1
	bne	_Label_379
	mov	85,r13		! source line 85
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_103 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_103  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	93,r13		! source line 93
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0SE",r10
!   _temp_104 = _function_44_ThreadPrint
	set	_function_44_ThreadPrint,r1
	store	r1,[r14+-16]
!   _temp_105 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_104  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	95,r13		! source line 95
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_106
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_107
	.word	-12
	.word	4
	.word	_Label_108
	.word	-16
	.word	4
	.word	_Label_109
	.word	-20
	.word	4
	.word	_Label_110
	.word	-24
	.word	4
	.word	0
_Label_106:
	.ascii	"PrintReadyList\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_110:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Thread_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_380:
	push	r0
	sub	r1,1,r1
	bne	_Label_380
	mov	100,r13		! source line 100
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0AS",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_111 = _P_Thread_currentThread + 80
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_111  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_113 = _P_Thread_currentThread + 84
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_112 = *_temp_113  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_112  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	114,r13		! source line 114
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	115,r13		! source line 115
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! CALL STATEMENT...
!   _temp_114 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_114  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! RETURN STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_115
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_116
	.word	-12
	.word	4
	.word	_Label_117
	.word	-16
	.word	4
	.word	_Label_118
	.word	-20
	.word	4
	.word	_Label_119
	.word	-24
	.word	4
	.word	_Label_120
	.word	-28
	.word	4
	.word	_Label_121
	.word	-32
	.word	4
	.word	0
_Label_115:
	.ascii	"ThreadStartMain\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_117:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_118:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_119:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_120:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_121:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Thread_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_ThreadFinish,r1
	push	r1
	mov	4,r1
_Label_381:
	push	r0
	sub	r1,1,r1
	bne	_Label_381
	mov	121,r13		! source line 121
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	132,r13		! source line 132
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! SEND STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0SE",r10
!   _temp_122 = &_P_Thread_threadsToBeDestroyed
	set	_P_Thread_threadsToBeDestroyed,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! --------------------  DEBUG  --------------------
	mov	139,r13		! source line 139
	mov	"\0\0DE",r10
	debug
! RETURN STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_123
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_124
	.word	-12
	.word	4
	.word	_Label_125
	.word	-16
	.word	4
	.word	0
_Label_123:
	.ascii	"ThreadFinish\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_125:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError  ===============
! 
_P_Thread_FatalError:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_FatalError,r1
	push	r1
	mov	8,r1
_Label_382:
	push	r0
	sub	r1,1,r1
	bne	_Label_382
	mov	144,r13		! source line 144
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   _temp_126 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_126  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	152,r13		! source line 152
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0IF",r10
!   if _P_Thread_currentThread == 0 then goto _Label_128		(int)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_128
!	jmp	_Label_127
_Label_127:
! THEN...
	mov	154,r13		! source line 154
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_129 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_129  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_131 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_130 = *_temp_131  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_130  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	155,r13		! source line 155
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_128:
! CALL STATEMENT...
!   _temp_132 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_132  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	157,r13		! source line 157
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	158,r13		! source line 158
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_133 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_133  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	159,r13		! source line 159
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	160,r13		! source line 160
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_FatalError:
	.word	_sourceFileName
	.word	_Label_134
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_135
	.word	8
	.word	4
	.word	_Label_136
	.word	-12
	.word	4
	.word	_Label_137
	.word	-16
	.word	4
	.word	_Label_138
	.word	-20
	.word	4
	.word	_Label_139
	.word	-24
	.word	4
	.word	_Label_140
	.word	-28
	.word	4
	.word	_Label_141
	.word	-32
	.word	4
	.word	_Label_142
	.word	-36
	.word	4
	.word	0
_Label_134:
	.ascii	"FatalError\0"
	.align
_Label_135:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_142:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Thread_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_383:
	push	r0
	sub	r1,1,r1
	bne	_Label_383
	mov	165,r13		! source line 165
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	179,r13		! source line 179
	mov	"\0\0AS",r10
!   oldStat = _P_Thread_currentInterruptStatus		(4 bytes)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_144		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_144
!	jmp	_Label_143
_Label_143:
! THEN...
	mov	181,r13		! source line 181
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_145
_Label_144:
! ELSE...
	mov	184,r13		! source line 184
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	185,r13		! source line 185
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_145:
! RETURN STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_146
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_147
	.word	8
	.word	4
	.word	_Label_148
	.word	-12
	.word	4
	.word	0
_Label_146:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_147:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_148:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Thread_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_384:
	push	r0
	sub	r1,1,r1
	bne	_Label_384
	mov	192,r13		! source line 192
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=95  sizeInBytes=1
	mov	95,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_149
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_149:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION ThreadPrint  ===============
! 
_function_44_ThreadPrint:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_44_ThreadPrint,r1
	push	r1
	mov	17,r1
_Label_385:
	push	r0
	sub	r1,1,r1
	bne	_Label_385
	mov	210,r13		! source line 210
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	217,r13		! source line 217
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   _temp_150 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_150  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	218,r13		! source line 218
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_152 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-60]
!   Data Move: _temp_151 = *_temp_152  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_151  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	219,r13		! source line 219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_153 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_153  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	220,r13		! source line 220
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	221,r13		! source line 221
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_162 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-48]
!   Data Move: _temp_161 = *_temp_162  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Branch to the right case label
	load	[r14+-52],r1
	cmp	r1,1
	be	_Label_156
	cmp	r1,2
	be	_Label_157
	cmp	r1,3
	be	_Label_158
	cmp	r1,4
	be	_Label_159
	cmp	r1,5
	be	_Label_160
	jmp	_Label_154
! CASE 1...
_Label_156:
! CALL STATEMENT...
!   _temp_163 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_163  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	223,r13		! source line 223
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0BR",r10
	jmp	_Label_155
! CASE 2...
_Label_157:
! CALL STATEMENT...
!   _temp_164 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_164  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	226,r13		! source line 226
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0BR",r10
	jmp	_Label_155
! CASE 3...
_Label_158:
! CALL STATEMENT...
!   _temp_165 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_165  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	229,r13		! source line 229
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0BR",r10
	jmp	_Label_155
! CASE 4...
_Label_159:
! CALL STATEMENT...
!   _temp_166 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_166  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	232,r13		! source line 232
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0BR",r10
	jmp	_Label_155
! CASE 5...
_Label_160:
! CALL STATEMENT...
!   _temp_167 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_167  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	235,r13		! source line 235
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0BR",r10
	jmp	_Label_155
! DEFAULT CASE...
_Label_154:
! CALL STATEMENT...
!   _temp_168 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_168  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_155:
! CALL STATEMENT...
!   _temp_169 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_169  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_170 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_170  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	241,r13		! source line 241
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_171 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_171  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_44_ThreadPrint:
	.word	_sourceFileName
	.word	_Label_172
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_173
	.word	8
	.word	4
	.word	_Label_174
	.word	-12
	.word	4
	.word	_Label_175
	.word	-16
	.word	4
	.word	_Label_176
	.word	-20
	.word	4
	.word	_Label_177
	.word	-24
	.word	4
	.word	_Label_178
	.word	-28
	.word	4
	.word	_Label_179
	.word	-32
	.word	4
	.word	_Label_180
	.word	-36
	.word	4
	.word	_Label_181
	.word	-40
	.word	4
	.word	_Label_182
	.word	-44
	.word	4
	.word	_Label_183
	.word	-48
	.word	4
	.word	_Label_184
	.word	-52
	.word	4
	.word	_Label_185
	.word	-56
	.word	4
	.word	_Label_186
	.word	-60
	.word	4
	.word	_Label_187
	.word	-64
	.word	4
	.word	_Label_188
	.word	-68
	.word	4
	.word	_Label_189
	.word	-72
	.word	4
	.word	0
_Label_172:
	.ascii	"ThreadPrint\0"
	.align
_Label_173:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_189:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Thread_Thread:
	.word	_Label_190
	jmp	_Method_P_Thread_Thread_1	! 4:	Init
	jmp	_Method_P_Thread_Thread_2	! 8:	Fork
	jmp	_Method_P_Thread_Thread_3	! 12:	Yield
	jmp	_Method_P_Thread_Thread_4	! 16:	Sleep
	jmp	_Method_P_Thread_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Thread_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_190:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_191
	.word	_sourceFileName
	.word	36		! line number
	.word	4092		! size of instances, in bytes
	.word	_P_Thread_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_191:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Thread_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_1,r1
	push	r1
	mov	25,r1
_Label_386:
	push	r0
	sub	r1,1,r1
	bne	_Label_386
	mov	254,r13		! source line 254
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   _temp_192 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_192) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_192 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-108],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0AS",r10
!   _temp_193 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-104]
!   Move address of _temp_193 [0 ] into _temp_194
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Data Move: *_temp_194 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0AS",r10
!   _temp_195 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-96]
!   Move address of _temp_195 [999 ] into _temp_196
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Data Move: *_temp_196 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0AS",r10
!   _temp_197 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-88]
!   Move address of _temp_197 [999 ] into _temp_198
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   stackTop = _temp_198		(4 bytes)
	load	[r14+-84],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   _temp_199 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   NEW ARRAY Constructor...
!   _temp_201 = &_temp_200
	add	r14,-76,r1
	store	r1,[r14+-20]
!   _temp_201 = _temp_201 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	13,r1
	store	r1,[r14+-16]
_Label_203:
!   Data Move: *_temp_201 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_201 = _temp_201 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_202 = _temp_202 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_202) then goto _Label_203
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_203
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-76]
!   _temp_204 = &_temp_200
	add	r14,-76,r1
	store	r1,[r14+-12]
!   make sure array has size 13
	load	[r14+-80],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_387
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_387:
!   make sure array has size 13
	load	[r14+-12],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_199 = *_temp_204  (sizeInBytes=56)
	load	[r14+-12],r5
	load	[r14+-80],r4
	mov	14,r3
_Label_388:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_388
! RETURN STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_1:
	.word	_sourceFileName
	.word	_Label_205
	.word	8		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_206
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_207
	.word	12
	.word	4
	.word	_Label_208
	.word	-12
	.word	4
	.word	_Label_209
	.word	-16
	.word	4
	.word	_Label_210
	.word	-20
	.word	4
	.word	_Label_211
	.word	-76
	.word	56
	.word	_Label_212
	.word	-80
	.word	4
	.word	_Label_213
	.word	-84
	.word	4
	.word	_Label_214
	.word	-88
	.word	4
	.word	_Label_215
	.word	-92
	.word	4
	.word	_Label_216
	.word	-96
	.word	4
	.word	_Label_217
	.word	-100
	.word	4
	.word	_Label_218
	.word	-104
	.word	4
	.word	_Label_219
	.word	-108
	.word	4
	.word	0
_Label_205:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_206:
	.ascii	"Pself\0"
	.align
_Label_207:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Thread_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_2,r1
	push	r1
	mov	8,r1
_Label_389:
	push	r0
	sub	r1,1,r1
	bne	_Label_389
	mov	271,r13		! source line 271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! CALL STATEMENT...
!   _temp_220 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_220  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	283,r13		! source line 283
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_221 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_221  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	288,r13		! source line 288
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_223 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_222  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	290,r13		! source line 290
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_2:
	.word	_sourceFileName
	.word	_Label_224
	.word	12		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_225
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_226
	.word	12
	.word	4
	.word	_Label_227
	.word	16
	.word	4
	.word	_Label_228
	.word	-12
	.word	4
	.word	_Label_229
	.word	-16
	.word	4
	.word	_Label_230
	.word	-20
	.word	4
	.word	_Label_231
	.word	-24
	.word	4
	.word	_Label_232
	.word	-28
	.word	4
	.word	_Label_233
	.word	-32
	.word	4
	.word	0
_Label_224:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_225:
	.ascii	"Pself\0"
	.align
_Label_226:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_227:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_232:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_233:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Thread_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_3,r1
	push	r1
	mov	11,r1
_Label_390:
	push	r0
	sub	r1,1,r1
	bne	_Label_390
	mov	295,r13		! source line 295
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_236 == _P_Thread_currentThread then goto _Label_235		(int)
	load	[r14+-32],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_235
!	jmp	_Label_234
_Label_234:
! THEN...
	mov	312,r13		! source line 312
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_237 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_237  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	312,r13		! source line 312
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_235:
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0AS",r10
	mov	318,r13		! source line 318
	mov	"\0\0SE",r10
!   _temp_238 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	319,r13		! source line 319
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_240		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_240
!	jmp	_Label_239
_Label_239:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_242		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_242
!	jmp	_Label_241
_Label_241:
! THEN...
	mov	324,r13		! source line 324
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_243 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	324,r13		! source line 324
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_242:
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_245 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_244  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	328,r13		! source line 328
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! END IF...
_Label_240:
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	330,r13		! source line 330
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_3:
	.word	_sourceFileName
	.word	_Label_246
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_247
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_248
	.word	-12
	.word	4
	.word	_Label_249
	.word	-16
	.word	4
	.word	_Label_250
	.word	-20
	.word	4
	.word	_Label_251
	.word	-24
	.word	4
	.word	_Label_252
	.word	-28
	.word	4
	.word	_Label_253
	.word	-32
	.word	4
	.word	_Label_254
	.word	-36
	.word	4
	.word	_Label_255
	.word	-40
	.word	4
	.word	_Label_256
	.word	-44
	.word	4
	.word	0
_Label_246:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_247:
	.ascii	"Pself\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_254:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_255:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_256:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Thread_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_4,r1
	push	r1
	mov	7,r1
_Label_391:
	push	r0
	sub	r1,1,r1
	bne	_Label_391
	mov	335,r13		! source line 335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0IF",r10
!   if _P_Thread_currentInterruptStatus == 2 then goto _Label_258		(int)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_258
!	jmp	_Label_257
_Label_257:
! THEN...
	mov	348,r13		! source line 348
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_259 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_259  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	348,r13		! source line 348
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_258:
! IF STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_262 == _P_Thread_currentThread then goto _Label_261		(int)
	load	[r14+-24],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_261
!	jmp	_Label_260
_Label_260:
! THEN...
	mov	352,r13		! source line 352
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_263 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_263  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	352,r13		! source line 352
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_261:
! ASSIGNMENT STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0AS",r10
	mov	358,r13		! source line 358
	mov	"\0\0SE",r10
!   _temp_264 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_265
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_265
	jmp	_Label_266
_Label_265:
! THEN...
	mov	360,r13		! source line 360
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_267 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	360,r13		! source line 360
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_266:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	362,r13		! source line 362
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! RETURN STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_4:
	.word	_sourceFileName
	.word	_Label_268
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_269
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_270
	.word	-12
	.word	4
	.word	_Label_271
	.word	-16
	.word	4
	.word	_Label_272
	.word	-20
	.word	4
	.word	_Label_273
	.word	-24
	.word	4
	.word	_Label_274
	.word	-28
	.word	4
	.word	_Label_275
	.word	-32
	.word	4
	.word	0
_Label_268:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_269:
	.ascii	"Pself\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_275:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Thread_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_5,r1
	push	r1
	mov	9,r1
_Label_392:
	push	r0
	sub	r1,1,r1
	bne	_Label_392
	mov	367,r13		! source line 367
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0IF",r10
!   _temp_279 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_279 [0 ] into _temp_280
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_278 = *_temp_280  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_278 == 606348324 then goto _Label_277		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_277
!	jmp	_Label_276
_Label_276:
! THEN...
	mov	374,r13		! source line 374
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_281 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	374,r13		! source line 374
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
	jmp	_Label_282
_Label_277:
! ELSE...
	mov	375,r13		! source line 375
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0IF",r10
!   _temp_286 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_286 [999 ] into _temp_287
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_285 = *_temp_287  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_285 == 606348324 then goto _Label_284		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_284
!	jmp	_Label_283
_Label_283:
! THEN...
	mov	376,r13		! source line 376
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_288 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	376,r13		! source line 376
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_284:
! END IF...
_Label_282:
! RETURN STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_5:
	.word	_sourceFileName
	.word	_Label_289
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_290
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_291
	.word	-12
	.word	4
	.word	_Label_292
	.word	-16
	.word	4
	.word	_Label_293
	.word	-20
	.word	4
	.word	_Label_294
	.word	-24
	.word	4
	.word	_Label_295
	.word	-28
	.word	4
	.word	_Label_296
	.word	-32
	.word	4
	.word	_Label_297
	.word	-36
	.word	4
	.word	_Label_298
	.word	-40
	.word	4
	.word	0
_Label_289:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_290:
	.ascii	"Pself\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Thread_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_6,r1
	push	r1
	mov	34,r1
_Label_393:
	push	r0
	sub	r1,1,r1
	bne	_Label_393
	mov	382,r13		! source line 382
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	388,r13		! source line 388
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! CALL STATEMENT...
!   _temp_299 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	389,r13		! source line 389
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	390,r13		! source line 390
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_300 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	391,r13		! source line 391
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_302 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	393,r13		! source line 393
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_303 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_303  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_308 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
!   Calculate and save the FOR-LOOP ending value
!   _temp_309 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-104]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_308  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+-132]
_Label_304:
!   Perform the FOR-LOOP termination test
!   if i > _temp_309 then goto _Label_307		
	load	[r14+-132],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_307
_Label_305:
	mov	395,r13		! source line 395
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_310 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_311 = i + 2		(int)
	load	[r14+-132],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_312 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_314 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Move address of _temp_314 [i ] into _temp_315
!     make sure index expr is >= 0
	load	[r14+-132],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Data Move: _temp_313 = *_temp_315  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_316 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_316  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	400,r13		! source line 400
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_318 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Move address of _temp_318 [i ] into _temp_319
!     make sure index expr is >= 0
	load	[r14+-132],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Data Move: _temp_317 = *_temp_319  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	401,r13		! source line 401
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_320 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_306:
!   i = i + 1
	load	[r14+-132],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
	jmp	_Label_304
! END FOR
_Label_307:
! CALL STATEMENT...
!   _temp_321 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-56]
!   _temp_322 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_322  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	404,r13		! source line 404
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_323 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-48]
!   _temp_325 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-40]
!   Move address of _temp_325 [0 ] into _temp_326
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_324 = _temp_326		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_324  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	405,r13		! source line 405
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	406,r13		! source line 406
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_329
	cmp	r1,2
	be	_Label_330
	cmp	r1,3
	be	_Label_331
	cmp	r1,4
	be	_Label_332
	cmp	r1,5
	be	_Label_333
	jmp	_Label_327
! CASE 1...
_Label_329:
! CALL STATEMENT...
!   _temp_334 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	408,r13		! source line 408
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0BR",r10
	jmp	_Label_328
! CASE 2...
_Label_330:
! CALL STATEMENT...
!   _temp_335 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	411,r13		! source line 411
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0BR",r10
	jmp	_Label_328
! CASE 3...
_Label_331:
! CALL STATEMENT...
!   _temp_336 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	414,r13		! source line 414
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0BR",r10
	jmp	_Label_328
! CASE 4...
_Label_332:
! CALL STATEMENT...
!   _temp_337 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	417,r13		! source line 417
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0BR",r10
	jmp	_Label_328
! CASE 5...
_Label_333:
! CALL STATEMENT...
!   _temp_338 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	420,r13		! source line 420
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	421,r13		! source line 421
	mov	"\0\0BR",r10
	jmp	_Label_328
! DEFAULT CASE...
_Label_327:
! CALL STATEMENT...
!   _temp_339 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	423,r13		! source line 423
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_328:
! ASSIGNMENT STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! RETURN STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0RE",r10
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_6:
	.word	_sourceFileName
	.word	_Label_340
	.word	4		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_341
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_342
	.word	-12
	.word	4
	.word	_Label_343
	.word	-16
	.word	4
	.word	_Label_344
	.word	-20
	.word	4
	.word	_Label_345
	.word	-24
	.word	4
	.word	_Label_346
	.word	-28
	.word	4
	.word	_Label_347
	.word	-32
	.word	4
	.word	_Label_348
	.word	-36
	.word	4
	.word	_Label_349
	.word	-40
	.word	4
	.word	_Label_350
	.word	-44
	.word	4
	.word	_Label_351
	.word	-48
	.word	4
	.word	_Label_352
	.word	-52
	.word	4
	.word	_Label_353
	.word	-56
	.word	4
	.word	_Label_354
	.word	-60
	.word	4
	.word	_Label_355
	.word	-64
	.word	4
	.word	_Label_356
	.word	-68
	.word	4
	.word	_Label_357
	.word	-72
	.word	4
	.word	_Label_358
	.word	-76
	.word	4
	.word	_Label_359
	.word	-80
	.word	4
	.word	_Label_360
	.word	-84
	.word	4
	.word	_Label_361
	.word	-88
	.word	4
	.word	_Label_362
	.word	-92
	.word	4
	.word	_Label_363
	.word	-96
	.word	4
	.word	_Label_364
	.word	-100
	.word	4
	.word	_Label_365
	.word	-104
	.word	4
	.word	_Label_366
	.word	-108
	.word	4
	.word	_Label_367
	.word	-112
	.word	4
	.word	_Label_368
	.word	-116
	.word	4
	.word	_Label_369
	.word	-120
	.word	4
	.word	_Label_370
	.word	-124
	.word	4
	.word	_Label_371
	.word	-128
	.word	4
	.word	_Label_372
	.word	-132
	.word	4
	.word	_Label_373
	.word	-136
	.word	4
	.word	0
_Label_340:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_341:
	.ascii	"Pself\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_372:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_373:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
