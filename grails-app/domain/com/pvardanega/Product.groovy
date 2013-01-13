package com.pvardanega

class Product {

    String title
    Long price

    static belongsTo = [user: User]

    static constraints = {
        title blank: false
        user nullable: false
    }
}
