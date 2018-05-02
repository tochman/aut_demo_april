Then("I should see {string}") do |expected_content|
    expect(page).to have_content expected_content
end


Then("I should be on the index page") do
    expect(current_path).to eq root_path
end
