class  Api_vr

def api_listarprodutos

$uri_base = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"

HTTParty.get($uri_base, :verify => false,
 headers:{
 "Content-Type" => "application/jason",
  },
  )
   
 end
end