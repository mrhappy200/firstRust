use std::process::exit;

// Adds a bunch of time modules
use chrono::{prelude::*, Duration};
// Imports timezones Dublin and Amsterdam
use chrono_tz::Europe::{Dublin, Amsterdam};
//random
use rand::{self, Rng};

//gui
use fltk::{app, button::Button, frame::Frame, prelude::*, window::Window};



fn main() {
    // Gets Dutch time
    let dt = Utc::now().with_timezone(&Amsterdam);
    // Gets Irish time
    let dt_ie = Utc::now().with_timezone(&Dublin);

    // Date we are going to Ireland
    let ie_date = Utc.timestamp(1650781800, 0).with_timezone(&Amsterdam);

    // Formats Dutch and Irish time to fancy output
    let dt_format = dt.format("%v %r (%Z)").to_string();
    let dt_ie_format = dt_ie.format("%v %r (%Z)").to_string();

    // finds time difference in Dutch time between the current date and the date we are going to grandad
    //let duration = dt.signed_duration_since(ie_date); // returns negative values
    let duration = ie_date.signed_duration_since(dt);

    // converts the duration to human readable format
    while true {
        let duration_days = duration.num_days();
        let duration_hours = duration.num_hours();
        let duration_correct_hours = duration_hours - (duration_days * 24);
        let duration_minutes = duration.num_minutes();
        let duration_correct_minutes = duration_minutes - (duration_hours * 60);
    }

    //Prints Dutch and Irish time
    let output = format!("Dutch time: {}\n
    Irish time: {}\n
    Time till Ireland: {} Days, {} Hours and {} Minutes\n
    Message: {}\n", 
    dt_format, dt_ie_format, duration_days, duration_correct_hours, duration_correct_minutes, message(&duration));
    println!("{}", &output);
    window(&output);
}

fn message(duration: &Duration) -> &'static str {
    let day_message = ["LESS THAN A DAY!!!", "SOOO close less than 24 hours", "You must burst of excitement!", "We can start counting down the seconds!"];
    let week_message = ["Less that a week left start packing", "The excitement is real", "Dont forget to buy some new shoes before you go!", "OOOOH Less that a week left"];
    let month_message = ["Less than a month!", "Only a few more weeks", "Getting really close", "Getting excited? Proberbly because we are really close!"];
    if duration.num_hours() < 25 {
        let out = day_message[rand::thread_rng().gen_range(0..day_message.len())];
        out 
    }
    else if duration.num_days() < 8 {
        let out = week_message[rand::thread_rng().gen_range(0..week_message.len())];
        out
    }
    else if duration.num_days() < 30 {
        let out = month_message[rand::thread_rng().gen_range(0..month_message.len())];
        out
    }
    else {
        exit(1);
    }
}

fn window(out: &str) {
    let app = app::App::default();
    let mut wind = Window::default()
        .with_size(500, 600)
        .center_screen()
        .with_label("Counter");
    let mut frame = Frame::default()
        .with_size(100, 40)
        .center_of(&wind)
        .with_label(out);
    wind.make_resizable(true);
    wind.end();
    wind.show();
    /* Event handling */
    app.run().unwrap();
}
