pub fn raindrops(n: usize) -> String {
    let plingPlangPlongs = format!("{}{}{}", addPling(n), addPlang(n), addPlong(n));
    if plingPlangPlongs.is_empty() {
        return format!("{}", n);
    } else {
        return plingPlangPlongs;
    }
}

fn addPling(n: usize) -> String {
    if n % 3 == 0 {
        return String::from("Pling");
    } else {
        return String::from("");
    }
}

fn addPlang(n: usize) -> String {
    if n % 5 == 0 {
        return String::from("Plang");
    } else {
        return String::from("");
    }
}

fn addPlong(n: usize) -> String {
    if n % 7 == 0 {
        return String::from("Plong");
    } else {
        return String::from("");
    }
}
