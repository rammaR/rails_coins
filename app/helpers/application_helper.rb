module ApplicationHelper

    def data_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end

    def ambient_rails
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.production?
            "Producão"
        else
            "Teste"
        end
    end

end
