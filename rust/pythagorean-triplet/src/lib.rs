pub fn find() -> Option<u32> {
    for a in 1..1000 {
        let a = a as f32;
        let b = (1000f32 * (a - 500f32)) / (a - 1000f32);
        let c = 1000f32 - a - b;
        if b > 0f32 && c > 0f32 && b.round() == b && c.round() == c {
            return Some((a * b * c) as u32);
        }
    }
    None
}
