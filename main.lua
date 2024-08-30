
-- Nova função, sem parametros e sem retorno.
--[[
local function novaFuncao()
       print("Olá, sou uma nova função !")
end
]]
print("")
os.execute("chcp 65001")
--- função com parametro e retorno !
local function Mph(velocidadeKm) 
    os.date()-- () é o parametro
    local mph = velocidadeKm / 1.689
    -- print ("Velocidade a ser convertida: "..velocidadeKm.."Km")
    return string.format("%.2f", mph) -- Para retornar x.xx <- duas casas decimais
    --- math.floor(mph) faz o arredondamento   
end

km = 1000
km2 = 100
km3 = 100
print("")
print("O vento hoje está a uma velocidade de " ..(Mph(km)).."Mp/h")
print(os.date())


--- Função com multiplos paramêtros e retornos.
local function teste(a, b, c)
    local a1 = Mph(a)
    local a2 = Mph(b)
    local a3 = Mph(c)

    return a1, a2, a3
end

print ("Conversões:", teste(100, 20, 1)) 
--[[Não utilizar ".." 
para concatenar varios valores]] 

local x, y, z = teste(50, 50, 10)
print("")
print("Conversões realizadas:")
print(x.. " Mph")
print(y.. " Mph")
print(z.. " Mph")
 -- Teste
