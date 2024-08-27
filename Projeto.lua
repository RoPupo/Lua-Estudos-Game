--[[
|===============================================|
|               Ficha do personagem             |
|Nome do personagem:                            |
|Classe:     Nivel:     Nome do Jogador:        |
|Raça:   Alinhamento:   Exp:*********           |
|===============================================|
|                   Status                      | 
| Força:                                        |
| Destreza:                                     |
| Constituição:                                 |        
| Inteligência:                                 |        
| Sabedoria:                                    |        
| Carisma:                                      |
| .....                                         |       
| Magias                                        |
|===============================================|
]]
local function getProgressBar(atributo) -- pensar na assinatura da função (o que ela vai printar)
    local result = ""
    local fullChar = "🔷"
    local emptyChar= "◽"
    for i = 1, 20, 1 do
        if i <= atributo then
            result = result .. fullChar
            else  -- quadradinho vazio
            result = result .. emptyChar
        end
    end
    
        

    return result 
end
local function getProgressBarExp(atributo) -- pensar na assinatura da função (o que ela vai printar)
    local result = ""
    local fullChar = "🔶"
    local emptyChar= "🔸"
    for i = 1, 10, 1 do
        if i <= atributo then
            result = result .. fullChar
            else  -- quadradinho vazio
            result = result .. emptyChar
        end
    end
    
        

    return result 
end


os.execute("chcp 65001") 
os.execute("cls") 


local fichaPersonagem = {
    nomedoPersonagem = "Belleg",
    classe = "Clérigo",
    raca = "Anão",
    nivel = 1,
    Alinhamento = "Justo",
    exp = 8,
    bonusAction = 1,
    actions = 1,
    coisaFavorita = "Cerveja 🍺",
        statusPersonagem = { -- Atributos do personagem 
        healthPoints = 12,
        str = 13,
        dex = 8,
        con = 17,
        int = 12,
        wis = 16,
        chr = 8,
        CA = 15, -- Classe de Armadura
        initiative = -1, -- Iniciativa
        magias = { -- Magias nv1 - nv3
            level1 = "Cure Wounds 🌟, Inflict Wounds 💀, Shield of Faith 🛡️",
            level2 = false,
            level3 = false,
        }
    }
    
}

print("|===============================================================|")
print("|                     Ficha do personagem                       |")
print("|===============================================================|")
print("|Nome do personagem:", fichaPersonagem.nomedoPersonagem,"                                |")
print("|Classe:",fichaPersonagem.classe,"Nivel:", fichaPersonagem.nivel,"Nome do Jogador: Pupo   |")
print("|Raça:", fichaPersonagem.raca, "Align:", fichaPersonagem.Alinhamento, "Exp:", getProgressBarExp(fichaPersonagem.exp)..(fichaPersonagem.exp).."/10|")    
print("|Coisa favorita:", fichaPersonagem.coisaFavorita,"                        |")
print("|---------------------------------------------------------------|")
print("|                           Status                              |")
print("|---------------------------------------------------------------|")
print("|                                                               |")
print("|CA:", fichaPersonagem.statusPersonagem.CA, "              Iniciativa:", fichaPersonagem.statusPersonagem.initiative,"        |")
print("|===============================================================|")
print("|Força:     ", (getProgressBar(fichaPersonagem.statusPersonagem.str)) .. (fichaPersonagem.statusPersonagem.str), "|")
print("|Destreza:", (getProgressBar(fichaPersonagem.statusPersonagem.dex)).. (fichaPersonagem.statusPersonagem.dex), "|")
print("|Constituição:", (getProgressBar(fichaPersonagem.statusPersonagem.con))..(fichaPersonagem.statusPersonagem.con), "|")
print("|Inteligência:", (getProgressBar(fichaPersonagem.statusPersonagem.int))..(fichaPersonagem.statusPersonagem.int), "|")
print("|Sabedoria:", (getProgressBar(fichaPersonagem.statusPersonagem.wis))..(fichaPersonagem.statusPersonagem.wis), "|")
print("|Carisma:", (getProgressBar(fichaPersonagem.statusPersonagem.chr))..(fichaPersonagem.statusPersonagem.dex), "|")
print("|---------------------------------------------------------------|")
print("|-------------------------- Magias -----------------------------|")
print("|---------------------------------------------------------------|")
print("|Primeiro Circulo :                                             |")
if fichaPersonagem.statusPersonagem.magias.level1 == false then 
    print("|Você não possui magias do primeiro circulo                     |")
    else if fichaPersonagem.statusPersonagem.magias.level1 then
        print("|",fichaPersonagem.statusPersonagem.magias.level1, " |") 
    end
end
print("|Segundo Circulo :                                              |")
if fichaPersonagem.statusPersonagem.magias.level2 == false then 
    print("|Você não possui magias do segundo circulo                      |")
    else if fichaPersonagem.statusPersonagem.magias.level2 then
        print("|",fichaPersonagem.statusPersonagem.magias.level2, "                                        |")
    end
end
print("|Terceiro Circulo :                                             |")
if fichaPersonagem.statusPersonagem.magias.level3 == false then 
    print("|Você não possui magias do terceiro circulo                     |")
    else if fichaPersonagem.statusPersonagem.magias.level3 then
        print("|",fichaPersonagem.statusPersonagem.magias.level3, " |") 
    end
end
print("|===============================================================|")
