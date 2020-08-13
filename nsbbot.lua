--// It's the version you ding dong
local Version = "URMOM.1.1.5"

--// Seed the randoms
math.randomseed(os.time())
math.random();
math.random();
math.random();
math.random();

--// Master table of Insults!
local Tab = {
    General = {
        "TONE DEAF SHART GOBLIN", "SLIMY SPHINCTER CLOWN", "WH1TE TRASH RECTUM PIRATE", "EL1TIST DOUCHE HAMMER1", "STUPID TURD TOOLBAG", 
        "FART TRASHBAG", "INSECURE BITCH GOBLIN", "SLIMY DICK JOCKEY", "ID1OTIC SLVT PILOT", "WH1TE TRASH COCK WAFFLE",
        "C0MMUN1ST NUT KNOB", "DUCKN0SE RECTUM CAPTAIN", "DUCKN0SE RECTUM CAPTAIN", "SMELLY BITCH TOOLBAG", "SHITTER RECEPTICLE", "BUTTHOLE TERRORIST", "PANDEMIC MASTER", "FUCKWIT LOBSTER", "COCK WIPE",
        "PIPE HITTIN BANDIT", "BOLLOCKING TOES", "CUNTYBOLLOCK NINJA", "PRICK CHEESE", "DOUCHE HANDS", "BONER MAGNET", "PECKER BAGEL", "SNOT TOUCHER", "STANKY VAG BINDIPPER",
        "SKANK DIDDLER", "ERECTION COCKTASTIC", "WAZZOCK BORE", "TURKEY .COM", "POOP SQUIRREL", "DUMB HANDLE", "TUMOR KISSER", "PUBIC BISCUIT", 
        "CHOAD CANOE", "PILLOW BITING NARCISSIST", "ROTTING ZOMBIE MAGGOT FARM", "DICK BIKE", "POOP LOAD", "PORN ARTIST", "FANNY LORD", "SKANK TROMBONE", "BONER ROCKET", 
        "yeast-tainted mulemelon", "zit-limbed bongdiddler", "weenerplug", "muffsocket", "quim-spotted slotbreeder", "apesponge", 
        "camel-headed butterpoacher", "cumhugger", "tiny-tiny-wanged", "DRUG-LOVING ASS JOCKEY", "PIE-EATING PRICK HAMMER", "DRUG-LOVING C0CK CLOWN", "JACKALOPE SHIT TOOLBAG", "SLUTTY B0NER GOBLIN"
    };
    
    Jokes = {
        "My friend thinks he is smart. He told me an onion is the only food that makes you cry, so I threw a coconut at his face.", 
        [[Whenever your ex says, "You'll never find someone like me," the answer to that is, "That's the point."]], 
        [[A teacher wanted to teach her students about self-esteem, so she asked anyone who thought they were stupid to stand up. One kid stood up and the teacher was surprised. She didn’t think anyone would stand up so she asked him, “Why did you stand up?” He answered, “I didn’t want to leave you standing up by yourself.”]],
        [[As an airplane is about to crash, a female passenger jumps up frantically and announces, "If I'm going to die, I want to die feeling like a woman." She removes all her clothing and asks, "Is there someone on this plane who is man enough to make me feel like a woman?" A man stands up, removes his shirt and says, "Here, iron this!".]],
        [[A man asks, “God, why did you make woman so beautiful?” God responded, ”So you would love her.” The man asks, “But God, why did you make her so dumb?” God replied, “So she would love you.”]],
        [[LUA:1 Bad Allocation NSD]],
        [[Yo Mama is so dumb… she went to the dentist to get a Bluetooth.]],
        [[Yo mama's so fat, it took me two buses and a train to get to her good side.]],
        [[Yo mama's so fat, her car has stretch marks.]]
    };
}

--// Fix the Numeration on tables
local Fix = function(Table)
    local Ind = 1
    for _, Element in pairs(Table) do
        Table[Ind] = Element
        Ind = Ind + 1
    end
end

Fix(Tab.General)
Fix(Tab.Jokes)

--// Join the Args if split
local Join = function(Table)
    local Str = ""

    for Index, Value in pairs(Table) do
        Str = Str .. tostring(Value)
    end

    return Str
end

--// Table of Commands
local Commands; Commands = {
    [1] = {
        Alias = {"insult"; "insultperson";};
        Desc = "Insult a person! YEET!!!";
        Function = function(Args)
            local Who = Join(Args)
            if Who ~= "" then
                print(Who .. " is a mother fucking ".. Tab.General[GeneralRange])
            else
                print("You are a mother fucking ".. Tab.General[GeneralRange])
            end
        end;
    };

    ["Version"] = {
        Alias = {"whatversion"; "version";};
        Desc = "What do you think it does idiot";
        Function = function()
            print("Current version is " .. Version .. " you fuck wit")
        end;
    };

    [2] = {
        Alias = {"tellmeajoke"; "joke";"dispensejokeslave";"doit";"dothething"; "slav";};
        Desc = "What do you think it does idiot";
        Function = function()
            print("Fresh Joke!")
            print(Tab.Jokes[JokeRange])
        end;
    };

    ["Help"] = {
        Alias = {"help"; "wtf"; "howdoi"; "why"; "comeonlol";};
        Desc = "What do you think it does idiot";
        Function = function()
            print("- Commands below! -")

            for Index, CMD in pairs(Commands) do
                local Str = ""
                
                for Index, Element in pairs(CMD.Alias) do Str = Str .. " <"..Element..">" end

                Str = Str .. " - " .. CMD.Desc

                print(Str)
            end

            print("- Commands Done! -")
        end;
    };

    ["What"] = {
        Alias = {"what";};
        Desc = "I'll tell you what this is";
        Function = function()
            print("Listen up mother fucker, it's me NotSoBotBot, so you better listen up.")
            print("I will fuck you up so hard that you'll fly to the fourth dimension!!")
            print(" ")
            print("That said, ur mom")
            print("Running LUA Version; ".. tostring(_VERSION))
            print("Bot Version; ".. tostring(Version))
            print(" ")
            print("Scram kid before I ice you boi")
        end;
    };

    ["Threaten"] = {
        Alias = {"threaten";};
        Desc = "Going to fuck up that person you tell me to";
        Function = function(Args)
            local Person = Args[1]
            
            if Person ~= nil then
                print("Alright, listen up ".. Person .. " I'm only going to say this once.")
                print("If you come near here ever again, I will send you so far down to venezuela, then will lose value so fast and your atoms will just go fuck this fucking shit and peace out")
                print("I NotSoBotBot am trained in all the martial arts including ROBLOX gun fighting")
                print("That's right be scared you little bitch")
                print([[When you think of me, you'll think "Daddy???" and I'll fuck your anus so hard that it will turn inside out]])
                print("Take what I said as a warning")
            else
                print("I need someone to threaten you ".. Tab.General[GeneralRange])
            end
        end;
    };

    ["GayMeter"] = {
        Alias = {"gaymeter";"howgay";"measuregay";};
        Desc = "Scans a user and determines how fucking GAY they are";
        Function = function(Args)
            local Person = Join(Args)
            
            if Person ~= "" then
                print("Alright... I'm evaluating sir gaylord the first rn")
                print("Ah yes okay mhm let's see... You are ".. Person)
                print("Okay, result is uhm")

                local Per = math.random(0, 101)

                print(tostring(Per) .."%")

                if Per > 90 then
                    print("I'm calling ICE, hopefully you aren't mexican bitch")
                end

                if Per > 55 and Per < 90 then
                    print("Wow okay there's no coming back from that pal, good luck with AIDs")
                end

                if Per < 55 and Per > 20 then
                    print("Well we can send you to straight camp but I can't do much else than that")
                end

                if Per > 0 and Per < 20 then
                    print("Hey a little ain't gay, no homo bro")
                end

                if Per == 0 then
                    print("I salute you sir!")
                end
            else
                print("You brain washed commie, do you want me to measure you??? someone else??? random?? IDK")
                print("I did measure you, it broke it because of how gay and STUPID you are")
            end
        end;
    };
};

--// Get and match command to Alias
local GetCMD = function(String)
    String = string.lower(String)

    local Search = function(Table)
        for NA, Str in pairs(Table.Alias) do
            if string.lower(Str) == String then
                return true
            end
        end

        return false
    end

    for Num, CMD in pairs(Commands) do
        local Find = Search(CMD)

        if Find == true then
            return CMD
        end
    end

    return nil
end

--// Split the args
local Serve = function(String)
    local Args = {}

    for String in string.gmatch(String, "%w+%p*%s-") do
        table.insert(Args, String)
    end

    local New = {}
    local Index = 0
    for _, Arg in pairs(Args) do
        if Index ~= 0 then
            New[Index] = Arg
        end

        Index = Index + 1
    end
    
    return New
end

--// Do it
Args = Serve(Args)

--// Parse Command
do
    local Attempted = GetCMD(Command)

    if string.lower(Command) == "ran" or string.lower(Command) == "random" then
        Attempted = Commands[CMDRandom]
    end

    if Attempted == nil then
        print("You didn't supply a good command, use .t nsbbot help")
        return
    end

    local Ran, Err = pcall(function() Attempted.Function(Args) end)

    if Err then
        print("ERROR RUNNING COMMAND!: ".. tostring(Err))
    end
end