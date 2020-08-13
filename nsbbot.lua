--// It's the version you ding dong
local Version = "URMOM.1.3"

--// Master table of Insults!
local Tab = {
    General = {};
    UrMom = {};
    Jokes = {};
}

--// Admins
local Admins = {

}

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
[[Girlfriend: "Am I pretty or ugly?"\nBoyfriend: "You're both."\nGirlfriend: "What do you mean?"\nBoyfriend: "You're pretty ugly."]],
[[Q: Is Google male or female?\nA: Female, because it doesn't let you finish a sentence before making a suggestion.]],
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
            ekse
                print("You are a mother fucking ".. Tab.General[GeneralRange])
            end
        end;
    };

    [2] = {
        Alias = {"whatversion"; "version";};
        Desc = "What do you think it does idiot";
        Function = function()
            print("Current version is " .. Version .. " you fuck wit")
        end;
    };

    [3] = {
        Alias = {"tellmeajoke"; "joke";"dispensejokeslave";"doit";"dothething";};
        Desc = "What do you think it does idiot";
        Function = function()
            print(Person .. " is a mother fucking ".. Tab.General[JokeRange])
        end;
    };

    [4] = {
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