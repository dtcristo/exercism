pub fn build_proverb(list: Vec<&str>) -> String {
    let mut output = String::new();
    if list.is_empty() {
        return output;
    }
    if list.len() > 1 {
        for i in 0..(list.len() - 1) {
            output.push_str(&format!(
                "For want of a {} the {} was lost.\n",
                list[i],
                list[i + 1]
            ));
        }
    }
    output.push_str(&format!("And all for the want of a {}.", list[0]));
    return output;
}
