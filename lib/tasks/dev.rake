namespace :dev do
  desc "Configura ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      puts %x(db:drop db:create db:migrate db:seed)
    end
  end

  desc "Print a friendly regrats"
  task ola: :environment do
    if Rails.env.development?
      puts %x(echo "Ola pessoas do mundo todo")
    end
  end

  desc "Cadastra 1000 usuario no sistema"
  task user: :environment do
    spinner = TTY::Spinner.new("[:spinner] Cadastrando usuários...")
    spinner.auto_spin

    1000.times do |i|
      sleep(0.5)
      num = rand(9999)
      User.create!(
        name: "Usuário #{num}",
        email: "#{num}@user.com"
      )
    end

    spinner.success('(Concluído)')
  end
end
