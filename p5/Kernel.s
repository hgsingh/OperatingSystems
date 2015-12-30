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
	.export	_P_Kernel_InitFirstProcess
	.export	_P_Kernel_StartUserProcess
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
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
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
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
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
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_222:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_221:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_220:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_219:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_218:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_217:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_216:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_215:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_214:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_213:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_212:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_211:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_210:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_209:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_208:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_207:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_206:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_205:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_204:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_203:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_202:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_201:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_200:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_199:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_198:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_197:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_196:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_195:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_194:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_193:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_192:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_191:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_190:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_189:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_188:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_187:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_186:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_185:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_184:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_183:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_182:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_181:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_180:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_179:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_178:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_177:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_176:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_175:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_174:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_173:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_172:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_171:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_170:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_169:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_168:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_167:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_166:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_165:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_164:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_163:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_162:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_161:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_160:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_159:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_158:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_157:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_156:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_155:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_154:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_153:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_152:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_151:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_150:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_149:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_148:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_147:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_146:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_145:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_144:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_143:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_142:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_141:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_140:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_139:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_138:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_137:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_136:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_135:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_134:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_133:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_132:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_131:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_130:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_129:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_128:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_127:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_126:
	.word	10			! length
	.ascii	"new thread"
	.align
_StringConst_125:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_124:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_123:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_122:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_121:
	.word	1			! length
	.ascii	"9"
	.align
_StringConst_120:
	.word	1			! length
	.ascii	"8"
	.align
_StringConst_119:
	.word	1			! length
	.ascii	"7"
	.align
_StringConst_118:
	.word	1			! length
	.ascii	"6"
	.align
_StringConst_117:
	.word	1			! length
	.ascii	"5"
	.align
_StringConst_116:
	.word	1			! length
	.ascii	"4"
	.align
_StringConst_115:
	.word	1			! length
	.ascii	"3"
	.align
_StringConst_114:
	.word	1			! length
	.ascii	"2"
	.align
_StringConst_113:
	.word	1			! length
	.ascii	"1"
	.align
_StringConst_112:
	.word	1			! length
	.ascii	"0"
	.align
_StringConst_111:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_110:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_109:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_108:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_107:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_106:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_105:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_104:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_103:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_102:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_101:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_100:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_99:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_98:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_97:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_96:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_95:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_94:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_93:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_92:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_91:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_90:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_89:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_88:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_87:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_86:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_85:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_84:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_83:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_82:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_81:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_80:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_79:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_78:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_77:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_76:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_75:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_74:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_73:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_72:
	.word	30			! length
	.ascii	"error establishing entry point"
	.align
_StringConst_71:
	.word	25			! length
	.ascii	"error during opening file"
	.align
_StringConst_70:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_69:
	.word	16			! length
	.ascii	"UserlevelProgram"
	.align
_StringConst_68:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_67:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_66:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_65:
	.word	66			! length
	.ascii	"Syscall \'Close\' was invoked by a user thread on file description: "
	.align
_StringConst_64:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_63:
	.word	26			! length
	.ascii	"current position in file: "
	.align
_StringConst_62:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_61:
	.word	65			! length
	.ascii	"Syscall \'Seek\' was invoked by a user thread on file description: "
	.align
_StringConst_60:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_59:
	.word	16			! length
	.ascii	"size of buffer: "
	.align
_StringConst_58:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_57:
	.word	32			! length
	.ascii	"input buffer address starts at: "
	.align
_StringConst_56:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_55:
	.word	66			! length
	.ascii	"Syscall \'Write\' was invoked by a user thread on file description: "
	.align
_StringConst_54:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_53:
	.word	16			! length
	.ascii	"size of buffer: "
	.align
_StringConst_52:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_51:
	.word	32			! length
	.ascii	"input buffer address starts at: "
	.align
_StringConst_50:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_49:
	.word	65			! length
	.ascii	"Syscall \'Read\' was invoked by a user thread on file description: "
	.align
_StringConst_48:
	.word	53			! length
	.ascii	"Syscall \'Open\' was invoked by a user thread on file: "
	.align
_StringConst_47:
	.word	35			! length
	.ascii	"error encountered when opening file"
	.align
_StringConst_46:
	.word	55			! length
	.ascii	"Syscall \'Create\' was invoked by a user thread on file: "
	.align
_StringConst_45:
	.word	36			! length
	.ascii	"error encountered when creating file"
	.align
_StringConst_44:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_43:
	.word	59			! length
	.ascii	"Syscall \'Join\' was invoked by a user thread on process ID: "
	.align
_StringConst_42:
	.word	43			! length
	.ascii	"Syscall \'Fork\' was invoked by a user thread"
	.align
_StringConst_41:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_40:
	.word	44			! length
	.ascii	"Syscall \'Yield\' was invoked by a user thread"
	.align
_StringConst_39:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_38:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_37:
	.word	61			! length
	.ascii	"Syscall \'Exit\' was invoked by a user thread, return status:  "
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
	.word	30			! length
	.ascii	"DiskInterruptHandler invoked!\n"
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
	set	0xd8cbe394,r4		! myHashVal = -657726572
	cmp	r3,r4
	be	_Label_230
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
_Label_230:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_231
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_231
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_231
_Label_231:
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
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
	mov	11,r13		! source line 11
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	18,r13		! source line 18
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_232 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_232  sizeInBytes=4
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
_Label_3042:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3042
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_236 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_237 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_236  sizeInBytes=4
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
!   _temp_238 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_239 = _temp_238 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_239 = 3  (sizeInBytes=4)
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
_Label_3043:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3043
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0SE",r10
!   _temp_241 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_242 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_241  sizeInBytes=4
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
!   _temp_243 = _function_229_IdleFunction
	set	_function_229_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_244 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_243  sizeInBytes=4
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
	.word	_Label_245
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_246
	.word	-12
	.word	4
	.word	_Label_247
	.word	-16
	.word	4
	.word	_Label_248
	.word	-20
	.word	4
	.word	_Label_249
	.word	-24
	.word	4
	.word	_Label_250
	.word	-28
	.word	4
	.word	_Label_251
	.word	-32
	.word	4
	.word	_Label_252
	.word	-36
	.word	4
	.word	_Label_253
	.word	-40
	.word	4
	.word	_Label_254
	.word	-44
	.word	4
	.word	_Label_255
	.word	-48
	.word	4
	.word	_Label_256
	.word	-52
	.word	4
	.word	_Label_257
	.word	-56
	.word	4
	.word	_Label_258
	.word	-60
	.word	4
	.word	0
_Label_245:
	.ascii	"InitializeScheduler\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_229_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_229_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3044:
	push	r0
	sub	r1,1,r1
	bne	_Label_3044
	mov	36,r13		! source line 36
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0WH",r10
_Label_259:
!	jmp	_Label_260
_Label_260:
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
!   _temp_264 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_262 else goto _Label_263
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_263
	jmp	_Label_262
_Label_262:
! THEN...
	mov	49,r13		! source line 49
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_265
_Label_263:
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
_Label_265:
! END WHILE...
	jmp	_Label_259
_Label_261:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_229_IdleFunction:
	.word	_sourceFileName
	.word	_Label_266
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_267
	.word	8
	.word	4
	.word	_Label_268
	.word	-12
	.word	4
	.word	_Label_269
	.word	-16
	.word	4
	.word	0
_Label_266:
	.ascii	"IdleFunction\0"
	.align
_Label_267:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_269:
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
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
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
!   _temp_272 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_272 ) then goto _Label_271		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_271
!	jmp	_Label_270
_Label_270:
! THEN...
	mov	75,r13		! source line 75
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_274 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_274 [0 ] into _temp_275
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
!   _temp_273 = _temp_275		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_273  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_271:
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
!   _temp_276 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_276 = 3  (sizeInBytes=4)
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
_Label_277:
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_281 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_280  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_280 then goto _Label_279 else goto _Label_278
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_278
	jmp	_Label_279
_Label_278:
	mov	88,r13		! source line 88
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0AS",r10
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_282 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_283 = &_P_Kernel_threadManager
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
	jmp	_Label_277
_Label_279:
! IF STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_286 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_286 ) then goto _Label_285		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_285
!	jmp	_Label_284
_Label_284:
! THEN...
	mov	94,r13		! source line 94
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_288 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_288 [0 ] into _temp_289
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
!   _temp_287 = _temp_289		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
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
!   _temp_291 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_290 = *_temp_291  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_290) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_292 = _temp_290 + 32
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
_Label_285:
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
	.word	_Label_293
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_294
	.word	8
	.word	4
	.word	_Label_295
	.word	-16
	.word	4
	.word	_Label_296
	.word	-20
	.word	4
	.word	_Label_297
	.word	-24
	.word	4
	.word	_Label_298
	.word	-28
	.word	4
	.word	_Label_299
	.word	-32
	.word	4
	.word	_Label_300
	.word	-36
	.word	4
	.word	_Label_301
	.word	-40
	.word	4
	.word	_Label_302
	.word	-44
	.word	4
	.word	_Label_303
	.word	-48
	.word	4
	.word	_Label_304
	.word	-52
	.word	4
	.word	_Label_305
	.word	-9
	.word	1
	.word	_Label_306
	.word	-56
	.word	4
	.word	_Label_307
	.word	-60
	.word	4
	.word	_Label_308
	.word	-64
	.word	4
	.word	_Label_309
	.word	-68
	.word	4
	.word	_Label_310
	.word	-72
	.word	4
	.word	_Label_311
	.word	-76
	.word	4
	.word	_Label_312
	.word	-80
	.word	4
	.word	0
_Label_293:
	.ascii	"Run\0"
	.align
_Label_294:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_305:
	.byte	'C'
	.ascii	"_temp_280\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_311:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_312:
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
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
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
!   _temp_313 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0SE",r10
!   _temp_314 = _function_228_ThreadPrintShort
	set	_function_228_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_315 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_314  sizeInBytes=4
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
	.word	_Label_316
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_317
	.word	-12
	.word	4
	.word	_Label_318
	.word	-16
	.word	4
	.word	_Label_319
	.word	-20
	.word	4
	.word	_Label_320
	.word	-24
	.word	4
	.word	0
_Label_316:
	.ascii	"PrintReadyList\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_320:
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
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
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
!   _temp_321 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_321  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_323 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_322 = *_temp_323  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
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
!   _temp_324 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
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
	.word	_Label_325
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_326
	.word	-12
	.word	4
	.word	_Label_327
	.word	-16
	.word	4
	.word	_Label_328
	.word	-20
	.word	4
	.word	_Label_329
	.word	-24
	.word	4
	.word	_Label_330
	.word	-28
	.word	4
	.word	_Label_331
	.word	-32
	.word	4
	.word	0
_Label_325:
	.ascii	"ThreadStartMain\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_330:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_331:
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
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
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
!   _temp_332 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_333 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
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
	.word	_Label_334
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_335
	.word	-12
	.word	4
	.word	_Label_336
	.word	-16
	.word	4
	.word	_Label_337
	.word	-20
	.word	4
	.word	0
_Label_334:
	.ascii	"ThreadFinish\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_337:
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
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
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
!   _temp_338 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	170,r13		! source line 170
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_340		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_340
!	jmp	_Label_339
_Label_339:
! THEN...
	mov	171,r13		! source line 171
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_341 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
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
!   _temp_343 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_342 = *_temp_343  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_340:
! CALL STATEMENT...
!   _temp_344 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
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
!   _temp_345 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_346 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
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
	.word	_Label_347
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_348
	.word	8
	.word	4
	.word	_Label_349
	.word	-12
	.word	4
	.word	_Label_350
	.word	-16
	.word	4
	.word	_Label_351
	.word	-20
	.word	4
	.word	_Label_352
	.word	-24
	.word	4
	.word	_Label_353
	.word	-28
	.word	4
	.word	_Label_354
	.word	-32
	.word	4
	.word	_Label_355
	.word	-36
	.word	4
	.word	_Label_356
	.word	-40
	.word	4
	.word	0
_Label_347:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_348:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_356:
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
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
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
!   if newStatus != 1 then goto _Label_358		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_358
!	jmp	_Label_357
_Label_357:
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
	jmp	_Label_359
_Label_358:
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
_Label_359:
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
	.word	_Label_360
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_361
	.word	8
	.word	4
	.word	_Label_362
	.word	-12
	.word	4
	.word	0
_Label_360:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_361:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_362:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_228_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_228_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
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
!   if t == 0 then goto _Label_366		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_366
!   _temp_365 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_367
_Label_366:
!   _temp_365 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_367:
!   if _temp_365 then goto _Label_364 else goto _Label_363
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_363
	jmp	_Label_364
_Label_363:
! THEN...
	mov	676,r13		! source line 676
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_368 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
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
_Label_364:
! CALL STATEMENT...
!   _temp_369 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
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
!   _temp_371 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_370 = *_temp_371  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_372 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
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
!   _temp_381 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_380 = *_temp_381  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_375
	cmp	r1,2
	be	_Label_376
	cmp	r1,3
	be	_Label_377
	cmp	r1,4
	be	_Label_378
	cmp	r1,5
	be	_Label_379
	jmp	_Label_373
! CASE 1...
_Label_375:
! CALL STATEMENT...
!   _temp_382 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_382  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	684,r13		! source line 684
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	685,r13		! source line 685
	mov	"\0\0BR",r10
	jmp	_Label_374
! CASE 2...
_Label_376:
! CALL STATEMENT...
!   _temp_383 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_383  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0BR",r10
	jmp	_Label_374
! CASE 3...
_Label_377:
! CALL STATEMENT...
!   _temp_384 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	691,r13		! source line 691
	mov	"\0\0BR",r10
	jmp	_Label_374
! CASE 4...
_Label_378:
! CALL STATEMENT...
!   _temp_385 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	694,r13		! source line 694
	mov	"\0\0BR",r10
	jmp	_Label_374
! CASE 5...
_Label_379:
! CALL STATEMENT...
!   _temp_386 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0BR",r10
	jmp	_Label_374
! DEFAULT CASE...
_Label_373:
! CALL STATEMENT...
!   _temp_387 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
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
_Label_374:
! CALL STATEMENT...
!   _temp_388 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_389 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_390 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
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
_RoutineDescriptor__function_228_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_391
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_392
	.word	8
	.word	4
	.word	_Label_393
	.word	-16
	.word	4
	.word	_Label_394
	.word	-20
	.word	4
	.word	_Label_395
	.word	-24
	.word	4
	.word	_Label_396
	.word	-28
	.word	4
	.word	_Label_397
	.word	-32
	.word	4
	.word	_Label_398
	.word	-36
	.word	4
	.word	_Label_399
	.word	-40
	.word	4
	.word	_Label_400
	.word	-44
	.word	4
	.word	_Label_401
	.word	-48
	.word	4
	.word	_Label_402
	.word	-52
	.word	4
	.word	_Label_403
	.word	-56
	.word	4
	.word	_Label_404
	.word	-60
	.word	4
	.word	_Label_405
	.word	-64
	.word	4
	.word	_Label_406
	.word	-68
	.word	4
	.word	_Label_407
	.word	-72
	.word	4
	.word	_Label_408
	.word	-76
	.word	4
	.word	_Label_409
	.word	-9
	.word	1
	.word	_Label_410
	.word	-80
	.word	4
	.word	0
_Label_391:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_392:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_409:
	.byte	'C'
	.ascii	"_temp_365\0"
	.align
_Label_410:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_227_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_227_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	1006,r13		! source line 1006
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_411 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1010,r13		! source line 1010
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1011,r13		! source line 1011
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_227_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_412
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_413
	.word	8
	.word	4
	.word	_Label_414
	.word	-12
	.word	4
	.word	0
_Label_412:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_413:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_411\0"
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
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	1016,r13		! source line 1016
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_415 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1022,r13		! source line 1022
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1022,r13		! source line 1022
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
	.word	_Label_416
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_417
	.word	8
	.word	4
	.word	_Label_418
	.word	-12
	.word	4
	.word	0
_Label_416:
	.ascii	"ProcessFinish\0"
	.align
_Label_417:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_415\0"
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
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	1518,r13		! source line 1518
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1530,r13		! source line 1530
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
	mov	1531,r13		! source line 1531
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1531,r13		! source line 1531
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
	.word	_Label_419
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_419:
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
	mov	8,r1
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	1536,r13		! source line 1536
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1548,r13		! source line 1548
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_420 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1549,r13		! source line 1549
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0IF",r10
!   _temp_424 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_425 = _temp_424 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_423 = *_temp_425  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_423 == 0 then goto _Label_422		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_422
!	jmp	_Label_421
_Label_421:
! THEN...
	mov	1551,r13		! source line 1551
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0SE",r10
!   _temp_427 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_428 = _temp_427 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_426 = *_temp_428  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_426) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_422:
! RETURN STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_429
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_430
	.word	-12
	.word	4
	.word	_Label_431
	.word	-16
	.word	4
	.word	_Label_432
	.word	-20
	.word	4
	.word	_Label_433
	.word	-24
	.word	4
	.word	_Label_434
	.word	-28
	.word	4
	.word	_Label_435
	.word	-32
	.word	4
	.word	_Label_436
	.word	-36
	.word	4
	.word	0
_Label_429:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_420\0"
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
	mov	1558,r13		! source line 1558
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1567,r13		! source line 1567
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
	.word	_Label_437
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_437:
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
_Label_3056:
	push	r0
	sub	r1,1,r1
	bne	_Label_3056
	mov	1572,r13		! source line 1572
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_438 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1579,r13		! source line 1579
	mov	"\0\0CA",r10
	call	_function_226_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1579,r13		! source line 1579
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
	.word	_Label_439
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_440
	.word	-12
	.word	4
	.word	0
_Label_439:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_438\0"
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
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
	mov	1584,r13		! source line 1584
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1590,r13		! source line 1590
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_441 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1591,r13		! source line 1591
	mov	"\0\0CA",r10
	call	_function_226_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1591,r13		! source line 1591
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
	.word	_Label_442
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_443
	.word	-12
	.word	4
	.word	0
_Label_442:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_441\0"
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
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	1596,r13		! source line 1596
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1602,r13		! source line 1602
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_444 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1603,r13		! source line 1603
	mov	"\0\0CA",r10
	call	_function_226_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1603,r13		! source line 1603
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
	.word	_Label_445
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_446
	.word	-12
	.word	4
	.word	0
_Label_445:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_444\0"
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
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
	mov	1608,r13		! source line 1608
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_447 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_447  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1615,r13		! source line 1615
	mov	"\0\0CA",r10
	call	_function_226_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1615,r13		! source line 1615
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
	.word	_Label_448
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_449
	.word	-12
	.word	4
	.word	0
_Label_448:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_447\0"
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
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
	mov	1620,r13		! source line 1620
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1626,r13		! source line 1626
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_450 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_450  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1627,r13		! source line 1627
	mov	"\0\0CA",r10
	call	_function_226_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1627,r13		! source line 1627
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
	.word	_Label_451
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_452
	.word	-12
	.word	4
	.word	0
_Label_451:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_450\0"
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
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
	mov	1632,r13		! source line 1632
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1638,r13		! source line 1638
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_453 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1639,r13		! source line 1639
	mov	"\0\0CA",r10
	call	_function_226_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1639,r13		! source line 1639
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
	.word	_Label_454
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_455
	.word	-12
	.word	4
	.word	0
_Label_454:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_453\0"
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
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	1644,r13		! source line 1644
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_456 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1651,r13		! source line 1651
	mov	"\0\0CA",r10
	call	_function_226_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1651,r13		! source line 1651
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
	.word	_Label_457
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_458
	.word	-12
	.word	4
	.word	0
_Label_457:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_226_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_226_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
	mov	1656,r13		! source line 1656
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_459 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_459  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1661,r13		! source line 1661
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1662,r13		! source line 1662
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_460 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_460  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1663,r13		! source line 1663
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_464 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_463 = *_temp_464  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_463 == 0 then goto _Label_462		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_462
!	jmp	_Label_461
_Label_461:
! THEN...
	mov	1667,r13		! source line 1667
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_466 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_465 = *_temp_466  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_465) then goto _runtimeErrorNullPointer
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
	jmp	_Label_467
_Label_462:
! ELSE...
	mov	1669,r13		! source line 1669
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_468 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_468  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1669,r13		! source line 1669
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_467:
! SEND STATEMENT...
	mov	1671,r13		! source line 1671
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
	mov	1677,r13		! source line 1677
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_226_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_469
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_470
	.word	8
	.word	4
	.word	_Label_471
	.word	-12
	.word	4
	.word	_Label_472
	.word	-16
	.word	4
	.word	_Label_473
	.word	-20
	.word	4
	.word	_Label_474
	.word	-24
	.word	4
	.word	_Label_475
	.word	-28
	.word	4
	.word	_Label_476
	.word	-32
	.word	4
	.word	_Label_477
	.word	-36
	.word	4
	.word	0
_Label_469:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_470:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_459\0"
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
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	1682,r13		! source line 1682
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1703,r13		! source line 1703
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3065
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_478
_Label_3065:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_478
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_478
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_492,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_492:
	jmp	_Label_484	! 1:	
	jmp	_Label_491	! 2:	
	jmp	_Label_481	! 3:	
	jmp	_Label_480	! 4:	
	jmp	_Label_483	! 5:	
	jmp	_Label_482	! 6:	
	jmp	_Label_485	! 7:	
	jmp	_Label_486	! 8:	
	jmp	_Label_487	! 9:	
	jmp	_Label_488	! 10:	
	jmp	_Label_489	! 11:	
	jmp	_Label_490	! 12:	
! CASE 4...
_Label_480:
! RETURN STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0RE",r10
!   Call the function
	mov	1705,r13		! source line 1705
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_493  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_493  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_481:
! CALL STATEMENT...
!   Call the function
	mov	1707,r13		! source line 1707
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_482:
! RETURN STATEMENT...
	mov	1710,r13		! source line 1710
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1710,r13		! source line 1710
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_494  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_494  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_483:
! RETURN STATEMENT...
	mov	1712,r13		! source line 1712
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1712,r13		! source line 1712
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_495  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_495  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_484:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1714,r13		! source line 1714
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_485:
! RETURN STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1717,r13		! source line 1717
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_496  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_496  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_486:
! RETURN STATEMENT...
	mov	1719,r13		! source line 1719
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1719,r13		! source line 1719
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_497  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_497  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_487:
! RETURN STATEMENT...
	mov	1721,r13		! source line 1721
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
	mov	1721,r13		! source line 1721
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_498  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_498  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_488:
! RETURN STATEMENT...
	mov	1723,r13		! source line 1723
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
	mov	1723,r13		! source line 1723
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_499  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_499  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_489:
! RETURN STATEMENT...
	mov	1725,r13		! source line 1725
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1725,r13		! source line 1725
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_500  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_500  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_490:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1728,r13		! source line 1728
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_491:
! CALL STATEMENT...
!   Call the function
	mov	1730,r13		! source line 1730
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1731,r13		! source line 1731
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_478:
! CALL STATEMENT...
!   _temp_501 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1733,r13		! source line 1733
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1734,r13		! source line 1734
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1735,r13		! source line 1735
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_502 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1736,r13		! source line 1736
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_479:
! RETURN STATEMENT...
	mov	1738,r13		! source line 1738
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
	.word	_Label_503
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_504
	.word	8
	.word	4
	.word	_Label_505
	.word	12
	.word	4
	.word	_Label_506
	.word	16
	.word	4
	.word	_Label_507
	.word	20
	.word	4
	.word	_Label_508
	.word	24
	.word	4
	.word	_Label_509
	.word	-12
	.word	4
	.word	_Label_510
	.word	-16
	.word	4
	.word	_Label_511
	.word	-20
	.word	4
	.word	_Label_512
	.word	-24
	.word	4
	.word	_Label_513
	.word	-28
	.word	4
	.word	_Label_514
	.word	-32
	.word	4
	.word	_Label_515
	.word	-36
	.word	4
	.word	_Label_516
	.word	-40
	.word	4
	.word	_Label_517
	.word	-44
	.word	4
	.word	_Label_518
	.word	-48
	.word	4
	.word	0
_Label_503:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_504:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_505:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_506:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_507:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_508:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_493\0"
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
	mov	3,r1
_Label_3066:
	push	r0
	sub	r1,1,r1
	bne	_Label_3066
	mov	1748,r13		! source line 1748
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_519 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_519  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1752,r13		! source line 1752
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_520 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1754,r13		! source line 1754
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_521
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_522
	.word	8
	.word	4
	.word	_Label_523
	.word	-12
	.word	4
	.word	_Label_524
	.word	-16
	.word	4
	.word	0
_Label_521:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_522:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_519\0"
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
	mov	2,r1
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
	mov	1759,r13		! source line 1759
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_525 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_525  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1761,r13		! source line 1761
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_526
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_527
	.word	-12
	.word	4
	.word	0
_Label_526:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_525\0"
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
	mov	3,r1
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
	mov	1766,r13		! source line 1766
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_528 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_528  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_529 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_529  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1770,r13		! source line 1770
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_530
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_531
	.word	-12
	.word	4
	.word	_Label_532
	.word	-16
	.word	4
	.word	0
_Label_530:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_528\0"
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
	mov	2,r1
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
	mov	1775,r13		! source line 1775
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_533 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1778,r13		! source line 1778
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1779,r13		! source line 1779
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_534
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_535
	.word	-12
	.word	4
	.word	0
_Label_534:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_533\0"
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
	mov	3,r1
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
	mov	1784,r13		! source line 1784
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_536 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1786,r13		! source line 1786
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1787,r13		! source line 1787
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_537 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_537  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1788,r13		! source line 1788
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_538
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_539
	.word	8
	.word	4
	.word	_Label_540
	.word	-12
	.word	4
	.word	_Label_541
	.word	-16
	.word	4
	.word	0
_Label_538:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_539:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_536\0"
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
	mov	66,r1
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
	mov	1794,r13		! source line 1794
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-244,r4
	mov	23,r3
_Label_3072:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3072
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0AS",r10
	mov	1812,r13		! source line 1812
	mov	"\0\0SE",r10
!   _temp_543 = &strBuffer
	add	r14,-140,r1
	store	r1,[r14+-112]
!   _temp_544 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_546 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_545 = *_temp_546  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_545) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_547 = _temp_545 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_543  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_544  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_549		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_549
!	jmp	_Label_548
_Label_548:
! THEN...
	mov	1815,r13		! source line 1815
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,268,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_549:
! ASSIGNMENT STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0AS",r10
	mov	1818,r13		! source line 1818
	mov	"\0\0SE",r10
!   _temp_550 = &strBuffer
	add	r14,-140,r1
	store	r1,[r14+-92]
!   _temp_551 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_550  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=filePtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-152]
! IF STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0IF",r10
!   if intIsZero (filePtr) then goto _Label_552
	load	[r14+-152],r1
	cmp	r1,r0
	be	_Label_552
	jmp	_Label_553
_Label_552:
! THEN...
	mov	1821,r13		! source line 1821
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,268,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_553:
! SEND STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0SE",r10
!   _temp_554 = &newAddrSpace
	add	r14,-244,r1
	store	r1,[r14+-84]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0AS",r10
	mov	1827,r13		! source line 1827
	mov	"\0\0SE",r10
!   _temp_555 = &newAddrSpace
	add	r14,-244,r1
	store	r1,[r14+-80]
!   if intIsZero (filePtr) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_555  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-152],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
! SEND STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0SE",r10
!   _temp_556 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=filePtr  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_558		(int)
	load	[r14+-148],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_558
!	jmp	_Label_557
_Label_557:
! THEN...
	mov	1833,r13		! source line 1833
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,268,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_558:
! SEND STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_561 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_560 = *_temp_561  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_560) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_562 = _temp_560 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_559 = _temp_562		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_563 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_559  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_565 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_564 = *_temp_565  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_564) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_566 = _temp_564 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_566 = newAddrSpace  (sizeInBytes=92)
	add	r14,-244,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_3073:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3073
! ASSIGNMENT STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0AS",r10
!   _temp_568 = &newAddrSpace
	add	r14,-244,r1
	store	r1,[r14+-36]
!   _temp_569 = _temp_568 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_567 = *_temp_569  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   userStack = _temp_567 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_570 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_570 [999 ] into _temp_571
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_571		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1840,r13		! source line 1840
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=old  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-256]
! SEND STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0SE",r10
!   _temp_572 = &newAddrSpace
	add	r14,-244,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_573 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_573 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_574 = initSystemStackTop		(4 bytes)
	load	[r14+-252],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=userStack  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_574  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1843,r13		! source line 1843
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,268,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_575
	.word	4		! total size of parameters
	.word	264		! frame size = 264
	.word	_Label_576
	.word	8
	.word	4
	.word	_Label_577
	.word	-12
	.word	4
	.word	_Label_578
	.word	-16
	.word	4
	.word	_Label_579
	.word	-20
	.word	4
	.word	_Label_580
	.word	-24
	.word	4
	.word	_Label_581
	.word	-28
	.word	4
	.word	_Label_582
	.word	-32
	.word	4
	.word	_Label_583
	.word	-36
	.word	4
	.word	_Label_584
	.word	-40
	.word	4
	.word	_Label_585
	.word	-44
	.word	4
	.word	_Label_586
	.word	-48
	.word	4
	.word	_Label_587
	.word	-52
	.word	4
	.word	_Label_588
	.word	-56
	.word	4
	.word	_Label_589
	.word	-60
	.word	4
	.word	_Label_590
	.word	-64
	.word	4
	.word	_Label_591
	.word	-68
	.word	4
	.word	_Label_592
	.word	-72
	.word	4
	.word	_Label_593
	.word	-76
	.word	4
	.word	_Label_594
	.word	-80
	.word	4
	.word	_Label_595
	.word	-84
	.word	4
	.word	_Label_596
	.word	-88
	.word	4
	.word	_Label_597
	.word	-92
	.word	4
	.word	_Label_598
	.word	-96
	.word	4
	.word	_Label_599
	.word	-100
	.word	4
	.word	_Label_600
	.word	-104
	.word	4
	.word	_Label_601
	.word	-108
	.word	4
	.word	_Label_602
	.word	-112
	.word	4
	.word	_Label_603
	.word	-116
	.word	4
	.word	_Label_604
	.word	-140
	.word	24
	.word	_Label_605
	.word	-144
	.word	4
	.word	_Label_606
	.word	-148
	.word	4
	.word	_Label_607
	.word	-152
	.word	4
	.word	_Label_608
	.word	-244
	.word	92
	.word	_Label_609
	.word	-248
	.word	4
	.word	_Label_610
	.word	-252
	.word	4
	.word	_Label_611
	.word	-256
	.word	4
	.word	0
_Label_575:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_576:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_604:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_605:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_606:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_607:
	.byte	'P'
	.ascii	"filePtr\0"
	.align
_Label_608:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_609:
	.byte	'I'
	.ascii	"userStack\0"
	.align
_Label_610:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_611:
	.byte	'I'
	.ascii	"old\0"
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
	mov	19,r1
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	1849,r13		! source line 1849
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0AS",r10
	mov	1856,r13		! source line 1856
	mov	"\0\0SE",r10
!   _temp_612 = &strBuffer
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_613 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_614 = *_temp_615  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_614) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_616 = _temp_614 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_612  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_613  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	1857,r13		! source line 1857
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_618		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_618
!	jmp	_Label_617
_Label_617:
! THEN...
	mov	1858,r13		! source line 1858
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_619 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_619  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1858,r13		! source line 1858
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_618:
! CALL STATEMENT...
!   _temp_620 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_620  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_621 = &strBuffer
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_621  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_622
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_623
	.word	8
	.word	4
	.word	_Label_624
	.word	-12
	.word	4
	.word	_Label_625
	.word	-16
	.word	4
	.word	_Label_626
	.word	-20
	.word	4
	.word	_Label_627
	.word	-24
	.word	4
	.word	_Label_628
	.word	-28
	.word	4
	.word	_Label_629
	.word	-32
	.word	4
	.word	_Label_630
	.word	-36
	.word	4
	.word	_Label_631
	.word	-40
	.word	4
	.word	_Label_632
	.word	-64
	.word	24
	.word	_Label_633
	.word	-68
	.word	4
	.word	0
_Label_622:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_623:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_632:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_633:
	.byte	'I'
	.ascii	"i\0"
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
	mov	19,r1
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	1867,r13		! source line 1867
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0AS",r10
	mov	1874,r13		! source line 1874
	mov	"\0\0SE",r10
!   _temp_634 = &strBuffer
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_635 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_636 = *_temp_637  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_636) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _temp_636 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_634  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_635  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_640		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_640
!	jmp	_Label_639
_Label_639:
! THEN...
	mov	1876,r13		! source line 1876
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_641 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1876,r13		! source line 1876
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_640:
! CALL STATEMENT...
!   _temp_642 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_642  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1878,r13		! source line 1878
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_643 = &strBuffer
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_643  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1879,r13		! source line 1879
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_644
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_645
	.word	8
	.word	4
	.word	_Label_646
	.word	-12
	.word	4
	.word	_Label_647
	.word	-16
	.word	4
	.word	_Label_648
	.word	-20
	.word	4
	.word	_Label_649
	.word	-24
	.word	4
	.word	_Label_650
	.word	-28
	.word	4
	.word	_Label_651
	.word	-32
	.word	4
	.word	_Label_652
	.word	-36
	.word	4
	.word	_Label_653
	.word	-40
	.word	4
	.word	_Label_654
	.word	-64
	.word	24
	.word	_Label_655
	.word	-68
	.word	4
	.word	0
_Label_644:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_645:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_654:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_655:
	.byte	'I'
	.ascii	"i\0"
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
	mov	8,r1
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	1885,r13		! source line 1885
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_656 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_656  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1887,r13		! source line 1887
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1888,r13		! source line 1888
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_657 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_657  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1889,r13		! source line 1889
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_658 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_658  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1890,r13		! source line 1890
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_659 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_659  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1891,r13		! source line 1891
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_660 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_660  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1892,r13		! source line 1892
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_661 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_661  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1893,r13		! source line 1893
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1894,r13		! source line 1894
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_662 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_662  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1895,r13		! source line 1895
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_663
	.word	12		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_664
	.word	8
	.word	4
	.word	_Label_665
	.word	12
	.word	4
	.word	_Label_666
	.word	16
	.word	4
	.word	_Label_667
	.word	-12
	.word	4
	.word	_Label_668
	.word	-16
	.word	4
	.word	_Label_669
	.word	-20
	.word	4
	.word	_Label_670
	.word	-24
	.word	4
	.word	_Label_671
	.word	-28
	.word	4
	.word	_Label_672
	.word	-32
	.word	4
	.word	_Label_673
	.word	-36
	.word	4
	.word	0
_Label_663:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_664:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_665:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_666:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_656\0"
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
	mov	8,r1
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
	mov	1901,r13		! source line 1901
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_674 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_674  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1905,r13		! source line 1905
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_675 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_675  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1906,r13		! source line 1906
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_676 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_676  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1907,r13		! source line 1907
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_677 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_677  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_678 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_678  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1909,r13		! source line 1909
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_679 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_679  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1911,r13		! source line 1911
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_680 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_680  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1912,r13		! source line 1912
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_681
	.word	12		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_682
	.word	8
	.word	4
	.word	_Label_683
	.word	12
	.word	4
	.word	_Label_684
	.word	16
	.word	4
	.word	_Label_685
	.word	-12
	.word	4
	.word	_Label_686
	.word	-16
	.word	4
	.word	_Label_687
	.word	-20
	.word	4
	.word	_Label_688
	.word	-24
	.word	4
	.word	_Label_689
	.word	-28
	.word	4
	.word	_Label_690
	.word	-32
	.word	4
	.word	_Label_691
	.word	-36
	.word	4
	.word	0
_Label_681:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_682:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_683:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_684:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_674\0"
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
	mov	5,r1
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	1918,r13		! source line 1918
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_692 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_692  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_693 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1924,r13		! source line 1924
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_694 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_694  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1925,r13		! source line 1925
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1926,r13		! source line 1926
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_695 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_695  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1927,r13		! source line 1927
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_696
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_697
	.word	8
	.word	4
	.word	_Label_698
	.word	12
	.word	4
	.word	_Label_699
	.word	-12
	.word	4
	.word	_Label_700
	.word	-16
	.word	4
	.word	_Label_701
	.word	-20
	.word	4
	.word	_Label_702
	.word	-24
	.word	4
	.word	0
_Label_696:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_697:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_698:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_692\0"
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
	mov	3,r1
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	1933,r13		! source line 1933
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_703 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1939,r13		! source line 1939
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_704 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_705
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_706
	.word	8
	.word	4
	.word	_Label_707
	.word	-12
	.word	4
	.word	_Label_708
	.word	-16
	.word	4
	.word	0
_Label_705:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_706:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_225_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_225_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	2535,r13		! source line 2535
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_709 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_709  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0AS",r10
!   _temp_710 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_710) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_712 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_712) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_711 = *_temp_712  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_710 = _temp_711  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0AS",r10
!   _temp_713 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_713) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_715 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_715) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_714 = *_temp_715  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_713 = _temp_714  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0AS",r10
!   _temp_716 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_716) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_718 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_718) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_717 = *_temp_718  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_716 = _temp_717  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_225_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_719
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_720
	.word	8
	.word	4
	.word	_Label_721
	.word	12
	.word	4
	.word	_Label_722
	.word	-16
	.word	4
	.word	_Label_723
	.word	-9
	.word	1
	.word	_Label_724
	.word	-20
	.word	4
	.word	_Label_725
	.word	-24
	.word	4
	.word	_Label_726
	.word	-10
	.word	1
	.word	_Label_727
	.word	-28
	.word	4
	.word	_Label_728
	.word	-32
	.word	4
	.word	_Label_729
	.word	-11
	.word	1
	.word	_Label_730
	.word	-36
	.word	4
	.word	_Label_731
	.word	-12
	.word	1
	.word	_Label_732
	.word	-40
	.word	4
	.word	_Label_733
	.word	-44
	.word	4
	.word	0
_Label_719:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_720:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_721:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_723:
	.byte	'C'
	.ascii	"_temp_717\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_726:
	.byte	'C'
	.ascii	"_temp_714\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_729:
	.byte	'C'
	.ascii	"_temp_711\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_731:
	.byte	'C'
	.ascii	"_temp_709\0"
	.align
_Label_732:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_733:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_224_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_224_printFCB,r1
	push	r1
	mov	3,r1
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
	mov	2545,r13		! source line 2545
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_735 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_734 = *_temp_735  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_734  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2546,r13		! source line 2546
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2547,r13		! source line 2547
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_224_printFCB:
	.word	_sourceFileName
	.word	_Label_736
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_737
	.word	8
	.word	4
	.word	_Label_738
	.word	-12
	.word	4
	.word	_Label_739
	.word	-16
	.word	4
	.word	0
_Label_736:
	.ascii	"printFCB\0"
	.align
_Label_737:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_223_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_223_printOpen,r1
	push	r1
	mov	4,r1
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	2550,r13		! source line 2550
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_740 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2551,r13		! source line 2551
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_741 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2552,r13		! source line 2552
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_742 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2553,r13		! source line 2553
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_223_printOpen:
	.word	_sourceFileName
	.word	_Label_743
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_744
	.word	8
	.word	4
	.word	_Label_745
	.word	-12
	.word	4
	.word	_Label_746
	.word	-16
	.word	4
	.word	_Label_747
	.word	-20
	.word	4
	.word	0
_Label_743:
	.ascii	"printOpen\0"
	.align
_Label_744:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	2816,r13		! source line 2816
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0AS",r10
	mov	2822,r13		! source line 2822
	mov	"\0\0SE",r10
!   _temp_748 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0SE",r10
!   _temp_749 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-16]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_749  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0SE",r10
!   _temp_750 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_750  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_751
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_752
	.word	-12
	.word	4
	.word	_Label_753
	.word	-16
	.word	4
	.word	_Label_754
	.word	-20
	.word	4
	.word	_Label_755
	.word	-24
	.word	4
	.word	0
_Label_751:
	.ascii	"InitFirstProcess\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_755:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_P_Kernel_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_StartUserProcess,r1
	push	r1
	mov	27,r1
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	2827,r13		! source line 2827
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0AS",r10
	mov	2840,r13		! source line 2840
	mov	"\0\0SE",r10
!   _temp_756 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   Send message GetANewProcess
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=PCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_757 = PCB + 24
	load	[r14+-84],r1
	add	r1,24,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_757 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-76],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_758 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_758 = PCB  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-72],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0AS",r10
	mov	2845,r13		! source line 2845
	mov	"\0\0SE",r10
!   _temp_759 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-68]
!   _temp_760 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_759  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=filePtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0IF",r10
!   if intIsZero (filePtr) then goto _Label_761
	load	[r14+-88],r1
	cmp	r1,r0
	be	_Label_761
	jmp	_Label_762
_Label_761:
! THEN...
	mov	2848,r13		! source line 2848
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_763 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_763  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2848,r13		! source line 2848
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_762:
! ASSIGNMENT STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0AS",r10
	mov	2851,r13		! source line 2851
	mov	"\0\0SE",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_765 = PCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   _temp_764 = _temp_765		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-56]
!   if intIsZero (filePtr) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_764  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_767		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_767
!	jmp	_Label_766
_Label_766:
! THEN...
	mov	2853,r13		! source line 2853
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_768 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_768  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2853,r13		! source line 2853
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_767:
! SEND STATEMENT...
	mov	2856,r13		! source line 2856
	mov	"\0\0SE",r10
!   _temp_769 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=filePtr  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_771 = PCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_772 = _temp_771 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_770 = *_temp_772  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   InitUserStackTop = _temp_770 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	2860,r13		! source line 2860
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_773 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_773 [999 ] into _temp_774
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_774		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2863,r13		! source line 2863
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=old  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! SEND STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0SE",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_775 = PCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_776 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_776 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_777 = initSystemStackTop		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=InitUserStackTop  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_777  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	2869,r13		! source line 2869
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0RE",r10
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_778
	.word	0		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_779
	.word	-12
	.word	4
	.word	_Label_780
	.word	-16
	.word	4
	.word	_Label_781
	.word	-20
	.word	4
	.word	_Label_782
	.word	-24
	.word	4
	.word	_Label_783
	.word	-28
	.word	4
	.word	_Label_784
	.word	-32
	.word	4
	.word	_Label_785
	.word	-36
	.word	4
	.word	_Label_786
	.word	-40
	.word	4
	.word	_Label_787
	.word	-44
	.word	4
	.word	_Label_788
	.word	-48
	.word	4
	.word	_Label_789
	.word	-52
	.word	4
	.word	_Label_790
	.word	-56
	.word	4
	.word	_Label_791
	.word	-60
	.word	4
	.word	_Label_792
	.word	-64
	.word	4
	.word	_Label_793
	.word	-68
	.word	4
	.word	_Label_794
	.word	-72
	.word	4
	.word	_Label_795
	.word	-76
	.word	4
	.word	_Label_796
	.word	-80
	.word	4
	.word	_Label_797
	.word	-84
	.word	4
	.word	_Label_798
	.word	-88
	.word	4
	.word	_Label_799
	.word	-92
	.word	4
	.word	_Label_800
	.word	-96
	.word	4
	.word	_Label_801
	.word	-100
	.word	4
	.word	_Label_802
	.word	-104
	.word	4
	.word	0
_Label_778:
	.ascii	"StartUserProcess\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_797:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_798:
	.byte	'P'
	.ascii	"filePtr\0"
	.align
_Label_799:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_800:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_801:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_802:
	.byte	'I'
	.ascii	"old\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_803
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_803:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_804
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_804:
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
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	234,r13		! source line 234
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_806		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_806
!	jmp	_Label_805
_Label_805:
! THEN...
	mov	236,r13		! source line 236
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_807 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_807  sizeInBytes=4
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
_Label_806:
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
	.word	_Label_809
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_811
	.word	12
	.word	4
	.word	_Label_812
	.word	-12
	.word	4
	.word	_Label_813
	.word	-16
	.word	4
	.word	0
_Label_809:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_810:
	.ascii	"Pself\0"
	.align
_Label_811:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_807\0"
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
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
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
!   if count != 2147483647 then goto _Label_815		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_815
!	jmp	_Label_814
_Label_814:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_816 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_816  sizeInBytes=4
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
_Label_815:
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
!   if count > 0 then goto _Label_818		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_818
!	jmp	_Label_817
_Label_817:
! THEN...
	mov	254,r13		! source line 254
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_819 = &waitingThreads
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
!   _temp_820 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_820 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0SE",r10
!   _temp_821 = &_P_Kernel_readyList
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
_Label_818:
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
	.word	_Label_822
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_823
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_824
	.word	-12
	.word	4
	.word	_Label_825
	.word	-16
	.word	4
	.word	_Label_826
	.word	-20
	.word	4
	.word	_Label_827
	.word	-24
	.word	4
	.word	_Label_828
	.word	-28
	.word	4
	.word	_Label_829
	.word	-32
	.word	4
	.word	0
_Label_822:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_823:
	.ascii	"Pself\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_828:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_829:
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
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
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
!   if count != -2147483648 then goto _Label_831		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_831
!	jmp	_Label_830
_Label_830:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_832 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
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
_Label_831:
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
!   if count >= 0 then goto _Label_834		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_834
!	jmp	_Label_833
_Label_833:
! THEN...
	mov	272,r13		! source line 272
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
!   _temp_835 = &waitingThreads
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
_Label_834:
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
	.word	_Label_836
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_837
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_838
	.word	-12
	.word	4
	.word	_Label_839
	.word	-16
	.word	4
	.word	_Label_840
	.word	-20
	.word	4
	.word	0
_Label_836:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_837:
	.ascii	"Pself\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_840:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_841
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_841:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_842
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_842:
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
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
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
	.word	_Label_844
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_845
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_846
	.word	-12
	.word	4
	.word	0
_Label_844:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_845:
	.ascii	"Pself\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_843\0"
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
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
	mov	304,r13		! source line 304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_848		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_848
!	jmp	_Label_847
_Label_847:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_849 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
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
_Label_848:
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
!   if heldBy == 0 then goto _Label_853		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_853
!   _temp_852 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_854
_Label_853:
!   _temp_852 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_854:
!   if _temp_852 then goto _Label_851 else goto _Label_850
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_850
	jmp	_Label_851
_Label_850:
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
	jmp	_Label_855
_Label_851:
! ELSE...
	mov	314,r13		! source line 314
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0SE",r10
!   _temp_856 = &waitingThreads
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
_Label_855:
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
	.word	_Label_857
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_859
	.word	-16
	.word	4
	.word	_Label_860
	.word	-9
	.word	1
	.word	_Label_861
	.word	-20
	.word	4
	.word	_Label_862
	.word	-24
	.word	4
	.word	0
_Label_857:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_858:
	.ascii	"Pself\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_860:
	.byte	'C'
	.ascii	"_temp_852\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_862:
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
_Label_3090:
	push	r0
	sub	r1,1,r1
	bne	_Label_3090
	mov	322,r13		! source line 322
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_864		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_864
!	jmp	_Label_863
_Label_863:
! THEN...
	mov	327,r13		! source line 327
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_865 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_865  sizeInBytes=4
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
_Label_864:
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
!   _temp_866 = &waitingThreads
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
!   if t == 0 then goto _Label_868		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_868
!	jmp	_Label_867
_Label_867:
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
!   _temp_869 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_869 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0SE",r10
!   _temp_870 = &_P_Kernel_readyList
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
	jmp	_Label_871
_Label_868:
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
_Label_871:
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
	.word	_Label_872
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_873
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_874
	.word	-12
	.word	4
	.word	_Label_875
	.word	-16
	.word	4
	.word	_Label_876
	.word	-20
	.word	4
	.word	_Label_877
	.word	-24
	.word	4
	.word	_Label_878
	.word	-28
	.word	4
	.word	_Label_879
	.word	-32
	.word	4
	.word	0
_Label_872:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_873:
	.ascii	"Pself\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_878:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_879:
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
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	343,r13		! source line 343
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_882		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_882
!	jmp	_Label_881
_Label_881:
!   _temp_880 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_883
_Label_882:
!   _temp_880 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_883:
!   ReturnResult: _temp_880  (sizeInBytes=1)
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
	.word	_Label_884
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_885
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_886
	.word	-9
	.word	1
	.word	0
_Label_884:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_885:
	.ascii	"Pself\0"
	.align
_Label_886:
	.byte	'C'
	.ascii	"_temp_880\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_887
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	jmp	_Method_P_Kernel_Condition_5	! 20:	Hoare_Signal
	.word	0
! 
! Class descriptor:
! 
_Label_887:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_888
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_888:
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
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
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
	.word	_Label_890
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_891
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_892
	.word	-12
	.word	4
	.word	0
_Label_890:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_891:
	.ascii	"Pself\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_889\0"
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
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
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
!   Retrieve Result: targetName=_temp_895  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_895 then goto _Label_894 else goto _Label_893
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_893
	jmp	_Label_894
_Label_893:
! THEN...
	mov	394,r13		! source line 394
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_896 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
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
_Label_894:
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
!   _temp_897 = &waitingThreads
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
	.word	_Label_898
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_900
	.word	12
	.word	4
	.word	_Label_901
	.word	-16
	.word	4
	.word	_Label_902
	.word	-20
	.word	4
	.word	_Label_903
	.word	-9
	.word	1
	.word	_Label_904
	.word	-24
	.word	4
	.word	0
_Label_898:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_899:
	.ascii	"Pself\0"
	.align
_Label_900:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_903:
	.byte	'C'
	.ascii	"_temp_895\0"
	.align
_Label_904:
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
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
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
!   Retrieve Result: targetName=_temp_907  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_907 then goto _Label_906 else goto _Label_905
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_905
	jmp	_Label_906
_Label_905:
! THEN...
	mov	411,r13		! source line 411
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_908 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_908  sizeInBytes=4
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
_Label_906:
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
!   _temp_909 = &waitingThreads
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
!   if t == 0 then goto _Label_911		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_911
!	jmp	_Label_910
_Label_910:
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
!   _temp_912 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_912 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0SE",r10
!   _temp_913 = &_P_Kernel_readyList
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
_Label_911:
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
	.word	_Label_914
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_915
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_916
	.word	12
	.word	4
	.word	_Label_917
	.word	-16
	.word	4
	.word	_Label_918
	.word	-20
	.word	4
	.word	_Label_919
	.word	-24
	.word	4
	.word	_Label_920
	.word	-28
	.word	4
	.word	_Label_921
	.word	-9
	.word	1
	.word	_Label_922
	.word	-32
	.word	4
	.word	_Label_923
	.word	-36
	.word	4
	.word	0
_Label_914:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_915:
	.ascii	"Pself\0"
	.align
_Label_916:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_921:
	.byte	'C'
	.ascii	"_temp_907\0"
	.align
_Label_922:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_923:
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
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
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
!   Retrieve Result: targetName=_temp_926  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_926 then goto _Label_925 else goto _Label_924
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_924
	jmp	_Label_925
_Label_924:
! THEN...
	mov	429,r13		! source line 429
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_927 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_927  sizeInBytes=4
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
_Label_925:
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
_Label_928:
!	jmp	_Label_929
_Label_929:
	mov	432,r13		! source line 432
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
	mov	433,r13		! source line 433
	mov	"\0\0SE",r10
!   _temp_931 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_932
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_932
	jmp	_Label_933
_Label_932:
! THEN...
	mov	435,r13		! source line 435
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0BR",r10
	jmp	_Label_930
! END IF...
_Label_933:
! ASSIGNMENT STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_934 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_934 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0SE",r10
!   _temp_935 = &_P_Kernel_readyList
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
	jmp	_Label_928
_Label_930:
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
	.word	_Label_936
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_937
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_938
	.word	12
	.word	4
	.word	_Label_939
	.word	-16
	.word	4
	.word	_Label_940
	.word	-20
	.word	4
	.word	_Label_941
	.word	-24
	.word	4
	.word	_Label_942
	.word	-28
	.word	4
	.word	_Label_943
	.word	-9
	.word	1
	.word	_Label_944
	.word	-32
	.word	4
	.word	_Label_945
	.word	-36
	.word	4
	.word	0
_Label_936:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_937:
	.ascii	"Pself\0"
	.align
_Label_938:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_943:
	.byte	'C'
	.ascii	"_temp_926\0"
	.align
_Label_944:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_945:
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
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
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
!   Retrieve Result: targetName=_temp_948  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_948 then goto _Label_947 else goto _Label_946
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_946
	jmp	_Label_947
_Label_946:
! THEN...
	mov	451,r13		! source line 451
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_949 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_949  sizeInBytes=4
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
_Label_947:
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
!   _temp_950 = &waitingThreads
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
!   if t == 0 then goto _Label_952		(int)
	load	[r14+-44],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_952
!	jmp	_Label_951
_Label_951:
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
!   _temp_953 = t + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_953 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0SE",r10
!   _temp_954 = &_P_Kernel_readyList
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
_Label_952:
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_955 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_955 = t  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0SE",r10
!   _temp_956 = &waitingThreads
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
	.word	_Label_957
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_958
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_959
	.word	12
	.word	4
	.word	_Label_960
	.word	-16
	.word	4
	.word	_Label_961
	.word	-20
	.word	4
	.word	_Label_962
	.word	-24
	.word	4
	.word	_Label_963
	.word	-28
	.word	4
	.word	_Label_964
	.word	-32
	.word	4
	.word	_Label_965
	.word	-36
	.word	4
	.word	_Label_966
	.word	-9
	.word	1
	.word	_Label_967
	.word	-40
	.word	4
	.word	_Label_968
	.word	-44
	.word	4
	.word	0
_Label_957:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Hoare_Signal\0"
	.align
_Label_958:
	.ascii	"Pself\0"
	.align
_Label_959:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_966:
	.byte	'C'
	.ascii	"_temp_948\0"
	.align
_Label_967:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_968:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_969
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
_Label_969:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_970
	.word	_sourceFileName
	.word	166		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_970:
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
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
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
!   _temp_971 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_971) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_971 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   _temp_972 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_972 [0 ] into _temp_973
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
!   Data Move: *_temp_973 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   _temp_974 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_974 [999 ] into _temp_975
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
!   Data Move: *_temp_975 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   _temp_976 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_976 [999 ] into _temp_977
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
!   stackTop = _temp_977		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   _temp_978 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_980 = &_temp_979
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_980 = _temp_980 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_982:
!   Data Move: *_temp_980 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_980 = _temp_980 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_981 = _temp_981 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_981) then goto _Label_982
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_982
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_983 = &_temp_979
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3098
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3098:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_978 = *_temp_983  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3099:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3099
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
!   _temp_984 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_986 = &_temp_985
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_986 = _temp_986 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_988:
!   Data Move: *_temp_986 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_986 = _temp_986 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_987 = _temp_987 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_987) then goto _Label_988
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_988
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_989 = &_temp_985
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3100
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3100:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_984 = *_temp_989  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3101:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3101
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
	.word	_Label_990
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_991
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_992
	.word	12
	.word	4
	.word	_Label_993
	.word	-12
	.word	4
	.word	_Label_994
	.word	-16
	.word	4
	.word	_Label_995
	.word	-20
	.word	4
	.word	_Label_996
	.word	-84
	.word	64
	.word	_Label_997
	.word	-88
	.word	4
	.word	_Label_998
	.word	-92
	.word	4
	.word	_Label_999
	.word	-96
	.word	4
	.word	_Label_1000
	.word	-100
	.word	4
	.word	_Label_1001
	.word	-156
	.word	56
	.word	_Label_1002
	.word	-160
	.word	4
	.word	_Label_1003
	.word	-164
	.word	4
	.word	_Label_1004
	.word	-168
	.word	4
	.word	_Label_1005
	.word	-172
	.word	4
	.word	_Label_1006
	.word	-176
	.word	4
	.word	_Label_1007
	.word	-180
	.word	4
	.word	_Label_1008
	.word	-184
	.word	4
	.word	_Label_1009
	.word	-188
	.word	4
	.word	0
_Label_990:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_991:
	.ascii	"Pself\0"
	.align
_Label_992:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_971\0"
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
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
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
!   _temp_1010 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1010  (sizeInBytes=4)
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
!   _temp_1012 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1011  sizeInBytes=4
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
	.word	_Label_1013
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1014
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1015
	.word	12
	.word	4
	.word	_Label_1016
	.word	16
	.word	4
	.word	_Label_1017
	.word	-12
	.word	4
	.word	_Label_1018
	.word	-16
	.word	4
	.word	_Label_1019
	.word	-20
	.word	4
	.word	_Label_1020
	.word	-24
	.word	4
	.word	_Label_1021
	.word	-28
	.word	4
	.word	0
_Label_1013:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1014:
	.ascii	"Pself\0"
	.align
_Label_1015:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1016:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1020:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1021:
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
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
	mov	517,r13		! source line 517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1024 == _P_Kernel_currentThread then goto _Label_1023		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1023
!	jmp	_Label_1022
_Label_1022:
! THEN...
	mov	534,r13		! source line 534
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1025 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
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
_Label_1023:
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
!   _temp_1026 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1028		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1028
!	jmp	_Label_1027
_Label_1027:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1030		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1030
!	jmp	_Label_1029
_Label_1029:
! THEN...
	mov	546,r13		! source line 546
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1031 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
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
_Label_1030:
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
!   _temp_1033 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1032  sizeInBytes=4
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
_Label_1028:
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
	.word	_Label_1034
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1035
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1036
	.word	-12
	.word	4
	.word	_Label_1037
	.word	-16
	.word	4
	.word	_Label_1038
	.word	-20
	.word	4
	.word	_Label_1039
	.word	-24
	.word	4
	.word	_Label_1040
	.word	-28
	.word	4
	.word	_Label_1041
	.word	-32
	.word	4
	.word	_Label_1042
	.word	-36
	.word	4
	.word	_Label_1043
	.word	-40
	.word	4
	.word	_Label_1044
	.word	-44
	.word	4
	.word	0
_Label_1034:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1035:
	.ascii	"Pself\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1042:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1043:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1044:
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
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	557,r13		! source line 557
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1046		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1046
!	jmp	_Label_1045
_Label_1045:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1047 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1047  sizeInBytes=4
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
_Label_1046:
! IF STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1050 == _P_Kernel_currentThread then goto _Label_1049		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1049
!	jmp	_Label_1048
_Label_1048:
! THEN...
	mov	574,r13		! source line 574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1051 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1051  sizeInBytes=4
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
_Label_1049:
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
!   _temp_1052 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1053
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1053
	jmp	_Label_1054
_Label_1053:
! THEN...
	mov	582,r13		! source line 582
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1055 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1055  sizeInBytes=4
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
_Label_1054:
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
	.word	_Label_1056
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1057
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1058
	.word	-12
	.word	4
	.word	_Label_1059
	.word	-16
	.word	4
	.word	_Label_1060
	.word	-20
	.word	4
	.word	_Label_1061
	.word	-24
	.word	4
	.word	_Label_1062
	.word	-28
	.word	4
	.word	_Label_1063
	.word	-32
	.word	4
	.word	0
_Label_1056:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1057:
	.ascii	"Pself\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1063:
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
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	589,r13		! source line 589
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0IF",r10
!   _temp_1067 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1067 [0 ] into _temp_1068
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
!   Data Move: _temp_1066 = *_temp_1068  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1066 == 606348324 then goto _Label_1065		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1065
!	jmp	_Label_1064
_Label_1064:
! THEN...
	mov	596,r13		! source line 596
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1069 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1069  sizeInBytes=4
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
	jmp	_Label_1070
_Label_1065:
! ELSE...
	mov	597,r13		! source line 597
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0IF",r10
!   _temp_1074 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1074 [999 ] into _temp_1075
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
!   Data Move: _temp_1073 = *_temp_1075  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1073 == 606348324 then goto _Label_1072		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1072
!	jmp	_Label_1071
_Label_1071:
! THEN...
	mov	598,r13		! source line 598
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1076 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1076  sizeInBytes=4
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
_Label_1072:
! END IF...
_Label_1070:
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
	.word	_Label_1077
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1078
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1079
	.word	-12
	.word	4
	.word	_Label_1080
	.word	-16
	.word	4
	.word	_Label_1081
	.word	-20
	.word	4
	.word	_Label_1082
	.word	-24
	.word	4
	.word	_Label_1083
	.word	-28
	.word	4
	.word	_Label_1084
	.word	-32
	.word	4
	.word	_Label_1085
	.word	-36
	.word	4
	.word	_Label_1086
	.word	-40
	.word	4
	.word	0
_Label_1077:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1078:
	.ascii	"Pself\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1066\0"
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
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
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
!   _temp_1087 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1087  sizeInBytes=4
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
!   _temp_1088 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1088  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1089  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1090 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1090  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1091 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1091  sizeInBytes=4
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
!   _temp_1096 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1097 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1096  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1092:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1097 then goto _Label_1095		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1095
_Label_1093:
	mov	617,r13		! source line 617
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1098 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1098  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1099 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1099  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1100 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1102 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1102 [i ] into _temp_1103
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
!   Data Move: _temp_1101 = *_temp_1103  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1101  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1104 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1104  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1106 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1106 [i ] into _temp_1107
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
!   Data Move: _temp_1105 = *_temp_1107  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1105  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1108 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1108  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1094:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1092
! END FOR
_Label_1095:
! CALL STATEMENT...
!   _temp_1109 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-116]
!   _temp_1110 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1110  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1111 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-108]
!   _temp_1113 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1113 [0 ] into _temp_1114
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
!   _temp_1112 = _temp_1114		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1111  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1112  sizeInBytes=4
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
	be	_Label_1117
	cmp	r1,2
	be	_Label_1118
	cmp	r1,3
	be	_Label_1119
	cmp	r1,4
	be	_Label_1120
	cmp	r1,5
	be	_Label_1121
	jmp	_Label_1115
! CASE 1...
_Label_1117:
! CALL STATEMENT...
!   _temp_1122 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1122  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	631,r13		! source line 631
	mov	"\0\0BR",r10
	jmp	_Label_1116
! CASE 2...
_Label_1118:
! CALL STATEMENT...
!   _temp_1123 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1123  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0BR",r10
	jmp	_Label_1116
! CASE 3...
_Label_1119:
! CALL STATEMENT...
!   _temp_1124 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1124  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	637,r13		! source line 637
	mov	"\0\0BR",r10
	jmp	_Label_1116
! CASE 4...
_Label_1120:
! CALL STATEMENT...
!   _temp_1125 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1125  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0BR",r10
	jmp	_Label_1116
! CASE 5...
_Label_1121:
! CALL STATEMENT...
!   _temp_1126 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1126  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0BR",r10
	jmp	_Label_1116
! DEFAULT CASE...
_Label_1115:
! CALL STATEMENT...
!   _temp_1127 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1127  sizeInBytes=4
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
_Label_1116:
! CALL STATEMENT...
!   _temp_1128 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1128  sizeInBytes=4
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
!   _temp_1129 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1129  sizeInBytes=4
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
!   _temp_1134 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1135 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1134  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1130:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1135 then goto _Label_1133		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1133
_Label_1131:
	mov	651,r13		! source line 651
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1136 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1136  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1137 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1138 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1140 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1140 [i ] into _temp_1141
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
!   Data Move: _temp_1139 = *_temp_1141  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1139  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1142 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1142  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1144 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1144 [i ] into _temp_1145
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
!   Data Move: _temp_1143 = *_temp_1145  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1143  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1146 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1146  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1132:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1130
! END FOR
_Label_1133:
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
	.word	_Label_1147
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1148
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1149
	.word	-12
	.word	4
	.word	_Label_1150
	.word	-16
	.word	4
	.word	_Label_1151
	.word	-20
	.word	4
	.word	_Label_1152
	.word	-24
	.word	4
	.word	_Label_1153
	.word	-28
	.word	4
	.word	_Label_1154
	.word	-32
	.word	4
	.word	_Label_1155
	.word	-36
	.word	4
	.word	_Label_1156
	.word	-40
	.word	4
	.word	_Label_1157
	.word	-44
	.word	4
	.word	_Label_1158
	.word	-48
	.word	4
	.word	_Label_1159
	.word	-52
	.word	4
	.word	_Label_1160
	.word	-56
	.word	4
	.word	_Label_1161
	.word	-60
	.word	4
	.word	_Label_1162
	.word	-64
	.word	4
	.word	_Label_1163
	.word	-68
	.word	4
	.word	_Label_1164
	.word	-72
	.word	4
	.word	_Label_1165
	.word	-76
	.word	4
	.word	_Label_1166
	.word	-80
	.word	4
	.word	_Label_1167
	.word	-84
	.word	4
	.word	_Label_1168
	.word	-88
	.word	4
	.word	_Label_1169
	.word	-92
	.word	4
	.word	_Label_1170
	.word	-96
	.word	4
	.word	_Label_1171
	.word	-100
	.word	4
	.word	_Label_1172
	.word	-104
	.word	4
	.word	_Label_1173
	.word	-108
	.word	4
	.word	_Label_1174
	.word	-112
	.word	4
	.word	_Label_1175
	.word	-116
	.word	4
	.word	_Label_1176
	.word	-120
	.word	4
	.word	_Label_1177
	.word	-124
	.word	4
	.word	_Label_1178
	.word	-128
	.word	4
	.word	_Label_1179
	.word	-132
	.word	4
	.word	_Label_1180
	.word	-136
	.word	4
	.word	_Label_1181
	.word	-140
	.word	4
	.word	_Label_1182
	.word	-144
	.word	4
	.word	_Label_1183
	.word	-148
	.word	4
	.word	_Label_1184
	.word	-152
	.word	4
	.word	_Label_1185
	.word	-156
	.word	4
	.word	_Label_1186
	.word	-160
	.word	4
	.word	_Label_1187
	.word	-164
	.word	4
	.word	_Label_1188
	.word	-168
	.word	4
	.word	_Label_1189
	.word	-172
	.word	4
	.word	_Label_1190
	.word	-176
	.word	4
	.word	_Label_1191
	.word	-180
	.word	4
	.word	_Label_1192
	.word	-184
	.word	4
	.word	_Label_1193
	.word	-188
	.word	4
	.word	_Label_1194
	.word	-192
	.word	4
	.word	_Label_1195
	.word	-196
	.word	4
	.word	0
_Label_1147:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1148:
	.ascii	"Pself\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1194:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1195:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1196
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1196:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1197
	.word	_sourceFileName
	.word	193		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1197:
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
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
	mov	714,r13		! source line 714
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1198 = _StringConst_111
	set	_StringConst_111,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
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
!   _temp_1199 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1201 = &_temp_1200
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-4364]
!   _temp_1201 = _temp_1201 + 4
	load	[r14+-4364],r1
	add	r1,4,r1
	store	r1,[r14+-4364]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1203 = zeros  (sizeInBytes=4164)
	add	r14,-4356,r4
	mov	1041,r3
_Label_3108:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3108
!   _temp_1203 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4356]
	mov	10,r1
	store	r1,[r14+-4360]
_Label_1205:
!   Data Move: *_temp_1201 = _temp_1203  (sizeInBytes=4164)
	add	r14,-4356,r5
	load	[r14+-4364],r4
	mov	1041,r3
_Label_3109:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3109
!   _temp_1201 = _temp_1201 + 4164
	load	[r14+-4364],r1
	add	r1,4164,r1
	store	r1,[r14+-4364]
!   _temp_1202 = _temp_1202 + -1
	load	[r14+-4360],r1
	add	r1,-1,r1
	store	r1,[r14+-4360]
!   if intNotZero (_temp_1202) then goto _Label_1205
	load	[r14+-4360],r1
	cmp	r1,r0
	bne	_Label_1205
!   Initialize the array size...
	mov	10,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   _temp_1206 = &_temp_1200
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-188]
!   make sure array has size 10
	set	-46012,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3110
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3110:
!   make sure array has size 10
	load	[r14+-188],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1199 = *_temp_1206  (sizeInBytes=41644)
	load	[r14+-188],r5
	set	-46012,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3111:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3111
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
!   _temp_1208 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-180]
!   _temp_1209 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-176]
!   Move address of _temp_1209 [i ] into _temp_1210
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
!   Prepare Argument: offset=12  value=_temp_1208  sizeInBytes=4
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
!   _temp_1211 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-168]
!   _temp_1212 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Move address of _temp_1212 [i ] into _temp_1213
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
!   Prepare Argument: offset=12  value=_temp_1211  sizeInBytes=4
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
!   _temp_1214 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-156]
!   _temp_1215 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-152]
!   Move address of _temp_1215 [i ] into _temp_1216
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
!   Prepare Argument: offset=12  value=_temp_1214  sizeInBytes=4
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
!   _temp_1217 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-144]
!   _temp_1218 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-140]
!   Move address of _temp_1218 [i ] into _temp_1219
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
!   Prepare Argument: offset=12  value=_temp_1217  sizeInBytes=4
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
!   _temp_1220 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-132]
!   _temp_1221 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Move address of _temp_1221 [i ] into _temp_1222
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
!   Prepare Argument: offset=12  value=_temp_1220  sizeInBytes=4
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
!   _temp_1223 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-120]
!   _temp_1224 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_1224 [i ] into _temp_1225
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
!   Prepare Argument: offset=12  value=_temp_1223  sizeInBytes=4
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
!   _temp_1226 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-108]
!   _temp_1227 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Move address of _temp_1227 [i ] into _temp_1228
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
!   Prepare Argument: offset=12  value=_temp_1226  sizeInBytes=4
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
!   _temp_1229 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-96]
!   _temp_1230 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Move address of _temp_1230 [i ] into _temp_1231
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
!   Prepare Argument: offset=12  value=_temp_1229  sizeInBytes=4
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
!   _temp_1232 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-84]
!   _temp_1233 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Move address of _temp_1233 [i ] into _temp_1234
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
!   Prepare Argument: offset=12  value=_temp_1232  sizeInBytes=4
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
!   _temp_1235 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-72]
!   _temp_1236 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_1236 [i ] into _temp_1237
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
!   Prepare Argument: offset=12  value=_temp_1235  sizeInBytes=4
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
!   _temp_1242 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1243 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1242  (sizeInBytes=4)
	load	[r14+-60],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_1238:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1243 then goto _Label_1241		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1241
_Label_1239:
	mov	734,r13		! source line 734
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0AS",r10
!   _temp_1244 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1244 [i ] into _temp_1245
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
!   _temp_1246 = _temp_1245 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1246 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0SE",r10
!   _temp_1248 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1248 [i ] into _temp_1249
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
!   _temp_1247 = _temp_1249		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_1250 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1247  sizeInBytes=4
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
_Label_1240:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_1238
! END FOR
_Label_1241:
! ASSIGNMENT STATEMENT...
	mov	738,r13		! source line 738
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
	mov	739,r13		! source line 739
	mov	"\0\0SE",r10
!   _temp_1252 = &aThreadBecameFree
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
	mov	740,r13		! source line 740
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
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_1254 = &threadManagerLock
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
	mov	741,r13		! source line 741
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
	.word	_Label_1255
	.word	4		! total size of parameters
	.word	46020		! frame size = 46020
	.word	_Label_1256
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1257
	.word	-12
	.word	4
	.word	_Label_1258
	.word	-16
	.word	4
	.word	_Label_1259
	.word	-20
	.word	4
	.word	_Label_1260
	.word	-24
	.word	4
	.word	_Label_1261
	.word	-28
	.word	4
	.word	_Label_1262
	.word	-32
	.word	4
	.word	_Label_1263
	.word	-36
	.word	4
	.word	_Label_1264
	.word	-40
	.word	4
	.word	_Label_1265
	.word	-44
	.word	4
	.word	_Label_1266
	.word	-48
	.word	4
	.word	_Label_1267
	.word	-52
	.word	4
	.word	_Label_1268
	.word	-56
	.word	4
	.word	_Label_1269
	.word	-60
	.word	4
	.word	_Label_1270
	.word	-64
	.word	4
	.word	_Label_1271
	.word	-68
	.word	4
	.word	_Label_1272
	.word	-72
	.word	4
	.word	_Label_1273
	.word	-76
	.word	4
	.word	_Label_1274
	.word	-80
	.word	4
	.word	_Label_1275
	.word	-84
	.word	4
	.word	_Label_1276
	.word	-88
	.word	4
	.word	_Label_1277
	.word	-92
	.word	4
	.word	_Label_1278
	.word	-96
	.word	4
	.word	_Label_1279
	.word	-100
	.word	4
	.word	_Label_1280
	.word	-104
	.word	4
	.word	_Label_1281
	.word	-108
	.word	4
	.word	_Label_1282
	.word	-112
	.word	4
	.word	_Label_1283
	.word	-116
	.word	4
	.word	_Label_1284
	.word	-120
	.word	4
	.word	_Label_1285
	.word	-124
	.word	4
	.word	_Label_1286
	.word	-128
	.word	4
	.word	_Label_1287
	.word	-132
	.word	4
	.word	_Label_1288
	.word	-136
	.word	4
	.word	_Label_1289
	.word	-140
	.word	4
	.word	_Label_1290
	.word	-144
	.word	4
	.word	_Label_1291
	.word	-148
	.word	4
	.word	_Label_1292
	.word	-152
	.word	4
	.word	_Label_1293
	.word	-156
	.word	4
	.word	_Label_1294
	.word	-160
	.word	4
	.word	_Label_1295
	.word	-164
	.word	4
	.word	_Label_1296
	.word	-168
	.word	4
	.word	_Label_1297
	.word	-172
	.word	4
	.word	_Label_1298
	.word	-176
	.word	4
	.word	_Label_1299
	.word	-180
	.word	4
	.word	_Label_1300
	.word	-184
	.word	4
	.word	_Label_1301
	.word	-188
	.word	4
	.word	_Label_1302
	.word	-192
	.word	4
	.word	_Label_1303
	.word	-4356
	.word	4164
	.word	_Label_1304
	.word	-4360
	.word	4
	.word	_Label_1305
	.word	-4364
	.word	4
	.word	_Label_1306
	.word	-46008
	.word	41644
	.word	_Label_1307
	.word	-46012
	.word	4
	.word	_Label_1308
	.word	-46016
	.word	4
	.word	_Label_1309
	.word	-46020
	.word	4
	.word	0
_Label_1255:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1256:
	.ascii	"Pself\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1309:
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
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
	mov	746,r13		! source line 746
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	753,r13		! source line 753
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! CALL STATEMENT...
!   _temp_1310 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1310  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	754,r13		! source line 754
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1315 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1316 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1315  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-44]
_Label_1311:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1316 then goto _Label_1314		
	load	[r14+-44],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1314
_Label_1312:
	mov	755,r13		! source line 755
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1317 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1317  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	756,r13		! source line 756
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1318 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1318  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1313:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_1311
! END FOR
_Label_1314:
! CALL STATEMENT...
!   _temp_1319 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1319  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	761,r13		! source line 761
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0SE",r10
!   _temp_1320 = _function_227_PrintObjectAddr
	set	_function_227_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1321 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1320  sizeInBytes=4
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
	mov	763,r13		! source line 763
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	764,r13		! source line 764
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! RETURN STATEMENT...
	mov	764,r13		! source line 764
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
	.word	_Label_1322
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1323
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1324
	.word	-12
	.word	4
	.word	_Label_1325
	.word	-16
	.word	4
	.word	_Label_1326
	.word	-20
	.word	4
	.word	_Label_1327
	.word	-24
	.word	4
	.word	_Label_1328
	.word	-28
	.word	4
	.word	_Label_1329
	.word	-32
	.word	4
	.word	_Label_1330
	.word	-36
	.word	4
	.word	_Label_1331
	.word	-40
	.word	4
	.word	_Label_1332
	.word	-44
	.word	4
	.word	_Label_1333
	.word	-48
	.word	4
	.word	0
_Label_1322:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1323:
	.ascii	"Pself\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1332:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1333:
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
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	769,r13		! source line 769
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0SE",r10
!   _temp_1334 = &threadManagerLock
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
	mov	783,r13		! source line 783
	mov	"\0\0AS",r10
!   newThread = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0WH",r10
_Label_1335:
	mov	784,r13		! source line 784
	mov	"\0\0SE",r10
!   _temp_1338 = &freeList
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
!   if result==true then goto _Label_1336 else goto _Label_1337
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1337
	jmp	_Label_1336
_Label_1336:
	mov	784,r13		! source line 784
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_1339 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_1340 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1339  sizeInBytes=4
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
	jmp	_Label_1335
_Label_1337:
! ASSIGNMENT STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0AS",r10
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_1341 = &freeList
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
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1342 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1342  sizeInBytes=4
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
	mov	790,r13		! source line 790
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1343 = newThread + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1343 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_1344 = &threadManagerLock
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
	mov	792,r13		! source line 792
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
	.word	_Label_1345
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1346
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1347
	.word	-12
	.word	4
	.word	_Label_1348
	.word	-16
	.word	4
	.word	_Label_1349
	.word	-20
	.word	4
	.word	_Label_1350
	.word	-24
	.word	4
	.word	_Label_1351
	.word	-28
	.word	4
	.word	_Label_1352
	.word	-32
	.word	4
	.word	_Label_1353
	.word	-36
	.word	4
	.word	_Label_1354
	.word	-40
	.word	4
	.word	_Label_1355
	.word	-44
	.word	4
	.word	0
_Label_1345:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1346:
	.ascii	"Pself\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1355:
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
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	797,r13		! source line 797
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
!   _temp_1356 = &threadManagerLock
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
	mov	804,r13		! source line 804
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1357 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1357 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_1358 = &freeList
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
	mov	806,r13		! source line 806
	mov	"\0\0SE",r10
!   _temp_1359 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1360 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1359  sizeInBytes=4
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
	mov	807,r13		! source line 807
	mov	"\0\0SE",r10
!   _temp_1361 = &threadManagerLock
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
	mov	807,r13		! source line 807
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
	.word	_Label_1362
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1363
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1364
	.word	12
	.word	4
	.word	_Label_1365
	.word	-12
	.word	4
	.word	_Label_1366
	.word	-16
	.word	4
	.word	_Label_1367
	.word	-20
	.word	4
	.word	_Label_1368
	.word	-24
	.word	4
	.word	_Label_1369
	.word	-28
	.word	4
	.word	_Label_1370
	.word	-32
	.word	4
	.word	0
_Label_1362:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1363:
	.ascii	"Pself\0"
	.align
_Label_1364:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1371
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1371:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1372
	.word	_sourceFileName
	.word	214		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1372:
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
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
	mov	820,r13		! source line 820
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3116:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3116
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   _temp_1374 = &addrSpace
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
	mov	824,r13		! source line 824
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
	.word	_Label_1375
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1376
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1377
	.word	-12
	.word	4
	.word	_Label_1378
	.word	-16
	.word	4
	.word	0
_Label_1375:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1376:
	.ascii	"Pself\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1373\0"
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
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
	mov	834,r13		! source line 834
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1379) then goto _runtimeErrorNullPointer
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
	mov	840,r13		! source line 840
	mov	"\0\0SE",r10
!   _temp_1380 = &addrSpace
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
!   _temp_1381 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1381  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CA",r10
	call	_function_228_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	852,r13		! source line 852
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
	.word	_Label_1382
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1383
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1384
	.word	-12
	.word	4
	.word	_Label_1385
	.word	-16
	.word	4
	.word	_Label_1386
	.word	-20
	.word	4
	.word	0
_Label_1382:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1383:
	.ascii	"Pself\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1379\0"
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
_Label_3118:
	push	r0
	sub	r1,1,r1
	bne	_Label_3118
	mov	857,r13		! source line 857
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1387 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1387  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1388  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1389 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1389  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1390 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1390  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1392		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1392
!	jmp	_Label_1391
_Label_1391:
! THEN...
	mov	867,r13		! source line 867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1393 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1393  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1394
_Label_1392:
! ELSE...
	mov	868,r13		! source line 868
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1396		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1396
!	jmp	_Label_1395
_Label_1395:
! THEN...
	mov	869,r13		! source line 869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1397 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1397  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1398
_Label_1396:
! ELSE...
	mov	870,r13		! source line 870
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1400		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1400
!	jmp	_Label_1399
_Label_1399:
! THEN...
	mov	871,r13		! source line 871
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1401 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1401  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1402
_Label_1400:
! ELSE...
	mov	873,r13		! source line 873
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1403 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1403  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	873,r13		! source line 873
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1402:
! END IF...
_Label_1398:
! END IF...
_Label_1394:
! CALL STATEMENT...
!   _temp_1404 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1404  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1405 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1405  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	879,r13		! source line 879
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
	.word	_Label_1406
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1407
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1408
	.word	-12
	.word	4
	.word	_Label_1409
	.word	-16
	.word	4
	.word	_Label_1410
	.word	-20
	.word	4
	.word	_Label_1411
	.word	-24
	.word	4
	.word	_Label_1412
	.word	-28
	.word	4
	.word	_Label_1413
	.word	-32
	.word	4
	.word	_Label_1414
	.word	-36
	.word	4
	.word	_Label_1415
	.word	-40
	.word	4
	.word	_Label_1416
	.word	-44
	.word	4
	.word	_Label_1417
	.word	-48
	.word	4
	.word	0
_Label_1406:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1407:
	.ascii	"Pself\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1418
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1418:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1419
	.word	_sourceFileName
	.word	234		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1419:
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
_Label_3119:
	push	r0
	sub	r1,1,r1
	bne	_Label_3119
	mov	890,r13		! source line 890
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   _temp_1420 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1456]
!   NEW ARRAY Constructor...
!   _temp_1422 = &_temp_1421
	add	r14,-1452,r1
	store	r1,[r14+-208]
!   _temp_1422 = _temp_1422 + 4
	load	[r14+-208],r1
	add	r1,4,r1
	store	r1,[r14+-208]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1424 = zeros  (sizeInBytes=124)
	add	r14,-200,r4
	mov	31,r3
_Label_3120:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3120
!   _temp_1424 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-200]
	mov	10,r1
	store	r1,[r14+-204]
_Label_1426:
!   Data Move: *_temp_1422 = _temp_1424  (sizeInBytes=124)
	add	r14,-200,r5
	load	[r14+-208],r4
	mov	31,r3
_Label_3121:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3121
!   _temp_1422 = _temp_1422 + 124
	load	[r14+-208],r1
	add	r1,124,r1
	store	r1,[r14+-208]
!   _temp_1423 = _temp_1423 + -1
	load	[r14+-204],r1
	add	r1,-1,r1
	store	r1,[r14+-204]
!   if intNotZero (_temp_1423) then goto _Label_1426
	load	[r14+-204],r1
	cmp	r1,r0
	bne	_Label_1426
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1452]
!   _temp_1427 = &_temp_1421
	add	r14,-1452,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3122
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3122:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1420 = *_temp_1427  (sizeInBytes=1244)
	load	[r14+-72],r5
	load	[r14+-1456],r4
	mov	311,r3
_Label_3123:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3123
! ASSIGNMENT STATEMENT...
	mov	899,r13		! source line 899
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
	mov	900,r13		! source line 900
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1433 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1434 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1433  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1460]
_Label_1429:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1434 then goto _Label_1432		
	load	[r14+-1460],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1432
_Label_1430:
	mov	900,r13		! source line 900
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_1435 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1435 [i ] into _temp_1436
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
	mov	902,r13		! source line 902
	mov	"\0\0SE",r10
!   _temp_1438 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1438 [i ] into _temp_1439
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
!   _temp_1437 = _temp_1439		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1440 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1437  sizeInBytes=4
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
_Label_1431:
!   i = i + 1
	load	[r14+-1460],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1460]
	jmp	_Label_1429
! END FOR
_Label_1432:
! ASSIGNMENT STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	905,r13		! source line 905
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
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1442 = &processManagerLock
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
	mov	907,r13		! source line 907
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
	mov	908,r13		! source line 908
	mov	"\0\0SE",r10
!   _temp_1444 = &aProcessBecameFree
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
	mov	909,r13		! source line 909
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
	mov	910,r13		! source line 910
	mov	"\0\0SE",r10
!   _temp_1446 = &aProcessDied
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
	mov	910,r13		! source line 910
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
	.word	_Label_1447
	.word	4		! total size of parameters
	.word	1460		! frame size = 1460
	.word	_Label_1448
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1449
	.word	-12
	.word	4
	.word	_Label_1450
	.word	-16
	.word	4
	.word	_Label_1451
	.word	-20
	.word	4
	.word	_Label_1452
	.word	-24
	.word	4
	.word	_Label_1453
	.word	-28
	.word	4
	.word	_Label_1454
	.word	-32
	.word	4
	.word	_Label_1455
	.word	-36
	.word	4
	.word	_Label_1456
	.word	-40
	.word	4
	.word	_Label_1457
	.word	-44
	.word	4
	.word	_Label_1458
	.word	-48
	.word	4
	.word	_Label_1459
	.word	-52
	.word	4
	.word	_Label_1460
	.word	-56
	.word	4
	.word	_Label_1461
	.word	-60
	.word	4
	.word	_Label_1462
	.word	-64
	.word	4
	.word	_Label_1463
	.word	-68
	.word	4
	.word	_Label_1464
	.word	-72
	.word	4
	.word	_Label_1465
	.word	-76
	.word	4
	.word	_Label_1466
	.word	-200
	.word	124
	.word	_Label_1467
	.word	-204
	.word	4
	.word	_Label_1468
	.word	-208
	.word	4
	.word	_Label_1469
	.word	-1452
	.word	1244
	.word	_Label_1470
	.word	-1456
	.word	4
	.word	_Label_1471
	.word	-1460
	.word	4
	.word	0
_Label_1447:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1448:
	.ascii	"Pself\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1471:
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
_Label_3124:
	push	r0
	sub	r1,1,r1
	bne	_Label_3124
	mov	915,r13		! source line 915
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1472 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1472  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1477 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1478 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1477  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1473:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1478 then goto _Label_1476		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1476
_Label_1474:
	mov	924,r13		! source line 924
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1479 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1479  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1480 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1480  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1481 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1481 [i ] into _temp_1482
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
_Label_1475:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1473
! END FOR
_Label_1476:
! CALL STATEMENT...
!   _temp_1483 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1483  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_1484 = _function_227_PrintObjectAddr
	set	_function_227_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1485 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1484  sizeInBytes=4
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
	mov	932,r13		! source line 932
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	933,r13		! source line 933
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
	.word	_Label_1486
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1487
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1488
	.word	-12
	.word	4
	.word	_Label_1489
	.word	-16
	.word	4
	.word	_Label_1490
	.word	-20
	.word	4
	.word	_Label_1491
	.word	-24
	.word	4
	.word	_Label_1492
	.word	-28
	.word	4
	.word	_Label_1493
	.word	-32
	.word	4
	.word	_Label_1494
	.word	-36
	.word	4
	.word	_Label_1495
	.word	-40
	.word	4
	.word	_Label_1496
	.word	-44
	.word	4
	.word	_Label_1497
	.word	-48
	.word	4
	.word	_Label_1498
	.word	-52
	.word	4
	.word	_Label_1499
	.word	-56
	.word	4
	.word	0
_Label_1486:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1487:
	.ascii	"Pself\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1498:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1499:
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
_Label_3125:
	push	r0
	sub	r1,1,r1
	bne	_Label_3125
	mov	938,r13		! source line 938
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1500 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1500  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1505 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1506 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1505  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1501:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1506 then goto _Label_1504		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1504
_Label_1502:
	mov	947,r13		! source line 947
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1507 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1507  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_1508 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1508 [i ] into _temp_1509
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
_Label_1503:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1501
! END FOR
_Label_1504:
! CALL STATEMENT...
!   _temp_1510 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1511 = _function_227_PrintObjectAddr
	set	_function_227_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1512 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1511  sizeInBytes=4
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
	mov	954,r13		! source line 954
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	955,r13		! source line 955
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
	.word	_Label_1513
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1514
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1515
	.word	-12
	.word	4
	.word	_Label_1516
	.word	-16
	.word	4
	.word	_Label_1517
	.word	-20
	.word	4
	.word	_Label_1518
	.word	-24
	.word	4
	.word	_Label_1519
	.word	-28
	.word	4
	.word	_Label_1520
	.word	-32
	.word	4
	.word	_Label_1521
	.word	-36
	.word	4
	.word	_Label_1522
	.word	-40
	.word	4
	.word	_Label_1523
	.word	-44
	.word	4
	.word	_Label_1524
	.word	-48
	.word	4
	.word	_Label_1525
	.word	-52
	.word	4
	.word	0
_Label_1513:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1514:
	.ascii	"Pself\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1524:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1525:
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
_Label_3126:
	push	r0
	sub	r1,1,r1
	bne	_Label_3126
	mov	960,r13		! source line 960
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1526 = &processManagerLock
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
	mov	971,r13		! source line 971
	mov	"\0\0WH",r10
_Label_1527:
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_1530 = &freeList
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
!   if result==true then goto _Label_1528 else goto _Label_1529
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1529
	jmp	_Label_1528
_Label_1528:
	mov	971,r13		! source line 971
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_1531 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1532 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1531  sizeInBytes=4
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
	jmp	_Label_1527
_Label_1529:
! ASSIGNMENT STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0AS",r10
	mov	974,r13		! source line 974
	mov	"\0\0SE",r10
!   _temp_1533 = &freeList
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
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1534 = p + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1534 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1535 = p + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1535 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	978,r13		! source line 978
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
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1536 = &processManagerLock
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
	mov	980,r13		! source line 980
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
	.word	_Label_1537
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1538
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1539
	.word	-12
	.word	4
	.word	_Label_1540
	.word	-16
	.word	4
	.word	_Label_1541
	.word	-20
	.word	4
	.word	_Label_1542
	.word	-24
	.word	4
	.word	_Label_1543
	.word	-28
	.word	4
	.word	_Label_1544
	.word	-32
	.word	4
	.word	_Label_1545
	.word	-36
	.word	4
	.word	_Label_1546
	.word	-40
	.word	4
	.word	_Label_1547
	.word	-44
	.word	4
	.word	0
_Label_1537:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1538:
	.ascii	"Pself\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1547:
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
	mov	8,r1
_Label_3127:
	push	r0
	sub	r1,1,r1
	bne	_Label_3127
	mov	985,r13		! source line 985
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0SE",r10
!   _temp_1548 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	992,r13		! source line 992
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1549 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1549 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0SE",r10
!   _temp_1550 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
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
	mov	997,r13		! source line 997
	mov	"\0\0SE",r10
!   _temp_1551 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1552 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1551  sizeInBytes=4
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
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_1553 = &processManagerLock
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
	mov	998,r13		! source line 998
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1554
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1555
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1556
	.word	12
	.word	4
	.word	_Label_1557
	.word	-12
	.word	4
	.word	_Label_1558
	.word	-16
	.word	4
	.word	_Label_1559
	.word	-20
	.word	4
	.word	_Label_1560
	.word	-24
	.word	4
	.word	_Label_1561
	.word	-28
	.word	4
	.word	_Label_1562
	.word	-32
	.word	4
	.word	0
_Label_1554:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1555:
	.ascii	"Pself\0"
	.align
_Label_1556:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1563
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1563:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1564
	.word	_sourceFileName
	.word	257		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1564:
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
_Label_3128:
	push	r0
	sub	r1,1,r1
	bne	_Label_3128
	mov	1031,r13		! source line 1031
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1565 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1565  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1037,r13		! source line 1037
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1038,r13		! source line 1038
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
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_1567 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
	mov	1040,r13		! source line 1040
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1041,r13		! source line 1041
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
	mov	1042,r13		! source line 1042
	mov	"\0\0SE",r10
!   _temp_1569 = &frameManagerLock
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
	mov	1043,r13		! source line 1043
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
	mov	1044,r13		! source line 1044
	mov	"\0\0SE",r10
!   _temp_1571 = &newFramesAvailable
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
	mov	1050,r13		! source line 1050
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1576 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1577 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1576  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1572:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1577 then goto _Label_1575		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1575
_Label_1573:
	mov	1050,r13		! source line 1050
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1580 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1580) then goto _Label_1579
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1579
!	jmp	_Label_1578
_Label_1578:
! THEN...
	mov	1054,r13		! source line 1054
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1581 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1581  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1054,r13		! source line 1054
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1579:
!   Increment the FOR-LOOP index variable and jump back
_Label_1574:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1572
! END FOR
_Label_1575:
! RETURN STATEMENT...
	mov	1050,r13		! source line 1050
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
	.word	_Label_1582
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1583
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1584
	.word	-12
	.word	4
	.word	_Label_1585
	.word	-16
	.word	4
	.word	_Label_1586
	.word	-20
	.word	4
	.word	_Label_1587
	.word	-24
	.word	4
	.word	_Label_1588
	.word	-28
	.word	4
	.word	_Label_1589
	.word	-32
	.word	4
	.word	_Label_1590
	.word	-36
	.word	4
	.word	_Label_1591
	.word	-40
	.word	4
	.word	_Label_1592
	.word	-44
	.word	4
	.word	_Label_1593
	.word	-48
	.word	4
	.word	_Label_1594
	.word	-52
	.word	4
	.word	_Label_1595
	.word	-56
	.word	4
	.word	0
_Label_1582:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1583:
	.ascii	"Pself\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1595:
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
_Label_3129:
	push	r0
	sub	r1,1,r1
	bne	_Label_3129
	mov	1061,r13		! source line 1061
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0SE",r10
!   _temp_1596 = &frameManagerLock
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
!   _temp_1597 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1597  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1066,r13		! source line 1066
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1598 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1598  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1067,r13		! source line 1067
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1599 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1599  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1068,r13		! source line 1068
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0SE",r10
!   _temp_1600 = &framesInUse
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
	mov	1070,r13		! source line 1070
	mov	"\0\0SE",r10
!   _temp_1601 = &frameManagerLock
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
	mov	1070,r13		! source line 1070
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
	.word	_Label_1602
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1603
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1604
	.word	-12
	.word	4
	.word	_Label_1605
	.word	-16
	.word	4
	.word	_Label_1606
	.word	-20
	.word	4
	.word	_Label_1607
	.word	-24
	.word	4
	.word	_Label_1608
	.word	-28
	.word	4
	.word	_Label_1609
	.word	-32
	.word	4
	.word	0
_Label_1602:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1603:
	.ascii	"Pself\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1596\0"
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
_Label_3130:
	push	r0
	sub	r1,1,r1
	bne	_Label_3130
	mov	1075,r13		! source line 1075
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0SE",r10
!   _temp_1610 = &frameManagerLock
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
	mov	1086,r13		! source line 1086
	mov	"\0\0WH",r10
_Label_1611:
!   if numberFreeFrames >= 1 then goto _Label_1613		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1613
!	jmp	_Label_1612
_Label_1612:
	mov	1086,r13		! source line 1086
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0SE",r10
!   _temp_1614 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1615 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1614  sizeInBytes=4
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
	jmp	_Label_1611
_Label_1613:
! ASSIGNMENT STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0AS",r10
	mov	1091,r13		! source line 1091
	mov	"\0\0SE",r10
!   _temp_1616 = &framesInUse
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
	mov	1092,r13		! source line 1092
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
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1617 = &frameManagerLock
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
	mov	1098,r13		! source line 1098
	mov	"\0\0AS",r10
!   _temp_1618 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1618		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1100,r13		! source line 1100
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
	.word	_Label_1619
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1620
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1621
	.word	-12
	.word	4
	.word	_Label_1622
	.word	-16
	.word	4
	.word	_Label_1623
	.word	-20
	.word	4
	.word	_Label_1624
	.word	-24
	.word	4
	.word	_Label_1625
	.word	-28
	.word	4
	.word	_Label_1626
	.word	-32
	.word	4
	.word	_Label_1627
	.word	-36
	.word	4
	.word	_Label_1628
	.word	-40
	.word	4
	.word	0
_Label_1619:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1620:
	.ascii	"Pself\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1627:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1628:
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
_Label_3131:
	push	r0
	sub	r1,1,r1
	bne	_Label_3131
	mov	1105,r13		! source line 1105
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0SE",r10
!   _temp_1629 = &frameManagerLock
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
	mov	1116,r13		! source line 1116
	mov	"\0\0WH",r10
_Label_1630:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1632		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1632
!	jmp	_Label_1631
_Label_1631:
	mov	1116,r13		! source line 1116
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0SE",r10
!   _temp_1633 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1634 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1633  sizeInBytes=4
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
	jmp	_Label_1630
_Label_1632:
! FOR STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1639 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1640 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1639  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1635:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1640 then goto _Label_1638		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1638
_Label_1636:
	mov	1119,r13		! source line 1119
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0AS",r10
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_1641 = &framesInUse
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
	mov	1124,r13		! source line 1124
	mov	"\0\0AS",r10
!   _temp_1642 = bit_num * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   free_frame = 1048576 + _temp_1642		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1126,r13		! source line 1126
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
_Label_1637:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1635
! END FOR
_Label_1638:
! ASSIGNMENT STATEMENT...
	mov	1129,r13		! source line 1129
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
	mov	1130,r13		! source line 1130
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1643 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1643 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_1644 = &frameManagerLock
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
	mov	1131,r13		! source line 1131
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
	.word	_Label_1645
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1646
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1647
	.word	12
	.word	4
	.word	_Label_1648
	.word	16
	.word	4
	.word	_Label_1649
	.word	-12
	.word	4
	.word	_Label_1650
	.word	-16
	.word	4
	.word	_Label_1651
	.word	-20
	.word	4
	.word	_Label_1652
	.word	-24
	.word	4
	.word	_Label_1653
	.word	-28
	.word	4
	.word	_Label_1654
	.word	-32
	.word	4
	.word	_Label_1655
	.word	-36
	.word	4
	.word	_Label_1656
	.word	-40
	.word	4
	.word	_Label_1657
	.word	-44
	.word	4
	.word	_Label_1658
	.word	-48
	.word	4
	.word	_Label_1659
	.word	-52
	.word	4
	.word	_Label_1660
	.word	-56
	.word	4
	.word	0
_Label_1645:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1646:
	.ascii	"Pself\0"
	.align
_Label_1647:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1648:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1658:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1659:
	.byte	'I'
	.ascii	"bit_num\0"
	.align
_Label_1660:
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
_Label_3132:
	push	r0
	sub	r1,1,r1
	bne	_Label_3132
	mov	1136,r13		! source line 1136
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1661 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: numFramesReturned = *_temp_1661  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1147,r13		! source line 1147
	mov	"\0\0SE",r10
!   _temp_1662 = &frameManagerLock
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
	mov	1148,r13		! source line 1148
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1667 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1668 = numFramesReturned - 1		(int)
	load	[r14+-52],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1667  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_1663:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1668 then goto _Label_1666		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1666
_Label_1664:
	mov	1148,r13		! source line 1148
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0AS",r10
	mov	1149,r13		! source line 1149
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
	mov	1150,r13		! source line 1150
	mov	"\0\0AS",r10
!   _temp_1669 = frameAddr - 1048576		(int)
	load	[r14+-56],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bit_num = _temp_1669 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_1670 = &framesInUse
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
_Label_1665:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1663
! END FOR
_Label_1666:
! ASSIGNMENT STATEMENT...
	mov	1153,r13		! source line 1153
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
	mov	1154,r13		! source line 1154
	mov	"\0\0SE",r10
!   _temp_1671 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1672 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1671  sizeInBytes=4
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
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_1673 = &frameManagerLock
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
	mov	1155,r13		! source line 1155
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
	.word	_Label_1674
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1675
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1676
	.word	12
	.word	4
	.word	_Label_1677
	.word	-12
	.word	4
	.word	_Label_1678
	.word	-16
	.word	4
	.word	_Label_1679
	.word	-20
	.word	4
	.word	_Label_1680
	.word	-24
	.word	4
	.word	_Label_1681
	.word	-28
	.word	4
	.word	_Label_1682
	.word	-32
	.word	4
	.word	_Label_1683
	.word	-36
	.word	4
	.word	_Label_1684
	.word	-40
	.word	4
	.word	_Label_1685
	.word	-44
	.word	4
	.word	_Label_1686
	.word	-48
	.word	4
	.word	_Label_1687
	.word	-52
	.word	4
	.word	_Label_1688
	.word	-56
	.word	4
	.word	_Label_1689
	.word	-60
	.word	4
	.word	0
_Label_1674:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1675:
	.ascii	"Pself\0"
	.align
_Label_1676:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1686:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1687:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_1688:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1689:
	.byte	'I'
	.ascii	"bit_num\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1690
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
_Label_1690:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1691
	.word	_sourceFileName
	.word	276		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1691:
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
_Label_3133:
	push	r0
	sub	r1,1,r1
	bne	_Label_3133
	mov	1166,r13		! source line 1166
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1170,r13		! source line 1170
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0AS",r10
!   _temp_1692 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1694 = &_temp_1693
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1694 = _temp_1694 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1696:
!   Data Move: *_temp_1694 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1694 = _temp_1694 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1695 = _temp_1695 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1695) then goto _Label_1696
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1696
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1697 = &_temp_1693
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3134
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3134:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1692 = *_temp_1697  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3135:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3135
! RETURN STATEMENT...
	mov	1171,r13		! source line 1171
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
	.word	_Label_1698
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1699
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1700
	.word	-12
	.word	4
	.word	_Label_1701
	.word	-16
	.word	4
	.word	_Label_1702
	.word	-20
	.word	4
	.word	_Label_1703
	.word	-104
	.word	84
	.word	_Label_1704
	.word	-108
	.word	4
	.word	0
_Label_1698:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1699:
	.ascii	"Pself\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1692\0"
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
_Label_3136:
	push	r0
	sub	r1,1,r1
	bne	_Label_3136
	mov	1176,r13		! source line 1176
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1705 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1705  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1181,r13		! source line 1181
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1706 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1706  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1182,r13		! source line 1182
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1711 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1712 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1711  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1707:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1712 then goto _Label_1710		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1710
_Label_1708:
	mov	1183,r13		! source line 1183
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1713 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1713  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1184,r13		! source line 1184
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1715 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1715 [i ] into _temp_1716
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
!   _temp_1714 = _temp_1716		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1714  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1185,r13		! source line 1185
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1717 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1717  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1186,r13		! source line 1186
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1719 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1719 [i ] into _temp_1720
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
!   Data Move: _temp_1718 = *_temp_1720  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1718  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1187,r13		! source line 1187
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1721 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1721  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1722 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1722  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1189,r13		! source line 1189
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1723 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1723  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1190,r13		! source line 1190
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1725) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1724  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1724  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1191,r13		! source line 1191
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1726 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1726  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0IF",r10
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1730) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1729  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1729) then goto _Label_1728
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1728
!	jmp	_Label_1727
_Label_1727:
! THEN...
	mov	1194,r13		! source line 1194
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1732) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1731  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1731  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1194,r13		! source line 1194
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1733
_Label_1728:
! ELSE...
	mov	1196,r13		! source line 1196
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1734 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1734  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1196,r13		! source line 1196
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1733:
! CALL STATEMENT...
!   _temp_1735 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1735  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1198,r13		! source line 1198
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1199,r13		! source line 1199
	mov	"\0\0IF",r10
	mov	1199,r13		! source line 1199
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1738) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1736 else goto _Label_1737
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1737
	jmp	_Label_1736
_Label_1736:
! THEN...
	mov	1200,r13		! source line 1200
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1739 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1739  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1200,r13		! source line 1200
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1740
_Label_1737:
! ELSE...
	mov	1202,r13		! source line 1202
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1741 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1741  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1202,r13		! source line 1202
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1740:
! CALL STATEMENT...
!   _temp_1742 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1742  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1204,r13		! source line 1204
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0IF",r10
	mov	1205,r13		! source line 1205
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1745) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1743 else goto _Label_1744
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1744
	jmp	_Label_1743
_Label_1743:
! THEN...
	mov	1206,r13		! source line 1206
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1746 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1746  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1206,r13		! source line 1206
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1747
_Label_1744:
! ELSE...
	mov	1208,r13		! source line 1208
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1748 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1748  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1208,r13		! source line 1208
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1747:
! CALL STATEMENT...
!   _temp_1749 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1749  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1210,r13		! source line 1210
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0IF",r10
	mov	1211,r13		! source line 1211
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1752) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1750 else goto _Label_1751
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1751
	jmp	_Label_1750
_Label_1750:
! THEN...
	mov	1212,r13		! source line 1212
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1753 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1753  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1212,r13		! source line 1212
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1754
_Label_1751:
! ELSE...
	mov	1214,r13		! source line 1214
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1755 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1755  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1214,r13		! source line 1214
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1754:
! CALL STATEMENT...
!   _temp_1756 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1756  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1216,r13		! source line 1216
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0IF",r10
	mov	1217,r13		! source line 1217
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1759) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1757 else goto _Label_1758
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1758
	jmp	_Label_1757
_Label_1757:
! THEN...
	mov	1218,r13		! source line 1218
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1760 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1760  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1761
_Label_1758:
! ELSE...
	mov	1220,r13		! source line 1220
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1762 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1762  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1761:
! CALL STATEMENT...
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1709:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1707
! END FOR
_Label_1710:
! RETURN STATEMENT...
	mov	1183,r13		! source line 1183
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
	.word	_Label_1763
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1764
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1765
	.word	-12
	.word	4
	.word	_Label_1766
	.word	-16
	.word	4
	.word	_Label_1767
	.word	-20
	.word	4
	.word	_Label_1768
	.word	-24
	.word	4
	.word	_Label_1769
	.word	-28
	.word	4
	.word	_Label_1770
	.word	-32
	.word	4
	.word	_Label_1771
	.word	-36
	.word	4
	.word	_Label_1772
	.word	-40
	.word	4
	.word	_Label_1773
	.word	-44
	.word	4
	.word	_Label_1774
	.word	-48
	.word	4
	.word	_Label_1775
	.word	-52
	.word	4
	.word	_Label_1776
	.word	-56
	.word	4
	.word	_Label_1777
	.word	-60
	.word	4
	.word	_Label_1778
	.word	-64
	.word	4
	.word	_Label_1779
	.word	-68
	.word	4
	.word	_Label_1780
	.word	-72
	.word	4
	.word	_Label_1781
	.word	-76
	.word	4
	.word	_Label_1782
	.word	-80
	.word	4
	.word	_Label_1783
	.word	-84
	.word	4
	.word	_Label_1784
	.word	-88
	.word	4
	.word	_Label_1785
	.word	-92
	.word	4
	.word	_Label_1786
	.word	-96
	.word	4
	.word	_Label_1787
	.word	-100
	.word	4
	.word	_Label_1788
	.word	-104
	.word	4
	.word	_Label_1789
	.word	-108
	.word	4
	.word	_Label_1790
	.word	-112
	.word	4
	.word	_Label_1791
	.word	-116
	.word	4
	.word	_Label_1792
	.word	-120
	.word	4
	.word	_Label_1793
	.word	-124
	.word	4
	.word	_Label_1794
	.word	-128
	.word	4
	.word	_Label_1795
	.word	-132
	.word	4
	.word	_Label_1796
	.word	-136
	.word	4
	.word	_Label_1797
	.word	-140
	.word	4
	.word	_Label_1798
	.word	-144
	.word	4
	.word	_Label_1799
	.word	-148
	.word	4
	.word	_Label_1800
	.word	-152
	.word	4
	.word	_Label_1801
	.word	-156
	.word	4
	.word	_Label_1802
	.word	-160
	.word	4
	.word	_Label_1803
	.word	-164
	.word	4
	.word	_Label_1804
	.word	-168
	.word	4
	.word	0
_Label_1763:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1764:
	.ascii	"Pself\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1804:
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
_Label_3137:
	push	r0
	sub	r1,1,r1
	bne	_Label_3137
	mov	1228,r13		! source line 1228
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0RE",r10
!   _temp_1807 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1807 [entry ] into _temp_1808
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
!   Data Move: _temp_1806 = *_temp_1808  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1805 = _temp_1806 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1805  (sizeInBytes=4)
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
	.word	_Label_1809
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1811
	.word	12
	.word	4
	.word	_Label_1812
	.word	-12
	.word	4
	.word	_Label_1813
	.word	-16
	.word	4
	.word	_Label_1814
	.word	-20
	.word	4
	.word	_Label_1815
	.word	-24
	.word	4
	.word	0
_Label_1809:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1810:
	.ascii	"Pself\0"
	.align
_Label_1811:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1805\0"
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
_Label_3138:
	push	r0
	sub	r1,1,r1
	bne	_Label_3138
	mov	1238,r13		! source line 1238
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0RE",r10
!   _temp_1818 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1818 [entry ] into _temp_1819
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
!   Data Move: _temp_1817 = *_temp_1819  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1816 = _temp_1817 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1816  (sizeInBytes=4)
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
	.word	_Label_1820
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1821
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1822
	.word	12
	.word	4
	.word	_Label_1823
	.word	-12
	.word	4
	.word	_Label_1824
	.word	-16
	.word	4
	.word	_Label_1825
	.word	-20
	.word	4
	.word	_Label_1826
	.word	-24
	.word	4
	.word	0
_Label_1820:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1821:
	.ascii	"Pself\0"
	.align
_Label_1822:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1816\0"
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
_Label_3139:
	push	r0
	sub	r1,1,r1
	bne	_Label_3139
	mov	1247,r13		! source line 1247
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0AS",r10
!   _temp_1827 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1827 [entry ] into _temp_1828
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
!   _temp_1832 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1832 [entry ] into _temp_1833
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
!   Data Move: _temp_1831 = *_temp_1833  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1830 = _temp_1831 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1829 = _temp_1830 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1828 = _temp_1829  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1252,r13		! source line 1252
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
	.word	_Label_1834
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1836
	.word	12
	.word	4
	.word	_Label_1837
	.word	16
	.word	4
	.word	_Label_1838
	.word	-12
	.word	4
	.word	_Label_1839
	.word	-16
	.word	4
	.word	_Label_1840
	.word	-20
	.word	4
	.word	_Label_1841
	.word	-24
	.word	4
	.word	_Label_1842
	.word	-28
	.word	4
	.word	_Label_1843
	.word	-32
	.word	4
	.word	_Label_1844
	.word	-36
	.word	4
	.word	0
_Label_1834:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1835:
	.ascii	"Pself\0"
	.align
_Label_1836:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1837:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1827\0"
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
_Label_3140:
	push	r0
	sub	r1,1,r1
	bne	_Label_3140
	mov	1257,r13		! source line 1257
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0RE",r10
!   _temp_1848 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1848 [entry ] into _temp_1849
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
!   Data Move: _temp_1847 = *_temp_1849  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1846 = _temp_1847 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1846) then goto _Label_1850
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1850
!   _temp_1845 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1851
_Label_1850:
!   _temp_1845 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1851:
!   ReturnResult: _temp_1845  (sizeInBytes=1)
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
	.word	_Label_1852
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1853
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1854
	.word	12
	.word	4
	.word	_Label_1855
	.word	-16
	.word	4
	.word	_Label_1856
	.word	-20
	.word	4
	.word	_Label_1857
	.word	-24
	.word	4
	.word	_Label_1858
	.word	-28
	.word	4
	.word	_Label_1859
	.word	-9
	.word	1
	.word	0
_Label_1852:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1853:
	.ascii	"Pself\0"
	.align
_Label_1854:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1859:
	.byte	'C'
	.ascii	"_temp_1845\0"
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
_Label_3141:
	push	r0
	sub	r1,1,r1
	bne	_Label_3141
	mov	1266,r13		! source line 1266
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0RE",r10
!   _temp_1863 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1863 [entry ] into _temp_1864
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
!   Data Move: _temp_1862 = *_temp_1864  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1861 = _temp_1862 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1861) then goto _Label_1865
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1865
!   _temp_1860 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1866
_Label_1865:
!   _temp_1860 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1866:
!   ReturnResult: _temp_1860  (sizeInBytes=1)
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
	.word	_Label_1867
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1868
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1869
	.word	12
	.word	4
	.word	_Label_1870
	.word	-16
	.word	4
	.word	_Label_1871
	.word	-20
	.word	4
	.word	_Label_1872
	.word	-24
	.word	4
	.word	_Label_1873
	.word	-28
	.word	4
	.word	_Label_1874
	.word	-9
	.word	1
	.word	0
_Label_1867:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1868:
	.ascii	"Pself\0"
	.align
_Label_1869:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1874:
	.byte	'C'
	.ascii	"_temp_1860\0"
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
_Label_3142:
	push	r0
	sub	r1,1,r1
	bne	_Label_3142
	mov	1275,r13		! source line 1275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0RE",r10
!   _temp_1878 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1878 [entry ] into _temp_1879
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
!   Data Move: _temp_1877 = *_temp_1879  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1876 = _temp_1877 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1876) then goto _Label_1880
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1880
!   _temp_1875 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1881
_Label_1880:
!   _temp_1875 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1881:
!   ReturnResult: _temp_1875  (sizeInBytes=1)
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
	.word	_Label_1882
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1883
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1884
	.word	12
	.word	4
	.word	_Label_1885
	.word	-16
	.word	4
	.word	_Label_1886
	.word	-20
	.word	4
	.word	_Label_1887
	.word	-24
	.word	4
	.word	_Label_1888
	.word	-28
	.word	4
	.word	_Label_1889
	.word	-9
	.word	1
	.word	0
_Label_1882:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1883:
	.ascii	"Pself\0"
	.align
_Label_1884:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1889:
	.byte	'C'
	.ascii	"_temp_1875\0"
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
_Label_3143:
	push	r0
	sub	r1,1,r1
	bne	_Label_3143
	mov	1284,r13		! source line 1284
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0RE",r10
!   _temp_1893 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1893 [entry ] into _temp_1894
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
!   Data Move: _temp_1892 = *_temp_1894  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1891 = _temp_1892 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1891) then goto _Label_1895
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1895
!   _temp_1890 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1896
_Label_1895:
!   _temp_1890 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1896:
!   ReturnResult: _temp_1890  (sizeInBytes=1)
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
	.word	_Label_1897
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1898
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1899
	.word	12
	.word	4
	.word	_Label_1900
	.word	-16
	.word	4
	.word	_Label_1901
	.word	-20
	.word	4
	.word	_Label_1902
	.word	-24
	.word	4
	.word	_Label_1903
	.word	-28
	.word	4
	.word	_Label_1904
	.word	-9
	.word	1
	.word	0
_Label_1897:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1898:
	.ascii	"Pself\0"
	.align
_Label_1899:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1904:
	.byte	'C'
	.ascii	"_temp_1890\0"
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
_Label_3144:
	push	r0
	sub	r1,1,r1
	bne	_Label_3144
	mov	1293,r13		! source line 1293
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
!   _temp_1905 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1905 [entry ] into _temp_1906
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
!   _temp_1909 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1909 [entry ] into _temp_1910
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
!   Data Move: _temp_1908 = *_temp_1910  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1907 = _temp_1908 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1906 = _temp_1907  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
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
	.word	_Label_1911
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1912
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1913
	.word	12
	.word	4
	.word	_Label_1914
	.word	-12
	.word	4
	.word	_Label_1915
	.word	-16
	.word	4
	.word	_Label_1916
	.word	-20
	.word	4
	.word	_Label_1917
	.word	-24
	.word	4
	.word	_Label_1918
	.word	-28
	.word	4
	.word	_Label_1919
	.word	-32
	.word	4
	.word	0
_Label_1911:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1912:
	.ascii	"Pself\0"
	.align
_Label_1913:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1905\0"
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
_Label_3145:
	push	r0
	sub	r1,1,r1
	bne	_Label_3145
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1306,r13		! source line 1306
	mov	"\0\0AS",r10
!   _temp_1920 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1920 [entry ] into _temp_1921
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
!   _temp_1924 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1924 [entry ] into _temp_1925
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
!   Data Move: _temp_1923 = *_temp_1925  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1922 = _temp_1923 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1921 = _temp_1922  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1306,r13		! source line 1306
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
	.word	_Label_1926
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1927
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1928
	.word	12
	.word	4
	.word	_Label_1929
	.word	-12
	.word	4
	.word	_Label_1930
	.word	-16
	.word	4
	.word	_Label_1931
	.word	-20
	.word	4
	.word	_Label_1932
	.word	-24
	.word	4
	.word	_Label_1933
	.word	-28
	.word	4
	.word	_Label_1934
	.word	-32
	.word	4
	.word	0
_Label_1926:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1927:
	.ascii	"Pself\0"
	.align
_Label_1928:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1920\0"
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
_Label_3146:
	push	r0
	sub	r1,1,r1
	bne	_Label_3146
	mov	1311,r13		! source line 1311
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0AS",r10
!   _temp_1935 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1935 [entry ] into _temp_1936
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
!   _temp_1939 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1939 [entry ] into _temp_1940
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
!   Data Move: _temp_1938 = *_temp_1940  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1937 = _temp_1938 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1936 = _temp_1937  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1315,r13		! source line 1315
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
	.word	_Label_1941
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1942
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1943
	.word	12
	.word	4
	.word	_Label_1944
	.word	-12
	.word	4
	.word	_Label_1945
	.word	-16
	.word	4
	.word	_Label_1946
	.word	-20
	.word	4
	.word	_Label_1947
	.word	-24
	.word	4
	.word	_Label_1948
	.word	-28
	.word	4
	.word	_Label_1949
	.word	-32
	.word	4
	.word	0
_Label_1941:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1942:
	.ascii	"Pself\0"
	.align
_Label_1943:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1935\0"
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
_Label_3147:
	push	r0
	sub	r1,1,r1
	bne	_Label_3147
	mov	1320,r13		! source line 1320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0AS",r10
!   _temp_1950 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1950 [entry ] into _temp_1951
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
!   _temp_1954 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1954 [entry ] into _temp_1955
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
!   Data Move: _temp_1953 = *_temp_1955  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1952 = _temp_1953 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1951 = _temp_1952  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1324,r13		! source line 1324
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
	.word	_Label_1956
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1957
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1958
	.word	12
	.word	4
	.word	_Label_1959
	.word	-12
	.word	4
	.word	_Label_1960
	.word	-16
	.word	4
	.word	_Label_1961
	.word	-20
	.word	4
	.word	_Label_1962
	.word	-24
	.word	4
	.word	_Label_1963
	.word	-28
	.word	4
	.word	_Label_1964
	.word	-32
	.word	4
	.word	0
_Label_1956:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1957:
	.ascii	"Pself\0"
	.align
_Label_1958:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1950\0"
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
_Label_3148:
	push	r0
	sub	r1,1,r1
	bne	_Label_3148
	mov	1329,r13		! source line 1329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1333,r13		! source line 1333
	mov	"\0\0AS",r10
!   _temp_1965 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1965 [entry ] into _temp_1966
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
!   _temp_1969 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1969 [entry ] into _temp_1970
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
!   Data Move: _temp_1968 = *_temp_1970  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1967 = _temp_1968 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1966 = _temp_1967  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1333,r13		! source line 1333
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
	.word	_Label_1971
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1972
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1973
	.word	12
	.word	4
	.word	_Label_1974
	.word	-12
	.word	4
	.word	_Label_1975
	.word	-16
	.word	4
	.word	_Label_1976
	.word	-20
	.word	4
	.word	_Label_1977
	.word	-24
	.word	4
	.word	_Label_1978
	.word	-28
	.word	4
	.word	_Label_1979
	.word	-32
	.word	4
	.word	0
_Label_1971:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1972:
	.ascii	"Pself\0"
	.align
_Label_1973:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1965\0"
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
_Label_3149:
	push	r0
	sub	r1,1,r1
	bne	_Label_3149
	mov	1338,r13		! source line 1338
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0AS",r10
!   _temp_1980 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1980 [entry ] into _temp_1981
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
!   _temp_1984 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1984 [entry ] into _temp_1985
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
!   Data Move: _temp_1983 = *_temp_1985  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1982 = _temp_1983 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1981 = _temp_1982  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1342,r13		! source line 1342
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
	.word	_Label_1986
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1987
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1988
	.word	12
	.word	4
	.word	_Label_1989
	.word	-12
	.word	4
	.word	_Label_1990
	.word	-16
	.word	4
	.word	_Label_1991
	.word	-20
	.word	4
	.word	_Label_1992
	.word	-24
	.word	4
	.word	_Label_1993
	.word	-28
	.word	4
	.word	_Label_1994
	.word	-32
	.word	4
	.word	0
_Label_1986:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1987:
	.ascii	"Pself\0"
	.align
_Label_1988:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1980\0"
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
_Label_3150:
	push	r0
	sub	r1,1,r1
	bne	_Label_3150
	mov	1347,r13		! source line 1347
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0AS",r10
!   _temp_1995 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1995 [entry ] into _temp_1996
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
!   _temp_1999 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1999 [entry ] into _temp_2000
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
!   Data Move: _temp_1998 = *_temp_2000  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1997 = _temp_1998 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1996 = _temp_1997  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1351,r13		! source line 1351
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
	.word	_Label_2001
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2002
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2003
	.word	12
	.word	4
	.word	_Label_2004
	.word	-12
	.word	4
	.word	_Label_2005
	.word	-16
	.word	4
	.word	_Label_2006
	.word	-20
	.word	4
	.word	_Label_2007
	.word	-24
	.word	4
	.word	_Label_2008
	.word	-28
	.word	4
	.word	_Label_2009
	.word	-32
	.word	4
	.word	0
_Label_2001:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2002:
	.ascii	"Pself\0"
	.align
_Label_2003:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1995\0"
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
_Label_3151:
	push	r0
	sub	r1,1,r1
	bne	_Label_3151
	mov	1356,r13		! source line 1356
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1360,r13		! source line 1360
	mov	"\0\0AS",r10
!   _temp_2010 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2010 [entry ] into _temp_2011
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
!   _temp_2014 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2014 [entry ] into _temp_2015
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
!   Data Move: _temp_2013 = *_temp_2015  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2012 = _temp_2013 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2011 = _temp_2012  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1360,r13		! source line 1360
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
	.word	_Label_2016
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2017
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2018
	.word	12
	.word	4
	.word	_Label_2019
	.word	-12
	.word	4
	.word	_Label_2020
	.word	-16
	.word	4
	.word	_Label_2021
	.word	-20
	.word	4
	.word	_Label_2022
	.word	-24
	.word	4
	.word	_Label_2023
	.word	-28
	.word	4
	.word	_Label_2024
	.word	-32
	.word	4
	.word	0
_Label_2016:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2017:
	.ascii	"Pself\0"
	.align
_Label_2018:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2010\0"
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
_Label_3152:
	push	r0
	sub	r1,1,r1
	bne	_Label_3152
	mov	1365,r13		! source line 1365
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2026 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2026 [0 ] into _temp_2027
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
!   _temp_2025 = _temp_2027		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2028 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2025  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2028  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1371,r13		! source line 1371
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1371,r13		! source line 1371
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
	.word	_Label_2029
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2030
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2031
	.word	-12
	.word	4
	.word	_Label_2032
	.word	-16
	.word	4
	.word	_Label_2033
	.word	-20
	.word	4
	.word	_Label_2034
	.word	-24
	.word	4
	.word	0
_Label_2029:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2030:
	.ascii	"Pself\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2025\0"
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
_Label_3153:
	push	r0
	sub	r1,1,r1
	bne	_Label_3153
	mov	1376,r13		! source line 1376
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2035
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2035
	jmp	_Label_2036
_Label_2035:
! THEN...
	mov	1392,r13		! source line 1392
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2037
_Label_2036:
! ELSE...
	mov	1393,r13		! source line 1393
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2039		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2039
!	jmp	_Label_2038
_Label_2038:
! THEN...
	mov	1394,r13		! source line 1394
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2039:
! END IF...
_Label_2037:
! ASSIGNMENT STATEMENT...
	mov	1396,r13		! source line 1396
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
	mov	1397,r13		! source line 1397
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
	mov	1400,r13		! source line 1400
	mov	"\0\0WH",r10
_Label_2040:
!	jmp	_Label_2041
_Label_2041:
	mov	1400,r13		! source line 1400
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2044		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2044
!	jmp	_Label_2043
_Label_2043:
! THEN...
	mov	1402,r13		! source line 1402
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2045 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2045  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1402,r13		! source line 1402
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2044:
! IF STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0IF",r10
	mov	1405,r13		! source line 1405
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2049) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2048  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2048 then goto _Label_2047 else goto _Label_2046
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2046
	jmp	_Label_2047
_Label_2046:
! THEN...
	mov	1406,r13		! source line 1406
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2050 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2050  sizeInBytes=4
	load	[r14+-24],r1
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
_Label_2047:
! ASSIGNMENT STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0AS",r10
	mov	1409,r13		! source line 1409
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2052) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2051  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2051 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0WH",r10
_Label_2053:
!   if offset >= 8192 then goto _Label_2055		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2055
!	jmp	_Label_2054
_Label_2054:
	mov	1411,r13		! source line 1411
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2056 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2056  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2058		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2058
!	jmp	_Label_2057
_Label_2057:
! THEN...
	mov	1420,r13		! source line 1420
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2058:
! END WHILE...
	jmp	_Label_2053
_Label_2055:
! ASSIGNMENT STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2040
_Label_2042:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2059
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2060
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2061
	.word	12
	.word	4
	.word	_Label_2062
	.word	16
	.word	4
	.word	_Label_2063
	.word	20
	.word	4
	.word	_Label_2064
	.word	-9
	.word	1
	.word	_Label_2065
	.word	-16
	.word	4
	.word	_Label_2066
	.word	-20
	.word	4
	.word	_Label_2067
	.word	-24
	.word	4
	.word	_Label_2068
	.word	-28
	.word	4
	.word	_Label_2069
	.word	-10
	.word	1
	.word	_Label_2070
	.word	-32
	.word	4
	.word	_Label_2071
	.word	-36
	.word	4
	.word	_Label_2072
	.word	-40
	.word	4
	.word	_Label_2073
	.word	-44
	.word	4
	.word	_Label_2074
	.word	-48
	.word	4
	.word	0
_Label_2059:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2060:
	.ascii	"Pself\0"
	.align
_Label_2061:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2062:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2063:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2064:
	.byte	'C'
	.ascii	"_temp_2056\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2069:
	.byte	'C'
	.ascii	"_temp_2048\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2071:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2072:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2073:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2074:
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
_Label_3154:
	push	r0
	sub	r1,1,r1
	bne	_Label_3154
	mov	1430,r13		! source line 1430
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2075
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2075
	jmp	_Label_2076
_Label_2075:
! THEN...
	mov	1442,r13		! source line 1442
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2077
_Label_2076:
! ELSE...
	mov	1443,r13		! source line 1443
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2079		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2079
!	jmp	_Label_2078
_Label_2078:
! THEN...
	mov	1444,r13		! source line 1444
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2079:
! END IF...
_Label_2077:
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
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
	mov	1447,r13		! source line 1447
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
	mov	1448,r13		! source line 1448
	mov	"\0\0WH",r10
_Label_2080:
!	jmp	_Label_2081
_Label_2081:
	mov	1448,r13		! source line 1448
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2086		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2086
	jmp	_Label_2083
_Label_2086:
	mov	1450,r13		! source line 1450
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2088) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2087  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2087 then goto _Label_2085 else goto _Label_2083
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2083
	jmp	_Label_2085
_Label_2085:
	mov	1451,r13		! source line 1451
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2090) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2089  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2089 then goto _Label_2084 else goto _Label_2083
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2083
	jmp	_Label_2084
_Label_2083:
! THEN...
	mov	1452,r13		! source line 1452
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2084:
! ASSIGNMENT STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0AS",r10
	mov	1454,r13		! source line 1454
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2092) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2091  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2091 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0WH",r10
_Label_2093:
!   if offset >= 8192 then goto _Label_2095		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2095
!	jmp	_Label_2094
_Label_2094:
	mov	1455,r13		! source line 1455
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2096 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2096  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1459,r13		! source line 1459
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2098		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2098
!	jmp	_Label_2097
_Label_2097:
! THEN...
	mov	1462,r13		! source line 1462
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2098:
! END WHILE...
	jmp	_Label_2093
_Label_2095:
! ASSIGNMENT STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2080
_Label_2082:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2099
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2100
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2101
	.word	12
	.word	4
	.word	_Label_2102
	.word	16
	.word	4
	.word	_Label_2103
	.word	20
	.word	4
	.word	_Label_2104
	.word	-9
	.word	1
	.word	_Label_2105
	.word	-16
	.word	4
	.word	_Label_2106
	.word	-20
	.word	4
	.word	_Label_2107
	.word	-24
	.word	4
	.word	_Label_2108
	.word	-10
	.word	1
	.word	_Label_2109
	.word	-28
	.word	4
	.word	_Label_2110
	.word	-11
	.word	1
	.word	_Label_2111
	.word	-32
	.word	4
	.word	_Label_2112
	.word	-36
	.word	4
	.word	_Label_2113
	.word	-40
	.word	4
	.word	_Label_2114
	.word	-44
	.word	4
	.word	0
_Label_2099:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2100:
	.ascii	"Pself\0"
	.align
_Label_2101:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2102:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2103:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2104:
	.byte	'C'
	.ascii	"_temp_2096\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2108:
	.byte	'C'
	.ascii	"_temp_2089\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2110:
	.byte	'C'
	.ascii	"_temp_2087\0"
	.align
_Label_2111:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2112:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2113:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2114:
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
_Label_3155:
	push	r0
	sub	r1,1,r1
	bne	_Label_3155
	mov	1472,r13		! source line 1472
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0IF",r10
	mov	1496,r13		! source line 1496
	mov	"\0\0SE",r10
!   _temp_2118 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2119) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2118  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2117  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2117 >= 4 then goto _Label_2116		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2116
!	jmp	_Label_2115
_Label_2115:
! THEN...
	mov	1499,r13		! source line 1499
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2116:
! IF STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2121		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2121
!	jmp	_Label_2120
_Label_2120:
! THEN...
	mov	1504,r13		! source line 1504
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2121:
! ASSIGNMENT STATEMENT...
	mov	1507,r13		! source line 1507
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
	mov	1509,r13		! source line 1509
	mov	"\0\0RE",r10
	mov	1509,r13		! source line 1509
	mov	"\0\0SE",r10
!   _temp_2124 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2123 = _temp_2124 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2125 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2126) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2123  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2125  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2122  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2122  (sizeInBytes=4)
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
	.word	_Label_2127
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2128
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2129
	.word	12
	.word	4
	.word	_Label_2130
	.word	16
	.word	4
	.word	_Label_2131
	.word	20
	.word	4
	.word	_Label_2132
	.word	-12
	.word	4
	.word	_Label_2133
	.word	-16
	.word	4
	.word	_Label_2134
	.word	-20
	.word	4
	.word	_Label_2135
	.word	-24
	.word	4
	.word	_Label_2136
	.word	-28
	.word	4
	.word	_Label_2137
	.word	-32
	.word	4
	.word	_Label_2138
	.word	-36
	.word	4
	.word	_Label_2139
	.word	-40
	.word	4
	.word	_Label_2140
	.word	-44
	.word	4
	.word	0
_Label_2127:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2128:
	.ascii	"Pself\0"
	.align
_Label_2129:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2130:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2131:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2140:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2141
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2141:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2142
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2142:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3156:
	push	r0
	sub	r1,1,r1
	bne	_Label_3156
	mov	1971,r13		! source line 1971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2143 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2143  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1972,r13		! source line 1972
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0SE",r10
!   _temp_2145 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0SE",r10
!   _temp_2147 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
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
	mov	1982,r13		! source line 1982
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2148
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2149
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2150
	.word	-12
	.word	4
	.word	_Label_2151
	.word	-16
	.word	4
	.word	_Label_2152
	.word	-20
	.word	4
	.word	_Label_2153
	.word	-24
	.word	4
	.word	_Label_2154
	.word	-28
	.word	4
	.word	0
_Label_2148:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2149:
	.ascii	"Pself\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3157:
	push	r0
	sub	r1,1,r1
	bne	_Label_3157
	mov	1987,r13		! source line 1987
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0SE",r10
!   _temp_2155 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0WH",r10
_Label_2156:
!	jmp	_Label_2157
_Label_2157:
	mov	2001,r13		! source line 2001
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0SE",r10
!   _temp_2159 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2160) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2159  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0SE",r10
!   _temp_2161 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2008,r13		! source line 2008
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2170 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2164
	cmp	r1,2
	be	_Label_2165
	cmp	r1,3
	be	_Label_2166
	cmp	r1,4
	be	_Label_2167
	cmp	r1,5
	be	_Label_2168
	cmp	r1,6
	be	_Label_2169
	jmp	_Label_2162
! CASE 1...
_Label_2164:
! SEND STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0SE",r10
!   _temp_2171 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2165:
! CALL STATEMENT...
!   _temp_2172 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2172  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2013,r13		! source line 2013
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2166:
! CALL STATEMENT...
!   _temp_2173 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2173  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2015,r13		! source line 2015
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2167:
! CALL STATEMENT...
!   _temp_2174 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2174  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2017,r13		! source line 2017
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2168:
! BREAK STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0BR",r10
	jmp	_Label_2163
! CASE 6...
_Label_2169:
! CALL STATEMENT...
!   _temp_2175 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2175  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2023,r13		! source line 2023
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2162:
! CALL STATEMENT...
!   _temp_2176 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2176  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2025,r13		! source line 2025
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2163:
! END WHILE...
	jmp	_Label_2156
_Label_2158:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2177
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2178
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2179
	.word	12
	.word	4
	.word	_Label_2180
	.word	16
	.word	4
	.word	_Label_2181
	.word	20
	.word	4
	.word	_Label_2182
	.word	-12
	.word	4
	.word	_Label_2183
	.word	-16
	.word	4
	.word	_Label_2184
	.word	-20
	.word	4
	.word	_Label_2185
	.word	-24
	.word	4
	.word	_Label_2186
	.word	-28
	.word	4
	.word	_Label_2187
	.word	-32
	.word	4
	.word	_Label_2188
	.word	-36
	.word	4
	.word	_Label_2189
	.word	-40
	.word	4
	.word	_Label_2190
	.word	-44
	.word	4
	.word	_Label_2191
	.word	-48
	.word	4
	.word	_Label_2192
	.word	-52
	.word	4
	.word	0
_Label_2177:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2178:
	.ascii	"Pself\0"
	.align
_Label_2179:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2180:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2181:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2034,r13		! source line 2034
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2193
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2194
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2195
	.word	12
	.word	4
	.word	_Label_2196
	.word	16
	.word	4
	.word	_Label_2197
	.word	20
	.word	4
	.word	_Label_2198
	.word	24
	.word	4
	.word	0
_Label_2193:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2194:
	.ascii	"Pself\0"
	.align
_Label_2195:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2196:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2197:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2198:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3158:
	push	r0
	sub	r1,1,r1
	bne	_Label_3158
	mov	2060,r13		! source line 2060
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0SE",r10
!   _temp_2199 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0WH",r10
_Label_2200:
!	jmp	_Label_2201
_Label_2201:
	mov	2073,r13		! source line 2073
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0SE",r10
!   _temp_2203 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2204) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2203  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0SE",r10
!   _temp_2205 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2079,r13		! source line 2079
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2214 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2208
	cmp	r1,2
	be	_Label_2209
	cmp	r1,3
	be	_Label_2210
	cmp	r1,4
	be	_Label_2211
	cmp	r1,5
	be	_Label_2212
	cmp	r1,6
	be	_Label_2213
	jmp	_Label_2206
! CASE 1...
_Label_2208:
! SEND STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0SE",r10
!   _temp_2215 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2209:
! CALL STATEMENT...
!   _temp_2216 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2216  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2084,r13		! source line 2084
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2210:
! CALL STATEMENT...
!   _temp_2217 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2217  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2086,r13		! source line 2086
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2211:
! CALL STATEMENT...
!   _temp_2218 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2218  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2088,r13		! source line 2088
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2212:
! BREAK STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0BR",r10
	jmp	_Label_2207
! CASE 6...
_Label_2213:
! CALL STATEMENT...
!   _temp_2219 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2219  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2094,r13		! source line 2094
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2206:
! CALL STATEMENT...
!   _temp_2220 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2220  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2096,r13		! source line 2096
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2207:
! END WHILE...
	jmp	_Label_2200
_Label_2202:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2221
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2222
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2223
	.word	12
	.word	4
	.word	_Label_2224
	.word	16
	.word	4
	.word	_Label_2225
	.word	20
	.word	4
	.word	_Label_2226
	.word	-12
	.word	4
	.word	_Label_2227
	.word	-16
	.word	4
	.word	_Label_2228
	.word	-20
	.word	4
	.word	_Label_2229
	.word	-24
	.word	4
	.word	_Label_2230
	.word	-28
	.word	4
	.word	_Label_2231
	.word	-32
	.word	4
	.word	_Label_2232
	.word	-36
	.word	4
	.word	_Label_2233
	.word	-40
	.word	4
	.word	_Label_2234
	.word	-44
	.word	4
	.word	_Label_2235
	.word	-48
	.word	4
	.word	_Label_2236
	.word	-52
	.word	4
	.word	0
_Label_2221:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2222:
	.ascii	"Pself\0"
	.align
_Label_2223:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2224:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2225:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2105,r13		! source line 2105
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2237
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2238
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2239
	.word	12
	.word	4
	.word	_Label_2240
	.word	16
	.word	4
	.word	_Label_2241
	.word	20
	.word	4
	.word	_Label_2242
	.word	24
	.word	4
	.word	0
_Label_2237:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2238:
	.ascii	"Pself\0"
	.align
_Label_2239:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2240:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2241:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2242:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2243
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2243:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2244
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2244:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3159:
	push	r0
	sub	r1,1,r1
	bne	_Label_3159
	mov	2136,r13		! source line 2136
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2245 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2245  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2143,r13		! source line 2143
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0SE",r10
!   _temp_2247 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0SE",r10
!   _temp_2250 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0AS",r10
!   _temp_2251 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2253 = &_temp_2252
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2253 = _temp_2253 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2255 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3160:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3160
!   _temp_2255 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2257:
!   Data Move: *_temp_2253 = _temp_2255  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3161:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3161
!   _temp_2253 = _temp_2253 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2254 = _temp_2254 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2254) then goto _Label_2257
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2257
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2258 = &_temp_2252
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3162
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3162:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2251 = *_temp_2258  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3163:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3163
! FOR STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2263 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2264 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2263  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2259:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2264 then goto _Label_2262		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2262
_Label_2260:
	mov	2153,r13		! source line 2153
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0AS",r10
!   _temp_2265 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2265 [i ] into _temp_2266
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2267 = _temp_2266 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2267 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0SE",r10
!   _temp_2268 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2268 [i ] into _temp_2269
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0SE",r10
!   _temp_2271 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2271 [i ] into _temp_2272
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2270 = _temp_2272		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2273 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2270  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2261:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2259
! END FOR
_Label_2262:
! ASSIGNMENT STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0SE",r10
!   _temp_2276 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0AS",r10
!   _temp_2277 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2279 = &_temp_2278
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2279 = _temp_2279 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2281 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3164:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3164
!   _temp_2281 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2283:
!   Data Move: *_temp_2279 = _temp_2281  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3165:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3165
!   _temp_2279 = _temp_2279 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2280 = _temp_2280 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2280) then goto _Label_2283
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2283
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2284 = &_temp_2278
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3166
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3166:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2277 = *_temp_2284  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3167:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3167
! FOR STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2289 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2290 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2289  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2285:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2290 then goto _Label_2288		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2288
_Label_2286:
	mov	2165,r13		! source line 2165
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   _temp_2291 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2291 [i ] into _temp_2292
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2293 = _temp_2292 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2293 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0SE",r10
!   _temp_2295 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2295 [i ] into _temp_2296
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2294 = _temp_2296		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2297 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2294  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2287:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2285
! END FOR
_Label_2288:
! ASSIGNMENT STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3168:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3168
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0AS",r10
!   _temp_2299 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2300 = _temp_2299 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2300 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0AS",r10
	mov	2177,r13		! source line 2177
	mov	"\0\0SE",r10
!   _temp_2301 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0SE",r10
!   _temp_2302 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2303
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2304
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2305
	.word	-12
	.word	4
	.word	_Label_2306
	.word	-16
	.word	4
	.word	_Label_2307
	.word	-20
	.word	4
	.word	_Label_2308
	.word	-24
	.word	4
	.word	_Label_2309
	.word	-28
	.word	4
	.word	_Label_2310
	.word	-32
	.word	4
	.word	_Label_2311
	.word	-36
	.word	4
	.word	_Label_2312
	.word	-40
	.word	4
	.word	_Label_2313
	.word	-44
	.word	4
	.word	_Label_2314
	.word	-48
	.word	4
	.word	_Label_2315
	.word	-52
	.word	4
	.word	_Label_2316
	.word	-56
	.word	4
	.word	_Label_2317
	.word	-60
	.word	4
	.word	_Label_2318
	.word	-64
	.word	4
	.word	_Label_2319
	.word	-68
	.word	4
	.word	_Label_2320
	.word	-72
	.word	4
	.word	_Label_2321
	.word	-100
	.word	28
	.word	_Label_2322
	.word	-104
	.word	4
	.word	_Label_2323
	.word	-108
	.word	4
	.word	_Label_2324
	.word	-392
	.word	284
	.word	_Label_2325
	.word	-396
	.word	4
	.word	_Label_2326
	.word	-400
	.word	4
	.word	_Label_2327
	.word	-404
	.word	4
	.word	_Label_2328
	.word	-408
	.word	4
	.word	_Label_2329
	.word	-412
	.word	4
	.word	_Label_2330
	.word	-416
	.word	4
	.word	_Label_2331
	.word	-420
	.word	4
	.word	_Label_2332
	.word	-424
	.word	4
	.word	_Label_2333
	.word	-428
	.word	4
	.word	_Label_2334
	.word	-432
	.word	4
	.word	_Label_2335
	.word	-436
	.word	4
	.word	_Label_2336
	.word	-440
	.word	4
	.word	_Label_2337
	.word	-444
	.word	4
	.word	_Label_2338
	.word	-448
	.word	4
	.word	_Label_2339
	.word	-452
	.word	4
	.word	_Label_2340
	.word	-456
	.word	4
	.word	_Label_2341
	.word	-460
	.word	4
	.word	_Label_2342
	.word	-500
	.word	40
	.word	_Label_2343
	.word	-504
	.word	4
	.word	_Label_2344
	.word	-508
	.word	4
	.word	_Label_2345
	.word	-912
	.word	404
	.word	_Label_2346
	.word	-916
	.word	4
	.word	_Label_2347
	.word	-920
	.word	4
	.word	_Label_2348
	.word	-924
	.word	4
	.word	_Label_2349
	.word	-928
	.word	4
	.word	_Label_2350
	.word	-932
	.word	4
	.word	_Label_2351
	.word	-936
	.word	4
	.word	_Label_2352
	.word	-940
	.word	4
	.word	_Label_2353
	.word	-944
	.word	4
	.word	0
_Label_2303:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2304:
	.ascii	"Pself\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2353:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3169:
	push	r0
	sub	r1,1,r1
	bne	_Label_3169
	mov	2185,r13		! source line 2185
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0SE",r10
!   _temp_2354 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2355 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2355  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2188,r13		! source line 2188
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2360 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2361 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2360  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2356:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2361 then goto _Label_2359		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2359
_Label_2357:
	mov	2189,r13		! source line 2189
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2362 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2362  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2190,r13		! source line 2190
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2191,r13		! source line 2191
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2363 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2363  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2192,r13		! source line 2192
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0SE",r10
!   _temp_2364 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2364 [i ] into _temp_2365
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2358:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2356
! END FOR
_Label_2359:
! CALL STATEMENT...
!   _temp_2366 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2366  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2195,r13		! source line 2195
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0SE",r10
!   _temp_2367 = _function_224_printFCB
	set	_function_224_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2368 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2367  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2197,r13		! source line 2197
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2369 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2369  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2198,r13		! source line 2198
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2374 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2375 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2374  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2370:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2375 then goto _Label_2373		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2373
_Label_2371:
	mov	2199,r13		! source line 2199
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2376 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2376  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2200,r13		! source line 2200
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2201,r13		! source line 2201
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2377 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2377  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2202,r13		! source line 2202
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2379 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2379 [i ] into _temp_2380
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2378 = _temp_2380		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2378  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2203,r13		! source line 2203
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2381 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2381  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2204,r13		! source line 2204
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0SE",r10
!   _temp_2382 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2382 [i ] into _temp_2383
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2372:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2370
! END FOR
_Label_2373:
! CALL STATEMENT...
!   _temp_2384 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2384  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2207,r13		! source line 2207
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0SE",r10
!   _temp_2385 = _function_223_printOpen
	set	_function_223_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2386 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2385  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0SE",r10
!   _temp_2387 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2209,r13		! source line 2209
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2388
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2389
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2390
	.word	-12
	.word	4
	.word	_Label_2391
	.word	-16
	.word	4
	.word	_Label_2392
	.word	-20
	.word	4
	.word	_Label_2393
	.word	-24
	.word	4
	.word	_Label_2394
	.word	-28
	.word	4
	.word	_Label_2395
	.word	-32
	.word	4
	.word	_Label_2396
	.word	-36
	.word	4
	.word	_Label_2397
	.word	-40
	.word	4
	.word	_Label_2398
	.word	-44
	.word	4
	.word	_Label_2399
	.word	-48
	.word	4
	.word	_Label_2400
	.word	-52
	.word	4
	.word	_Label_2401
	.word	-56
	.word	4
	.word	_Label_2402
	.word	-60
	.word	4
	.word	_Label_2403
	.word	-64
	.word	4
	.word	_Label_2404
	.word	-68
	.word	4
	.word	_Label_2405
	.word	-72
	.word	4
	.word	_Label_2406
	.word	-76
	.word	4
	.word	_Label_2407
	.word	-80
	.word	4
	.word	_Label_2408
	.word	-84
	.word	4
	.word	_Label_2409
	.word	-88
	.word	4
	.word	_Label_2410
	.word	-92
	.word	4
	.word	_Label_2411
	.word	-96
	.word	4
	.word	_Label_2412
	.word	-100
	.word	4
	.word	_Label_2413
	.word	-104
	.word	4
	.word	_Label_2414
	.word	-108
	.word	4
	.word	_Label_2415
	.word	-112
	.word	4
	.word	_Label_2416
	.word	-116
	.word	4
	.word	0
_Label_2388:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2389:
	.ascii	"Pself\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2416:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3170:
	push	r0
	sub	r1,1,r1
	bne	_Label_3170
	mov	2214,r13		! source line 2214
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0AS",r10
	mov	2230,r13		! source line 2230
	mov	"\0\0SE",r10
!   _temp_2417 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2418
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2418
	jmp	_Label_2419
_Label_2418:
! THEN...
	mov	2232,r13		! source line 2232
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2419:
! SEND STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0SE",r10
!   _temp_2420 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2237,r13		! source line 2237
	mov	"\0\0WH",r10
_Label_2421:
	mov	2237,r13		! source line 2237
	mov	"\0\0SE",r10
!   _temp_2424 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2422 else goto _Label_2423
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2423
	jmp	_Label_2422
_Label_2422:
	mov	2237,r13		! source line 2237
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0SE",r10
!   _temp_2425 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2426 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2425  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2421
_Label_2423:
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
	mov	2240,r13		! source line 2240
	mov	"\0\0SE",r10
!   _temp_2427 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2428 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2428 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2429 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2429 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2430 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2430 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0SE",r10
!   _temp_2431 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2250,r13		! source line 2250
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2432
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2433
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2434
	.word	12
	.word	4
	.word	_Label_2435
	.word	-12
	.word	4
	.word	_Label_2436
	.word	-16
	.word	4
	.word	_Label_2437
	.word	-20
	.word	4
	.word	_Label_2438
	.word	-24
	.word	4
	.word	_Label_2439
	.word	-28
	.word	4
	.word	_Label_2440
	.word	-32
	.word	4
	.word	_Label_2441
	.word	-36
	.word	4
	.word	_Label_2442
	.word	-40
	.word	4
	.word	_Label_2443
	.word	-44
	.word	4
	.word	_Label_2444
	.word	-48
	.word	4
	.word	_Label_2445
	.word	-52
	.word	4
	.word	_Label_2446
	.word	-56
	.word	4
	.word	0
_Label_2432:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2433:
	.ascii	"Pself\0"
	.align
_Label_2434:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2445:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2446:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3171:
	push	r0
	sub	r1,1,r1
	bne	_Label_3171
	mov	2255,r13		! source line 2255
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2448		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2448
!	jmp	_Label_2447
_Label_2447:
! THEN...
	mov	2286,r13		! source line 2286
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2449 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2449  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2286,r13		! source line 2286
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2448:
! ASSIGNMENT STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0WH",r10
_Label_2450:
!   if numFiles <= 0 then goto _Label_2452		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2452
!	jmp	_Label_2451
_Label_2451:
	mov	2296,r13		! source line 2296
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2453 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2453  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2297,r13		! source line 2297
	mov	"\0\0CA",r10
	call	_function_225_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2454 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2454  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2299,r13		! source line 2299
	mov	"\0\0CA",r10
	call	_function_225_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2455 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2455  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2301,r13		! source line 2301
	mov	"\0\0CA",r10
	call	_function_225_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2459 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2459 then goto _Label_2457		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2457
!	jmp	_Label_2458
_Label_2458:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2461
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2460 = _temp_2461		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2460  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2304,r13		! source line 2304
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2456 else goto _Label_2457
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2457
	jmp	_Label_2456
_Label_2456:
! THEN...
	mov	2305,r13		! source line 2305
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0BR",r10
	jmp	_Label_2452
! END IF...
_Label_2457:
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2450
_Label_2452:
! IF STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2463		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2463
!	jmp	_Label_2462
_Label_2462:
! THEN...
	mov	2313,r13		! source line 2313
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2463:
! SEND STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0SE",r10
!   _temp_2464 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2469 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2470 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2469  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2465:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2470 then goto _Label_2468		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2468
_Label_2466:
	mov	2318,r13		! source line 2318
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0AS",r10
!   _temp_2471 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2471 [i ] into _temp_2472
!     make sure index expr is >= 0
	load	[r14+-136],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2472		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2476 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2475 = *_temp_2476  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2475 != start then goto _Label_2474		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2474
!	jmp	_Label_2473
_Label_2473:
! THEN...
	mov	2321,r13		! source line 2321
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2477 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2480 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2479 = *_temp_2480  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2478 = _temp_2479 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2477 = _temp_2478  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0SE",r10
!   _temp_2481 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2474:
!   Increment the FOR-LOOP index variable and jump back
_Label_2467:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2465
! END FOR
_Label_2468:
! WHILE STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0WH",r10
_Label_2482:
	mov	2328,r13		! source line 2328
	mov	"\0\0SE",r10
!   _temp_2485 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2483 else goto _Label_2484
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2484
	jmp	_Label_2483
_Label_2483:
	mov	2328,r13		! source line 2328
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0SE",r10
!   _temp_2486 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2487 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2486  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2482
_Label_2484:
! ASSIGNMENT STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0AS",r10
	mov	2331,r13		! source line 2331
	mov	"\0\0SE",r10
!   _temp_2488 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_2489 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2490 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2490 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2491 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2491 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2492 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2492 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2497 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2496 = *_temp_2497  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2496 < 0 then goto _Label_2495		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2495
	jmp	_Label_2493
_Label_2495:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2498 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2498 ) then goto _Label_2494		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2494
!	jmp	_Label_2493
_Label_2493:
! THEN...
	mov	2341,r13		! source line 2341
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2499 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2341,r13		! source line 2341
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2494:
! RETURN STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2500
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2501
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2502
	.word	12
	.word	4
	.word	_Label_2503
	.word	-12
	.word	4
	.word	_Label_2504
	.word	-16
	.word	4
	.word	_Label_2505
	.word	-20
	.word	4
	.word	_Label_2506
	.word	-24
	.word	4
	.word	_Label_2507
	.word	-28
	.word	4
	.word	_Label_2508
	.word	-32
	.word	4
	.word	_Label_2509
	.word	-36
	.word	4
	.word	_Label_2510
	.word	-40
	.word	4
	.word	_Label_2511
	.word	-44
	.word	4
	.word	_Label_2512
	.word	-48
	.word	4
	.word	_Label_2513
	.word	-52
	.word	4
	.word	_Label_2514
	.word	-56
	.word	4
	.word	_Label_2515
	.word	-60
	.word	4
	.word	_Label_2516
	.word	-64
	.word	4
	.word	_Label_2517
	.word	-68
	.word	4
	.word	_Label_2518
	.word	-72
	.word	4
	.word	_Label_2519
	.word	-76
	.word	4
	.word	_Label_2520
	.word	-80
	.word	4
	.word	_Label_2521
	.word	-84
	.word	4
	.word	_Label_2522
	.word	-88
	.word	4
	.word	_Label_2523
	.word	-92
	.word	4
	.word	_Label_2524
	.word	-96
	.word	4
	.word	_Label_2525
	.word	-100
	.word	4
	.word	_Label_2526
	.word	-104
	.word	4
	.word	_Label_2527
	.word	-108
	.word	4
	.word	_Label_2528
	.word	-112
	.word	4
	.word	_Label_2529
	.word	-116
	.word	4
	.word	_Label_2530
	.word	-120
	.word	4
	.word	_Label_2531
	.word	-124
	.word	4
	.word	_Label_2532
	.word	-128
	.word	4
	.word	_Label_2533
	.word	-132
	.word	4
	.word	_Label_2534
	.word	-136
	.word	4
	.word	_Label_2535
	.word	-140
	.word	4
	.word	_Label_2536
	.word	-144
	.word	4
	.word	_Label_2537
	.word	-148
	.word	4
	.word	_Label_2538
	.word	-152
	.word	4
	.word	_Label_2539
	.word	-156
	.word	4
	.word	_Label_2540
	.word	-160
	.word	4
	.word	0
_Label_2500:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2501:
	.ascii	"Pself\0"
	.align
_Label_2502:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2534:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2535:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2536:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2537:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2538:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2539:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2540:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3172:
	push	r0
	sub	r1,1,r1
	bne	_Label_3172
	mov	2356,r13		! source line 2356
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0IF",r10
!   _temp_2543 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2543 then goto _Label_2542		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2542
!	jmp	_Label_2541
_Label_2541:
! THEN...
	mov	2359,r13		! source line 2359
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2359,r13		! source line 2359
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2542:
! SEND STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0SE",r10
!   _temp_2544 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   _temp_2545 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2546 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2546  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2547 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2550 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2549 = *_temp_2550  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2548 = _temp_2549 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2547 = _temp_2548  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2554 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2553 = *_temp_2554  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2553 > 0 then goto _Label_2552		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2552
!	jmp	_Label_2551
_Label_2551:
! THEN...
	mov	2366,r13		! source line 2366
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0SE",r10
!   _temp_2555 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0SE",r10
!   _temp_2556 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2557 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2556  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2558 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2561 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2560 = *_temp_2561  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2559 = _temp_2560 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2558 = _temp_2559  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2565 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2564 = *_temp_2565  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2564 > 0 then goto _Label_2563		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2563
!	jmp	_Label_2562
_Label_2562:
! THEN...
	mov	2370,r13		! source line 2370
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0SE",r10
!   _temp_2566 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	2371,r13		! source line 2371
	mov	"\0\0SE",r10
!   _temp_2567 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2568 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2567  sizeInBytes=4
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
! END IF...
_Label_2563:
! END IF...
_Label_2552:
! SEND STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0SE",r10
!   _temp_2569 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2374,r13		! source line 2374
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2570
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2571
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2572
	.word	12
	.word	4
	.word	_Label_2573
	.word	-12
	.word	4
	.word	_Label_2574
	.word	-16
	.word	4
	.word	_Label_2575
	.word	-20
	.word	4
	.word	_Label_2576
	.word	-24
	.word	4
	.word	_Label_2577
	.word	-28
	.word	4
	.word	_Label_2578
	.word	-32
	.word	4
	.word	_Label_2579
	.word	-36
	.word	4
	.word	_Label_2580
	.word	-40
	.word	4
	.word	_Label_2581
	.word	-44
	.word	4
	.word	_Label_2582
	.word	-48
	.word	4
	.word	_Label_2583
	.word	-52
	.word	4
	.word	_Label_2584
	.word	-56
	.word	4
	.word	_Label_2585
	.word	-60
	.word	4
	.word	_Label_2586
	.word	-64
	.word	4
	.word	_Label_2587
	.word	-68
	.word	4
	.word	_Label_2588
	.word	-72
	.word	4
	.word	_Label_2589
	.word	-76
	.word	4
	.word	_Label_2590
	.word	-80
	.word	4
	.word	_Label_2591
	.word	-84
	.word	4
	.word	_Label_2592
	.word	-88
	.word	4
	.word	_Label_2593
	.word	-92
	.word	4
	.word	_Label_2594
	.word	-96
	.word	4
	.word	_Label_2595
	.word	-100
	.word	4
	.word	_Label_2596
	.word	-104
	.word	4
	.word	0
_Label_2570:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2571:
	.ascii	"Pself\0"
	.align
_Label_2572:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2596:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3173:
	push	r0
	sub	r1,1,r1
	bne	_Label_3173
	mov	2379,r13		! source line 2379
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2600 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2599 = *_temp_2600  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2599) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2601 = _temp_2599 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2601 ) then goto _Label_2598		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2598
!	jmp	_Label_2597
_Label_2597:
! THEN...
	mov	2385,r13		! source line 2385
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2606 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2605 = *_temp_2606  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2605) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2607 = _temp_2605 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2604 = *_temp_2607  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2604 >= 0 then goto _Label_2603		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2603
!	jmp	_Label_2602
_Label_2602:
! THEN...
	mov	2386,r13		! source line 2386
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2608 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2608  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2386,r13		! source line 2386
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2603:
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2610 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2609 = *_temp_2610  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2609) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2611 = _temp_2609 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2611 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2615 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2614 = *_temp_2615  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2614) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2616 = _temp_2614 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2613 = *_temp_2616  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2619 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2618 = *_temp_2619  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2618) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2620 = _temp_2618 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2617 = *_temp_2620  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2612 = _temp_2613 + _temp_2617		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2623 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2622 = *_temp_2623  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2622) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2624 = _temp_2622 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2621 = *_temp_2624  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2625 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2612  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2621  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2598:
! RETURN STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2626
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2627
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2628
	.word	12
	.word	4
	.word	_Label_2629
	.word	-12
	.word	4
	.word	_Label_2630
	.word	-16
	.word	4
	.word	_Label_2631
	.word	-20
	.word	4
	.word	_Label_2632
	.word	-24
	.word	4
	.word	_Label_2633
	.word	-28
	.word	4
	.word	_Label_2634
	.word	-32
	.word	4
	.word	_Label_2635
	.word	-36
	.word	4
	.word	_Label_2636
	.word	-40
	.word	4
	.word	_Label_2637
	.word	-44
	.word	4
	.word	_Label_2638
	.word	-48
	.word	4
	.word	_Label_2639
	.word	-52
	.word	4
	.word	_Label_2640
	.word	-56
	.word	4
	.word	_Label_2641
	.word	-60
	.word	4
	.word	_Label_2642
	.word	-64
	.word	4
	.word	_Label_2643
	.word	-68
	.word	4
	.word	_Label_2644
	.word	-72
	.word	4
	.word	_Label_2645
	.word	-76
	.word	4
	.word	_Label_2646
	.word	-80
	.word	4
	.word	_Label_2647
	.word	-84
	.word	4
	.word	_Label_2648
	.word	-88
	.word	4
	.word	_Label_2649
	.word	-92
	.word	4
	.word	_Label_2650
	.word	-96
	.word	4
	.word	_Label_2651
	.word	-100
	.word	4
	.word	_Label_2652
	.word	-104
	.word	4
	.word	_Label_2653
	.word	-108
	.word	4
	.word	0
_Label_2626:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2627:
	.ascii	"Pself\0"
	.align
_Label_2628:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3174:
	push	r0
	sub	r1,1,r1
	bne	_Label_3174
	mov	2398,r13		! source line 2398
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0SE",r10
!   _temp_2654 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2660		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2660
!   _temp_2659 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2661
_Label_2660:
!   _temp_2659 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2661:
!   if _temp_2659 then goto _Label_2658 else goto _Label_2655
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2655
	jmp	_Label_2658
_Label_2658:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2664 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2663 = *_temp_2664  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2663 == 0 then goto _Label_2665		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2665
!   _temp_2662 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2666
_Label_2665:
!   _temp_2662 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2666:
!   if _temp_2662 then goto _Label_2657 else goto _Label_2655
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2655
	jmp	_Label_2657
_Label_2657:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2669 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2668 = *_temp_2669  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2668) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2670 = _temp_2668 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2667 = *_temp_2670  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2667 >= 0 then goto _Label_2656		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2656
!	jmp	_Label_2655
_Label_2655:
! THEN...
	mov	2415,r13		! source line 2415
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2671 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2671  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2415,r13		! source line 2415
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2656:
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2672 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2672  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0WH",r10
_Label_2673:
!   if numBytes <= 0 then goto _Label_2675		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2675
!	jmp	_Label_2674
_Label_2674:
	mov	2418,r13		! source line 2418
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2679 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2678 = *_temp_2679  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2678 == sector then goto _Label_2677		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2677
!	jmp	_Label_2676
_Label_2676:
! THEN...
	mov	2433,r13		! source line 2433
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2680) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2683 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2682 = *_temp_2683  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2681 = sector + _temp_2682		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2685 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2684 = *_temp_2685  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2686 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2681  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2684  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2687 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2687 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2688 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2688 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2677:
! ASSIGNMENT STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2690 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2689 = *_temp_2690  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2689 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0AS",r10
!   _temp_2691 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2691  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2442,r13		! source line 2442
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2446,r13		! source line 2446
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2673
_Label_2675:
! SEND STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0SE",r10
!   _temp_2692 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2693
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2694
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2695
	.word	12
	.word	4
	.word	_Label_2696
	.word	16
	.word	4
	.word	_Label_2697
	.word	20
	.word	4
	.word	_Label_2698
	.word	24
	.word	4
	.word	_Label_2699
	.word	-16
	.word	4
	.word	_Label_2700
	.word	-20
	.word	4
	.word	_Label_2701
	.word	-24
	.word	4
	.word	_Label_2702
	.word	-28
	.word	4
	.word	_Label_2703
	.word	-32
	.word	4
	.word	_Label_2704
	.word	-36
	.word	4
	.word	_Label_2705
	.word	-40
	.word	4
	.word	_Label_2706
	.word	-44
	.word	4
	.word	_Label_2707
	.word	-48
	.word	4
	.word	_Label_2708
	.word	-52
	.word	4
	.word	_Label_2709
	.word	-56
	.word	4
	.word	_Label_2710
	.word	-60
	.word	4
	.word	_Label_2711
	.word	-64
	.word	4
	.word	_Label_2712
	.word	-68
	.word	4
	.word	_Label_2713
	.word	-72
	.word	4
	.word	_Label_2714
	.word	-76
	.word	4
	.word	_Label_2715
	.word	-80
	.word	4
	.word	_Label_2716
	.word	-84
	.word	4
	.word	_Label_2717
	.word	-88
	.word	4
	.word	_Label_2718
	.word	-92
	.word	4
	.word	_Label_2719
	.word	-96
	.word	4
	.word	_Label_2720
	.word	-100
	.word	4
	.word	_Label_2721
	.word	-104
	.word	4
	.word	_Label_2722
	.word	-9
	.word	1
	.word	_Label_2723
	.word	-10
	.word	1
	.word	_Label_2724
	.word	-108
	.word	4
	.word	_Label_2725
	.word	-112
	.word	4
	.word	_Label_2726
	.word	-116
	.word	4
	.word	_Label_2727
	.word	-120
	.word	4
	.word	_Label_2728
	.word	-124
	.word	4
	.word	_Label_2729
	.word	-128
	.word	4
	.word	0
_Label_2693:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2694:
	.ascii	"Pself\0"
	.align
_Label_2695:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2696:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2697:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2698:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2722:
	.byte	'C'
	.ascii	"_temp_2662\0"
	.align
_Label_2723:
	.byte	'C'
	.ascii	"_temp_2659\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2725:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2726:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2727:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2728:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2729:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3175:
	push	r0
	sub	r1,1,r1
	bne	_Label_3175
	mov	2462,r13		! source line 2462
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0SE",r10
!   _temp_2730 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2736		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2736
!   _temp_2735 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2737
_Label_2736:
!   _temp_2735 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2737:
!   if _temp_2735 then goto _Label_2734 else goto _Label_2731
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2731
	jmp	_Label_2734
_Label_2734:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2740 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2739 = *_temp_2740  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2739 == 0 then goto _Label_2741		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2741
!   _temp_2738 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2742
_Label_2741:
!   _temp_2738 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2742:
!   if _temp_2738 then goto _Label_2733 else goto _Label_2731
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2731
	jmp	_Label_2733
_Label_2733:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2745 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2744 = *_temp_2745  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2744) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2746 = _temp_2744 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2743 = *_temp_2746  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2743 >= 0 then goto _Label_2732		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2732
!	jmp	_Label_2731
_Label_2731:
! THEN...
	mov	2480,r13		! source line 2480
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2747 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2747  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2480,r13		! source line 2480
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2732:
! ASSIGNMENT STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2748 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2748  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0WH",r10
_Label_2749:
!   if numBytes <= 0 then goto _Label_2751		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2751
!	jmp	_Label_2750
_Label_2750:
	mov	2483,r13		! source line 2483
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2497,r13		! source line 2497
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2755 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2754 = *_temp_2755  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2754 == sector then goto _Label_2753		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2753
!	jmp	_Label_2752
_Label_2752:
! THEN...
	mov	2499,r13		! source line 2499
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2756) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2753:
! ASSIGNMENT STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2758 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2757 = *_temp_2758  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2757 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0AS",r10
!   _temp_2759 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2759  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2502,r13		! source line 2502
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2763 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2762 = *_temp_2763  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2762 != sector then goto _Label_2761		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2761
!	jmp	_Label_2760
_Label_2760:
	jmp	_Label_2764
_Label_2761:
! ELSE...
	mov	2505,r13		! source line 2505
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2767
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2767
	jmp	_Label_2766
_Label_2767:
!   if bytesToMove != 8192 then goto _Label_2766		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2766
!	jmp	_Label_2765
_Label_2765:
	jmp	_Label_2768
_Label_2766:
! ELSE...
	mov	2509,r13		! source line 2509
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2771 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2770 = *_temp_2771  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2769 = sector + _temp_2770		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2773 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2772 = *_temp_2773  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2774 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2769  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2772  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2768:
! END IF...
_Label_2764:
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2775 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2775 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2776 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2776 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2518,r13		! source line 2518
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2749
_Label_2751:
! SEND STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0SE",r10
!   _temp_2777 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2778
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2779
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2780
	.word	12
	.word	4
	.word	_Label_2781
	.word	16
	.word	4
	.word	_Label_2782
	.word	20
	.word	4
	.word	_Label_2783
	.word	24
	.word	4
	.word	_Label_2784
	.word	-16
	.word	4
	.word	_Label_2785
	.word	-20
	.word	4
	.word	_Label_2786
	.word	-24
	.word	4
	.word	_Label_2787
	.word	-28
	.word	4
	.word	_Label_2788
	.word	-32
	.word	4
	.word	_Label_2789
	.word	-36
	.word	4
	.word	_Label_2790
	.word	-40
	.word	4
	.word	_Label_2791
	.word	-44
	.word	4
	.word	_Label_2792
	.word	-48
	.word	4
	.word	_Label_2793
	.word	-52
	.word	4
	.word	_Label_2794
	.word	-56
	.word	4
	.word	_Label_2795
	.word	-60
	.word	4
	.word	_Label_2796
	.word	-64
	.word	4
	.word	_Label_2797
	.word	-68
	.word	4
	.word	_Label_2798
	.word	-72
	.word	4
	.word	_Label_2799
	.word	-76
	.word	4
	.word	_Label_2800
	.word	-80
	.word	4
	.word	_Label_2801
	.word	-84
	.word	4
	.word	_Label_2802
	.word	-88
	.word	4
	.word	_Label_2803
	.word	-92
	.word	4
	.word	_Label_2804
	.word	-96
	.word	4
	.word	_Label_2805
	.word	-100
	.word	4
	.word	_Label_2806
	.word	-104
	.word	4
	.word	_Label_2807
	.word	-108
	.word	4
	.word	_Label_2808
	.word	-112
	.word	4
	.word	_Label_2809
	.word	-9
	.word	1
	.word	_Label_2810
	.word	-10
	.word	1
	.word	_Label_2811
	.word	-116
	.word	4
	.word	_Label_2812
	.word	-120
	.word	4
	.word	_Label_2813
	.word	-124
	.word	4
	.word	_Label_2814
	.word	-128
	.word	4
	.word	_Label_2815
	.word	-132
	.word	4
	.word	_Label_2816
	.word	-136
	.word	4
	.word	0
_Label_2778:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2779:
	.ascii	"Pself\0"
	.align
_Label_2780:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2781:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2782:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2783:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2809:
	.byte	'C'
	.ascii	"_temp_2738\0"
	.align
_Label_2810:
	.byte	'C'
	.ascii	"_temp_2735\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2812:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2813:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2814:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2815:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2816:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2817
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2817:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2818
	.word	_sourceFileName
	.word	357		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2818:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3176:
	push	r0
	sub	r1,1,r1
	bne	_Label_3176
	mov	2566,r13		! source line 2566
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0AS",r10
	mov	2568,r13		! source line 2568
	mov	"\0\0SE",r10
!   _temp_2819 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2820
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2821
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2822
	.word	-12
	.word	4
	.word	0
_Label_2820:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2821:
	.ascii	"Pself\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3177:
	push	r0
	sub	r1,1,r1
	bne	_Label_3177
	mov	2576,r13		! source line 2576
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2823 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2823  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2577,r13		! source line 2577
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2578,r13		! source line 2578
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2824 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2824  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2579,r13		! source line 2579
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2580,r13		! source line 2580
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2825 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2825  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2581,r13		! source line 2581
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2582,r13		! source line 2582
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2826 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2826  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2583,r13		! source line 2583
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2584,r13		! source line 2584
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2827 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2827  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2585,r13		! source line 2585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2586,r13		! source line 2586
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2828 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2828  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2587,r13		! source line 2587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2588,r13		! source line 2588
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2589,r13		! source line 2589
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2829
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2830
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2831
	.word	-12
	.word	4
	.word	_Label_2832
	.word	-16
	.word	4
	.word	_Label_2833
	.word	-20
	.word	4
	.word	_Label_2834
	.word	-24
	.word	4
	.word	_Label_2835
	.word	-28
	.word	4
	.word	_Label_2836
	.word	-32
	.word	4
	.word	0
_Label_2829:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2830:
	.ascii	"Pself\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2837
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2837:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2838
	.word	_sourceFileName
	.word	374		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2838:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3178:
	push	r0
	sub	r1,1,r1
	bne	_Label_3178
	mov	2600,r13		! source line 2600
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2839 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2839  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2601,r13		! source line 2601
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2602,r13		! source line 2602
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2840 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2840  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2603,r13		! source line 2603
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2842		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2842
!	jmp	_Label_2841
_Label_2841:
! THEN...
	mov	2605,r13		! source line 2605
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2843
_Label_2842:
! ELSE...
	mov	2607,r13		! source line 2607
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2844 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2844  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2607,r13		! source line 2607
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2843:
! RETURN STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2845
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2846
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2847
	.word	-12
	.word	4
	.word	_Label_2848
	.word	-16
	.word	4
	.word	_Label_2849
	.word	-20
	.word	4
	.word	0
_Label_2845:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2846:
	.ascii	"Pself\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3179:
	push	r0
	sub	r1,1,r1
	bne	_Label_3179
	mov	2613,r13		! source line 2613
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0SE",r10
!   _temp_2850 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2851 = _temp_2850 + 4
	load	[r14+-36],r1
	add	r1,4,r1
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
	mov	2624,r13		! source line 2624
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0SE",r10
!   _temp_2852 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2853 = _temp_2852 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0RE",r10
	mov	2627,r13		! source line 2627
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2856 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2855  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2854  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2854  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2857
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2859
	.word	12
	.word	4
	.word	_Label_2860
	.word	16
	.word	4
	.word	_Label_2861
	.word	-16
	.word	4
	.word	_Label_2862
	.word	-20
	.word	4
	.word	_Label_2863
	.word	-9
	.word	1
	.word	_Label_2864
	.word	-24
	.word	4
	.word	_Label_2865
	.word	-28
	.word	4
	.word	_Label_2866
	.word	-32
	.word	4
	.word	_Label_2867
	.word	-36
	.word	4
	.word	_Label_2868
	.word	-40
	.word	4
	.word	0
_Label_2857:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2858:
	.ascii	"Pself\0"
	.align
_Label_2859:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2860:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2863:
	.byte	'C'
	.ascii	"_temp_2854\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2868:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3180:
	push	r0
	sub	r1,1,r1
	bne	_Label_3180
	mov	2632,r13		! source line 2632
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0IF",r10
	mov	2637,r13		! source line 2637
	mov	"\0\0SE",r10
!   _temp_2872 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2873) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2872  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2871  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2871 then goto _Label_2870 else goto _Label_2869
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2869
	jmp	_Label_2870
_Label_2869:
! THEN...
	mov	2638,r13		! source line 2638
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2874 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2874  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2638,r13		! source line 2638
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2870:
! RETURN STATEMENT...
	mov	2640,r13		! source line 2640
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2875
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2876
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2877
	.word	-16
	.word	4
	.word	_Label_2878
	.word	-20
	.word	4
	.word	_Label_2879
	.word	-24
	.word	4
	.word	_Label_2880
	.word	-9
	.word	1
	.word	_Label_2881
	.word	-28
	.word	4
	.word	0
_Label_2875:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2876:
	.ascii	"Pself\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2880:
	.byte	'C'
	.ascii	"_temp_2871\0"
	.align
_Label_2881:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3181:
	push	r0
	sub	r1,1,r1
	bne	_Label_3181
	mov	2645,r13		! source line 2645
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2885 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2884 = *_temp_2885  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2884) then goto _Label_2883
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2883
!	jmp	_Label_2882
_Label_2882:
! THEN...
	mov	2672,r13		! source line 2672
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2886 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2886  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2672,r13		! source line 2672
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2883:
! IF STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0IF",r10
	mov	2676,r13		! source line 2676
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2890) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2889  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2889 == 1112300152 then goto _Label_2888		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2888
!	jmp	_Label_2887
_Label_2887:
! THEN...
	mov	2677,r13		! source line 2677
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2891 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2891  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2677,r13		! source line 2677
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2888:
! ASSIGNMENT STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0AS",r10
	mov	2682,r13		! source line 2682
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2892) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0AS",r10
	mov	2683,r13		! source line 2683
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2893) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0AS",r10
	mov	2684,r13		! source line 2684
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2894) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0AS",r10
	mov	2685,r13		! source line 2685
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2895) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0AS",r10
	mov	2686,r13		! source line 2686
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2896) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0AS",r10
	mov	2687,r13		! source line 2687
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2897) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0IF",r10
!   _temp_2900 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2900) then goto _Label_2899
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2899
!	jmp	_Label_2898
_Label_2898:
! THEN...
	mov	2691,r13		! source line 2691
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2901 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2901  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2691,r13		! source line 2691
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2899:
! ASSIGNMENT STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2903
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2903
!	jmp	_Label_2902
_Label_2902:
! THEN...
	mov	2699,r13		! source line 2699
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2904 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2904  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2699,r13		! source line 2699
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2700,r13		! source line 2700
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2903:
! IF STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0IF",r10
!   _temp_2907 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2907) then goto _Label_2906
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2906
!	jmp	_Label_2905
_Label_2905:
! THEN...
	mov	2705,r13		! source line 2705
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2908 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2908  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2705,r13		! source line 2705
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2906:
! IF STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0IF",r10
!   _temp_2911 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2911 then goto _Label_2910		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2910
!	jmp	_Label_2909
_Label_2909:
! THEN...
	mov	2709,r13		! source line 2709
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2912 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2912  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2709,r13		! source line 2709
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2910:
! ASSIGNMENT STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0IF",r10
!   _temp_2915 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2915) then goto _Label_2914
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2914
!	jmp	_Label_2913
_Label_2913:
! THEN...
	mov	2716,r13		! source line 2716
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2916 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2916  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2716,r13		! source line 2716
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2914:
! IF STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0IF",r10
!   _temp_2919 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2919 then goto _Label_2918		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2918
!	jmp	_Label_2917
_Label_2917:
! THEN...
	mov	2720,r13		! source line 2720
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2920 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2920  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2720,r13		! source line 2720
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2918:
! ASSIGNMENT STATEMENT...
	mov	2723,r13		! source line 2723
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0AS",r10
!   _temp_2923 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2922 = _temp_2923 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2921 = _temp_2922 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2921 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2925		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2925
!	jmp	_Label_2924
_Label_2924:
! THEN...
	mov	2742,r13		! source line 2742
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2926 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2926  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2742,r13		! source line 2742
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2927 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2927  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2743,r13		! source line 2743
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2928 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2928  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2744,r13		! source line 2744
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2925:
! SEND STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0SE",r10
!   _temp_2929 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0IF",r10
	mov	2753,r13		! source line 2753
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2933) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2932  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2932 == 707406378 then goto _Label_2931		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2931
!	jmp	_Label_2930
_Label_2930:
! THEN...
	mov	2754,r13		! source line 2754
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2934 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2934  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2754,r13		! source line 2754
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0SE",r10
!   _temp_2935 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2931:
! ASSIGNMENT STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2940 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2941 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2940  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2936:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2941 then goto _Label_2939		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2939
_Label_2937:
	mov	2761,r13		! source line 2761
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0AS",r10
	mov	2762,r13		! source line 2762
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0IF",r10
	mov	2765,r13		! source line 2765
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2945) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2944  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2944 then goto _Label_2943 else goto _Label_2942
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2942
	jmp	_Label_2943
_Label_2942:
! THEN...
	mov	2766,r13		! source line 2766
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2946 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2946  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2766,r13		! source line 2766
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0SE",r10
!   _temp_2947 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2943:
! SEND STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2938:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2936
! END FOR
_Label_2939:
! IF STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0IF",r10
	mov	2775,r13		! source line 2775
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2951) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2950  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2950 == 707406378 then goto _Label_2949		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2949
!	jmp	_Label_2948
_Label_2948:
! THEN...
	mov	2776,r13		! source line 2776
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2952 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2952  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2776,r13		! source line 2776
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0SE",r10
!   _temp_2953 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2949:
! FOR STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2958 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2959 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2958  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2954:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2959 then goto _Label_2957		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2957
_Label_2955:
	mov	2782,r13		! source line 2782
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0AS",r10
	mov	2783,r13		! source line 2783
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0IF",r10
	mov	2786,r13		! source line 2786
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2963) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2962  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2962 then goto _Label_2961 else goto _Label_2960
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2960
	jmp	_Label_2961
_Label_2960:
! THEN...
	mov	2787,r13		! source line 2787
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2964 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2964  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2787,r13		! source line 2787
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0SE",r10
!   _temp_2965 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2961:
! ASSIGNMENT STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2956:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2954
! END FOR
_Label_2957:
! IF STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0IF",r10
	mov	2795,r13		! source line 2795
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2969) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2968  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2968 == 707406378 then goto _Label_2967		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2967
!	jmp	_Label_2966
_Label_2966:
! THEN...
	mov	2796,r13		! source line 2796
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2970 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2970  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2796,r13		! source line 2796
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0SE",r10
!   _temp_2971 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2967:
! ASSIGNMENT STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0AS",r10
	mov	2802,r13		! source line 2802
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2806,r13		! source line 2806
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2972
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2973
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2974
	.word	12
	.word	4
	.word	_Label_2975
	.word	-16
	.word	4
	.word	_Label_2976
	.word	-20
	.word	4
	.word	_Label_2977
	.word	-24
	.word	4
	.word	_Label_2978
	.word	-28
	.word	4
	.word	_Label_2979
	.word	-32
	.word	4
	.word	_Label_2980
	.word	-36
	.word	4
	.word	_Label_2981
	.word	-40
	.word	4
	.word	_Label_2982
	.word	-9
	.word	1
	.word	_Label_2983
	.word	-44
	.word	4
	.word	_Label_2984
	.word	-48
	.word	4
	.word	_Label_2985
	.word	-52
	.word	4
	.word	_Label_2986
	.word	-56
	.word	4
	.word	_Label_2987
	.word	-60
	.word	4
	.word	_Label_2988
	.word	-64
	.word	4
	.word	_Label_2989
	.word	-68
	.word	4
	.word	_Label_2990
	.word	-72
	.word	4
	.word	_Label_2991
	.word	-76
	.word	4
	.word	_Label_2992
	.word	-10
	.word	1
	.word	_Label_2993
	.word	-80
	.word	4
	.word	_Label_2994
	.word	-84
	.word	4
	.word	_Label_2995
	.word	-88
	.word	4
	.word	_Label_2996
	.word	-92
	.word	4
	.word	_Label_2997
	.word	-96
	.word	4
	.word	_Label_2998
	.word	-100
	.word	4
	.word	_Label_2999
	.word	-104
	.word	4
	.word	_Label_3000
	.word	-108
	.word	4
	.word	_Label_3001
	.word	-112
	.word	4
	.word	_Label_3002
	.word	-116
	.word	4
	.word	_Label_3003
	.word	-120
	.word	4
	.word	_Label_3004
	.word	-124
	.word	4
	.word	_Label_3005
	.word	-128
	.word	4
	.word	_Label_3006
	.word	-132
	.word	4
	.word	_Label_3007
	.word	-136
	.word	4
	.word	_Label_3008
	.word	-140
	.word	4
	.word	_Label_3009
	.word	-144
	.word	4
	.word	_Label_3010
	.word	-148
	.word	4
	.word	_Label_3011
	.word	-152
	.word	4
	.word	_Label_3012
	.word	-156
	.word	4
	.word	_Label_3013
	.word	-160
	.word	4
	.word	_Label_3014
	.word	-164
	.word	4
	.word	_Label_3015
	.word	-168
	.word	4
	.word	_Label_3016
	.word	-172
	.word	4
	.word	_Label_3017
	.word	-176
	.word	4
	.word	_Label_3018
	.word	-180
	.word	4
	.word	_Label_3019
	.word	-184
	.word	4
	.word	_Label_3020
	.word	-188
	.word	4
	.word	_Label_3021
	.word	-192
	.word	4
	.word	_Label_3022
	.word	-196
	.word	4
	.word	_Label_3023
	.word	-200
	.word	4
	.word	_Label_3024
	.word	-204
	.word	4
	.word	_Label_3025
	.word	-208
	.word	4
	.word	_Label_3026
	.word	-212
	.word	4
	.word	_Label_3027
	.word	-216
	.word	4
	.word	_Label_3028
	.word	-220
	.word	4
	.word	_Label_3029
	.word	-224
	.word	4
	.word	_Label_3030
	.word	-228
	.word	4
	.word	_Label_3031
	.word	-232
	.word	4
	.word	_Label_3032
	.word	-236
	.word	4
	.word	_Label_3033
	.word	-240
	.word	4
	.word	_Label_3034
	.word	-244
	.word	4
	.word	_Label_3035
	.word	-248
	.word	4
	.word	_Label_3036
	.word	-252
	.word	4
	.word	_Label_3037
	.word	-256
	.word	4
	.word	_Label_3038
	.word	-260
	.word	4
	.word	_Label_3039
	.word	-264
	.word	4
	.word	_Label_3040
	.word	-268
	.word	4
	.word	0
_Label_2972:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2973:
	.ascii	"Pself\0"
	.align
_Label_2974:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2982:
	.byte	'C'
	.ascii	"_temp_2962\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2959\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2958\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2992:
	.byte	'C'
	.ascii	"_temp_2944\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_3029:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3030:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3031:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3032:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3033:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3034:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3035:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3036:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3037:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3038:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3039:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3040:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
