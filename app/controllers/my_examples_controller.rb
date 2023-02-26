class MyExamplesController < ApplicationController
  def fortune_method
    fortunes = ["You'll win lotto", "Your days are numbered", "random relative will leave you a large inheritance"]
    render json: { message: "Here's your fortune: #{fortunes.sample} " }
  end

  def lotto_method
    numbers = []
    6.times do
      numbers << rand(1..60)
    end
    render json: { lotto: "winning numnbers are: #{numbers}" }
  end
end
