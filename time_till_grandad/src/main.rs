// Adds a bunch of time modules
use chrono::prelude::*;
// Imports timezones Dublin and Amsterdam
use chrono_tz::Europe::{Dublin, Amsterdam};


fn main() {
    // Gets Dutch time
    let dt = Utc::now().with_timezone(&Amsterdam);
    // Gets Irish time
    let dt_ie = Utc::now().with_timezone(&Dublin);

    // Formats Dutch and Irish time to fancy output
    let dt_format = dt.format("%v %r (%Z)").to_string();
    let dt_ie_format = dt_ie.format("%v %r (%Z)").to_string();

    //Prints Dutch and Irish time
    println!("Dutch time: {}\nIrish time: {}", dt_format, dt_ie_format);
}
