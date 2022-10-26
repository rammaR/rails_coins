# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

spinner = TTY::Spinner.new("[:spinner] Cadastrandos moedas")
spinner.auto_spin

coins = [
            {
                name: 'Bitcoin',
                acronym: 'BTC',
                url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3_7QhAF5OjDGPGyvlucJqngk01c1sI2Ps9w&usqp=CAU"
            },
            {
                name: "Ethereum",
                acronym: 'ETH',
                url_image: "data:image/jpeg;base64,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"
            },
            {
                name: 'Dogecoin',
                acronym: 'DOG',
                url_image: "data:image/jpeg;base64,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"
            }
        ]

coins.each do |coin|

    Coin.find_or_create_by!(coin)

end

spinner.success("Cadastro de moedas concluido...")