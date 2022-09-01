use std::result::Result;

fn main() {
    println!("{}", get_message());
    println!("v1.10.1");
}

fn get_message<'a>() -> &'a str {
    "Hello, world!"
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn should_get_message() {
        assert_eq!(get_message(), "Hello, world!")
    }
}
