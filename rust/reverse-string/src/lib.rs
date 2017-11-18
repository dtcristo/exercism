pub fn reverse(input: &str) -> String {
    let mut output = String::new();

    for ch in input.chars().rev() {
        output.push(ch);
    }

    return output;
}
