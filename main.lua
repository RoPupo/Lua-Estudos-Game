
-- Nova função, sem parametros e sem retorno.
--[[
local function novaFuncao()
       print("Olá, sou uma nova função !")
end
]]
os.execute("chcp 65001")
--- função com parametro e retorno !
local function Mph(velocidadeKm) 
    os.date()-- () é o parametro
    local mph = velocidadeKm / 1.689
    print ("Velocidade a ser convertida: "..velocidadeKm.."Km")
    return string.format("%.2f", mph) -- Para retornar x.xx <- duas casas decimais
    --- math.floor(mph) faz o arredondamento   
end

km = 100

print("O vento hoje está a uma velocidade de " ..(Mph(km)).."Mp/h")
print(os.date())



