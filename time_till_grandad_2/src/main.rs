use std::process::exit;
use std::env;

// Adds a bunch of time modules
use chrono::{prelude::*, Duration};
// Imports timezones Dublin and Amsterdam
use chrono_tz::Europe::{Dublin, Amsterdam};
//random
use rand::{self, Rng};

//gui
use fltk::{app,frame::Frame, prelude::*, window::Window};
use fltk_theme::{WidgetScheme, SchemeType, WidgetTheme, ThemeType};


fn main() -> Result<(), Box<dyn std::error::Error>> {
    //does a bunch on gui stuff
    let message = message(&duration());

    //gets arguments
    let args: Vec<String> = env::args().collect();
    let debug = &args[args.len() - 1];
    if debug == "--debug" {
        println!("{}", &time_message_tick(message));
    }
    else {}

    let app = app::App::default().with_scheme(app::Scheme::Gtk);
    let mut wind = Window::default().with_size(500, 250).with_label("Counter");
    wind.make_resizable(true);
    let mut frame = Frame::default()
        .with_size(200, 300)
        .center_of(&wind)
        .with_label(&time_message_tick(message));

    //themes
    let widget_theme = WidgetTheme::new(ThemeType::Metro);
    let widget_scheme = WidgetScheme::new(SchemeType::Fluent);
    widget_theme.apply();
    widget_scheme.apply();

    wind.end();
    wind.show();

    while app.wait() {
        frame.set_label(&time_message_tick(message));
        wind.redraw();
    }

    Ok(())
}


// picks random message to display from array based on duration
fn message(duration: &Duration) -> &'static str {
    let left_message = ["I hope you enjoyed being in ireland", "It is sad to be back home", "At least you get to see your friends again", "At least you get to do O&O again"];
    let there_message = ["You are there, have fun!", "Why don't you go on a walk", "Show John this program", "Stop staring at your computer", "Did you buy those shoes"];
    let hour_message = ["LESS THAN AN HOUR", "You have proberbly already left!", "Ik heb een poootje met vet al op taaafeeel gezet!", "Why don't you call grandad", "Have fun in Ireland"];
    let day_message = ["LESS THAN A DAY!!!", "SOOO close less than 24 hours", "You must burst of excitement!", "We can start counting down the seconds!"];
    let week_message = ["Less that a week left start packing", "The excitement is real", "Dont forget to buy some new shoes before you go!", "OOOOH Less that a week left"];
    let month_message = ["Less than a month!", "Only a few more weeks", "Getting really close", "Getting excited? Proberbly because we are really close!"];
    if duration.num_days() <= 0 {
        let out = there_message[rand::thread_rng().gen_range(0..there_message.len())];
        out
    }
    else if duration.num_hours() <= 1 {
        let out = hour_message[rand::thread_rng().gen_range(0..hour_message.len())];
        out
    }
    else if duration.num_days() <= 1 {
        let out = day_message[rand::thread_rng().gen_range(0..day_message.len())];
        out 
    }
    else if duration.num_weeks() <= 1 {
        let out = week_message[rand::thread_rng().gen_range(0..week_message.len())];
        out
    }
    else if duration.num_weeks() <= 4 {
        let out = month_message[rand::thread_rng().gen_range(0..month_message.len())];
        out
    }
    else {
        exit(1);
    }
}

// gets duration between current time and time we are going to ireland (extra)
fn duration() -> Duration {
    let dt = Utc::now().with_timezone(&Amsterdam);
    let ie_date = Utc.timestamp(1650781800, 0).with_timezone(&Amsterdam);
    let duration = ie_date.signed_duration_since(dt);
    duration
}

fn time_message_tick(message_cache: &str) -> String {
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
    
        let duration_days = duration.num_days();
        let duration_hours = duration.num_hours();
        let duration_correct_hours = duration_hours - (duration_days * 24);
        let duration_minutes = duration.num_minutes();
        let duration_correct_minutes = duration_minutes - (duration_hours * 60);
        let duration_seconds:f64 = (duration.num_milliseconds()) as f64 / 1000.000000000;
        let duration_correct_seconds = duration_seconds - (duration_minutes * 60) as f64;
    
        //gets arguments
        let args: Vec<String> = env::args().collect();
        let debug = &args[args.len() - 1];

        // check for debug argument and if found prints alternative message
        if debug == "--debug" {
            let output = format!("
            Dutch time: {}\n
            Irish time: {}\n
            Time till Ireland: {} Days, {} Hours, {} Minutes and {:.3} seconds\n
            Message: {}\n
            DEBUG:\n
            dateTime: {}\n",
            dt_format, dt_ie_format, duration_days, duration_correct_hours, duration_correct_minutes, duration_correct_seconds, message_cache, dt,);
            output
        }
        else {
            let output = format!("
            Dutch time: {}\n
            Irish time: {}\n
            Time till Ireland: {} Days, {} Hours, {} Minutes and {:.2} seconds\n
            Message: {}\n", 
            dt_format, dt_ie_format, duration_days, duration_correct_hours, duration_correct_minutes, duration_correct_seconds, message_cache,);
            output
        }
}