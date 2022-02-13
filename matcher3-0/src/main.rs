use rand::seq::SliceRandom;
use rand::thread_rng;

fn main() {
    println!("{}", pick_name(BoyGirlBoth::Boy));
}

#[derive(PartialEq)]
enum BoyGirlBoth {
    Boy,
    Girl,
    Both,
}
struct Pick {
    name: String,
    lgbtq: bool,
}

fn pick_name(bga: BoyGirlBoth) -> &'static str {
    match bga {
        BoyGirlBoth::Boy => {
            let boy_names = [
                "Joep",
                "Joseph",
                "Lennard",
                "Matthijs",
                "Morris",
                "Pieter",
                "Quinten",
                "Rijk",
                "Tijl",
                "Tristan D",
                "Tristan T",
                "Younes",
            ];
            let mut rng = thread_rng();
            let name = boy_names.choose(&mut rng).unwrap();
            return name;
        }
        BoyGirlBoth::Girl => {
            return "Girl"
        }
        BoyGirlBoth::Both => {
            return "Both"
        }
    }
}
