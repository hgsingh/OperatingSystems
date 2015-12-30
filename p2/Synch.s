! Name of package being compiled: Synch
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
	.import	_P_Thread_InitializeScheduler
	.import	_P_Thread_Run
	.import	_P_Thread_PrintReadyList
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
	.import	_P_Thread_FatalError
	.import	_P_Thread_SetInterruptsTo
	.import	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! Externally visible functions in this package
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from this package
	.export	_P_Synch_Semaphore
	.export	_Method_P_Synch_Semaphore_1
	.export	_Method_P_Synch_Semaphore_2
	.export	_Method_P_Synch_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Synch_Mutex
	.export	_Method_P_Synch_Mutex_1
	.export	_Method_P_Synch_Mutex_2
	.export	_Method_P_Synch_Mutex_3
	.export	_Method_P_Synch_Mutex_4
! The following class and its methods are from this package
	.export	_P_Synch_Condition
	.export	_Method_P_Synch_Condition_1
	.export	_Method_P_Synch_Condition_2
	.export	_Method_P_Synch_Condition_3
	.export	_Method_P_Synch_Condition_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_Thread_readyList
	.import	_P_Thread_currentThread
	.import	_P_Thread_mainThread
	.import	_P_Thread_idleThread
	.import	_P_Thread_threadsToBeDestroyed
	.import	_P_Thread_currentInterruptStatus
! Global variables in this package
	.data
	.align
! String constants
_StringConst_10:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_9:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_8:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_7:
	.word	13			! length
	.ascii	"Cannot unlock"
	.align
_StringConst_6:
	.word	18			! length
	.ascii	"Cannot lock thread"
	.align
_StringConst_5:
	.word	43			! length
	.ascii	"Lock already being held by a current thread"
	.align
_StringConst_4:
	.word	38			! length
	.ascii	"Cannot create a state with a held flag"
	.align
_StringConst_3:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_2:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_1:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Synch.c\0"
_packageName:
	.ascii	"Synch\0"
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
_CheckVersion_P_Synch_:
	.export	_CheckVersion_P_Synch_
	set	0x283eadc6,r4		! myHashVal = 675196358
	cmp	r3,r4
	be	_Label_11
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
_Label_11:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_12
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_12
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_12
_Label_12:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Synch_Semaphore:
	.word	_Label_13
	jmp	_Method_P_Synch_Semaphore_1	! 4:	Init
	jmp	_Method_P_Synch_Semaphore_3	! 8:	Down
	jmp	_Method_P_Synch_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_13:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_14
	.word	_sourceFileName
	.word	5		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Synch_Semaphore
	.word	_P_System_Object
	.word	0
_Label_14:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_160:
	push	r0
	sub	r1,1,r1
	bne	_Label_160
	mov	33,r13		! source line 33
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_16		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_16
!	jmp	_Label_15
_Label_15:
! THEN...
	mov	35,r13		! source line 35
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_17 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_17  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	35,r13		! source line 35
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_16:
! ASSIGNMENT STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_19
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_20
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_21
	.word	12
	.word	4
	.word	_Label_22
	.word	-12
	.word	4
	.word	_Label_23
	.word	-16
	.word	4
	.word	0
_Label_19:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_20:
	.ascii	"Pself\0"
	.align
_Label_21:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_22:
	.byte	'?'
	.ascii	"_temp_18\0"
	.align
_Label_23:
	.byte	'?'
	.ascii	"_temp_17\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Synch_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_161:
	push	r0
	sub	r1,1,r1
	bne	_Label_161
	mov	43,r13		! source line 43
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_25		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_25
!	jmp	_Label_24
_Label_24:
! THEN...
	mov	49,r13		! source line 49
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_26 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_26  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_25:
! ASSIGNMENT STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_28		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_28
!	jmp	_Label_27
_Label_27:
! THEN...
	mov	53,r13		! source line 53
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0AS",r10
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
!   _temp_29 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_30 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_30 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_31 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_28:
! ASSIGNMENT STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	57,r13		! source line 57
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_32
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_33
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_34
	.word	-12
	.word	4
	.word	_Label_35
	.word	-16
	.word	4
	.word	_Label_36
	.word	-20
	.word	4
	.word	_Label_37
	.word	-24
	.word	4
	.word	_Label_38
	.word	-28
	.word	4
	.word	_Label_39
	.word	-32
	.word	4
	.word	0
_Label_32:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_33:
	.ascii	"Pself\0"
	.align
_Label_34:
	.byte	'?'
	.ascii	"_temp_31\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_30\0"
	.align
_Label_36:
	.byte	'?'
	.ascii	"_temp_29\0"
	.align
_Label_37:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_38:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_39:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Synch_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_162:
	push	r0
	sub	r1,1,r1
	bne	_Label_162
	mov	62,r13		! source line 62
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_41		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_41
!	jmp	_Label_40
_Label_40:
! THEN...
	mov	67,r13		! source line 67
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_42 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_42  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	67,r13		! source line 67
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_41:
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_44		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_44
!	jmp	_Label_43
_Label_43:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   _temp_45 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
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
	mov	72,r13		! source line 72
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
! END IF...
_Label_44:
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_46
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_47
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_48
	.word	-12
	.word	4
	.word	_Label_49
	.word	-16
	.word	4
	.word	_Label_50
	.word	-20
	.word	4
	.word	0
_Label_46:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_47:
	.ascii	"Pself\0"
	.align
_Label_48:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_49:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_50:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Synch_Mutex:
	.word	_Label_51
	jmp	_Method_P_Synch_Mutex_1	! 4:	Init
	jmp	_Method_P_Synch_Mutex_3	! 8:	Lock
	jmp	_Method_P_Synch_Mutex_4	! 12:	Unlock
	jmp	_Method_P_Synch_Mutex_2	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_51:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_52
	.word	_sourceFileName
	.word	16		! line number
	.word	24		! size of instances, in bytes
	.word	_P_Synch_Mutex
	.word	_P_System_Object
	.word	0
_Label_52:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_1,r1
	push	r1
	mov	4,r1
_Label_163:
	push	r0
	sub	r1,1,r1
	bne	_Label_163
	mov	97,r13		! source line 97
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	98,r13		! source line 98
	mov	"\0\0IF",r10
!   _temp_55 = newState XOR 1		(bool)
	loadb	[r14+12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_55 then goto _Label_54 else goto _Label_53
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_53
	jmp	_Label_54
_Label_53:
! THEN...
	mov	99,r13		! source line 99
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_56 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_56  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	99,r13		! source line 99
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_54:
! ASSIGNMENT STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0AS",r10
!   state = newState		(1 byte)
	loadb	[r14+12],r1
	load	[r14+8],r2
	storeb	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_1:
	.word	_sourceFileName
	.word	_Label_58
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_59
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_60
	.word	12
	.word	1
	.word	_Label_61
	.word	-16
	.word	4
	.word	_Label_62
	.word	-20
	.word	4
	.word	_Label_63
	.word	-9
	.word	1
	.word	0
_Label_58:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_59:
	.ascii	"Pself\0"
	.align
_Label_60:
	.byte	'B'
	.ascii	"newState\0"
	.align
_Label_61:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_62:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_63:
	.byte	'C'
	.ascii	"_temp_55\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Synch_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_2,r1
	push	r1
	mov	2,r1
_Label_164:
	push	r0
	sub	r1,1,r1
	bne	_Label_164
	mov	108,r13		! source line 108
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0IF",r10
!   if heldBy != _P_Thread_currentThread then goto _Label_65		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_65
!	jmp	_Label_64
_Label_64:
! THEN...
	mov	110,r13		! source line 110
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_66 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_66  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_67
_Label_65:
! ELSE...
	mov	113,r13		! source line 113
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_67:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_2:
	.word	_sourceFileName
	.word	_Label_68
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_69
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_70
	.word	-12
	.word	4
	.word	0
_Label_68:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_69:
	.ascii	"Pself\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Synch_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_3,r1
	push	r1
	mov	6,r1
_Label_165:
	push	r0
	sub	r1,1,r1
	bne	_Label_165
	mov	118,r13		! source line 118
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	122,r13		! source line 122
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	123,r13		! source line 123
	mov	"\0\0IF",r10
!   if heldBy != _P_Thread_currentThread then goto _Label_72		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_72
!	jmp	_Label_71
_Label_71:
! THEN...
	mov	124,r13		! source line 124
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_73 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_73  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_72:
! WHILE STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0WH",r10
_Label_74:
!   _temp_77 = state XOR 1		(bool)
	load	[r14+8],r1
	loadb	[r1+4],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_77 then goto _Label_76 else goto _Label_75
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_75
	jmp	_Label_76
_Label_75:
	mov	126,r13		! source line 126
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0SE",r10
!   _temp_78 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	128,r13		! source line 128
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
! END WHILE...
	jmp	_Label_74
_Label_76:
! ASSIGNMENT STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0AS",r10
!   state = 1		(1 byte)
	mov	1,r1
	load	[r14+8],r2
	storeb	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0AS",r10
!   heldBy = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	132,r13		! source line 132
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_3:
	.word	_sourceFileName
	.word	_Label_79
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_80
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_81
	.word	-16
	.word	4
	.word	_Label_82
	.word	-9
	.word	1
	.word	_Label_83
	.word	-20
	.word	4
	.word	_Label_84
	.word	-24
	.word	4
	.word	0
_Label_79:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_80:
	.ascii	"Pself\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_82:
	.byte	'C'
	.ascii	"_temp_77\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_84:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Synch_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_4,r1
	push	r1
	mov	8,r1
_Label_166:
	push	r0
	sub	r1,1,r1
	bne	_Label_166
	mov	137,r13		! source line 137
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	142,r13		! source line 142
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0IF",r10
!   if heldBy == _P_Thread_currentThread then goto _Label_86		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_86
!	jmp	_Label_85
_Label_85:
! THEN...
	mov	144,r13		! source line 144
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_87 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_87  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_86:
! ASSIGNMENT STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0AS",r10
	mov	147,r13		! source line 147
	mov	"\0\0SE",r10
!   _temp_88 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_90
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_90
!	jmp	_Label_89
_Label_89:
! THEN...
	mov	149,r13		! source line 149
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_91 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_91 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
!   _temp_92 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_90:
! ASSIGNMENT STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0AS",r10
!   state = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_4:
	.word	_sourceFileName
	.word	_Label_93
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_94
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_95
	.word	-12
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
	.word	-28
	.word	4
	.word	_Label_100
	.word	-32
	.word	4
	.word	0
_Label_93:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_94:
	.ascii	"Pself\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_99:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_100:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Synch_Condition:
	.word	_Label_101
	jmp	_Method_P_Synch_Condition_1	! 4:	Init
	jmp	_Method_P_Synch_Condition_2	! 8:	Wait
	jmp	_Method_P_Synch_Condition_3	! 12:	Signal
	jmp	_Method_P_Synch_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_101:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_102
	.word	_sourceFileName
	.word	29		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Synch_Condition
	.word	_P_System_Object
	.word	0
_Label_102:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_1,r1
	push	r1
	mov	1,r1
_Label_167:
	push	r0
	sub	r1,1,r1
	bne	_Label_167
	mov	195,r13		! source line 195
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_1:
	.word	_sourceFileName
	.word	_Label_104
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_106
	.word	-12
	.word	4
	.word	0
_Label_104:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_105:
	.ascii	"Pself\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Synch_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_2,r1
	push	r1
	mov	6,r1
_Label_168:
	push	r0
	sub	r1,1,r1
	bne	_Label_168
	mov	201,r13		! source line 201
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0IF",r10
	mov	204,r13		! source line 204
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_109  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_109 then goto _Label_108 else goto _Label_107
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_107
	jmp	_Label_108
_Label_107:
! THEN...
	mov	205,r13		! source line 205
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_110 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_110  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_108:
! ASSIGNMENT STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	207,r13		! source line 207
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	209,r13		! source line 209
	mov	"\0\0SE",r10
!   _temp_111 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	210,r13		! source line 210
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
! SEND STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_2:
	.word	_sourceFileName
	.word	_Label_112
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_113
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_114
	.word	12
	.word	4
	.word	_Label_115
	.word	-16
	.word	4
	.word	_Label_116
	.word	-20
	.word	4
	.word	_Label_117
	.word	-9
	.word	1
	.word	_Label_118
	.word	-24
	.word	4
	.word	0
_Label_112:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_113:
	.ascii	"Pself\0"
	.align
_Label_114:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_115:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_117:
	.byte	'C'
	.ascii	"_temp_109\0"
	.align
_Label_118:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Synch_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_3,r1
	push	r1
	mov	9,r1
_Label_169:
	push	r0
	sub	r1,1,r1
	bne	_Label_169
	mov	217,r13		! source line 217
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0IF",r10
	mov	221,r13		! source line 221
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_121  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_121 then goto _Label_120 else goto _Label_119
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_119
	jmp	_Label_120
_Label_119:
! THEN...
	mov	222,r13		! source line 222
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_122 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_122  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_120:
! ASSIGNMENT STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0AS",r10
	mov	225,r13		! source line 225
	mov	"\0\0SE",r10
!   _temp_123 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_125		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_125
!	jmp	_Label_124
_Label_124:
! THEN...
	mov	227,r13		! source line 227
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_126 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_126 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0SE",r10
!   _temp_127 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_125:
! ASSIGNMENT STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	230,r13		! source line 230
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_3:
	.word	_sourceFileName
	.word	_Label_128
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_130
	.word	12
	.word	4
	.word	_Label_131
	.word	-16
	.word	4
	.word	_Label_132
	.word	-20
	.word	4
	.word	_Label_133
	.word	-24
	.word	4
	.word	_Label_134
	.word	-28
	.word	4
	.word	_Label_135
	.word	-9
	.word	1
	.word	_Label_136
	.word	-32
	.word	4
	.word	_Label_137
	.word	-36
	.word	4
	.word	0
_Label_128:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_129:
	.ascii	"Pself\0"
	.align
_Label_130:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_135:
	.byte	'C'
	.ascii	"_temp_121\0"
	.align
_Label_136:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_137:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Synch_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_4,r1
	push	r1
	mov	9,r1
_Label_170:
	push	r0
	sub	r1,1,r1
	bne	_Label_170
	mov	235,r13		! source line 235
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0IF",r10
	mov	239,r13		! source line 239
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_140  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_140 then goto _Label_139 else goto _Label_138
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_138
	jmp	_Label_139
_Label_138:
! THEN...
	mov	240,r13		! source line 240
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_141 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_141  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_139:
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0WH",r10
_Label_142:
!	jmp	_Label_143
_Label_143:
	mov	243,r13		! source line 243
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
	mov	244,r13		! source line 244
	mov	"\0\0SE",r10
!   _temp_145 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_146
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_146
	jmp	_Label_147
_Label_146:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0BR",r10
	jmp	_Label_144
! END IF...
_Label_147:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_148 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_148 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0SE",r10
!   _temp_149 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_142
_Label_144:
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	251,r13		! source line 251
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_4:
	.word	_sourceFileName
	.word	_Label_150
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_151
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_152
	.word	12
	.word	4
	.word	_Label_153
	.word	-16
	.word	4
	.word	_Label_154
	.word	-20
	.word	4
	.word	_Label_155
	.word	-24
	.word	4
	.word	_Label_156
	.word	-28
	.word	4
	.word	_Label_157
	.word	-9
	.word	1
	.word	_Label_158
	.word	-32
	.word	4
	.word	_Label_159
	.word	-36
	.word	4
	.word	0
_Label_150:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_151:
	.ascii	"Pself\0"
	.align
_Label_152:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_157:
	.byte	'C'
	.ascii	"_temp_140\0"
	.align
_Label_158:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_159:
	.byte	'P'
	.ascii	"t\0"
	.align
