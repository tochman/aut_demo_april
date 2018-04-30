Given("the following articles exist in the database") do |table|
    table.hashes.each do |article|
        create(:article, article)
    end
  end