! Name of package being compiled: Kernel
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
	.import	_P_System_PrintMemory
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
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
	.export	_Method_P_Kernel_Condition_5
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
	.align
! String constants
_StringConst_135:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_134:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_133:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_132:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_131:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_128:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_125:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_122:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_121:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_120:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_119:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_118:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_116:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_115:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_114:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_113:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_112:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_111:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_110:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_109:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_108:
	.word	17			! length
	.ascii	" process now free"
	.align
_StringConst_107:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_106:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_105:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_104:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_103:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_102:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_101:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_100:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_99:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_98:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_97:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_96:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_95:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_94:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_93:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_92:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_91:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_90:
	.word	10			! length
	.ascii	"new thread"
	.align
_StringConst_89:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_88:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_87:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_86:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_85:
	.word	1			! length
	.ascii	"9"
	.align
_StringConst_84:
	.word	1			! length
	.ascii	"8"
	.align
_StringConst_83:
	.word	1			! length
	.ascii	"7"
	.align
_StringConst_82:
	.word	1			! length
	.ascii	"6"
	.align
_StringConst_81:
	.word	1			! length
	.ascii	"5"
	.align
_StringConst_80:
	.word	1			! length
	.ascii	"4"
	.align
_StringConst_79:
	.word	1			! length
	.ascii	"3"
	.align
_StringConst_78:
	.word	1			! length
	.ascii	"2"
	.align
_StringConst_77:
	.word	1			! length
	.ascii	"1"
	.align
_StringConst_76:
	.word	1			! length
	.ascii	"0"
	.align
_StringConst_75:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_74:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_73:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_72:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_71:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_70:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_67:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_66:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_65:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_64:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_63:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_62:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_61:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_60:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_59:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_58:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_57:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_56:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_55:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_54:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_53:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_52:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_51:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_50:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_49:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_48:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_47:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_46:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_45:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
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
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x01118db8,r4		! myHashVal = 17927608
	cmp	r3,r4
	be	_Label_140
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
_Label_140:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_141
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_141
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_141
_Label_141:
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
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1783:
	push	r0
	sub	r1,1,r1
	bne	_Label_1783
	mov	11,r13		! source line 11
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	18,r13		! source line 18
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_142 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_142  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	19,r13		! source line 19
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1784:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1784
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_146 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_147 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_146  sizeInBytes=4
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
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _temp_148 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_149 = _temp_148 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_149 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1785:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1785
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0SE",r10
!   _temp_151 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_152 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_151  sizeInBytes=4
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
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_153 = _function_139_IdleFunction
	set	_function_139_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_154 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_153  sizeInBytes=4
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
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	31,r13		! source line 31
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_155
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_156
	.word	-12
	.word	4
	.word	_Label_157
	.word	-16
	.word	4
	.word	_Label_158
	.word	-20
	.word	4
	.word	_Label_159
	.word	-24
	.word	4
	.word	_Label_160
	.word	-28
	.word	4
	.word	_Label_161
	.word	-32
	.word	4
	.word	_Label_162
	.word	-36
	.word	4
	.word	_Label_163
	.word	-40
	.word	4
	.word	_Label_164
	.word	-44
	.word	4
	.word	_Label_165
	.word	-48
	.word	4
	.word	_Label_166
	.word	-52
	.word	4
	.word	_Label_167
	.word	-56
	.word	4
	.word	_Label_168
	.word	-60
	.word	4
	.word	0
_Label_155:
	.ascii	"InitializeScheduler\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_139_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_139_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1786:
	push	r0
	sub	r1,1,r1
	bne	_Label_1786
	mov	36,r13		! source line 36
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0WH",r10
_Label_169:
!	jmp	_Label_170
_Label_170:
	mov	46,r13		! source line 46
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0IF",r10
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   _temp_174 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_172 else goto _Label_173
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_173
	jmp	_Label_172
_Label_172:
! THEN...
	mov	49,r13		! source line 49
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_175
_Label_173:
! ELSE...
	mov	51,r13		! source line 51
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_175:
! END WHILE...
	jmp	_Label_169
_Label_171:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_139_IdleFunction:
	.word	_sourceFileName
	.word	_Label_176
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_177
	.word	8
	.word	4
	.word	_Label_178
	.word	-12
	.word	4
	.word	_Label_179
	.word	-16
	.word	4
	.word	0
_Label_176:
	.ascii	"IdleFunction\0"
	.align
_Label_177:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_179:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1787:
	push	r0
	sub	r1,1,r1
	bne	_Label_1787
	mov	58,r13		! source line 58
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_182 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_182 ) then goto _Label_181		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_181
!	jmp	_Label_180
_Label_180:
! THEN...
	mov	75,r13		! source line 75
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_184 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_184 [0 ] into _temp_185
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
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
	store	r2,[r14+-60]
!   _temp_183 = _temp_185		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_183  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_181:
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_186 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_186 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	84,r13		! source line 84
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0WH",r10
_Label_187:
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_191 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_190  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_190 then goto _Label_189 else goto _Label_188
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_188
	jmp	_Label_189
_Label_188:
	mov	88,r13		! source line 88
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0AS",r10
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_192 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0SE",r10
!   _temp_193 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_187
_Label_189:
! IF STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_196 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_196 ) then goto _Label_195		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_195
!	jmp	_Label_194
_Label_194:
! THEN...
	mov	94,r13		! source line 94
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_198 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_198 [0 ] into _temp_199
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_197 = _temp_199		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_197  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_201 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_200 = *_temp_201  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_200) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_202 = _temp_200 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_195:
! RETURN STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_203
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_204
	.word	8
	.word	4
	.word	_Label_205
	.word	-16
	.word	4
	.word	_Label_206
	.word	-20
	.word	4
	.word	_Label_207
	.word	-24
	.word	4
	.word	_Label_208
	.word	-28
	.word	4
	.word	_Label_209
	.word	-32
	.word	4
	.word	_Label_210
	.word	-36
	.word	4
	.word	_Label_211
	.word	-40
	.word	4
	.word	_Label_212
	.word	-44
	.word	4
	.word	_Label_213
	.word	-48
	.word	4
	.word	_Label_214
	.word	-52
	.word	4
	.word	_Label_215
	.word	-9
	.word	1
	.word	_Label_216
	.word	-56
	.word	4
	.word	_Label_217
	.word	-60
	.word	4
	.word	_Label_218
	.word	-64
	.word	4
	.word	_Label_219
	.word	-68
	.word	4
	.word	_Label_220
	.word	-72
	.word	4
	.word	_Label_221
	.word	-76
	.word	4
	.word	_Label_222
	.word	-80
	.word	4
	.word	0
_Label_203:
	.ascii	"Run\0"
	.align
_Label_204:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_215:
	.byte	'C'
	.ascii	"_temp_190\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_221:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_222:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1788:
	push	r0
	sub	r1,1,r1
	bne	_Label_1788
	mov	101,r13		! source line 101
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_223 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_223  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0SE",r10
!   _temp_224 = _function_138_ThreadPrintShort
	set	_function_138_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_225 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_224  sizeInBytes=4
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
	mov	111,r13		! source line 111
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_226
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_227
	.word	-12
	.word	4
	.word	_Label_228
	.word	-16
	.word	4
	.word	_Label_229
	.word	-20
	.word	4
	.word	_Label_230
	.word	-24
	.word	4
	.word	0
_Label_226:
	.ascii	"PrintReadyList\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_230:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1789:
	push	r0
	sub	r1,1,r1
	bne	_Label_1789
	mov	116,r13		! source line 116
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_231 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_231  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_233 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_232 = *_temp_233  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_232  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	130,r13		! source line 130
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	131,r13		! source line 131
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_234 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_234  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	132,r13		! source line 132
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_235
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_236
	.word	-12
	.word	4
	.word	_Label_237
	.word	-16
	.word	4
	.word	_Label_238
	.word	-20
	.word	4
	.word	_Label_239
	.word	-24
	.word	4
	.word	_Label_240
	.word	-28
	.word	4
	.word	_Label_241
	.word	-32
	.word	4
	.word	0
_Label_235:
	.ascii	"ThreadStartMain\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_240:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_241:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1790:
	push	r0
	sub	r1,1,r1
	bne	_Label_1790
	mov	137,r13		! source line 137
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	148,r13		! source line 148
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0SE",r10
!   _temp_242 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	153,r13		! source line 153
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_243 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	155,r13		! source line 155
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_244
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_245
	.word	-12
	.word	4
	.word	_Label_246
	.word	-16
	.word	4
	.word	_Label_247
	.word	-20
	.word	4
	.word	0
_Label_244:
	.ascii	"ThreadFinish\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_247:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1791:
	push	r0
	sub	r1,1,r1
	bne	_Label_1791
	mov	160,r13		! source line 160
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_248 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_248  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	170,r13		! source line 170
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_250		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_250
!	jmp	_Label_249
_Label_249:
! THEN...
	mov	171,r13		! source line 171
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_251 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_251  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_253 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_252 = *_temp_253  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_252  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_250:
! CALL STATEMENT...
!   _temp_254 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_254  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_255 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_255  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_256 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_256  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	178,r13		! source line 178
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_257
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_258
	.word	8
	.word	4
	.word	_Label_259
	.word	-12
	.word	4
	.word	_Label_260
	.word	-16
	.word	4
	.word	_Label_261
	.word	-20
	.word	4
	.word	_Label_262
	.word	-24
	.word	4
	.word	_Label_263
	.word	-28
	.word	4
	.word	_Label_264
	.word	-32
	.word	4
	.word	_Label_265
	.word	-36
	.word	4
	.word	_Label_266
	.word	-40
	.word	4
	.word	0
_Label_257:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_258:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_266:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1792:
	push	r0
	sub	r1,1,r1
	bne	_Label_1792
	mov	183,r13		! source line 183
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_268		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_268
!	jmp	_Label_267
_Label_267:
! THEN...
	mov	199,r13		! source line 199
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_269
_Label_268:
! ELSE...
	mov	202,r13		! source line 202
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_269:
! RETURN STATEMENT...
	mov	205,r13		! source line 205
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
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_270
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_271
	.word	8
	.word	4
	.word	_Label_272
	.word	-12
	.word	4
	.word	0
_Label_270:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_271:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_272:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_138_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_138_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1793:
	push	r0
	sub	r1,1,r1
	bne	_Label_1793
	mov	667,r13		! source line 667
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	675,r13		! source line 675
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_276		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_276
!   _temp_275 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_277
_Label_276:
!   _temp_275 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_277:
!   if _temp_275 then goto _Label_274 else goto _Label_273
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_273
	jmp	_Label_274
_Label_273:
! THEN...
	mov	676,r13		! source line 676
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_278 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_278  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	677,r13		! source line 677
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_274:
! CALL STATEMENT...
!   _temp_279 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_281 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_280 = *_temp_281  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_282 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	681,r13		! source line 681
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	682,r13		! source line 682
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_291 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_290 = *_temp_291  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_285
	cmp	r1,2
	be	_Label_286
	cmp	r1,3
	be	_Label_287
	cmp	r1,4
	be	_Label_288
	cmp	r1,5
	be	_Label_289
	jmp	_Label_283
! CASE 1...
_Label_285:
! CALL STATEMENT...
!   _temp_292 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	684,r13		! source line 684
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	685,r13		! source line 685
	mov	"\0\0BR",r10
	jmp	_Label_284
! CASE 2...
_Label_286:
! CALL STATEMENT...
!   _temp_293 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0BR",r10
	jmp	_Label_284
! CASE 3...
_Label_287:
! CALL STATEMENT...
!   _temp_294 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	691,r13		! source line 691
	mov	"\0\0BR",r10
	jmp	_Label_284
! CASE 4...
_Label_288:
! CALL STATEMENT...
!   _temp_295 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	694,r13		! source line 694
	mov	"\0\0BR",r10
	jmp	_Label_284
! CASE 5...
_Label_289:
! CALL STATEMENT...
!   _temp_296 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0BR",r10
	jmp	_Label_284
! DEFAULT CASE...
_Label_283:
! CALL STATEMENT...
!   _temp_297 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	699,r13		! source line 699
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_284:
! CALL STATEMENT...
!   _temp_298 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_298  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_299 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_300 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_138_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_301
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_302
	.word	8
	.word	4
	.word	_Label_303
	.word	-16
	.word	4
	.word	_Label_304
	.word	-20
	.word	4
	.word	_Label_305
	.word	-24
	.word	4
	.word	_Label_306
	.word	-28
	.word	4
	.word	_Label_307
	.word	-32
	.word	4
	.word	_Label_308
	.word	-36
	.word	4
	.word	_Label_309
	.word	-40
	.word	4
	.word	_Label_310
	.word	-44
	.word	4
	.word	_Label_311
	.word	-48
	.word	4
	.word	_Label_312
	.word	-52
	.word	4
	.word	_Label_313
	.word	-56
	.word	4
	.word	_Label_314
	.word	-60
	.word	4
	.word	_Label_315
	.word	-64
	.word	4
	.word	_Label_316
	.word	-68
	.word	4
	.word	_Label_317
	.word	-72
	.word	4
	.word	_Label_318
	.word	-76
	.word	4
	.word	_Label_319
	.word	-9
	.word	1
	.word	_Label_320
	.word	-80
	.word	4
	.word	0
_Label_301:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_302:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_319:
	.byte	'C'
	.ascii	"_temp_275\0"
	.align
_Label_320:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_137_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_137_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1794:
	push	r0
	sub	r1,1,r1
	bne	_Label_1794
	mov	1010,r13		! source line 1010
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_321 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1014,r13		! source line 1014
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1015,r13		! source line 1015
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_137_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_322
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_323
	.word	8
	.word	4
	.word	_Label_324
	.word	-12
	.word	4
	.word	0
_Label_322:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_323:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1795:
	push	r0
	sub	r1,1,r1
	bne	_Label_1795
	mov	1020,r13		! source line 1020
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_325 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1026,r13		! source line 1026
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_326
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_327
	.word	8
	.word	4
	.word	_Label_328
	.word	-12
	.word	4
	.word	0
_Label_326:
	.ascii	"ProcessFinish\0"
	.align
_Label_327:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1796:
	push	r0
	sub	r1,1,r1
	bne	_Label_1796
	mov	1522,r13		! source line 1522
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_329
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_329:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_1797:
	push	r0
	sub	r1,1,r1
	bne	_Label_1797
	mov	1540,r13		! source line 1540
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_330 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1550,r13		! source line 1550
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_331
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_332
	.word	-12
	.word	4
	.word	0
_Label_331:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1562,r13		! source line 1562
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1571,r13		! source line 1571
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1571,r13		! source line 1571
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_333
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_333:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1798:
	push	r0
	sub	r1,1,r1
	bne	_Label_1798
	mov	1576,r13		! source line 1576
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_334 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1583,r13		! source line 1583
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_335
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_336
	.word	-12
	.word	4
	.word	0
_Label_335:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1799:
	push	r0
	sub	r1,1,r1
	bne	_Label_1799
	mov	1588,r13		! source line 1588
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_337 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1595,r13		! source line 1595
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_338
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_339
	.word	-12
	.word	4
	.word	0
_Label_338:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1800:
	push	r0
	sub	r1,1,r1
	bne	_Label_1800
	mov	1600,r13		! source line 1600
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_340 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1607,r13		! source line 1607
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1607,r13		! source line 1607
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_341
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_342
	.word	-12
	.word	4
	.word	0
_Label_341:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1801:
	push	r0
	sub	r1,1,r1
	bne	_Label_1801
	mov	1612,r13		! source line 1612
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1618,r13		! source line 1618
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_343 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1619,r13		! source line 1619
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1619,r13		! source line 1619
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_344
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_345
	.word	-12
	.word	4
	.word	0
_Label_344:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1802:
	push	r0
	sub	r1,1,r1
	bne	_Label_1802
	mov	1624,r13		! source line 1624
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_346 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1631,r13		! source line 1631
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_347
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_348
	.word	-12
	.word	4
	.word	0
_Label_347:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1803:
	push	r0
	sub	r1,1,r1
	bne	_Label_1803
	mov	1636,r13		! source line 1636
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1642,r13		! source line 1642
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_349 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1643,r13		! source line 1643
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_350
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_351
	.word	-12
	.word	4
	.word	0
_Label_350:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1804:
	push	r0
	sub	r1,1,r1
	bne	_Label_1804
	mov	1648,r13		! source line 1648
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_352 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1655,r13		! source line 1655
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_353
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_354
	.word	-12
	.word	4
	.word	0
_Label_353:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_136_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_136_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1805:
	push	r0
	sub	r1,1,r1
	bne	_Label_1805
	mov	1660,r13		! source line 1660
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_355 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1665,r13		! source line 1665
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1666,r13		! source line 1666
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_356 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1667,r13		! source line 1667
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_360 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_359 = *_temp_360  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_359 == 0 then goto _Label_358		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_358
!	jmp	_Label_357
_Label_357:
! THEN...
	mov	1671,r13		! source line 1671
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_362 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_361 = *_temp_362  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_361) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_363
_Label_358:
! ELSE...
	mov	1673,r13		! source line 1673
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_364 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1673,r13		! source line 1673
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_363:
! SEND STATEMENT...
	mov	1675,r13		! source line 1675
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1681,r13		! source line 1681
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_136_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_365
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_366
	.word	8
	.word	4
	.word	_Label_367
	.word	-12
	.word	4
	.word	_Label_368
	.word	-16
	.word	4
	.word	_Label_369
	.word	-20
	.word	4
	.word	_Label_370
	.word	-24
	.word	4
	.word	_Label_371
	.word	-28
	.word	4
	.word	_Label_372
	.word	-32
	.word	4
	.word	_Label_373
	.word	-36
	.word	4
	.word	0
_Label_365:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_366:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1806:
	push	r0
	sub	r1,1,r1
	bne	_Label_1806
	mov	1686,r13		! source line 1686
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1707,r13		! source line 1707
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1807
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_374
_Label_1807:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_374
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_374
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_388,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_388:
	jmp	_Label_380	! 1:	
	jmp	_Label_387	! 2:	
	jmp	_Label_377	! 3:	
	jmp	_Label_376	! 4:	
	jmp	_Label_379	! 5:	
	jmp	_Label_378	! 6:	
	jmp	_Label_381	! 7:	
	jmp	_Label_382	! 8:	
	jmp	_Label_383	! 9:	
	jmp	_Label_384	! 10:	
	jmp	_Label_385	! 11:	
	jmp	_Label_386	! 12:	
! CASE 4...
_Label_376:
! RETURN STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0RE",r10
!   Call the function
	mov	1709,r13		! source line 1709
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_389  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_389  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_377:
! CALL STATEMENT...
!   Call the function
	mov	1711,r13		! source line 1711
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1712,r13		! source line 1712
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_378:
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1714,r13		! source line 1714
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_390  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_390  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_379:
! RETURN STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1716,r13		! source line 1716
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_391  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_391  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_380:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1718,r13		! source line 1718
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1719,r13		! source line 1719
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_381:
! RETURN STATEMENT...
	mov	1721,r13		! source line 1721
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1721,r13		! source line 1721
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_392  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_392  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_382:
! RETURN STATEMENT...
	mov	1723,r13		! source line 1723
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1723,r13		! source line 1723
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_393  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_393  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_383:
! RETURN STATEMENT...
	mov	1725,r13		! source line 1725
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1725,r13		! source line 1725
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_394  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_394  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_384:
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_395  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_395  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_385:
! RETURN STATEMENT...
	mov	1729,r13		! source line 1729
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1729,r13		! source line 1729
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_396  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_396  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_386:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1731,r13		! source line 1731
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1732,r13		! source line 1732
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_387:
! CALL STATEMENT...
!   Call the function
	mov	1734,r13		! source line 1734
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1735,r13		! source line 1735
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_374:
! CALL STATEMENT...
!   _temp_397 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1737,r13		! source line 1737
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1738,r13		! source line 1738
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_398 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1740,r13		! source line 1740
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_375:
! RETURN STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_399
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_400
	.word	8
	.word	4
	.word	_Label_401
	.word	12
	.word	4
	.word	_Label_402
	.word	16
	.word	4
	.word	_Label_403
	.word	20
	.word	4
	.word	_Label_404
	.word	24
	.word	4
	.word	_Label_405
	.word	-12
	.word	4
	.word	_Label_406
	.word	-16
	.word	4
	.word	_Label_407
	.word	-20
	.word	4
	.word	_Label_408
	.word	-24
	.word	4
	.word	_Label_409
	.word	-28
	.word	4
	.word	_Label_410
	.word	-32
	.word	4
	.word	_Label_411
	.word	-36
	.word	4
	.word	_Label_412
	.word	-40
	.word	4
	.word	_Label_413
	.word	-44
	.word	4
	.word	_Label_414
	.word	-48
	.word	4
	.word	0
_Label_399:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_400:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_401:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_402:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_403:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1747,r13		! source line 1747
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_415
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_416
	.word	8
	.word	4
	.word	0
_Label_415:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_416:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1753,r13		! source line 1753
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_417
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_417:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1759,r13		! source line 1759
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_418
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_418:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1765,r13		! source line 1765
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_419
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_419:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1772,r13		! source line 1772
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_420
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_421
	.word	8
	.word	4
	.word	0
_Label_420:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1779,r13		! source line 1779
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_422
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_423
	.word	8
	.word	4
	.word	0
_Label_422:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_423:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1786,r13		! source line 1786
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_424
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_425
	.word	8
	.word	4
	.word	0
_Label_424:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_425:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1793,r13		! source line 1793
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_426
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_427
	.word	8
	.word	4
	.word	0
_Label_426:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_427:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1800,r13		! source line 1800
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_428
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_429
	.word	8
	.word	4
	.word	_Label_430
	.word	12
	.word	4
	.word	_Label_431
	.word	16
	.word	4
	.word	0
_Label_428:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_429:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_430:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_431:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1807,r13		! source line 1807
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_432
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_433
	.word	8
	.word	4
	.word	_Label_434
	.word	12
	.word	4
	.word	_Label_435
	.word	16
	.word	4
	.word	0
_Label_432:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_433:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_434:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_435:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1814,r13		! source line 1814
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_436
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_437
	.word	8
	.word	4
	.word	_Label_438
	.word	12
	.word	4
	.word	0
_Label_436:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_437:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_438:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1821,r13		! source line 1821
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_439
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_440
	.word	8
	.word	4
	.word	0
_Label_439:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_440:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_441
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_441:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_442
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_442:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1808:
	push	r0
	sub	r1,1,r1
	bne	_Label_1808
	mov	234,r13		! source line 234
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_444		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_444
!	jmp	_Label_443
_Label_443:
! THEN...
	mov	236,r13		! source line 236
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_445 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_445  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	236,r13		! source line 236
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_444:
! ASSIGNMENT STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	239,r13		! source line 239
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
	mov	239,r13		! source line 239
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_447
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_448
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_449
	.word	12
	.word	4
	.word	_Label_450
	.word	-12
	.word	4
	.word	_Label_451
	.word	-16
	.word	4
	.word	0
_Label_447:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_448:
	.ascii	"Pself\0"
	.align
_Label_449:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1809:
	push	r0
	sub	r1,1,r1
	bne	_Label_1809
	mov	244,r13		! source line 244
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	248,r13		! source line 248
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_453		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_453
!	jmp	_Label_452
_Label_452:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_454 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_454  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	250,r13		! source line 250
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_453:
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
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
	mov	253,r13		! source line 253
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_456		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_456
!	jmp	_Label_455
_Label_455:
! THEN...
	mov	254,r13		! source line 254
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_457 = &waitingThreads
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
	mov	255,r13		! source line 255
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_458 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_458 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0SE",r10
!   _temp_459 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
_Label_456:
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	258,r13		! source line 258
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_460
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_461
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_462
	.word	-12
	.word	4
	.word	_Label_463
	.word	-16
	.word	4
	.word	_Label_464
	.word	-20
	.word	4
	.word	_Label_465
	.word	-24
	.word	4
	.word	_Label_466
	.word	-28
	.word	4
	.word	_Label_467
	.word	-32
	.word	4
	.word	0
_Label_460:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_461:
	.ascii	"Pself\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_466:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_467:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1810:
	push	r0
	sub	r1,1,r1
	bne	_Label_1810
	mov	263,r13		! source line 263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	266,r13		! source line 266
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_469		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_469
!	jmp	_Label_468
_Label_468:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_470 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_470  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	268,r13		! source line 268
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_469:
! ASSIGNMENT STATEMENT...
	mov	270,r13		! source line 270
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
	mov	271,r13		! source line 271
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_472		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_472
!	jmp	_Label_471
_Label_471:
! THEN...
	mov	272,r13		! source line 272
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
!   _temp_473 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	273,r13		! source line 273
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_472:
! ASSIGNMENT STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_474
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_476
	.word	-12
	.word	4
	.word	_Label_477
	.word	-16
	.word	4
	.word	_Label_478
	.word	-20
	.word	4
	.word	0
_Label_474:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_475:
	.ascii	"Pself\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_478:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_479
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_479:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_480
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_480:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1811:
	push	r0
	sub	r1,1,r1
	bne	_Label_1811
	mov	298,r13		! source line 298
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
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
	mov	299,r13		! source line 299
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_482
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_484
	.word	-12
	.word	4
	.word	0
_Label_482:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_483:
	.ascii	"Pself\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1812:
	push	r0
	sub	r1,1,r1
	bne	_Label_1812
	mov	304,r13		! source line 304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_486		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_486
!	jmp	_Label_485
_Label_485:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_487 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	308,r13		! source line 308
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_486:
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	310,r13		! source line 310
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_491		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_491
!   _temp_490 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_492
_Label_491:
!   _temp_490 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_492:
!   if _temp_490 then goto _Label_489 else goto _Label_488
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_488
	jmp	_Label_489
_Label_488:
! THEN...
	mov	312,r13		! source line 312
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_493
_Label_489:
! ELSE...
	mov	314,r13		! source line 314
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0SE",r10
!   _temp_494 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	315,r13		! source line 315
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_493:
! ASSIGNMENT STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	317,r13		! source line 317
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_495
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_496
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_497
	.word	-16
	.word	4
	.word	_Label_498
	.word	-9
	.word	1
	.word	_Label_499
	.word	-20
	.word	4
	.word	_Label_500
	.word	-24
	.word	4
	.word	0
_Label_495:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_496:
	.ascii	"Pself\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_498:
	.byte	'C'
	.ascii	"_temp_490\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_500:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1813:
	push	r0
	sub	r1,1,r1
	bne	_Label_1813
	mov	322,r13		! source line 322
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_502		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_502
!	jmp	_Label_501
_Label_501:
! THEN...
	mov	327,r13		! source line 327
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_503 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	327,r13		! source line 327
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_502:
! ASSIGNMENT STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	329,r13		! source line 329
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
	mov	330,r13		! source line 330
	mov	"\0\0SE",r10
!   _temp_504 = &waitingThreads
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
	mov	331,r13		! source line 331
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_506		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_506
!	jmp	_Label_505
_Label_505:
! THEN...
	mov	332,r13		! source line 332
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_507 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_507 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0SE",r10
!   _temp_508 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_509
_Label_506:
! ELSE...
	mov	336,r13		! source line 336
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_509:
! ASSIGNMENT STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	338,r13		! source line 338
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_510
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_511
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_512
	.word	-12
	.word	4
	.word	_Label_513
	.word	-16
	.word	4
	.word	_Label_514
	.word	-20
	.word	4
	.word	_Label_515
	.word	-24
	.word	4
	.word	_Label_516
	.word	-28
	.word	4
	.word	_Label_517
	.word	-32
	.word	4
	.word	0
_Label_510:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_511:
	.ascii	"Pself\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_516:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_517:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1814:
	push	r0
	sub	r1,1,r1
	bne	_Label_1814
	mov	343,r13		! source line 343
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_520		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_520
!	jmp	_Label_519
_Label_519:
!   _temp_518 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_521
_Label_520:
!   _temp_518 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_521:
!   ReturnResult: _temp_518  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_522
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_523
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_524
	.word	-9
	.word	1
	.word	0
_Label_522:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_523:
	.ascii	"Pself\0"
	.align
_Label_524:
	.byte	'C'
	.ascii	"_temp_518\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_525
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	jmp	_Method_P_Kernel_Condition_5	! 20:	Hoare_Signal
	.word	0
! 
! Class descriptor:
! 
_Label_525:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_526
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_526:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_1815:
	push	r0
	sub	r1,1,r1
	bne	_Label_1815
	mov	384,r13		! source line 384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	385,r13		! source line 385
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
	mov	385,r13		! source line 385
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_528
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_529
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_530
	.word	-12
	.word	4
	.word	0
_Label_528:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_529:
	.ascii	"Pself\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1816:
	push	r0
	sub	r1,1,r1
	bne	_Label_1816
	mov	390,r13		! source line 390
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0IF",r10
	mov	393,r13		! source line 393
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
!   Retrieve Result: targetName=_temp_533  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_533 then goto _Label_532 else goto _Label_531
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_531
	jmp	_Label_532
_Label_531:
! THEN...
	mov	394,r13		! source line 394
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_534 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_534  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	394,r13		! source line 394
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_532:
! ASSIGNMENT STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	397,r13		! source line 397
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
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
!   _temp_535 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	399,r13		! source line 399
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	400,r13		! source line 400
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
	mov	401,r13		! source line 401
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	401,r13		! source line 401
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_536
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_537
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_538
	.word	12
	.word	4
	.word	_Label_539
	.word	-16
	.word	4
	.word	_Label_540
	.word	-20
	.word	4
	.word	_Label_541
	.word	-9
	.word	1
	.word	_Label_542
	.word	-24
	.word	4
	.word	0
_Label_536:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_537:
	.ascii	"Pself\0"
	.align
_Label_538:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_541:
	.byte	'C'
	.ascii	"_temp_533\0"
	.align
_Label_542:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_1817:
	push	r0
	sub	r1,1,r1
	bne	_Label_1817
	mov	406,r13		! source line 406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0IF",r10
	mov	410,r13		! source line 410
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
!   Retrieve Result: targetName=_temp_545  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_545 then goto _Label_544 else goto _Label_543
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_543
	jmp	_Label_544
_Label_543:
! THEN...
	mov	411,r13		! source line 411
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_546 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_546  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	411,r13		! source line 411
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_544:
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	413,r13		! source line 413
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0AS",r10
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_547 = &waitingThreads
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
	mov	415,r13		! source line 415
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_549		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_549
!	jmp	_Label_548
_Label_548:
! THEN...
	mov	416,r13		! source line 416
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_550 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_550 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0SE",r10
!   _temp_551 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
_Label_549:
! ASSIGNMENT STATEMENT...
	mov	419,r13		! source line 419
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	419,r13		! source line 419
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	419,r13		! source line 419
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_552
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_553
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_554
	.word	12
	.word	4
	.word	_Label_555
	.word	-16
	.word	4
	.word	_Label_556
	.word	-20
	.word	4
	.word	_Label_557
	.word	-24
	.word	4
	.word	_Label_558
	.word	-28
	.word	4
	.word	_Label_559
	.word	-9
	.word	1
	.word	_Label_560
	.word	-32
	.word	4
	.word	_Label_561
	.word	-36
	.word	4
	.word	0
_Label_552:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_553:
	.ascii	"Pself\0"
	.align
_Label_554:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_559:
	.byte	'C'
	.ascii	"_temp_545\0"
	.align
_Label_560:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_561:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1818:
	push	r0
	sub	r1,1,r1
	bne	_Label_1818
	mov	424,r13		! source line 424
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0IF",r10
	mov	428,r13		! source line 428
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
!   Retrieve Result: targetName=_temp_564  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_564 then goto _Label_563 else goto _Label_562
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_562
	jmp	_Label_563
_Label_562:
! THEN...
	mov	429,r13		! source line 429
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_565 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_565  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	429,r13		! source line 429
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_563:
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0WH",r10
_Label_566:
!	jmp	_Label_567
_Label_567:
	mov	432,r13		! source line 432
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
	mov	433,r13		! source line 433
	mov	"\0\0SE",r10
!   _temp_569 = &waitingThreads
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
	mov	434,r13		! source line 434
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_570
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_570
	jmp	_Label_571
_Label_570:
! THEN...
	mov	435,r13		! source line 435
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0BR",r10
	jmp	_Label_568
! END IF...
_Label_571:
! ASSIGNMENT STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_572 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_572 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0SE",r10
!   _temp_573 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
	jmp	_Label_566
_Label_568:
! ASSIGNMENT STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	440,r13		! source line 440
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_574
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_575
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_576
	.word	12
	.word	4
	.word	_Label_577
	.word	-16
	.word	4
	.word	_Label_578
	.word	-20
	.word	4
	.word	_Label_579
	.word	-24
	.word	4
	.word	_Label_580
	.word	-28
	.word	4
	.word	_Label_581
	.word	-9
	.word	1
	.word	_Label_582
	.word	-32
	.word	4
	.word	_Label_583
	.word	-36
	.word	4
	.word	0
_Label_574:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_575:
	.ascii	"Pself\0"
	.align
_Label_576:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_581:
	.byte	'C'
	.ascii	"_temp_564\0"
	.align
_Label_582:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_583:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Hoare_Signal  ===============
! 
_Method_P_Kernel_Condition_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_5,r1
	push	r1
	mov	11,r1
_Label_1819:
	push	r0
	sub	r1,1,r1
	bne	_Label_1819
	mov	443,r13		! source line 443
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	449,r13		! source line 449
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! IF STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0IF",r10
	mov	450,r13		! source line 450
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
!   Retrieve Result: targetName=_temp_586  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_586 then goto _Label_585 else goto _Label_584
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_584
	jmp	_Label_585
_Label_584:
! THEN...
	mov	451,r13		! source line 451
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_587 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	451,r13		! source line 451
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_585:
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	453,r13		! source line 453
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
	mov	454,r13		! source line 454
	mov	"\0\0SE",r10
!   _temp_588 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Remove
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! IF STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_590		(int)
	load	[r14+-44],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_590
!	jmp	_Label_589
_Label_589:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_591 = t + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_591 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0SE",r10
!   _temp_592 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_590:
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_593 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_593 = t  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0SE",r10
!   _temp_594 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	463,r13		! source line 463
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_5:
	.word	_sourceFileName
	.word	_Label_595
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_596
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_597
	.word	12
	.word	4
	.word	_Label_598
	.word	-16
	.word	4
	.word	_Label_599
	.word	-20
	.word	4
	.word	_Label_600
	.word	-24
	.word	4
	.word	_Label_601
	.word	-28
	.word	4
	.word	_Label_602
	.word	-32
	.word	4
	.word	_Label_603
	.word	-36
	.word	4
	.word	_Label_604
	.word	-9
	.word	1
	.word	_Label_605
	.word	-40
	.word	4
	.word	_Label_606
	.word	-44
	.word	4
	.word	0
_Label_595:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Hoare_Signal\0"
	.align
_Label_596:
	.ascii	"Pself\0"
	.align
_Label_597:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_604:
	.byte	'C'
	.ascii	"_temp_586\0"
	.align
_Label_605:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_606:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_607
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_607:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_608
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_608:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1820:
	push	r0
	sub	r1,1,r1
	bne	_Label_1820
	mov	474,r13		! source line 474
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   _temp_609 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_609) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_609 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   _temp_610 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_610 [0 ] into _temp_611
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
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
	store	r2,[r14+-180]
!   Data Move: *_temp_611 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   _temp_612 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_612 [999 ] into _temp_613
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
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
	store	r2,[r14+-172]
!   Data Move: *_temp_613 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   _temp_614 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_614 [999 ] into _temp_615
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
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
	store	r2,[r14+-164]
!   stackTop = _temp_615		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   _temp_616 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_618 = &_temp_617
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_618 = _temp_618 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_620:
!   Data Move: *_temp_618 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_618 = _temp_618 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_619 = _temp_619 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_619) then goto _Label_620
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_620
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_621 = &_temp_617
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1821
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1821:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_616 = *_temp_621  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1822:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1822
! ASSIGNMENT STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   _temp_622 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_624 = &_temp_623
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_624 = _temp_624 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_626:
!   Data Move: *_temp_624 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_624 = _temp_624 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_625 = _temp_625 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_625) then goto _Label_626
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_626
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_627 = &_temp_623
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1823
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1823:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_622 = *_temp_627  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1824:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1824
! RETURN STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_628
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_630
	.word	12
	.word	4
	.word	_Label_631
	.word	-12
	.word	4
	.word	_Label_632
	.word	-16
	.word	4
	.word	_Label_633
	.word	-20
	.word	4
	.word	_Label_634
	.word	-84
	.word	64
	.word	_Label_635
	.word	-88
	.word	4
	.word	_Label_636
	.word	-92
	.word	4
	.word	_Label_637
	.word	-96
	.word	4
	.word	_Label_638
	.word	-100
	.word	4
	.word	_Label_639
	.word	-156
	.word	56
	.word	_Label_640
	.word	-160
	.word	4
	.word	_Label_641
	.word	-164
	.word	4
	.word	_Label_642
	.word	-168
	.word	4
	.word	_Label_643
	.word	-172
	.word	4
	.word	_Label_644
	.word	-176
	.word	4
	.word	_Label_645
	.word	-180
	.word	4
	.word	_Label_646
	.word	-184
	.word	4
	.word	_Label_647
	.word	-188
	.word	4
	.word	0
_Label_628:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_629:
	.ascii	"Pself\0"
	.align
_Label_630:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1825:
	push	r0
	sub	r1,1,r1
	bne	_Label_1825
	mov	493,r13		! source line 493
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	504,r13		! source line 504
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
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
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_648 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_648  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_650 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_649  sizeInBytes=4
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
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	512,r13		! source line 512
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_651
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_652
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_653
	.word	12
	.word	4
	.word	_Label_654
	.word	16
	.word	4
	.word	_Label_655
	.word	-12
	.word	4
	.word	_Label_656
	.word	-16
	.word	4
	.word	_Label_657
	.word	-20
	.word	4
	.word	_Label_658
	.word	-24
	.word	4
	.word	_Label_659
	.word	-28
	.word	4
	.word	0
_Label_651:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_652:
	.ascii	"Pself\0"
	.align
_Label_653:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_654:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_658:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_659:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1826:
	push	r0
	sub	r1,1,r1
	bne	_Label_1826
	mov	517,r13		! source line 517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_662 == _P_Kernel_currentThread then goto _Label_661		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_661
!	jmp	_Label_660
_Label_660:
! THEN...
	mov	534,r13		! source line 534
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_663 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	534,r13		! source line 534
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_661:
! ASSIGNMENT STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	536,r13		! source line 536
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0AS",r10
	mov	540,r13		! source line 540
	mov	"\0\0SE",r10
!   _temp_664 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
	mov	541,r13		! source line 541
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_666		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_666
!	jmp	_Label_665
_Label_665:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_668		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_668
!	jmp	_Label_667
_Label_667:
! THEN...
	mov	546,r13		! source line 546
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_669 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_669  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	546,r13		! source line 546
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_668:
! ASSIGNMENT STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_671 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_670  sizeInBytes=4
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
	mov	550,r13		! source line 550
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_666:
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	552,r13		! source line 552
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_672
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_673
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_674
	.word	-12
	.word	4
	.word	_Label_675
	.word	-16
	.word	4
	.word	_Label_676
	.word	-20
	.word	4
	.word	_Label_677
	.word	-24
	.word	4
	.word	_Label_678
	.word	-28
	.word	4
	.word	_Label_679
	.word	-32
	.word	4
	.word	_Label_680
	.word	-36
	.word	4
	.word	_Label_681
	.word	-40
	.word	4
	.word	_Label_682
	.word	-44
	.word	4
	.word	0
_Label_672:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_673:
	.ascii	"Pself\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_680:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_681:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_682:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1827:
	push	r0
	sub	r1,1,r1
	bne	_Label_1827
	mov	557,r13		! source line 557
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_684		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_684
!	jmp	_Label_683
_Label_683:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_685 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_685  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	570,r13		! source line 570
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_684:
! IF STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_688 == _P_Kernel_currentThread then goto _Label_687		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_687
!	jmp	_Label_686
_Label_686:
! THEN...
	mov	574,r13		! source line 574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_689 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	574,r13		! source line 574
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_687:
! ASSIGNMENT STATEMENT...
	mov	579,r13		! source line 579
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	580,r13		! source line 580
	mov	"\0\0AS",r10
	mov	580,r13		! source line 580
	mov	"\0\0SE",r10
!   _temp_690 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
	mov	581,r13		! source line 581
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_691
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_691
	jmp	_Label_692
_Label_691:
! THEN...
	mov	582,r13		! source line 582
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_693 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	582,r13		! source line 582
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_692:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_694
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_695
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_696
	.word	-12
	.word	4
	.word	_Label_697
	.word	-16
	.word	4
	.word	_Label_698
	.word	-20
	.word	4
	.word	_Label_699
	.word	-24
	.word	4
	.word	_Label_700
	.word	-28
	.word	4
	.word	_Label_701
	.word	-32
	.word	4
	.word	0
_Label_694:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_695:
	.ascii	"Pself\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_701:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1828:
	push	r0
	sub	r1,1,r1
	bne	_Label_1828
	mov	589,r13		! source line 589
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0IF",r10
!   _temp_705 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_705 [0 ] into _temp_706
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
!   Data Move: _temp_704 = *_temp_706  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_704 == 606348324 then goto _Label_703		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_703
!	jmp	_Label_702
_Label_702:
! THEN...
	mov	596,r13		! source line 596
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_707 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	596,r13		! source line 596
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_708
_Label_703:
! ELSE...
	mov	597,r13		! source line 597
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0IF",r10
!   _temp_712 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_712 [999 ] into _temp_713
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
!   Data Move: _temp_711 = *_temp_713  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_711 == 606348324 then goto _Label_710		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_710
!	jmp	_Label_709
_Label_709:
! THEN...
	mov	598,r13		! source line 598
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_714 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	598,r13		! source line 598
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_710:
! END IF...
_Label_708:
! RETURN STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_715
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_716
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_717
	.word	-12
	.word	4
	.word	_Label_718
	.word	-16
	.word	4
	.word	_Label_719
	.word	-20
	.word	4
	.word	_Label_720
	.word	-24
	.word	4
	.word	_Label_721
	.word	-28
	.word	4
	.word	_Label_722
	.word	-32
	.word	4
	.word	_Label_723
	.word	-36
	.word	4
	.word	_Label_724
	.word	-40
	.word	4
	.word	0
_Label_715:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_716:
	.ascii	"Pself\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1829:
	push	r0
	sub	r1,1,r1
	bne	_Label_1829
	mov	604,r13		! source line 604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_725 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_726 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_728 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_729 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_734 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_735 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_734  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_730:
!   Perform the FOR-LOOP termination test
!   if i > _temp_735 then goto _Label_733		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_733
_Label_731:
	mov	617,r13		! source line 617
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_736 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_737 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_738 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_740 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_740 [i ] into _temp_741
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
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
	store	r2,[r14+-140]
!   Data Move: _temp_739 = *_temp_741  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_742 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_744 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_744 [i ] into _temp_745
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
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
	store	r2,[r14+-124]
!   Data Move: _temp_743 = *_temp_745  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_746 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_746  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_732:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_730
! END FOR
_Label_733:
! CALL STATEMENT...
!   _temp_747 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-116]
!   _temp_748 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_747  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_748  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_749 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-108]
!   _temp_751 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_751 [0 ] into _temp_752
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
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
	store	r2,[r14+-96]
!   _temp_750 = _temp_752		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_750  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	628,r13		! source line 628
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_755
	cmp	r1,2
	be	_Label_756
	cmp	r1,3
	be	_Label_757
	cmp	r1,4
	be	_Label_758
	cmp	r1,5
	be	_Label_759
	jmp	_Label_753
! CASE 1...
_Label_755:
! CALL STATEMENT...
!   _temp_760 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_760  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	631,r13		! source line 631
	mov	"\0\0BR",r10
	jmp	_Label_754
! CASE 2...
_Label_756:
! CALL STATEMENT...
!   _temp_761 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_761  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0BR",r10
	jmp	_Label_754
! CASE 3...
_Label_757:
! CALL STATEMENT...
!   _temp_762 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_762  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	637,r13		! source line 637
	mov	"\0\0BR",r10
	jmp	_Label_754
! CASE 4...
_Label_758:
! CALL STATEMENT...
!   _temp_763 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_763  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0BR",r10
	jmp	_Label_754
! CASE 5...
_Label_759:
! CALL STATEMENT...
!   _temp_764 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0BR",r10
	jmp	_Label_754
! DEFAULT CASE...
_Label_753:
! CALL STATEMENT...
!   _temp_765 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_765  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	645,r13		! source line 645
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_754:
! CALL STATEMENT...
!   _temp_766 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_766  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_767 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_767  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_772 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_773 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_772  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_768:
!   Perform the FOR-LOOP termination test
!   if i > _temp_773 then goto _Label_771		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_771
_Label_769:
	mov	651,r13		! source line 651
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_774 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_774  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_775 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_775  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_776 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_776  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_778 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_778 [i ] into _temp_779
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
!   Data Move: _temp_777 = *_temp_779  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_777  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_780 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_782 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_782 [i ] into _temp_783
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
!   Data Move: _temp_781 = *_temp_783  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_781  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_784 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_784  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_770:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_768
! END FOR
_Label_771:
! ASSIGNMENT STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_785
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_786
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_787
	.word	-12
	.word	4
	.word	_Label_788
	.word	-16
	.word	4
	.word	_Label_789
	.word	-20
	.word	4
	.word	_Label_790
	.word	-24
	.word	4
	.word	_Label_791
	.word	-28
	.word	4
	.word	_Label_792
	.word	-32
	.word	4
	.word	_Label_793
	.word	-36
	.word	4
	.word	_Label_794
	.word	-40
	.word	4
	.word	_Label_795
	.word	-44
	.word	4
	.word	_Label_796
	.word	-48
	.word	4
	.word	_Label_797
	.word	-52
	.word	4
	.word	_Label_798
	.word	-56
	.word	4
	.word	_Label_799
	.word	-60
	.word	4
	.word	_Label_800
	.word	-64
	.word	4
	.word	_Label_801
	.word	-68
	.word	4
	.word	_Label_802
	.word	-72
	.word	4
	.word	_Label_803
	.word	-76
	.word	4
	.word	_Label_804
	.word	-80
	.word	4
	.word	_Label_805
	.word	-84
	.word	4
	.word	_Label_806
	.word	-88
	.word	4
	.word	_Label_807
	.word	-92
	.word	4
	.word	_Label_808
	.word	-96
	.word	4
	.word	_Label_809
	.word	-100
	.word	4
	.word	_Label_810
	.word	-104
	.word	4
	.word	_Label_811
	.word	-108
	.word	4
	.word	_Label_812
	.word	-112
	.word	4
	.word	_Label_813
	.word	-116
	.word	4
	.word	_Label_814
	.word	-120
	.word	4
	.word	_Label_815
	.word	-124
	.word	4
	.word	_Label_816
	.word	-128
	.word	4
	.word	_Label_817
	.word	-132
	.word	4
	.word	_Label_818
	.word	-136
	.word	4
	.word	_Label_819
	.word	-140
	.word	4
	.word	_Label_820
	.word	-144
	.word	4
	.word	_Label_821
	.word	-148
	.word	4
	.word	_Label_822
	.word	-152
	.word	4
	.word	_Label_823
	.word	-156
	.word	4
	.word	_Label_824
	.word	-160
	.word	4
	.word	_Label_825
	.word	-164
	.word	4
	.word	_Label_826
	.word	-168
	.word	4
	.word	_Label_827
	.word	-172
	.word	4
	.word	_Label_828
	.word	-176
	.word	4
	.word	_Label_829
	.word	-180
	.word	4
	.word	_Label_830
	.word	-184
	.word	4
	.word	_Label_831
	.word	-188
	.word	4
	.word	_Label_832
	.word	-192
	.word	4
	.word	_Label_833
	.word	-196
	.word	4
	.word	0
_Label_785:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_786:
	.ascii	"Pself\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_832:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_833:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_834
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_834:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_835
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_835:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11505,r1
_Label_1830:
	push	r0
	sub	r1,1,r1
	bne	_Label_1830
	mov	714,r13		! source line 714
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_836 = _StringConst_75
	set	_StringConst_75,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_836  sizeInBytes=4
	set	-46016,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	722,r13		! source line 722
	mov	"\0\0AS",r10
!   _temp_837 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_839 = &_temp_838
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-4364]
!   _temp_839 = _temp_839 + 4
	load	[r14+-4364],r1
	add	r1,4,r1
	store	r1,[r14+-4364]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_841 = zeros  (sizeInBytes=4164)
	add	r14,-4356,r4
	mov	1041,r3
_Label_1831:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1831
!   _temp_841 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4356]
	mov	10,r1
	store	r1,[r14+-4360]
_Label_843:
!   Data Move: *_temp_839 = _temp_841  (sizeInBytes=4164)
	add	r14,-4356,r5
	load	[r14+-4364],r4
	mov	1041,r3
_Label_1832:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1832
!   _temp_839 = _temp_839 + 4164
	load	[r14+-4364],r1
	add	r1,4164,r1
	store	r1,[r14+-4364]
!   _temp_840 = _temp_840 + -1
	load	[r14+-4360],r1
	add	r1,-1,r1
	store	r1,[r14+-4360]
!   if intNotZero (_temp_840) then goto _Label_843
	load	[r14+-4360],r1
	cmp	r1,r0
	bne	_Label_843
!   Initialize the array size...
	mov	10,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   _temp_844 = &_temp_838
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-188]
!   make sure array has size 10
	set	-46012,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1833
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1833:
!   make sure array has size 10
	load	[r14+-188],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_837 = *_temp_844  (sizeInBytes=41644)
	load	[r14+-188],r5
	set	-46012,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1834:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1834
! ASSIGNMENT STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	724,r13		! source line 724
	mov	"\0\0SE",r10
!   _temp_846 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-180]
!   _temp_847 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-176]
!   Move address of _temp_847 [i ] into _temp_848
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Prepare Argument: offset=12  value=_temp_846  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0SE",r10
!   _temp_849 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-168]
!   _temp_850 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Move address of _temp_850 [i ] into _temp_851
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-164],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-160]
!   Prepare Argument: offset=12  value=_temp_849  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0SE",r10
!   _temp_852 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-156]
!   _temp_853 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-152]
!   Move address of _temp_853 [i ] into _temp_854
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-148]
!   Prepare Argument: offset=12  value=_temp_852  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_855 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-144]
!   _temp_856 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-140]
!   Move address of _temp_856 [i ] into _temp_857
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   Prepare Argument: offset=12  value=_temp_855  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0SE",r10
!   _temp_858 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-132]
!   _temp_859 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Move address of _temp_859 [i ] into _temp_860
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Prepare Argument: offset=12  value=_temp_858  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-124],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0SE",r10
!   _temp_861 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-120]
!   _temp_862 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_862 [i ] into _temp_863
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   Prepare Argument: offset=12  value=_temp_861  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0SE",r10
!   _temp_864 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-108]
!   _temp_865 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Move address of _temp_865 [i ] into _temp_866
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_864  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0SE",r10
!   _temp_867 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-96]
!   _temp_868 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Move address of _temp_868 [i ] into _temp_869
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_867  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0SE",r10
!   _temp_870 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-84]
!   _temp_871 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Move address of _temp_871 [i ] into _temp_872
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_870  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	733,r13		! source line 733
	mov	"\0\0SE",r10
!   _temp_873 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-72]
!   _temp_874 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_874 [i ] into _temp_875
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_873  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_880 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_881 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_880  (sizeInBytes=4)
	load	[r14+-60],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_876:
!   Perform the FOR-LOOP termination test
!   if i > _temp_881 then goto _Label_879		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_879
_Label_877:
	mov	734,r13		! source line 734
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0AS",r10
!   _temp_882 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_882 [i ] into _temp_883
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   _temp_884 = _temp_883 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_884 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0SE",r10
!   _temp_886 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_886 [i ] into _temp_887
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_885 = _temp_887		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_888 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_885  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_878:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_876
! END FOR
_Label_879:
! ASSIGNMENT STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0SE",r10
!   _temp_890 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41676,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41676,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0SE",r10
!   _temp_892 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0RE",r10
	set	46024,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_893
	.word	4		! total size of parameters
	.word	46020		! frame size = 46020
	.word	_Label_894
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_895
	.word	-12
	.word	4
	.word	_Label_896
	.word	-16
	.word	4
	.word	_Label_897
	.word	-20
	.word	4
	.word	_Label_898
	.word	-24
	.word	4
	.word	_Label_899
	.word	-28
	.word	4
	.word	_Label_900
	.word	-32
	.word	4
	.word	_Label_901
	.word	-36
	.word	4
	.word	_Label_902
	.word	-40
	.word	4
	.word	_Label_903
	.word	-44
	.word	4
	.word	_Label_904
	.word	-48
	.word	4
	.word	_Label_905
	.word	-52
	.word	4
	.word	_Label_906
	.word	-56
	.word	4
	.word	_Label_907
	.word	-60
	.word	4
	.word	_Label_908
	.word	-64
	.word	4
	.word	_Label_909
	.word	-68
	.word	4
	.word	_Label_910
	.word	-72
	.word	4
	.word	_Label_911
	.word	-76
	.word	4
	.word	_Label_912
	.word	-80
	.word	4
	.word	_Label_913
	.word	-84
	.word	4
	.word	_Label_914
	.word	-88
	.word	4
	.word	_Label_915
	.word	-92
	.word	4
	.word	_Label_916
	.word	-96
	.word	4
	.word	_Label_917
	.word	-100
	.word	4
	.word	_Label_918
	.word	-104
	.word	4
	.word	_Label_919
	.word	-108
	.word	4
	.word	_Label_920
	.word	-112
	.word	4
	.word	_Label_921
	.word	-116
	.word	4
	.word	_Label_922
	.word	-120
	.word	4
	.word	_Label_923
	.word	-124
	.word	4
	.word	_Label_924
	.word	-128
	.word	4
	.word	_Label_925
	.word	-132
	.word	4
	.word	_Label_926
	.word	-136
	.word	4
	.word	_Label_927
	.word	-140
	.word	4
	.word	_Label_928
	.word	-144
	.word	4
	.word	_Label_929
	.word	-148
	.word	4
	.word	_Label_930
	.word	-152
	.word	4
	.word	_Label_931
	.word	-156
	.word	4
	.word	_Label_932
	.word	-160
	.word	4
	.word	_Label_933
	.word	-164
	.word	4
	.word	_Label_934
	.word	-168
	.word	4
	.word	_Label_935
	.word	-172
	.word	4
	.word	_Label_936
	.word	-176
	.word	4
	.word	_Label_937
	.word	-180
	.word	4
	.word	_Label_938
	.word	-184
	.word	4
	.word	_Label_939
	.word	-188
	.word	4
	.word	_Label_940
	.word	-192
	.word	4
	.word	_Label_941
	.word	-4356
	.word	4164
	.word	_Label_942
	.word	-4360
	.word	4
	.word	_Label_943
	.word	-4364
	.word	4
	.word	_Label_944
	.word	-46008
	.word	41644
	.word	_Label_945
	.word	-46012
	.word	4
	.word	_Label_946
	.word	-46016
	.word	4
	.word	_Label_947
	.word	-46020
	.word	4
	.word	0
_Label_893:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_894:
	.ascii	"Pself\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_947:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	12,r1
_Label_1835:
	push	r0
	sub	r1,1,r1
	bne	_Label_1835
	mov	748,r13		! source line 748
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	755,r13		! source line 755
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! CALL STATEMENT...
!   _temp_948 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_948  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	756,r13		! source line 756
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_953 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_954 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_953  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-44]
_Label_949:
!   Perform the FOR-LOOP termination test
!   if i > _temp_954 then goto _Label_952		
	load	[r14+-44],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_952
_Label_950:
	mov	757,r13		! source line 757
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_955 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_955  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	759,r13		! source line 759
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_956 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_956  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_951:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_949
! END FOR
_Label_952:
! CALL STATEMENT...
!   _temp_957 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_957  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_958 = _function_137_PrintObjectAddr
	set	_function_137_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_959 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_958  sizeInBytes=4
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
! CALL STATEMENT...
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! RETURN STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_960
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_961
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_962
	.word	-12
	.word	4
	.word	_Label_963
	.word	-16
	.word	4
	.word	_Label_964
	.word	-20
	.word	4
	.word	_Label_965
	.word	-24
	.word	4
	.word	_Label_966
	.word	-28
	.word	4
	.word	_Label_967
	.word	-32
	.word	4
	.word	_Label_968
	.word	-36
	.word	4
	.word	_Label_969
	.word	-40
	.word	4
	.word	_Label_970
	.word	-44
	.word	4
	.word	_Label_971
	.word	-48
	.word	4
	.word	0
_Label_960:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_961:
	.ascii	"Pself\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_970:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_971:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	11,r1
_Label_1836:
	push	r0
	sub	r1,1,r1
	bne	_Label_1836
	mov	771,r13		! source line 771
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0SE",r10
!   _temp_972 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0AS",r10
!   newThread = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0WH",r10
_Label_973:
	mov	786,r13		! source line 786
	mov	"\0\0SE",r10
!   _temp_976 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_974 else goto _Label_975
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_975
	jmp	_Label_974
_Label_974:
	mov	786,r13		! source line 786
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_977 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_978 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_977  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_973
_Label_975:
! ASSIGNMENT STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0AS",r10
	mov	790,r13		! source line 790
	mov	"\0\0SE",r10
!   _temp_979 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_980 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_980  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_981 = newThread + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_981 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_982 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0RE",r10
!   ReturnResult: newThread  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_983
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_984
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_985
	.word	-12
	.word	4
	.word	_Label_986
	.word	-16
	.word	4
	.word	_Label_987
	.word	-20
	.word	4
	.word	_Label_988
	.word	-24
	.word	4
	.word	_Label_989
	.word	-28
	.word	4
	.word	_Label_990
	.word	-32
	.word	4
	.word	_Label_991
	.word	-36
	.word	4
	.word	_Label_992
	.word	-40
	.word	4
	.word	_Label_993
	.word	-44
	.word	4
	.word	0
_Label_983:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_984:
	.ascii	"Pself\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_993:
	.byte	'P'
	.ascii	"newThread\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_1837:
	push	r0
	sub	r1,1,r1
	bne	_Label_1837
	mov	799,r13		! source line 799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_994 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_995 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_995 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0SE",r10
!   _temp_996 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0SE",r10
!   _temp_997 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_998 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_997  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0SE",r10
!   _temp_999 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1000
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1001
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1002
	.word	12
	.word	4
	.word	_Label_1003
	.word	-12
	.word	4
	.word	_Label_1004
	.word	-16
	.word	4
	.word	_Label_1005
	.word	-20
	.word	4
	.word	_Label_1006
	.word	-24
	.word	4
	.word	_Label_1007
	.word	-28
	.word	4
	.word	_Label_1008
	.word	-32
	.word	4
	.word	0
_Label_1000:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1001:
	.ascii	"Pself\0"
	.align
_Label_1002:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1009
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1009:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1010
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1010:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1838:
	push	r0
	sub	r1,1,r1
	bne	_Label_1838
	mov	825,r13		! source line 825
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1839:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1839
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
!   _temp_1012 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1013
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1014
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1015
	.word	-12
	.word	4
	.word	_Label_1016
	.word	-16
	.word	4
	.word	0
_Label_1013:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1014:
	.ascii	"Pself\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_1840:
	push	r0
	sub	r1,1,r1
	bne	_Label_1840
	mov	839,r13		! source line 839
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1017) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	845,r13		! source line 845
	mov	"\0\0SE",r10
!   _temp_1018 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1019 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1019  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	847,r13		! source line 847
	mov	"\0\0CA",r10
	call	_function_138_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1020
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1021
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1022
	.word	-12
	.word	4
	.word	_Label_1023
	.word	-16
	.word	4
	.word	_Label_1024
	.word	-20
	.word	4
	.word	0
_Label_1020:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1021:
	.ascii	"Pself\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1841:
	push	r0
	sub	r1,1,r1
	bne	_Label_1841
	mov	862,r13		! source line 862
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1025 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1027 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1028 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1028  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1030		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1030
!	jmp	_Label_1029
_Label_1029:
! THEN...
	mov	872,r13		! source line 872
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1031 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	872,r13		! source line 872
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1032
_Label_1030:
! ELSE...
	mov	873,r13		! source line 873
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1034		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1034
!	jmp	_Label_1033
_Label_1033:
! THEN...
	mov	874,r13		! source line 874
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1035 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1035  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1036
_Label_1034:
! ELSE...
	mov	875,r13		! source line 875
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1038		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1038
!	jmp	_Label_1037
_Label_1037:
! THEN...
	mov	876,r13		! source line 876
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1039 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1039  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1040
_Label_1038:
! ELSE...
	mov	878,r13		! source line 878
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1041 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	878,r13		! source line 878
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1040:
! END IF...
_Label_1036:
! END IF...
_Label_1032:
! CALL STATEMENT...
!   _temp_1042 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1043 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1043  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	884,r13		! source line 884
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1044
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1045
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1046
	.word	-12
	.word	4
	.word	_Label_1047
	.word	-16
	.word	4
	.word	_Label_1048
	.word	-20
	.word	4
	.word	_Label_1049
	.word	-24
	.word	4
	.word	_Label_1050
	.word	-28
	.word	4
	.word	_Label_1051
	.word	-32
	.word	4
	.word	_Label_1052
	.word	-36
	.word	4
	.word	_Label_1053
	.word	-40
	.word	4
	.word	_Label_1054
	.word	-44
	.word	4
	.word	_Label_1055
	.word	-48
	.word	4
	.word	0
_Label_1044:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1045:
	.ascii	"Pself\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1056
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1056:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1057
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1057:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	365,r1
_Label_1842:
	push	r0
	sub	r1,1,r1
	bne	_Label_1842
	mov	895,r13		! source line 895
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0AS",r10
!   _temp_1058 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1456]
!   NEW ARRAY Constructor...
!   _temp_1060 = &_temp_1059
	add	r14,-1452,r1
	store	r1,[r14+-208]
!   _temp_1060 = _temp_1060 + 4
	load	[r14+-208],r1
	add	r1,4,r1
	store	r1,[r14+-208]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1062 = zeros  (sizeInBytes=124)
	add	r14,-200,r4
	mov	31,r3
_Label_1843:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1843
!   _temp_1062 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-200]
	mov	10,r1
	store	r1,[r14+-204]
_Label_1064:
!   Data Move: *_temp_1060 = _temp_1062  (sizeInBytes=124)
	add	r14,-200,r5
	load	[r14+-208],r4
	mov	31,r3
_Label_1844:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1844
!   _temp_1060 = _temp_1060 + 124
	load	[r14+-208],r1
	add	r1,124,r1
	store	r1,[r14+-208]
!   _temp_1061 = _temp_1061 + -1
	load	[r14+-204],r1
	add	r1,-1,r1
	store	r1,[r14+-204]
!   if intNotZero (_temp_1061) then goto _Label_1064
	load	[r14+-204],r1
	cmp	r1,r0
	bne	_Label_1064
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1452]
!   _temp_1065 = &_temp_1059
	add	r14,-1452,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1845
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1845:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1058 = *_temp_1065  (sizeInBytes=1244)
	load	[r14+-72],r5
	load	[r14+-1456],r4
	mov	311,r3
_Label_1846:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1846
! ASSIGNMENT STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! FOR STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1071 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1072 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1071  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1460]
_Label_1067:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1072 then goto _Label_1070		
	load	[r14+-1460],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1070
_Label_1068:
	mov	905,r13		! source line 905
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1073 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1073 [i ] into _temp_1074
!     make sure index expr is >= 0
	load	[r14+-1460],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0SE",r10
!   _temp_1076 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1076 [i ] into _temp_1077
!     make sure index expr is >= 0
	load	[r14+-1460],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1075 = _temp_1077		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1078 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1075  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1069:
!   i = i + 1
	load	[r14+-1460],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1460]
	jmp	_Label_1067
! END FOR
_Label_1070:
! ASSIGNMENT STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0SE",r10
!   _temp_1080 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_1082 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0SE",r10
!   _temp_1084 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0RE",r10
	add	r15,1464,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1085
	.word	4		! total size of parameters
	.word	1460		! frame size = 1460
	.word	_Label_1086
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1087
	.word	-12
	.word	4
	.word	_Label_1088
	.word	-16
	.word	4
	.word	_Label_1089
	.word	-20
	.word	4
	.word	_Label_1090
	.word	-24
	.word	4
	.word	_Label_1091
	.word	-28
	.word	4
	.word	_Label_1092
	.word	-32
	.word	4
	.word	_Label_1093
	.word	-36
	.word	4
	.word	_Label_1094
	.word	-40
	.word	4
	.word	_Label_1095
	.word	-44
	.word	4
	.word	_Label_1096
	.word	-48
	.word	4
	.word	_Label_1097
	.word	-52
	.word	4
	.word	_Label_1098
	.word	-56
	.word	4
	.word	_Label_1099
	.word	-60
	.word	4
	.word	_Label_1100
	.word	-64
	.word	4
	.word	_Label_1101
	.word	-68
	.word	4
	.word	_Label_1102
	.word	-72
	.word	4
	.word	_Label_1103
	.word	-76
	.word	4
	.word	_Label_1104
	.word	-200
	.word	124
	.word	_Label_1105
	.word	-204
	.word	4
	.word	_Label_1106
	.word	-208
	.word	4
	.word	_Label_1107
	.word	-1452
	.word	1244
	.word	_Label_1108
	.word	-1456
	.word	4
	.word	_Label_1109
	.word	-1460
	.word	4
	.word	0
_Label_1085:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1086:
	.ascii	"Pself\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1109:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1847:
	push	r0
	sub	r1,1,r1
	bne	_Label_1847
	mov	920,r13		! source line 920
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1110 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1115 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1116 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1115  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1111:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1116 then goto _Label_1114		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1114
_Label_1112:
	mov	929,r13		! source line 929
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1117 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1117  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1118 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1118  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0SE",r10
!   _temp_1119 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1119 [i ] into _temp_1120
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1113:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1111
! END FOR
_Label_1114:
! CALL STATEMENT...
!   _temp_1121 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1121  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
!   _temp_1122 = _function_137_PrintObjectAddr
	set	_function_137_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1123 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1122  sizeInBytes=4
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
! CALL STATEMENT...
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1124
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1125
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1126
	.word	-12
	.word	4
	.word	_Label_1127
	.word	-16
	.word	4
	.word	_Label_1128
	.word	-20
	.word	4
	.word	_Label_1129
	.word	-24
	.word	4
	.word	_Label_1130
	.word	-28
	.word	4
	.word	_Label_1131
	.word	-32
	.word	4
	.word	_Label_1132
	.word	-36
	.word	4
	.word	_Label_1133
	.word	-40
	.word	4
	.word	_Label_1134
	.word	-44
	.word	4
	.word	_Label_1135
	.word	-48
	.word	4
	.word	_Label_1136
	.word	-52
	.word	4
	.word	_Label_1137
	.word	-56
	.word	4
	.word	0
_Label_1124:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1125:
	.ascii	"Pself\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1136:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1137:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1848:
	push	r0
	sub	r1,1,r1
	bne	_Label_1848
	mov	943,r13		! source line 943
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1138 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1143 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1144 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1143  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1139:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1144 then goto _Label_1142		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1142
_Label_1140:
	mov	952,r13		! source line 952
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1145 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1145  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	954,r13		! source line 954
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0SE",r10
!   _temp_1146 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1146 [i ] into _temp_1147
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1141:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1139
! END FOR
_Label_1142:
! CALL STATEMENT...
!   _temp_1148 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1148  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	957,r13		! source line 957
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_1149 = _function_137_PrintObjectAddr
	set	_function_137_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1150 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1149  sizeInBytes=4
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
! CALL STATEMENT...
!   Call the function
	mov	959,r13		! source line 959
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	960,r13		! source line 960
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1151
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1152
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1153
	.word	-12
	.word	4
	.word	_Label_1154
	.word	-16
	.word	4
	.word	_Label_1155
	.word	-20
	.word	4
	.word	_Label_1156
	.word	-24
	.word	4
	.word	_Label_1157
	.word	-28
	.word	4
	.word	_Label_1158
	.word	-32
	.word	4
	.word	_Label_1159
	.word	-36
	.word	4
	.word	_Label_1160
	.word	-40
	.word	4
	.word	_Label_1161
	.word	-44
	.word	4
	.word	_Label_1162
	.word	-48
	.word	4
	.word	_Label_1163
	.word	-52
	.word	4
	.word	0
_Label_1151:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1152:
	.ascii	"Pself\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1162:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1163:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_1849:
	push	r0
	sub	r1,1,r1
	bne	_Label_1849
	mov	965,r13		! source line 965
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_1164 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0WH",r10
_Label_1165:
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_1168 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1166 else goto _Label_1167
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1167
	jmp	_Label_1166
_Label_1166:
	mov	976,r13		! source line 976
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_1169 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1170 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1169  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1165
_Label_1167:
! ASSIGNMENT STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0AS",r10
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1171 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1172 = p + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1172 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1173 = p + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1173 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_1174 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0RE",r10
!   ReturnResult: p  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1175
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1176
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1177
	.word	-12
	.word	4
	.word	_Label_1178
	.word	-16
	.word	4
	.word	_Label_1179
	.word	-20
	.word	4
	.word	_Label_1180
	.word	-24
	.word	4
	.word	_Label_1181
	.word	-28
	.word	4
	.word	_Label_1182
	.word	-32
	.word	4
	.word	_Label_1183
	.word	-36
	.word	4
	.word	_Label_1184
	.word	-40
	.word	4
	.word	_Label_1185
	.word	-44
	.word	4
	.word	0
_Label_1175:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1176:
	.ascii	"Pself\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1185:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	10,r1
_Label_1850:
	push	r0
	sub	r1,1,r1
	bne	_Label_1850
	mov	989,r13		! source line 989
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0SE",r10
!   _temp_1186 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1187 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1187 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0SE",r10
!   _temp_1188 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1189 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1189  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	999,r13		! source line 999
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1190) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0SE",r10
!   _temp_1191 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1192 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1191  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_1193 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1194
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1195
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1196
	.word	12
	.word	4
	.word	_Label_1197
	.word	-12
	.word	4
	.word	_Label_1198
	.word	-16
	.word	4
	.word	_Label_1199
	.word	-20
	.word	4
	.word	_Label_1200
	.word	-24
	.word	4
	.word	_Label_1201
	.word	-28
	.word	4
	.word	_Label_1202
	.word	-32
	.word	4
	.word	_Label_1203
	.word	-36
	.word	4
	.word	_Label_1204
	.word	-40
	.word	4
	.word	0
_Label_1194:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1195:
	.ascii	"Pself\0"
	.align
_Label_1196:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1205
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1205:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1206
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1206:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_1851:
	push	r0
	sub	r1,1,r1
	bne	_Label_1851
	mov	1035,r13		! source line 1035
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1207 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1207  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1041,r13		! source line 1041
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0SE",r10
!   _temp_1209 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0SE",r10
!   _temp_1211 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0SE",r10
!   _temp_1213 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1218 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1219 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1218  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1214:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1219 then goto _Label_1217		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1217
_Label_1215:
	mov	1054,r13		! source line 1054
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1222 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1222) then goto _Label_1221
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1221
!	jmp	_Label_1220
_Label_1220:
! THEN...
	mov	1058,r13		! source line 1058
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1223 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1223  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1058,r13		! source line 1058
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1221:
!   Increment the FOR-LOOP index variable and jump back
_Label_1216:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1214
! END FOR
_Label_1217:
! RETURN STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1224
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1225
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1226
	.word	-12
	.word	4
	.word	_Label_1227
	.word	-16
	.word	4
	.word	_Label_1228
	.word	-20
	.word	4
	.word	_Label_1229
	.word	-24
	.word	4
	.word	_Label_1230
	.word	-28
	.word	4
	.word	_Label_1231
	.word	-32
	.word	4
	.word	_Label_1232
	.word	-36
	.word	4
	.word	_Label_1233
	.word	-40
	.word	4
	.word	_Label_1234
	.word	-44
	.word	4
	.word	_Label_1235
	.word	-48
	.word	4
	.word	_Label_1236
	.word	-52
	.word	4
	.word	_Label_1237
	.word	-56
	.word	4
	.word	0
_Label_1224:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1225:
	.ascii	"Pself\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1237:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1852:
	push	r0
	sub	r1,1,r1
	bne	_Label_1852
	mov	1065,r13		! source line 1065
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0SE",r10
!   _temp_1238 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1239 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1239  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1070,r13		! source line 1070
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1240 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1240  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1071,r13		! source line 1071
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1241 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1241  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1072,r13		! source line 1072
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   _temp_1242 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0SE",r10
!   _temp_1243 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1244
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1245
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1246
	.word	-12
	.word	4
	.word	_Label_1247
	.word	-16
	.word	4
	.word	_Label_1248
	.word	-20
	.word	4
	.word	_Label_1249
	.word	-24
	.word	4
	.word	_Label_1250
	.word	-28
	.word	4
	.word	_Label_1251
	.word	-32
	.word	4
	.word	0
_Label_1244:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1245:
	.ascii	"Pself\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_1853:
	push	r0
	sub	r1,1,r1
	bne	_Label_1853
	mov	1079,r13		! source line 1079
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0SE",r10
!   _temp_1252 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0WH",r10
_Label_1253:
!   if numberFreeFrames >= 1 then goto _Label_1255		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1255
!	jmp	_Label_1254
_Label_1254:
	mov	1090,r13		! source line 1090
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0SE",r10
!   _temp_1256 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1257 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1256  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1253
_Label_1255:
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0AS",r10
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1258 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   _temp_1259 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0AS",r10
!   _temp_1260 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1260		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1261
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1262
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1263
	.word	-12
	.word	4
	.word	_Label_1264
	.word	-16
	.word	4
	.word	_Label_1265
	.word	-20
	.word	4
	.word	_Label_1266
	.word	-24
	.word	4
	.word	_Label_1267
	.word	-28
	.word	4
	.word	_Label_1268
	.word	-32
	.word	4
	.word	_Label_1269
	.word	-36
	.word	4
	.word	_Label_1270
	.word	-40
	.word	4
	.word	0
_Label_1261:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1262:
	.ascii	"Pself\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1269:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1270:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_1854:
	push	r0
	sub	r1,1,r1
	bne	_Label_1854
	mov	1109,r13		! source line 1109
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1118,r13		! source line 1118
	mov	"\0\0SE",r10
!   _temp_1271 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0WH",r10
_Label_1272:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1274		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1274
!	jmp	_Label_1273
_Label_1273:
	mov	1120,r13		! source line 1120
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0SE",r10
!   _temp_1275 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1276 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1275  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1272
_Label_1274:
! FOR STATEMENT...
	mov	1123,r13		! source line 1123
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1281 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1282 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1281  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1277:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1282 then goto _Label_1280		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1280
_Label_1278:
	mov	1123,r13		! source line 1123
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0AS",r10
	mov	1126,r13		! source line 1126
	mov	"\0\0SE",r10
!   _temp_1283 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=bit_num  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0AS",r10
!   _temp_1284 = bit_num * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   free_frame = 1048576 + _temp_1284		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=free_frame  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1279:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1277
! END FOR
_Label_1280:
! ASSIGNMENT STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1285 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1285 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_1286 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1287
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1288
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1289
	.word	12
	.word	4
	.word	_Label_1290
	.word	16
	.word	4
	.word	_Label_1291
	.word	-12
	.word	4
	.word	_Label_1292
	.word	-16
	.word	4
	.word	_Label_1293
	.word	-20
	.word	4
	.word	_Label_1294
	.word	-24
	.word	4
	.word	_Label_1295
	.word	-28
	.word	4
	.word	_Label_1296
	.word	-32
	.word	4
	.word	_Label_1297
	.word	-36
	.word	4
	.word	_Label_1298
	.word	-40
	.word	4
	.word	_Label_1299
	.word	-44
	.word	4
	.word	_Label_1300
	.word	-48
	.word	4
	.word	_Label_1301
	.word	-52
	.word	4
	.word	_Label_1302
	.word	-56
	.word	4
	.word	0
_Label_1287:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1288:
	.ascii	"Pself\0"
	.align
_Label_1289:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1290:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1300:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1301:
	.byte	'I'
	.ascii	"bit_num\0"
	.align
_Label_1302:
	.byte	'I'
	.ascii	"free_frame\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	15,r1
_Label_1855:
	push	r0
	sub	r1,1,r1
	bne	_Label_1855
	mov	1140,r13		! source line 1140
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1303 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: numFramesReturned = *_temp_1303  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_1304 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1309 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1310 = numFramesReturned - 1		(int)
	load	[r14+-52],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1309  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_1305:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1310 then goto _Label_1308		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1308
_Label_1306:
	mov	1152,r13		! source line 1152
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0AS",r10
	mov	1153,r13		! source line 1153
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0AS",r10
!   _temp_1311 = frameAddr - 1048576		(int)
	load	[r14+-56],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bit_num = _temp_1311 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_1312 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=bit_num  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1307:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1305
! END FOR
_Label_1308:
! ASSIGNMENT STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + numFramesReturned		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-52],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1313 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1314 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1313  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0SE",r10
!   _temp_1315 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1316
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1317
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1318
	.word	12
	.word	4
	.word	_Label_1319
	.word	-12
	.word	4
	.word	_Label_1320
	.word	-16
	.word	4
	.word	_Label_1321
	.word	-20
	.word	4
	.word	_Label_1322
	.word	-24
	.word	4
	.word	_Label_1323
	.word	-28
	.word	4
	.word	_Label_1324
	.word	-32
	.word	4
	.word	_Label_1325
	.word	-36
	.word	4
	.word	_Label_1326
	.word	-40
	.word	4
	.word	_Label_1327
	.word	-44
	.word	4
	.word	_Label_1328
	.word	-48
	.word	4
	.word	_Label_1329
	.word	-52
	.word	4
	.word	_Label_1330
	.word	-56
	.word	4
	.word	_Label_1331
	.word	-60
	.word	4
	.word	0
_Label_1316:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1317:
	.ascii	"Pself\0"
	.align
_Label_1318:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1328:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1329:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_1330:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1331:
	.byte	'I'
	.ascii	"bit_num\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1332
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1332:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1333
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1333:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1856:
	push	r0
	sub	r1,1,r1
	bne	_Label_1856
	mov	1170,r13		! source line 1170
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1174,r13		! source line 1174
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0AS",r10
!   _temp_1334 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1336 = &_temp_1335
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1336 = _temp_1336 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1338:
!   Data Move: *_temp_1336 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1336 = _temp_1336 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1337 = _temp_1337 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1337) then goto _Label_1338
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1338
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1339 = &_temp_1335
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1857
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1857:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1334 = *_temp_1339  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1858:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1858
! RETURN STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1340
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1341
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1342
	.word	-12
	.word	4
	.word	_Label_1343
	.word	-16
	.word	4
	.word	_Label_1344
	.word	-20
	.word	4
	.word	_Label_1345
	.word	-104
	.word	84
	.word	_Label_1346
	.word	-108
	.word	4
	.word	0
_Label_1340:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1341:
	.ascii	"Pself\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1859:
	push	r0
	sub	r1,1,r1
	bne	_Label_1859
	mov	1180,r13		! source line 1180
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1347 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1347  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1185,r13		! source line 1185
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1348 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1348  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1186,r13		! source line 1186
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1353 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1354 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1353  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1349:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1354 then goto _Label_1352		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1352
_Label_1350:
	mov	1187,r13		! source line 1187
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1355 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1355  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1357 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1357 [i ] into _temp_1358
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   _temp_1356 = _temp_1358		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1356  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1189,r13		! source line 1189
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1359 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1359  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1190,r13		! source line 1190
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1361 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1361 [i ] into _temp_1362
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
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
	store	r2,[r14+-120]
!   Data Move: _temp_1360 = *_temp_1362  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1360  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1191,r13		! source line 1191
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1363 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1363  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1364 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1364  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1193,r13		! source line 1193
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1365 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1365  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1194,r13		! source line 1194
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1367) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1366  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1366  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1195,r13		! source line 1195
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1368 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1368  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1196,r13		! source line 1196
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0IF",r10
	mov	1197,r13		! source line 1197
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1372) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1371  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1371) then goto _Label_1370
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1370
!	jmp	_Label_1369
_Label_1369:
! THEN...
	mov	1198,r13		! source line 1198
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1374) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1373  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1373  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1198,r13		! source line 1198
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1375
_Label_1370:
! ELSE...
	mov	1200,r13		! source line 1200
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1376 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1376  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1200,r13		! source line 1200
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1375:
! CALL STATEMENT...
!   _temp_1377 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1377  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1202,r13		! source line 1202
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0IF",r10
	mov	1203,r13		! source line 1203
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1380) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1378 else goto _Label_1379
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1379
	jmp	_Label_1378
_Label_1378:
! THEN...
	mov	1204,r13		! source line 1204
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1381 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1381  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1204,r13		! source line 1204
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1382
_Label_1379:
! ELSE...
	mov	1206,r13		! source line 1206
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1383 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1383  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1206,r13		! source line 1206
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1382:
! CALL STATEMENT...
!   _temp_1384 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1384  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1208,r13		! source line 1208
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0IF",r10
	mov	1209,r13		! source line 1209
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1387) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1385 else goto _Label_1386
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1386
	jmp	_Label_1385
_Label_1385:
! THEN...
	mov	1210,r13		! source line 1210
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1388 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1388  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1210,r13		! source line 1210
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1389
_Label_1386:
! ELSE...
	mov	1212,r13		! source line 1212
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1390 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1390  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1212,r13		! source line 1212
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1389:
! CALL STATEMENT...
!   _temp_1391 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1391  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1214,r13		! source line 1214
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0IF",r10
	mov	1215,r13		! source line 1215
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1394) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1392 else goto _Label_1393
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1393
	jmp	_Label_1392
_Label_1392:
! THEN...
	mov	1216,r13		! source line 1216
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1395 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1395  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1216,r13		! source line 1216
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1396
_Label_1393:
! ELSE...
	mov	1218,r13		! source line 1218
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1397 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1397  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1396:
! CALL STATEMENT...
!   _temp_1398 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1398  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0IF",r10
	mov	1221,r13		! source line 1221
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1401) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1399 else goto _Label_1400
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1400
	jmp	_Label_1399
_Label_1399:
! THEN...
	mov	1222,r13		! source line 1222
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1402 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1402  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1403
_Label_1400:
! ELSE...
	mov	1224,r13		! source line 1224
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1404 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1404  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1403:
! CALL STATEMENT...
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1351:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1349
! END FOR
_Label_1352:
! RETURN STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1405
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1406
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1407
	.word	-12
	.word	4
	.word	_Label_1408
	.word	-16
	.word	4
	.word	_Label_1409
	.word	-20
	.word	4
	.word	_Label_1410
	.word	-24
	.word	4
	.word	_Label_1411
	.word	-28
	.word	4
	.word	_Label_1412
	.word	-32
	.word	4
	.word	_Label_1413
	.word	-36
	.word	4
	.word	_Label_1414
	.word	-40
	.word	4
	.word	_Label_1415
	.word	-44
	.word	4
	.word	_Label_1416
	.word	-48
	.word	4
	.word	_Label_1417
	.word	-52
	.word	4
	.word	_Label_1418
	.word	-56
	.word	4
	.word	_Label_1419
	.word	-60
	.word	4
	.word	_Label_1420
	.word	-64
	.word	4
	.word	_Label_1421
	.word	-68
	.word	4
	.word	_Label_1422
	.word	-72
	.word	4
	.word	_Label_1423
	.word	-76
	.word	4
	.word	_Label_1424
	.word	-80
	.word	4
	.word	_Label_1425
	.word	-84
	.word	4
	.word	_Label_1426
	.word	-88
	.word	4
	.word	_Label_1427
	.word	-92
	.word	4
	.word	_Label_1428
	.word	-96
	.word	4
	.word	_Label_1429
	.word	-100
	.word	4
	.word	_Label_1430
	.word	-104
	.word	4
	.word	_Label_1431
	.word	-108
	.word	4
	.word	_Label_1432
	.word	-112
	.word	4
	.word	_Label_1433
	.word	-116
	.word	4
	.word	_Label_1434
	.word	-120
	.word	4
	.word	_Label_1435
	.word	-124
	.word	4
	.word	_Label_1436
	.word	-128
	.word	4
	.word	_Label_1437
	.word	-132
	.word	4
	.word	_Label_1438
	.word	-136
	.word	4
	.word	_Label_1439
	.word	-140
	.word	4
	.word	_Label_1440
	.word	-144
	.word	4
	.word	_Label_1441
	.word	-148
	.word	4
	.word	_Label_1442
	.word	-152
	.word	4
	.word	_Label_1443
	.word	-156
	.word	4
	.word	_Label_1444
	.word	-160
	.word	4
	.word	_Label_1445
	.word	-164
	.word	4
	.word	_Label_1446
	.word	-168
	.word	4
	.word	0
_Label_1405:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1406:
	.ascii	"Pself\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1446:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1860:
	push	r0
	sub	r1,1,r1
	bne	_Label_1860
	mov	1232,r13		! source line 1232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0RE",r10
!   _temp_1449 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1449 [entry ] into _temp_1450
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1448 = *_temp_1450  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1447 = _temp_1448 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1447  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1451
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1452
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1453
	.word	12
	.word	4
	.word	_Label_1454
	.word	-12
	.word	4
	.word	_Label_1455
	.word	-16
	.word	4
	.word	_Label_1456
	.word	-20
	.word	4
	.word	_Label_1457
	.word	-24
	.word	4
	.word	0
_Label_1451:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1452:
	.ascii	"Pself\0"
	.align
_Label_1453:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1861:
	push	r0
	sub	r1,1,r1
	bne	_Label_1861
	mov	1242,r13		! source line 1242
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0RE",r10
!   _temp_1460 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1460 [entry ] into _temp_1461
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1459 = *_temp_1461  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1458 = _temp_1459 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1458  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1462
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1464
	.word	12
	.word	4
	.word	_Label_1465
	.word	-12
	.word	4
	.word	_Label_1466
	.word	-16
	.word	4
	.word	_Label_1467
	.word	-20
	.word	4
	.word	_Label_1468
	.word	-24
	.word	4
	.word	0
_Label_1462:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1463:
	.ascii	"Pself\0"
	.align
_Label_1464:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1862:
	push	r0
	sub	r1,1,r1
	bne	_Label_1862
	mov	1251,r13		! source line 1251
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0AS",r10
!   _temp_1469 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1469 [entry ] into _temp_1470
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1474 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1474 [entry ] into _temp_1475
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1473 = *_temp_1475  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1472 = _temp_1473 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1471 = _temp_1472 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1470 = _temp_1471  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1476
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1477
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1478
	.word	12
	.word	4
	.word	_Label_1479
	.word	16
	.word	4
	.word	_Label_1480
	.word	-12
	.word	4
	.word	_Label_1481
	.word	-16
	.word	4
	.word	_Label_1482
	.word	-20
	.word	4
	.word	_Label_1483
	.word	-24
	.word	4
	.word	_Label_1484
	.word	-28
	.word	4
	.word	_Label_1485
	.word	-32
	.word	4
	.word	_Label_1486
	.word	-36
	.word	4
	.word	0
_Label_1476:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1477:
	.ascii	"Pself\0"
	.align
_Label_1478:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1479:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1863:
	push	r0
	sub	r1,1,r1
	bne	_Label_1863
	mov	1261,r13		! source line 1261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0RE",r10
!   _temp_1490 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1490 [entry ] into _temp_1491
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1489 = *_temp_1491  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1488 = _temp_1489 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1488) then goto _Label_1492
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1492
!   _temp_1487 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1493
_Label_1492:
!   _temp_1487 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1493:
!   ReturnResult: _temp_1487  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1494
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1495
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1496
	.word	12
	.word	4
	.word	_Label_1497
	.word	-16
	.word	4
	.word	_Label_1498
	.word	-20
	.word	4
	.word	_Label_1499
	.word	-24
	.word	4
	.word	_Label_1500
	.word	-28
	.word	4
	.word	_Label_1501
	.word	-9
	.word	1
	.word	0
_Label_1494:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1495:
	.ascii	"Pself\0"
	.align
_Label_1496:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1501:
	.byte	'C'
	.ascii	"_temp_1487\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1864:
	push	r0
	sub	r1,1,r1
	bne	_Label_1864
	mov	1270,r13		! source line 1270
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0RE",r10
!   _temp_1505 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1505 [entry ] into _temp_1506
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1504 = *_temp_1506  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1503 = _temp_1504 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1503) then goto _Label_1507
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1507
!   _temp_1502 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1508
_Label_1507:
!   _temp_1502 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1508:
!   ReturnResult: _temp_1502  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1509
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1511
	.word	12
	.word	4
	.word	_Label_1512
	.word	-16
	.word	4
	.word	_Label_1513
	.word	-20
	.word	4
	.word	_Label_1514
	.word	-24
	.word	4
	.word	_Label_1515
	.word	-28
	.word	4
	.word	_Label_1516
	.word	-9
	.word	1
	.word	0
_Label_1509:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1510:
	.ascii	"Pself\0"
	.align
_Label_1511:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1516:
	.byte	'C'
	.ascii	"_temp_1502\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1865:
	push	r0
	sub	r1,1,r1
	bne	_Label_1865
	mov	1279,r13		! source line 1279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0RE",r10
!   _temp_1520 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1520 [entry ] into _temp_1521
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1519 = *_temp_1521  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1518 = _temp_1519 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1518) then goto _Label_1522
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1522
!   _temp_1517 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1523
_Label_1522:
!   _temp_1517 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1523:
!   ReturnResult: _temp_1517  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1524
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1525
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1526
	.word	12
	.word	4
	.word	_Label_1527
	.word	-16
	.word	4
	.word	_Label_1528
	.word	-20
	.word	4
	.word	_Label_1529
	.word	-24
	.word	4
	.word	_Label_1530
	.word	-28
	.word	4
	.word	_Label_1531
	.word	-9
	.word	1
	.word	0
_Label_1524:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1525:
	.ascii	"Pself\0"
	.align
_Label_1526:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1531:
	.byte	'C'
	.ascii	"_temp_1517\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1866:
	push	r0
	sub	r1,1,r1
	bne	_Label_1866
	mov	1288,r13		! source line 1288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0RE",r10
!   _temp_1535 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1535 [entry ] into _temp_1536
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1534 = *_temp_1536  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1533 = _temp_1534 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1533) then goto _Label_1537
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1537
!   _temp_1532 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1538
_Label_1537:
!   _temp_1532 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1538:
!   ReturnResult: _temp_1532  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1539
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1540
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1541
	.word	12
	.word	4
	.word	_Label_1542
	.word	-16
	.word	4
	.word	_Label_1543
	.word	-20
	.word	4
	.word	_Label_1544
	.word	-24
	.word	4
	.word	_Label_1545
	.word	-28
	.word	4
	.word	_Label_1546
	.word	-9
	.word	1
	.word	0
_Label_1539:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1540:
	.ascii	"Pself\0"
	.align
_Label_1541:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1546:
	.byte	'C'
	.ascii	"_temp_1532\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1867:
	push	r0
	sub	r1,1,r1
	bne	_Label_1867
	mov	1297,r13		! source line 1297
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1301,r13		! source line 1301
	mov	"\0\0AS",r10
!   _temp_1547 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1547 [entry ] into _temp_1548
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_1551 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1551 [entry ] into _temp_1552
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1550 = *_temp_1552  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1549 = _temp_1550 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1548 = _temp_1549  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1301,r13		! source line 1301
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1553
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1555
	.word	12
	.word	4
	.word	_Label_1556
	.word	-12
	.word	4
	.word	_Label_1557
	.word	-16
	.word	4
	.word	_Label_1558
	.word	-20
	.word	4
	.word	_Label_1559
	.word	-24
	.word	4
	.word	_Label_1560
	.word	-28
	.word	4
	.word	_Label_1561
	.word	-32
	.word	4
	.word	0
_Label_1553:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1554:
	.ascii	"Pself\0"
	.align
_Label_1555:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1868:
	push	r0
	sub	r1,1,r1
	bne	_Label_1868
	mov	1306,r13		! source line 1306
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1310,r13		! source line 1310
	mov	"\0\0AS",r10
!   _temp_1562 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1562 [entry ] into _temp_1563
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_1566 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1566 [entry ] into _temp_1567
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1565 = *_temp_1567  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1564 = _temp_1565 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1563 = _temp_1564  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1310,r13		! source line 1310
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1568
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1569
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1570
	.word	12
	.word	4
	.word	_Label_1571
	.word	-12
	.word	4
	.word	_Label_1572
	.word	-16
	.word	4
	.word	_Label_1573
	.word	-20
	.word	4
	.word	_Label_1574
	.word	-24
	.word	4
	.word	_Label_1575
	.word	-28
	.word	4
	.word	_Label_1576
	.word	-32
	.word	4
	.word	0
_Label_1568:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1569:
	.ascii	"Pself\0"
	.align
_Label_1570:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1869:
	push	r0
	sub	r1,1,r1
	bne	_Label_1869
	mov	1315,r13		! source line 1315
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0AS",r10
!   _temp_1577 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1577 [entry ] into _temp_1578
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_1581 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1581 [entry ] into _temp_1582
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1580 = *_temp_1582  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1579 = _temp_1580 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1578 = _temp_1579  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1583
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1584
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1585
	.word	12
	.word	4
	.word	_Label_1586
	.word	-12
	.word	4
	.word	_Label_1587
	.word	-16
	.word	4
	.word	_Label_1588
	.word	-20
	.word	4
	.word	_Label_1589
	.word	-24
	.word	4
	.word	_Label_1590
	.word	-28
	.word	4
	.word	_Label_1591
	.word	-32
	.word	4
	.word	0
_Label_1583:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1584:
	.ascii	"Pself\0"
	.align
_Label_1585:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1870:
	push	r0
	sub	r1,1,r1
	bne	_Label_1870
	mov	1324,r13		! source line 1324
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1328,r13		! source line 1328
	mov	"\0\0AS",r10
!   _temp_1592 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1592 [entry ] into _temp_1593
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_1596 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1596 [entry ] into _temp_1597
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1595 = *_temp_1597  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1594 = _temp_1595 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1593 = _temp_1594  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1328,r13		! source line 1328
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1598
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1599
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1600
	.word	12
	.word	4
	.word	_Label_1601
	.word	-12
	.word	4
	.word	_Label_1602
	.word	-16
	.word	4
	.word	_Label_1603
	.word	-20
	.word	4
	.word	_Label_1604
	.word	-24
	.word	4
	.word	_Label_1605
	.word	-28
	.word	4
	.word	_Label_1606
	.word	-32
	.word	4
	.word	0
_Label_1598:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1599:
	.ascii	"Pself\0"
	.align
_Label_1600:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1871:
	push	r0
	sub	r1,1,r1
	bne	_Label_1871
	mov	1333,r13		! source line 1333
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0AS",r10
!   _temp_1607 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1607 [entry ] into _temp_1608
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_1611 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1611 [entry ] into _temp_1612
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1610 = *_temp_1612  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1609 = _temp_1610 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1608 = _temp_1609  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1613
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1614
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1615
	.word	12
	.word	4
	.word	_Label_1616
	.word	-12
	.word	4
	.word	_Label_1617
	.word	-16
	.word	4
	.word	_Label_1618
	.word	-20
	.word	4
	.word	_Label_1619
	.word	-24
	.word	4
	.word	_Label_1620
	.word	-28
	.word	4
	.word	_Label_1621
	.word	-32
	.word	4
	.word	0
_Label_1613:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1614:
	.ascii	"Pself\0"
	.align
_Label_1615:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1872:
	push	r0
	sub	r1,1,r1
	bne	_Label_1872
	mov	1342,r13		! source line 1342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0AS",r10
!   _temp_1622 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1622 [entry ] into _temp_1623
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_1626 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1626 [entry ] into _temp_1627
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1625 = *_temp_1627  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1624 = _temp_1625 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1623 = _temp_1624  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1628
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1630
	.word	12
	.word	4
	.word	_Label_1631
	.word	-12
	.word	4
	.word	_Label_1632
	.word	-16
	.word	4
	.word	_Label_1633
	.word	-20
	.word	4
	.word	_Label_1634
	.word	-24
	.word	4
	.word	_Label_1635
	.word	-28
	.word	4
	.word	_Label_1636
	.word	-32
	.word	4
	.word	0
_Label_1628:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1629:
	.ascii	"Pself\0"
	.align
_Label_1630:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1873:
	push	r0
	sub	r1,1,r1
	bne	_Label_1873
	mov	1351,r13		! source line 1351
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0AS",r10
!   _temp_1637 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1637 [entry ] into _temp_1638
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_1641 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1641 [entry ] into _temp_1642
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1640 = *_temp_1642  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1639 = _temp_1640 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1638 = _temp_1639  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1643
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1644
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1645
	.word	12
	.word	4
	.word	_Label_1646
	.word	-12
	.word	4
	.word	_Label_1647
	.word	-16
	.word	4
	.word	_Label_1648
	.word	-20
	.word	4
	.word	_Label_1649
	.word	-24
	.word	4
	.word	_Label_1650
	.word	-28
	.word	4
	.word	_Label_1651
	.word	-32
	.word	4
	.word	0
_Label_1643:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1644:
	.ascii	"Pself\0"
	.align
_Label_1645:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1874:
	push	r0
	sub	r1,1,r1
	bne	_Label_1874
	mov	1360,r13		! source line 1360
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0AS",r10
!   _temp_1652 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1652 [entry ] into _temp_1653
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_1656 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1656 [entry ] into _temp_1657
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1655 = *_temp_1657  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1654 = _temp_1655 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1653 = _temp_1654  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1658
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1659
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1660
	.word	12
	.word	4
	.word	_Label_1661
	.word	-12
	.word	4
	.word	_Label_1662
	.word	-16
	.word	4
	.word	_Label_1663
	.word	-20
	.word	4
	.word	_Label_1664
	.word	-24
	.word	4
	.word	_Label_1665
	.word	-28
	.word	4
	.word	_Label_1666
	.word	-32
	.word	4
	.word	0
_Label_1658:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1659:
	.ascii	"Pself\0"
	.align
_Label_1660:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1875:
	push	r0
	sub	r1,1,r1
	bne	_Label_1875
	mov	1369,r13		! source line 1369
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1668 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1668 [0 ] into _temp_1669
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_1667 = _temp_1669		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1670 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1667  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1670  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1375,r13		! source line 1375
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1671
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1672
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1673
	.word	-12
	.word	4
	.word	_Label_1674
	.word	-16
	.word	4
	.word	_Label_1675
	.word	-20
	.word	4
	.word	_Label_1676
	.word	-24
	.word	4
	.word	0
_Label_1671:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1672:
	.ascii	"Pself\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1876:
	push	r0
	sub	r1,1,r1
	bne	_Label_1876
	mov	1380,r13		! source line 1380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1677
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1677
	jmp	_Label_1678
_Label_1677:
! THEN...
	mov	1396,r13		! source line 1396
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1679
_Label_1678:
! ELSE...
	mov	1397,r13		! source line 1397
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1681		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1681
!	jmp	_Label_1680
_Label_1680:
! THEN...
	mov	1398,r13		! source line 1398
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1681:
! END IF...
_Label_1679:
! ASSIGNMENT STATEMENT...
	mov	1400,r13		! source line 1400
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0WH",r10
_Label_1682:
!	jmp	_Label_1683
_Label_1683:
	mov	1404,r13		! source line 1404
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1686		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1686
!	jmp	_Label_1685
_Label_1685:
! THEN...
	mov	1406,r13		! source line 1406
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1687 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1687  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1406,r13		! source line 1406
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1407,r13		! source line 1407
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1686:
! IF STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0IF",r10
	mov	1409,r13		! source line 1409
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1691) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1690  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1690 then goto _Label_1689 else goto _Label_1688
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1688
	jmp	_Label_1689
_Label_1688:
! THEN...
	mov	1410,r13		! source line 1410
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1692 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1692  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1410,r13		! source line 1410
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1689:
! ASSIGNMENT STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0AS",r10
	mov	1413,r13		! source line 1413
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1694) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1693  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1693 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0WH",r10
_Label_1695:
!   if offset >= 8192 then goto _Label_1697		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1697
!	jmp	_Label_1696
_Label_1696:
	mov	1415,r13		! source line 1415
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1698 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1698  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1700		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1700
!	jmp	_Label_1699
_Label_1699:
! THEN...
	mov	1424,r13		! source line 1424
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1700:
! END WHILE...
	jmp	_Label_1695
_Label_1697:
! ASSIGNMENT STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1682
_Label_1684:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1701
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1702
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1703
	.word	12
	.word	4
	.word	_Label_1704
	.word	16
	.word	4
	.word	_Label_1705
	.word	20
	.word	4
	.word	_Label_1706
	.word	-9
	.word	1
	.word	_Label_1707
	.word	-16
	.word	4
	.word	_Label_1708
	.word	-20
	.word	4
	.word	_Label_1709
	.word	-24
	.word	4
	.word	_Label_1710
	.word	-28
	.word	4
	.word	_Label_1711
	.word	-10
	.word	1
	.word	_Label_1712
	.word	-32
	.word	4
	.word	_Label_1713
	.word	-36
	.word	4
	.word	_Label_1714
	.word	-40
	.word	4
	.word	_Label_1715
	.word	-44
	.word	4
	.word	_Label_1716
	.word	-48
	.word	4
	.word	0
_Label_1701:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1702:
	.ascii	"Pself\0"
	.align
_Label_1703:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1704:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1705:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1706:
	.byte	'C'
	.ascii	"_temp_1698\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1711:
	.byte	'C'
	.ascii	"_temp_1690\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1713:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1714:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1715:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1716:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1877:
	push	r0
	sub	r1,1,r1
	bne	_Label_1877
	mov	1434,r13		! source line 1434
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1717
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1717
	jmp	_Label_1718
_Label_1717:
! THEN...
	mov	1446,r13		! source line 1446
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1719
_Label_1718:
! ELSE...
	mov	1447,r13		! source line 1447
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1721		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1721
!	jmp	_Label_1720
_Label_1720:
! THEN...
	mov	1448,r13		! source line 1448
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1721:
! END IF...
_Label_1719:
! ASSIGNMENT STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0WH",r10
_Label_1722:
!	jmp	_Label_1723
_Label_1723:
	mov	1452,r13		! source line 1452
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1728		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1728
	jmp	_Label_1725
_Label_1728:
	mov	1454,r13		! source line 1454
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1730) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1729  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1729 then goto _Label_1727 else goto _Label_1725
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1725
	jmp	_Label_1727
_Label_1727:
	mov	1455,r13		! source line 1455
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1732) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1731  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1731 then goto _Label_1726 else goto _Label_1725
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1725
	jmp	_Label_1726
_Label_1725:
! THEN...
	mov	1456,r13		! source line 1456
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1726:
! ASSIGNMENT STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0AS",r10
	mov	1458,r13		! source line 1458
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1734) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1733  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1733 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1459,r13		! source line 1459
	mov	"\0\0WH",r10
_Label_1735:
!   if offset >= 8192 then goto _Label_1737		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1737
!	jmp	_Label_1736
_Label_1736:
	mov	1459,r13		! source line 1459
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1738 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1738  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1463,r13		! source line 1463
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1740		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1740
!	jmp	_Label_1739
_Label_1739:
! THEN...
	mov	1466,r13		! source line 1466
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1740:
! END WHILE...
	jmp	_Label_1735
_Label_1737:
! ASSIGNMENT STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1722
_Label_1724:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1741
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1742
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1743
	.word	12
	.word	4
	.word	_Label_1744
	.word	16
	.word	4
	.word	_Label_1745
	.word	20
	.word	4
	.word	_Label_1746
	.word	-9
	.word	1
	.word	_Label_1747
	.word	-16
	.word	4
	.word	_Label_1748
	.word	-20
	.word	4
	.word	_Label_1749
	.word	-24
	.word	4
	.word	_Label_1750
	.word	-10
	.word	1
	.word	_Label_1751
	.word	-28
	.word	4
	.word	_Label_1752
	.word	-11
	.word	1
	.word	_Label_1753
	.word	-32
	.word	4
	.word	_Label_1754
	.word	-36
	.word	4
	.word	_Label_1755
	.word	-40
	.word	4
	.word	_Label_1756
	.word	-44
	.word	4
	.word	0
_Label_1741:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1742:
	.ascii	"Pself\0"
	.align
_Label_1743:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1744:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1745:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1746:
	.byte	'C'
	.ascii	"_temp_1738\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1750:
	.byte	'C'
	.ascii	"_temp_1731\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1752:
	.byte	'C'
	.ascii	"_temp_1729\0"
	.align
_Label_1753:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1754:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1755:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1756:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1878:
	push	r0
	sub	r1,1,r1
	bne	_Label_1878
	mov	1476,r13		! source line 1476
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0IF",r10
	mov	1500,r13		! source line 1500
	mov	"\0\0SE",r10
!   _temp_1760 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1761) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1760  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1759  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1759 >= 4 then goto _Label_1758		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1758
!	jmp	_Label_1757
_Label_1757:
! THEN...
	mov	1503,r13		! source line 1503
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1758:
! IF STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1763		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1763
!	jmp	_Label_1762
_Label_1762:
! THEN...
	mov	1508,r13		! source line 1508
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1763:
! ASSIGNMENT STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0RE",r10
	mov	1513,r13		! source line 1513
	mov	"\0\0SE",r10
!   _temp_1766 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1765 = _temp_1766 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1767 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1768) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1765  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1767  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1764  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1764  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1769
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1770
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1771
	.word	12
	.word	4
	.word	_Label_1772
	.word	16
	.word	4
	.word	_Label_1773
	.word	20
	.word	4
	.word	_Label_1774
	.word	-12
	.word	4
	.word	_Label_1775
	.word	-16
	.word	4
	.word	_Label_1776
	.word	-20
	.word	4
	.word	_Label_1777
	.word	-24
	.word	4
	.word	_Label_1778
	.word	-28
	.word	4
	.word	_Label_1779
	.word	-32
	.word	4
	.word	_Label_1780
	.word	-36
	.word	4
	.word	_Label_1781
	.word	-40
	.word	4
	.word	_Label_1782
	.word	-44
	.word	4
	.word	0
_Label_1769:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1770:
	.ascii	"Pself\0"
	.align
_Label_1771:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1772:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1773:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1782:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
