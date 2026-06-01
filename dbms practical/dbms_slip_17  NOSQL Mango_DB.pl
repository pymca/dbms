Create Database
use LibraryDB

Create Collection and Insert One Record

db.Book.insertOne({
    Name:"C Programming",
    Addition:"1st",
    Author:"Sudarshan",
    Price:450
})


Insert Many Records

db.Book.insertMany([
{
    Name:"Java Programming",
    Addition:"2nd",
    Author:"Balagurusamy",
    Price:550
},
{
    Name:"Python Basics",
    Addition:"1st",
    Author:"Guido",
    Price:600
},
{
    Name:"DBMS",
    Addition:"3rd",
    Author:"Sudarshan",
    Price:500
},
{
    Name:"Computer Networks",
    Addition:"2nd",
    Author:"Tanenbaum",
    Price:700
},
{
    Name:"Operating System",
    Addition:"4th",
    Author:"Galvin",
    Price:650
}
])


1. Insert One Record

db.Book.insertOne({
    Name:"Data Structure",
    Addition:"1st",
    Author:"Seymour",
    Price:400
})


2. Insert Many Records

db.Book.insertMany([
{
    Name:"AI Basics",
    Addition:"1st",
    Author:"John",
    Price:800
},
{
    Name:"Machine Learning",
    Addition:"2nd",
    Author:"Andrew",
    Price:900
}
])


3. Find Particular Record

db.Book.find({Name:"DBMS"})

4. Display Books Whose Author is Sudarshan
db.Book.find({Author:"Sudarshan"})


5. Update Author forr Book "C Programming"...

db.Book.updateOne(
    {Name:"C Programming"},
    {$set:{Author:"Balagurusamy"}}
)

Verify
db.Book.find({Name:"C Programming"})


6. Delete Record

db.Book.deleteOne(
    {Name:"Python Basics"}
)

Verify

db.Book.find()