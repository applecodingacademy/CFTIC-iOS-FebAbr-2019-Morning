import Foundation

let numeros = [32,41,65,38,33,51,43,85,90,101,30,10,5]
let resultado = numeros.sorted { $0 < $1 }.map { "\($0).000€" }
let total = resultado.compactMap { Int($0.dropLast().replacingOccurrences(of: ".", with: "")) }.reduce (0, +)
let totalIVA = total+(Int(Double(total) * 0.21))

resultado
total
totalIVA

