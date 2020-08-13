--// It's the version you ding dong
local Version = "URMOM.1.8"

--// Master table of Insults!
local Tab = {
    General = {};
    Jokes = {};
}

--// Admins
local Admins = {}

--// I know I could have just added the Indexes but oh well
local Inject = function(Table, ...)
    for Index, Thing in pairs({...}) do
        Table[#Table + 1] = Thing
    end
end

--// General Section
Inject(Tab.General, "TONE DEAF SHART GOBLIN", "SLIMY SPHINCTER CLOWN", "WH1TE TRASH RECTUM PIRATE", "EL1TIST DOUCHE HAMMER1", "STUPID TURD TOOLBAG", 
"FART TRASHBAG", "INSECURE BITCH GOBLIN", "SLIMY DICK JOCKEY", "ID1OTIC SLVT PILOT", "WH1TE TRASH COCK WAFFLE",
"C0MMUN1ST NUT KNOB", "DUCKN0SE RECTUM CAPTAIN", "DUCKN0SE RECTUM CAPTAIN", "SMELLY BITCH TOOLBAG", "SHITTER RECEPTICLE", "BUTTHOLE TERRORIST", "PANDEMIC MASTER", "FUCKWIT LOBSTER", "COCK WIPE",
"PIPE HITTIN BANDIT", "BOLLOCKING TOES", "CUNTYBOLLOCK NINJA", "PRICK CHEESE", "DOUCHE HANDS", "BONER MAGNET", "PECKER BAGEL", "SNOT TOUCHER", "STANKY VAG BINDIPPER",
"SKANK DIDDLER", "ERECTION COCKTASTIC", "WAZZOCK BORE", "TURKEY .COM", "POOP SQUIRREL", "DUMB HANDLE", "TUMOR KISSER", "PUBIC BISCUIT", 
"CHOAD CANOE", "PILLOW BITING NARCISSIST", "ROTTING ZOMBIE MAGGOT FARM", "DICK BIKE", "POOP LOAD", "PORN ARTIST", "FANNY LORD", "SKANK TROMBONE", "BONER ROCKET", 
"yeast-tainted mulemelon", "zit-limbed bongdiddler", "weenerplug", "muffsocket", "quim-spotted slotbreeder", "apesponge", 
"camel-headed butterpoacher", "cumhugger", "tiny-tiny-wanged", "DRUG-LOVING ASS JOCKEY", "PIE-EATING PRICK HAMMER", "DRUG-LOVING C0CK CLOWN", "JACKALOPE SHIT TOOLBAG", "SLUTTY B0NER GOBLIN")

--// Jokes LMAOOOOOO SO FUNNY HEHE ECKS DEE
Inject(Tab.Jokes, "My friend thinks he is smart. He told me an onion is the only food that makes you cry, so I threw a coconut at his face.", 
[[Whenever your ex says, "You'll never find someone like me," the answer to that is, "That's the point."]], 
[[A teacher wanted to teach her students about self-esteem, so she asked anyone who thought they were stupid to stand up. One kid stood up and the teacher was surprised. She didn’t think anyone would stand up so she asked him, “Why did you stand up?” He answered, “I didn’t want to leave you standing up by yourself.”]],
[[As an airplane is about to crash, a female passenger jumps up frantically and announces, "If I'm going to die, I want to die feeling like a woman." She removes all her clothing and asks, "Is there someone on this plane who is man enough to make me feel like a woman?" A man stands up, removes his shirt and says, "Here, iron this!".]],
[[A man asks, “God, why did you make woman so beautiful?” God responded, ”So you would love her.” The man asks, “But God, why did you make her so dumb?” God replied, “So she would love you.”]],
[[LUA:1 Bad Allocation NSD]],
[[Yo Mama is so dumb… she went to the dentist to get a Bluetooth.]],
[[Yo mama's so fat, it took me two buses and a train to get to her good side.]],
[[Yo mama's so fat, her car has stretch marks.]])

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
            if Args[1] ~= "" then
                print(Args[1] .. " is a mother fucking ".. Tab.General[GeneralRange])
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
                print("If you come near here ever again, I will send you so far down to venezuela, then will lose value so fast and your atoms will just go fuck this fucking shit and piece out")
                print("I NotSoBotBot am trained in all the martial arts including ROBLOX gun fighting")
                print("That's right be scared you little bitch")
                print([[When you think of me, you'll think "Daddy???" and I'll fuck your anus so hard that it will turn inside out]])
                print("Take what I said as a warning")
            else
                print("I need someone to threaten you ".. Tab.General[GeneralRange])
            end
        end;
    };

    ["Fact"] = {
        Alias = {"funfact";};
        Desc = "I'll give you a fun fact, probably";
        Function = function()
            print("Nah you stanky ass bitch I ain't gonna tell you a fun fact nigga")
        end;
    };

    ["Credits"] = {
        Alias = {"credit";};
        Desc = "It's my daddy";
        Function = function()
            print("FART NIGGA HE")
        end;
    };

    ["Advice"] = {
        Alias = {"Advice";};
        Desc = "Oh I'll give you some advice";
        Function = function()
            print("Okay buckle up kid")
            print("This is what I'm going to tell you")
            print("uhhhhhhhh")
            print("Why are you trying to get advice from a Bot")
        end;
    };

    ["WhoIs"] = {
        Alias = {"WhoIs";};
        Desc = "Mention a user";
        Function = function()
            print("I'm a bot written in LUA in god damn LUA fucking **LUA**")
            print("I'm restricted to printing and that's pretty much it")
            print("WTF did you think this did?")
        end;
    };
};

--// Get and match command to Alias
local GetCMD = function(String)
    String = string.lower(String)

    local Search = function(Table)
        for NA, Str in pairs(Table.Alias) do
            if Str == String then
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