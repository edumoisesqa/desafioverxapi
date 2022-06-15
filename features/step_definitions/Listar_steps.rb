Dado("que desejo visualizar as informacoes de produtos e estabelecimentos") do 
 

end

Quando("realizo uma requisicao get na api") do
    page = Api_vr.new
    $response = page.api_listarprodutos
end

Entao("api ira retornar  os dados dos produtos e estabelecimentos") do
    expect($response.code).to eq(200)
    puts "response body: #{$response.code}"
    puts "typeOfEstablishment : #{$response["typeOfEstablishment"][1]["name"]}"
    puts "typeOfEstablishment : #{$response["typeOfEstablishment"][2]["name"]}"
    puts "typeOfEstablishment : #{$response["typeOfEstablishment"][3]["name"]}"

    

end