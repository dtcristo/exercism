pub fn find_saddle_points(input: &[Vec<u64>]) -> Vec<(usize, usize)> {
    let mut results = Vec::new();
    for c in 0..input.len() {
        for r in 0..input[c].len() {
            if is_saddle_point(input, r, c) {
                results.push((c, r));
            }
        }
    }
    results
}

fn is_saddle_point(input: &[Vec<u64>], row: usize, column: usize) -> bool {
    let value = input[column][row];
    let row_max = input[column].iter().max();
    if Some(&value) != row_max {
        return false
    }
    let column_min = input.iter().map(|x| x[row]).min();
    if Some(value) != column_min {
        return false
    }
    true
}
