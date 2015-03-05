import Foundation

struct Product : Printable {
    var name: String
    var cost: Double
    var description: String { return "\(name) is " + String(format: "$%.2f", cost) }
}

var product1 = Product(name: "Soap", cost: 5.0)
var product2 = Product(name: "Shampoo", cost: 8.0)
var product3 = Product(name: "Toothpaste", cost: 4.0)
var products = [product1, product2, product3]

products.map { println($0.description) }

println("\nApplying 20% discount\n")
var discountedProducts: [Product] = products.map { product in
    var discountedProduct = product
    discountedProduct.cost *= 0.8
    return discountedProduct
}
discountedProducts.map { println($0.description) }


