Dado("que desejo visualizar as informacoes de produtos e estabelecimentos") do 
    $uri_base = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
end

Quando("realizo uma requisicao get na api") do
    $response = HTTParty.get($uri_base, :verify => false )
end

Entao("api ira retornar  os dados dos produtos e estabelecimentos") do
    expect($response.code).to eq(200)
    puts "response body: #{$response.code}"
    puts "typeOfEstablishment : #{$response["typeOfEstablishment"]}"
    
end