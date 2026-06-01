Create Database
use CollegeDB

Create (Insert Records)

db.Student.insertMany([
{
    RollNo:1,
    Name:"Rahul",
    Class:"FYBCA",
    Marks:85
},
{
    RollNo:2,
    Name:"Priya",
    Class:"FYBCA",
    Marks:78
},
{
    RollNo:3,
    Name:"Amit",
    Class:"SYBCA",
    Marks:65
}
])

Read (Display Records)
db.Student.find()


Update Record

db.Student.updateOne(
    {RollNo:1},
    {$set:{Marks:90}}
)

Delete Record

db.Student.deleteOne(
    {RollNo:3}
)


Employee Collection
Create (Insert Records)

db.Employee.insertMany([
{
    Emp_id:101,
    EName:"Rahul",
    Department:"Sales",
    Salary:30000
},
{
    Emp_id:102,
    EName:"Priya",
    Department:"HR",
    Salary:35000
},
{
    Emp_id:103,
    EName:"Amit",
    Department:"IT",
    Salary:40000
}
])


Read (Display Records)

db.Employee.find()


Update Record

db.Employee.updateOne(
    {Emp_id:101},
    {$set:{Salary:35000}}
)

Delete Record

db.Employee.deleteOne(
    {Emp_id:103}
)

Display Records from Student Table
db.Student.find()

Display Records from Employee Table
db.Employee.find()