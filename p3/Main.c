code Main

  -- OS Class: Project 3
  --
  -- Harsukh Singh
  -- Instructor Mark Morissey Fall 2015

-----------------------------  Main  ---------------------------------
    function main()
        InitializeScheduler() --initialization of thread objects that are used in this class
        InitAndTest()
        --print("------------------------------------------------------")
        --print("--------------------Game Parlor Test------------------")
        --print("------------------------------------------------------")
        --testParlor()
    endFunction



-------------------------------------------------------------------------
----------------------------Gaming Parlor--------------------------------
-------------------------------------------------------------------------
    --test function for game parlor taken from assignment description
    var 
        parlor: GameParlor
        group: array[8] of Thread
    function testParlor()
        parlor = new GameParlor --instantiate the game parlor on stack
        group  = new array of Thread {8 of new Thread} --allocate thread array object
        parlor.Init() --initialize the parlor object constructor
        group[0].Init("A Backgammon")
        group[0].Fork(gamePlay, 4)
        group[1].Init("B Backgammon")
        group[1].Fork(gamePlay, 4)
        group[2].Init("C Risk")
        group[2].Fork(gamePlay, 5)
        group[3].Init("D Risk")
        group[3].Fork(gamePlay, 5)
        group[4].Init("E Monoply")
        group[4].Fork(gamePlay, 2)
        group[5].Init("F Monoply")
        group[5].Fork(gamePlay, 2)
        group[6].Init("A Pictionary")
        group[6].Fork(gamePlay, 1)
        group[7].Init("A Pictionary")
        group[7].Fork(gamePlay, 1)
        ThreadFinish()
    endFunction
    
    -- game play function
    -- requests the dice 
    -- yields to play the game
    -- returns dice
    -- repeated 10 times
    function gamePlay(diceNeeded: int)
        var i: int
        for i = 0 to 10
            parlor.Request(diceNeeded)
            currentThread.Yield()
            parlor.Return(diceNeeded)
        endFor
    endFunction
 
------------------------------------------------------------------------
-----------------------Sleeping Barber----------------------------------
------------------------------------------------------------------------
    var
        barber: Semaphore = new Semaphore  --barber object 
        customer: Semaphore = new Semaphore --customer object
        mutex: Semaphore = new Semaphore --semaphore for lock
        waiting: int = 0 --customers wating cond variable
        chairs: int = 5 --chairs cond variable
        thArr: array [7] of Thread = new array of Thread { 7 of new Thread } --threads to init

--sleeping barber implmentation
        
        --constructor for sleeping the sleeping barber
        --arguments: void
        --returns: void
        function InitAndTest() 
            var i:int
            barber.Init(0) --barber and customer both initialized to 0
            customer.Init(0) -- same for the customer
            mutex.Init(1) --set semaphore to 1
            thArr[0].Init("barber 1") --initialize threads for customer and barbers
            thArr[1].Init("customer a")
            thArr[2].Init("customer b")
            thArr[3].Init("customer c")
            thArr[4].Init("customer d")
            thArr[5].Init("customer e")
            thArr[6].Init("customer f")
            thArr[0].Fork(Barber, 1) -- fork the threads
            for i = 1 to 6
                thArr[i].Fork(Customer, i+1 )
            endFor
            ThreadFinish() 
        endFunction
        
        --barber function for barber to cut
        --arguments: void
        --returns: void
        function Barber(threadIdentifier: int)
            print(currentThread.name)
            print(" called")
            while(true)
                customer.Down() -- lock if zero customers
                mutex.Down()
                waiting = waiting - 1
                barber.Up() -- call the other threads 
                mutex.Up()
                CutHair() -- call cut hair
            endWhile --endwhile
        endFunction
        
        --barber calls cut hair which lasts 10
        --args: void
        --returns:  void
        function CutHair()
            var i: int
            print(currentThread.name)
            print(" cutting hair\n")
            for i = 0 to 100
                currentThread.Yield()
            endFor
        endFunction
       
        --customer function
        --args: void
        --returns: void
        function Customer(threadIdentifier: int)
            mutex.Down()
            if(waiting < chairs) --critical section
                waiting = waiting + 1 
                customer.Up()
                mutex.Up()
                barber.Down()
                GetHaircut() 
            else
                mutex.Up()
            endIf
        endFunction
        
        --get haircut is called
        --args:void
        --returns: void
        function GetHaircut()
            var i: int
            print(currentThread.name)
            print(" getting hair cut \n")
            for i = 0 to 100
                currentThread.Yield()
            endFor
        endFunction


    --this is a monitor class for the game parlor
    -- keeps track of the total remaining in the lobby
    class GameParlor --monitor class for the dice
        superclass Object
        fields
            totalDice: int
            counter: Mutex --Mutex used to check the dice count
            game: Mutex -- Mutex needed for the game 
            lobby: Condition
        methods
            Init()
            Request(diceNeeded: int)
            Return(diceReturned: int)
            Print(str:String, count:int)
        endClass
    
    behavior GameParlor
        
        --constructor for the init function
        --initializes the global variables
        method Init ()
            totalDice = 8
            counter = new Mutex
            counter.Init()
            game = new Mutex
            game.Init()
            lobby = new Condition
            lobby.Init()
        endMethod
        
        --request function
        --requests the dice from the lobby
        --takes a argument of how many dice are needed
        method Request(diceNeeded: int)
            self.Print("requests", diceNeeded) --print the dice needed info
            --check the number of dice available
            --wait if not available
            counter.Lock() --lock
            while diceNeeded > totalDice --check if the lobby has dice needed
               lobby.Wait(&counter) --wait if not available go to ready list
            endWhile
            totalDice = totalDice - diceNeeded --get the dice 
            counter.Unlock() --unlock the counter lock
            self.Print("proceeds with", diceNeeded) --proceeds
        endMethod
        
        --return function for the die so that die are returned to the lobby without interruption
        --args: number of dice returned
        --returns: void
        method Return (diceReturned: int)
            counter.Lock() --count dice returned lock here so no interrupts occur
            totalDice = totalDice + diceReturned --return the dice and print
            self.Print ("releases and adds back", diceReturned)
            counter.Unlock()
            -- wake up all the threads requesting the resource (die) 
            game.Lock()
            lobby.Broadcast(&game)
            game.Unlock()
        endMethod
        
        --print function copied from assignment
        --args: string to print and args
        --returns void 
        method Print (str: String, count: int)
            --
            -- This method prints the current thread's name and the arguments.
            -- It also prints the current number of dice available.
            print (currentThread.name)
            print (" ")
            print (str)
            print (" ")
            printInt (count)
            nl ()
            print ("------------------------------Number of dice now avail = ")
            printInt (totalDice)
            nl ()
        endMethod
    endBehavior

endCode
