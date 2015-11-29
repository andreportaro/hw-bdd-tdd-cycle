
Given(/^the following movies exist:$/) do |table|
  table.hashes.each do |movie|
    @movie = Movie.create!(movie)
  end
end


Then(/^the director of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
  director_li = page.all('ul li:last-child').map(&:text)
  director_li.should have_content("xurumelas")
end