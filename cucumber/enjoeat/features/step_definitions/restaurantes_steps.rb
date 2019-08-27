Dado("que tenho uma Lista de resturantes") do
    @restaurant_data = [
        { name: "Bread & Bakery", category: 'Padaria', delivery_time: '25 minutos', rating: 4.9 },
        { name: 'Brurger House', category: 'Hamburgers', delivery_time: '30 minutos', rating: 3.5 },
        { name: 'Coffee Corner', category: 'Cafeteria', delivery_time: '20 minutos', rating: 4.8 }
    ]
end

Quando("acesso a lista de restaurantes") do
    visit '/restaurants'
end
  
Então("vejo todas as opções disponíveis") do
    restaurantes = all('.restaurant-item')                              # o método ALL devolve uma coleção de elementos um (array)
    
        # puts restaurantes.size 
    # puts restaurantes.class

    expect(restaurantes.size).to be > 0
    # expect(restaurantes.size).to eql 6

end
  
Então("cada restaurante deve exibir sua cateforia") do
    restaurantes = all('.restaurant-item')

    @restaurant_data.each_with_index do |value, index|
        expect(restaurantes[index]).to have_text value[:category]
    end
end
  
Então("cada restaurante deve exibir o tempo de entrega") do
    restaurantes = all('.restaurant-item')
    
    @restaurant_data.each_with_index do |value, index|
        expect(restaurantes[index]).to have_text value[:delivery_time]
    end
end
  
Então("cada restaurante deve exibir sua nota de avaliação") do
    restaurantes = all('.restaurant-item')
    
    @restaurant_data.each_with_index do |value, index|
        expect(restaurantes[index]).to have_text value[:rating]
    end
end