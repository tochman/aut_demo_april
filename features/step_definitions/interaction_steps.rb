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

Given("I click on {string} stripe button") do |button|
    #binding.pry
    click_button button
    #click_button '.stripe-button-el'
   # button = find('button', text: button)
   # button.click
    sleep 3
    @stripe_iframe = all('iframe[name=stripe_checkout_app]').last
end

Given("I fill in the stripe field {string} with {string}") do |field_name, value|
    within_frame @stripe_iframe do 
        fill_in field_name, with: value
    end
end

Given("I submit the stripe form") do
    within_frame @stripe_iframe do 
        find('.Section-button').click
    end 
    sleep 7
end

Then("show me the page") do
    save_and_open_page
end
  