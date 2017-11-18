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

// Primality test: https://en.wikipedia.org/wiki/Primality_test
//fn is_prime(n: u64) -> bool {
//    if n < 1 {
//        return false;
//    } else if n < 3 {
//        return true;
//    } else if (n % 2 == 0) || (n % 3 == 0) {
//        return false;
//    }
//    let mut i = 5;
//    while i * i < n {
//        if (n % i == 0) || (n % (i + 2) == 0) {
//            return false;
//        }
//        i += 6;
//    }
//    return true;
//}
