//
//  ViewController.swift
//  MyStory
//
//  Created by Kevin Velazco on 2/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    let aboutMe = ContextItem(image: UIImage(named: "ash_aboutme2")!, description: "Ash is a Pokémon Trainer from Pallet Town whose goal is to become a Pokémon Master. His starter Pokémon was a Pikachu that he received from Professor Oak after arriving late at his laboratory. On his journeys around the Pokémon world, he's been accompanied by a multitude of close friends.")
    let myJourney = ContextItem(image: UIImage(named: "ash_journey")!, description: "Over his journey so far, Ash has collected eight badges from each of the major regions of Kanto, Johto, Hoenn, Sinnoh, Unova and Kalos. In the Alola region, he has completed all the Island Grand Trials. He then won his first Pokémon league title in the Alola region, and became the world champion in Galar's World Coronation Series.")
    let myFriends = ContextItem(image: UIImage(named: "ash_myfriends")!, description: "As a Trainer, Ash has caught and befriended a sizable number of Pokémon throughout the anime. His philosophy on training is that Pokémon are individuals and that a combination of trust, friendship, and hard work are needed to overcome adversity. Ash has currently officially owned a total of 98 different Pokémon species. While he started his journey alone, many people have joined his party while touring the Pokémon world; usually at least one new companion joins—and another leaves—every time a new region is visited.")
    
    var items: [ContextItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        items = [aboutMe, myJourney, myFriends]
    }
    
    
    
    @IBAction func didTapItem(_ sender: UITapGestureRecognizer) {
        
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.contextItem = items[0]
            } else if tappedView.tag == 1 {
                detailViewController.contextItem = items[1]
            } else if tappedView.tag == 2 {
                detailViewController.contextItem = items[2]
            } else {
                print("no item was tapped, please check your selection.")
            }
        }
    }
}

