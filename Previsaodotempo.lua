local function  convertingCtoF(Celsius)
    local F = (Celsius * 1.8) + 32
    return F
end

C= 123
Fahr = convertingCtoF(C)

print(string.format("a temperatura hoje é de %.2fF", Fahr)) -- %d - digital | %s  - string