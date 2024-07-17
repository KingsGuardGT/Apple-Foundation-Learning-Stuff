import UIKit

for number in 1...10 {
    print("Angka: \(number)")
}


// Practice 1
func laundry(number: Int){
    //Ourput : Cucian X selesai.
    print("Cucian \(number) selesai")
}

let numberOfCustomers: Int = 15
for number in 1...numberOfCustomers{
    laundry(number: number)
}

let customers: [String] = ["Rizal", "Gerson", "Dian", "Irfan", "Robert", "Agus", "Salim"]
for customer in customers {
    print(customer)
}

customers.append("Jason")
customers.append("Dimas")
for customer in customers {
    print("Nama pelanggan")
}
print("Ini namanya: \(customers[5]) \(customers[2])")


let redPlayers = ["Agus", "Asep", "Tari", "Ucup", "Dian"]
let bluePlayers = ["Dave", "Pace", "Terry", "Victor", "Nate"]

print("Tim Merah")
for player in redPlayers{
    print(player)
}
print("Tim Biru")
for player in bluePlayers{
    print(player)
}
