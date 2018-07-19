pub fn find() -> Option<u32> {
    for a in 1..998 {
        for b in 1..998 {
            for c in 1..998 {
                if sums_to_1000(a, b, c) && is_triplet(a, b, c) {
                    return Some(a * b * c);
                }
            }
        }
    }
    None
}

fn sums_to_1000(a: u32, b: u32, c: u32) -> bool {
    a + b + c == 1000
}

fn is_triplet(a: u32, b: u32, c: u32) -> bool {
    a * a + b * b == c * c
}
