pub trait Luhn {
    fn valid_luhn(self) -> bool;
}

fn is_valid(input: String) -> bool {
    let mut sum = 0u64;
    let mut digit_count = 0u64;
    let mut double = false;
    for ch in input.chars().rev() {
        match ch.to_string().parse::<u64>() {
            Ok(digit) => {
                if double {
                    let doubled = 2 * digit;
                    sum += if doubled > 9 { doubled - 9 } else { doubled };
                } else {
                    sum += digit;
                }
                digit_count += 1;
                double = !double;
            }
            Err(_) => {
                if ch != ' ' {
                    // Invalid character
                    return false;
                }
            }
        }
    }
    (digit_count > 1) && (sum % 10 == 0)
}

impl Luhn for &'static str {
    fn valid_luhn(self) -> bool {
        is_valid(self.to_string())
    }
}

impl Luhn for String {
    fn valid_luhn(self) -> bool {
        is_valid(self)
    }
}

impl Luhn for u8 {
    fn valid_luhn(self) -> bool {
        is_valid(self.to_string())
    }
}

impl Luhn for u16 {
    fn valid_luhn(self) -> bool {
        is_valid(self.to_string())
    }
}

impl Luhn for u32 {
    fn valid_luhn(self) -> bool {
        is_valid(self.to_string())
    }
}

impl Luhn for u64 {
    fn valid_luhn(self) -> bool {
        is_valid(self.to_string())
    }
}

impl Luhn for usize {
    fn valid_luhn(self) -> bool {
        is_valid(self.to_string())
    }
}
