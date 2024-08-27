--- Classe de Monstro
MONSTER = {
    Name = "Creeper",
    Exp = 10,
    Hp = 15,
    anger = true,
    status = false,
    alive = not status,
    lootID = 
    {   armors = "Chain armor",
        gold = "50",
        materials = "Grass block"
        
    }
}
print ("HP Atual,", MONSTER.Hp)
while MONSTER.Hp > 0 do 
    -- Sempre vai executar pelo menos uma vez (Check and Execute)
    -- enquando MONSTER.Hp > 0 faça ... 
    MONSTER.Hp = MONSTER.Hp - 1
    print("Voce acertou com uma espada! Damage -1")
    print("Hp Creeper:", MONSTER.Hp)
end

if MONSTER.Hp == 0 then
    MONSTER.status = false 
    if MONSTER.status == false then
    MONSTER.alive = not MONSTER.status 
    end
end
print()
print ("Parabens voce derrotou o Creeper")
print("Voce ganhou:")

print(MONSTER.lootID.armors) 
print(MONSTER.lootID.gold, "Ouro")
print(MONSTER.lootID.materials)
print(MONSTER.Exp, "Exp")
print()

hero = {
    name = "Pupo",
    exp = 0,
    nivel = 1,

}
if MONSTER.alive == true then
    hero.exp = hero.exp + MONSTER.Exp 

    if hero.exp >9 then
    hero.nivel = hero.nivel + 1
    print()
    print ("!! Level Up !! Você subiu para o level", hero.nivel)
    print()
    end
    
end
