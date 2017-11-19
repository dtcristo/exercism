pub fn encode(input: &str) -> String {
    let mut output = String::new();
    let mut last_ch = '?';
    let mut ch_count: u64 = 0;
    for ch in input.chars() {
        if ch == last_ch {
            ch_count += 1;
        } else {
            push_encoded_chunk(&mut output, last_ch, ch_count);
            last_ch = ch;
            ch_count = 1;
        }
    }
    push_encoded_chunk(&mut output, last_ch, ch_count);
    return output;
}

fn push_encoded_chunk(output: &mut String, last_ch: char, ch_count: u64) {
    if ch_count == 1 {
        output.push(last_ch);
    } else if ch_count > 1 {
        output.push_str(&format!("{}{}", ch_count, last_ch));
    }
}

pub fn decode(input: &str) -> String {
    let mut output = String::new();
    let mut digits = String::new();
    let mut was_number = false;
    for ch in input.chars() {
        if ch.is_digit(10) {
            digits.push(ch);
            was_number = true;
        } else {
            if was_number {
                let number = digits.parse::<usize>().unwrap();
                output.push_str(&ch.to_string().repeat(number));
                digits = String::new();
                was_number = false;
            } else {
                output.push(ch);
            }
        }
    }
    return output;
}
