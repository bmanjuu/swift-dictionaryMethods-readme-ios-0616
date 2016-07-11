let toyStoryFilms = [
    "Toy Story",
    "Toy Story 2",
    "Buzz Lightyear of Star Command: The Adventure Begins",
    "Toy Story 3",
    "Toy Story 4"
]

let starWarsFilms = [
    "Star Wars",
    "The Empire Strikes Back",
    "Star Wars: Episode VI",
    "Star Wars: Episode I",
    "Star Wars: Episode II",
    "Star Wars: Episode III",
    "Star Wars: The Clone Wars",
    "Star Wars: The Force Awakens",
    "Star Wars: Episode VIII",
    "Star Wars: Episode IX"
]

let fastAndFuriousFilms = [
    "The Fast and the Furious",
    "2 Fast 2 Furious",
    "Turbo-Charged Prelud",
    "Tokyo Drift",
    "Fast & Furious",
    "Los Bandoleros",
    "Fast Five",
    "Fast & Furious 6",
    "Furious 7",
    "Fast 8"
]

var movies = [
    "Toy Story": toyStoryFilms,
    "Star Wars": starWarsFilms,
    "The Fast and the Furious": fastAndFuriousFilms
]

let godfatherFilms = [
    "The Godfather",
    "The Godfather Part II",
    "The Godfather Part III"
]

print(movies)
// ["Toy Story": ["Toy Story", "Toy Story 2", "Buzz Lightyear of Star Command: The Adventure Begins", "Toy Story 3", "Toy Story 4"], "Star Wars": ["Star Wars", "The Empire Strikes Back", "Star Wars: Episode VI", "Star Wars: Episode I", "Star Wars: Episode II", "Star Wars: Episode III", "Star Wars: The Clone Wars", "Star Wars: The Force Awakens", "Star Wars: Episode VIII", "Star Wars: Episode IX"], "The Fast and the Furious": ["The Fast and the Furious", "2 Fast 2 Furious", "Turbo-Charged Prelud", "Tokyo Drift", "Fast & Furious", "Los Bandoleros", "Fast Five", "Fast & Furious 6", "Furious 7", "Fast 8"]]
//did not contain "The Godfather"

// UPDATING KEYS

let result1 = movies.updateValue(godfatherFilms, forKey: "The Godfather") //adding new key
let result2 = movies.updateValue(fastAndFuriousFilms, forKey: "The Fast and the Furious")
//this method has a return value that tells you whether a key was added or updated. This return type is an optional. If a new key/value pair was added, the return value is nil; if it was updated, is the key's new value wrapped in an optional


print(result1)
print(result2) //optional pops up!

let films = movies["The Godfather"]
print(films) //optional pops up again!

if let godfatherMovies = movies["The Godfather"] {
    print(godfatherMovies)
}



// MODIFYING VALUES

if var films = movies["The Fast and the Furious"] {
    films.append("Faster! 9")
    films.append("THE FASTEST 10")
    
    movies["The Fast and the Furious"] = films
}
// have to be careful to add the very last line within this if statement, otherwise it doesn't update the [String] within the movies dictionary b/c when you unwrap an optional, you get a COPY OF THE ARRAY back. when you append on this copy, it doesn't affect hte original array stored in the dictionary, so follow code below

if let fastMovies = movies["The Fast and the Furious"] {
    for (index, film) in fastMovies.enumerate() {
        print("\(index + 1). \(film)")
    }
}



// DELETING KEY/VALUE PAIRS

movies["The Fast and the Furious"] = nil

if let fast3rFilms = movies["The Fast and the Furious"] {
    print("\(fast3rFilms)")
} else {
    print("YAY! no more Fast & Furious movies!")
}

movies.removeValueForKey("The Fast and the Furious")
//alternate method to remove. if the key exists in teh dictionary, this method deletes it and returns the value wrapped in an optional. if the key does not exist, it returns nil, so it removes the key and lets you know ehther the key existed or not


// COUNTING ITEMS

let planetsAndTheirMoons = [
    "Mercury": 0,
    "Venus": 0,
    "Earth": 1,
    "Mars": 2,
    "Jupiter": 50,
    "Saturn": 53,
    "Uranus": 27,
    "Neptune": 13
]

var planetCount = 0
for (planet, numberOfMoons) in planetsAndTheirMoons {
    planetCount += 1
}
print(planetCount)

let planetCount2 = planetsAndTheirMoons.count
print(planetCount2)


if planetsAndTheirMoons.isEmpty {
    print("planetsAndTheirMoons is empty")
} else {
    print("planetsAndTheirMoons has \(planetsAndTheirMoons.count) items")
}


var emptyDictionary = [String: String]()
if emptyDictionary.isEmpty {
    print("Ah hah! It's empty.")
} else {
    print("There's something here...")
}



// RETRIEVING KEYS

let planetNames = Array(planetsAndTheirMoons.keys)
//remember that the keys property will not necessarily return the keys int he same order you defined or added them into the dictionary!! they are UNORDERED!! same thing with values in the next section 

for planet in planetsAndTheirMoons.keys {
    print(planet)
}



// RETRIEVING VALUES

let allTheMoons = Array(planetsAndTheirMoons.values)

for numberOfMoons in planetsAndTheirMoons.values {
    print(numberOfMoons)
}
