When("I visit the site") do
    visit root_path
end

Given("I click on {string}") do |element_value|
    click_link_or_button element_value
end
  
Given("I fill in {string} with {string}") do |input_field, value|
    fill_in input_field, with: value
end

Then("show me the page in the browser") do
    save_and_open_page
end