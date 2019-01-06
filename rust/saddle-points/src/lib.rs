pub fn find_saddle_points(input: &[Vec<u64>]) -> Vec<(usize, usize)> {
    let mut results = Vec::new();
    for i in 0..input.len() {
        for j in 0..input[i].len() {
            if is_saddle_point(input, i, j) {
                results.push((i, j));
            }
        }
    }
    results
}

fn is_saddle_point(input: &[Vec<u64>], row_index: usize, column_index: usize) -> bool {
    let value = input[row_index][column_index];
    let row_max = input[row_index].iter().max();
    if Some(&value) != row_max {
        return false
    }
    let column_min = input.iter().map(|x| x[column_index]).min();
    if Some(value) != column_min {
        return false
    }
    true
}
