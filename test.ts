import * as service from './generated/readinglist_pb_service'
import * as structs from './generated/readinglist_pb'


// data types

console.log(structs)

let b = new structs.Book()
b.setTitle("something")

console.log(b.toObject())

// service

console.log(service)
