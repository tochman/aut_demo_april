Given("the following articles exist in the database") do |table|
    table.hashes.each do |article|
        create(:article, article)
    end
  end

Given("the following users exist") do |table|
    table.hashes.each do |user|
        create(:user, user)
    end
end

Given("I am logged in as {string}") do |email|
    user = User.find_by(email: email )
    login_as(user, scope: :user)
end