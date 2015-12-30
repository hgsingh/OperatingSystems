code Main

  -- OS Class: Project 3
  --
  -- Harsukh Singh
  --

-----------------------------  Main  ---------------------------------
    function main()
        --var
            --dayBarber: SleepingBarber
        --dayBarber = new SleepingBarber
        --dayBarber.Init()
        --dayBarber.Test()
        --InitAndTest()
    endFunction
 
class SleepingBarber   
    superclass Object
        fields
            barber: Semaphore 
            customer: Semaphore 
            mutexLock: Mutex 
            waiting: int 
            chairs: int
            threads: array [7] of Thread
        methods
            Init ()
            Barber ()
            Customer ()
            CutHair ()
            GetHaircut ()
            Test ()
endClass
        --var
            --barber: Semaphore = new Semaphore 
            --customer: Semaphore = new Semaphore
            --mutexLock: Mutex = new Mutex
            --waiting: int = 0
            --chairs: int = 5
            --thArr: array [7] of Thread = new array of Thread { 7 of new Thread }

--sleeping barber implmentation
    behavior SleepingBarber
        
        --constructor for sleeping the sleeping barber
        --arguments: void
        --returns: void
        function Init() 
            var i:int
            barber = new Semaphore --barber object
            customer = new Semaphore --customer object
            mutexLock = new Mutex --lock object
            barber.Init(0) --barber and customer both initialized to 0
            customer.Init(0) -- same for the customer
            mutexLock.Init() -- lock initializer
            waiting = 0 -- 0 customers wating
            chairs = 5 -- 5 chairs for the customers
            thArr =  new array of Thread { 7 of new Thread } --threads array
            thArr[0].Init("barber") --initialize threads for customer and barbers
            thArr[1].Init("customer a")
            thArr[2].Init("customer b")
            thArr[3].Init("customer c")
            thArr[4].Init("customer d")
            thArr[5].Init("customer e")
            thArr[6].Init("customer f")
            thArr[0].Fork(Barber, 0) -- fork the threads
            for i = 1 to 6
                thArr[i].Fork(Customer, i )
            endFor
            ThreadFinish() 

        endFunction
        
        --barber function for barber to cut
        --arguments: void
        --returns: void
        function Barber()
            while(true)
                customer.Down() -- lock if zero customers
                mutexLock.Lock() -- lock thread critical section
                waiting = waiting - 1
                barber.Up() -- call the other threads
                mutexLock.Unlock() -- unlock 
                CutHair() -- call cut hair
            endWhile --endwhile
        endFunction
        
        --barber calls cut hair which lasts 1000 seconds
        --args: void
        --returns:  void
        function CutHair()
            var i: int
            for i = 0 to 999
            endFor
        endFunction
       
        --customer function
        --args: void
        --returns: void
        function Customer()
            mutexLock.Lock() --lock thread
            if(waiting < chairs) --critical section
                waiting = waiting + 1 
                customer.Up()
                mutexLock.Unlock()
                barber.Down()
                GetHaircut() 
            else
                mutexLock.Unlock() --unlock thread
            endIf
        endFunction
        
        --get haircut is called
        --args:void
        --returns: void
        function GetHaircut()
            var i: int
            for i = 0 to 499
            endFor
        endFunction
        
        --test function
        --args: void
        --returns: void
        function Test()
            threads[0].Fork(Barber, 1) -- fork the threads
            for i = 1 to 6
                threads[i].Fork(Customer, i + 1)
            endFor
            ThreadFinish() 
        endFunction

    endBehavior
endCode
