


// I am repeating my self to much ,and the relashion ship of the properties is somewhat abstract. Use of class to represent the players would be more flexible than using dicctionary.

// people & carateristics

// without using "Anyobject" as a type declaration.

let JoeSmith = ["name" : "JoeSmith", "height": "42","Experiance": "yes", "guardians" : "Jim & Jan Smith"]

let JillTanner = ["name" : "JillTanner", "height" : "36", "Experiance": "yes", "guardians" : "Clara Tanner"]

let BillBon = ["name" : "BillBon", "height" : "43", "Experiance": "yes","guardians" : "Sara & Jenny Bon" ]

let	EvaGordon = ["name" : "EvaGordon","height" : "45", "Experiance": "no", "guardians" : "Wendy & Mike Gordon"]

let MattGill = ["name" : "MattGill", "height" : "40", "Experiance": "no","guardians" : "Charles & Sylvia Gill" ]

let KimmyStein = ["name" : "KimmyStein", "height" : "41", "Experiance": "no","guardians" : "Bill & Hillary Stein" ]

let SammyAdams = ["name" : "SammyAdams ", "height" : "45", "Experiance": "no","guardians" : "Jeff Adams" ]

let KarlSaygan = ["name" : "BKarlSaygan ", "height" : "42", "Experiance": "yes","guardians" : "Heather Bledsoe" ]

let SuzaneGreenberg = ["name" : "uzaneGreenberg", "height" : "44", "Experiance": "yes","guardians" : "Henrietta Dumas" ]

let SalDali = ["name" : "SalDali", "height" : "41", "Experiance": "no","guardians" : "Gala Dali" ]

let JoeKavalier = ["name" : "JoeKavalier", "height" : "39", "Experiance": "no","guardians" : "Sam & Elaine Kavalier" ]

let BenFinkelstein = ["name" : "enFinkelstein", "height" : "44", "Experiance": "no","guardians" : "Aaron & Jill Finkelstein" ]

let DiegoSoto = ["name" : "DiegoSoto", "height" : "41", "Experiance": "yes","guardians" : "Robin & Sarika Soto" ]

let ChloeAlaska = ["name" : "ChloeAlaska", "height" : "47", "Experiance": "no","guardians" : "David & Jamie Alaska" ]

let ArnoldWillis = ["name" : "ArnoldWillis", "height" : "43", "Experiance": "no","guardians" : "Claire Willis" ]

let PhillipHelm = ["name" : "PhillipHelm ", "height" : "44", "Experiance": "yes","guardians" : "Thomas Helm and Eva Jones" ]

let LesClay = ["name" : "LesClay" ,"height" : "42", "Experiance": "yes","guardians" : "Wynonna Brown" ]

let HerschelKrustofski = ["HerschelKrustofski" : "BillBon", "height" : "45", "Experiance": "yes","guardians" : "Hyman and Rachel Krustofski" ]

// all the player in array

let players = [JoeSmith,JillTanner,BillBon,EvaGordon,MattGill,KimmyStein,SammyAdams,KarlSaygan,SuzaneGreenberg,SalDali,JoeKavalier,BenFinkelstein,DiegoSoto,ChloeAlaska,ArnoldWillis,PhillipHelm,LesClay,HerschelKrustofski]


players.count

// experiance players vs unexperiencepalyer

var experiencedPlayers : [[String: String]] = []
var unexperiencedPlayers : [[String: String]] = []

// populating "[[String: String]]" with players
// using func will encapsulted code and can be call when necesery

for player in players {
    if player["Experiance"] == "yes" {
        experiencedPlayers.append(player)
    } else if player["Experiance"] == "no" {
        unexperiencedPlayers.append(player)
    }
}

// empty teams [[String: String]]

var dragons: [[String: String]] = [],sharks: [[String: String]] = [], raptors: [[String: String]] = []

// gruping teams [[String: String]] in arrays so we can append results

var teams = [dragons, sharks, raptors]

// finding how many players and experiencedPlayers per team


let averageTeamsPlayerCount = players.count / teams.count
let experiencedPlayersCount = experiencedPlayers.count / teams.count

//populating teams with experiencedPlayers

for experiencedPlayer in experiencedPlayers {
    if dragons.count < experiencedPlayersCount {
        dragons.append(experiencedPlayer)
    } else if sharks.count < experiencedPlayersCount {
        sharks.append(experiencedPlayer)
    } else if raptors.count < experiencedPlayersCount {
        raptors.append(experiencedPlayer)
    }
}

//populating teams with unexperianceplayer

for unexperiencedPlayer in unexperiencedPlayers {
    if dragons.count < averageTeamsPlayerCount {
        dragons.append(unexperiencedPlayer)
    } else if sharks.count < averageTeamsPlayerCount {
        sharks.append(unexperiencedPlayer)
    } else if raptors.count < averageTeamsPlayerCount {
        raptors.append(unexperiencedPlayer)
    }
}


//Create personal letters to parents by for in loop form using key from the dictianry

for dragon in dragons {
    print("\(dragon["guardians"]), your son \(dragon["name"]) has being selected to be in dragons team")
}

for raptor in raptors {
    print("\(raptor["guardians"]), your son \(raptor["name"]) has being selected to be in raptor team")
}

for shark in sharks {
    print("\(shark["guardians"]), your son \(shark["name"]) has being selected to be in shark team")
}























