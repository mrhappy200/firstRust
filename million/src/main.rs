use std::sync::mpsc;
use std::thread;

fn main() {
    let (tx, rx) = mpsc::channel();

    thread::spawn(move || {
        let fivet: [i32; 500000] = [];
        for i in range 500000 {
            fivet.append(i);
        }
        tx.send(fivet).unwrap();
    });

    let received = rx.recv().unwrap();
    println!("Got: {}", received);
}