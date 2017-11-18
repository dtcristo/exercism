pub fn nth(n: u64) -> Result<u64, &'static str> {
    if n == 0 {
        return Err("Cannot have zeroth prime.");
    }

    let mut i = 0;
    let mut prime_count = 0;
    while prime_count != n {
        i += 1;
        if is_prime(i) {
            prime_count += 1;
        }
    }
    return Ok(i);
}

// Naive primality test
fn is_prime(n: u64) -> bool {
    if n < 2 {
        return false;
    }
    for i in 2..n {
        if n % i == 0 {
            return false;
        }
    }
    return true;
}
