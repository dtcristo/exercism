pub trait Luhn: ToString {
    fn valid_luhn(&self) -> bool {
        let mut sum = 0u64;
        let mut digit_count = 0u64;
        let mut double = false;
        for ch in self.to_string().chars().rev() {
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
}

impl<T: ToString> Luhn for T {}
