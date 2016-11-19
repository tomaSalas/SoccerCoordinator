
// import some frameworks ,and mayor changes in logic of code so can conform to extra credit. Note i'm using Function now to encapsulted code , and not repeating myself.


import UIKit

// people & carateristics

var playersArray: [[String:Any]] = []

/////////////////////////////////////
/////////////////////////////////////
///////////Corrections///////////////
/////////////////////////////////////
/////////////////////////////////////

//fixed Data specific, (HerschelKrustofski) & some minor issues with names of players

func addPlayer(name: String, height: Double, experience: String, guardian: String) {
    
    let player: [String:Any] = [
        "name": name,
        "height": height,
        "experience": experience,
        "guardian": guardian
    ]
    playersArray.append(player)
}

addPlayer("Joe Smith", height: 42.0, experience: "Yes", guardian: "Jim nad Jan Smith")
addPlayer("Jill Tanner", height: 36.0, experience: "Yes", guardian: "Clara Tanner")
addPlayer("Bill Bon", height: 43.0, experience: "Yes", guardian: "Sarah and Jenny Bon")
addPlayer("Eva Gordon", height: 45.0, experience: "No", guardian: "Wendy and Mike Gordon")
addPlayer("Matt Gill", height: 40.0, experience: "No", guardian: "Charles and Sylvia Gill")
addPlayer("Kimmy Stein", height: 41.0, experience: "No", guardian: "Bill and Hillary Stein")
addPlayer("Sammy Adams", height: 45.0, experience: "No", guardian: "Jeff Adams")
addPlayer("Kari Saygun", height: 42.0, experience: "Yes", guardian: "Heather Bledsoe")
addPlayer("Suzane Greenberg", height: 44.0, experience: "Yes", guardian: "Henrietta Dumas")
addPlayer("Sal Dali", height: 41.0, experience: "No", guardian: "Gala Dali")
addPlayer("Joe Kavalier", height: 39.0, experience: "No", guardian: "Same and Elaine Kavalier")
addPlayer("Ben Finkelstein", height: 44.0, experience: "No", guardian: "Aaron and Jill Finkelstein")
addPlayer("Diego Soto", height: 41.0, experience: "Yes", guardian: "Robin and Sarika Soto")
addPlayer("Chloe Alaska", height: 47.0, experience: "No", guardian: "David and Jamie Alaska")
addPlayer("Arnold Willis", height: 43.0, experience: "No", guardian: "Claire Willis")
addPlayer("Phillip Helm", height: 44.0, experience: "Yes", guardian: "Thomas Helm and Eva Jones")
addPlayer("Les Clay", height: 42.0, experience: "Yes", guardian: "Wynonna Brown")
addPlayer("Herschel Krustofski", height: 45, experience: "Yes", guardian: "Hyman and Rachel Krustofski")


// experiance players vs unexperiencepalyer

var experiencedPlayers : [[String: Any]] = []
var unexperiencedPlayers : [[String: Any]] = []

// this func distributes players base on their experiance & use of unwarping optinal values with if let stament to take real value out of dic.

func experienceDistribution(team: [[String:Any]]) {
    
    for player in team {
        if let experience = player["experience"] as? String {
            if experience == "Yes"  {
                experiencedPlayers.append(player)
            } else {
                unexperiencedPlayers.append(player)
            }
        }
    }
}

// calling func, populatin playersArray


experienceDistribution(playersArray)

// logic to sort height of players

experiencedPlayers.sort { ($0["height"] as? Double)! < ($1["height"] as? Double)! }
unexperiencedPlayers.sort { ($0["height"] as? Double)! > ($1["height"] as? Double)! }


// empty teams [[String: Any]]

var dragons: [[String: Any]] = [],sharks: [[String: Any]] = [], raptors: [[String: Any]] = []

// finding how many un/experiencedPlayers per team

func playerDistribution(experienceGroup: [[String:Any]]) {
    
    for (index, value) in experienceGroup.enumerate() {
        if index % 3 == 0 {
            dragons.append(value)
        } else if index % 3 == 1 {
            sharks.append(value)
        } else if index % 3 == 2 {
            raptors.append(value)
        }
    }
}


// calling func populating

playerDistribution(experiencedPlayers)
playerDistribution(unexperiencedPlayers)


//Create personal letters to parents by for in loop form using key from the dictianry

/////////////////////////////////////
/////////////////////////////////////
///////////Corrections///////////////
/////////////////////////////////////
/////////////////////////////////////

// fix the unwraiping of optianls.
// ad son syntatic sugar to the console  so readability is improve

func playerLetter(teamArray: [[String:Any]], teamName: String, firstPractice: String) {
    
    for player in teamArray {
        if let name = player["name"] as? String, let guardian = player["guardian"] as? String {
            print("Dear \(guardian),\n\(name) has been selected to play for the \(teamName).  The first practice will be on \(firstPractice). We look forward to having an exciting season\n")
        }
    }
}

playerLetter(dragons, teamName: "Dragons", firstPractice: "someday")
playerLetter(sharks, teamName: "Sharks", firstPractice: "someday")
playerLetter(raptors, teamName: "Raptors", firstPractice: "someday")

// see if the avrege height each team is inside 1.5

func teamAverageHeight(team: [[String:Any]]) -> Double {
    
    var teamHeightArray: [Double] = []
    var teamHeight: Double = 0.0
    
    // getting the heghit from dic unwarping values with if let
    for player in team {
        if let height = player["height"] as? Double {
            teamHeightArray.append(height)
        }
    }
    // sum inidiviald height
    for i in teamHeightArray {
        teamHeight += i
    }
    // all of that to get here, totalheight per team  / by 6
    return teamHeight / Double(teamHeightArray.count)
}


teamAverageHeight(dragons)
teamAverageHeight(sharks)
teamAverageHeight(raptors)

























