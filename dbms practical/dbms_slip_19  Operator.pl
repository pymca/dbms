Create Database
use CompanyDB

Create Employee Collection and Insert Records

db.Employee.insertMany([
{
    Emp_id:101,
    EName:"ABC",
    Salary:30000,
    Department:"Sales",
    City:"Pune"
},
{
    Emp_id:102,
    EName:"PQR",
    Salary:45000,
    Department:"HR",
    City:"Mumbai"
},
{
    Emp_id:103,
    EName:"Rahul",
    Salary:55000,
    Department:"IT",
    City:"Nashik"
},
{
    Emp_id:104,
    EName:"Priya",
    Salary:40000,
    Department:"Accounts",
    City:"Pune"
},
{
    Emp_id:105,
    EName:"Amit",
    Salary:25000,
    Department:"IT",
    City:"Nagpur"
}
])

1. Retrieve Records of Employees Whose Salary is Greater Than 35000
db.Employee.find(
    {Salary:{$gt:35000}}
)

2. Find Employees Whose Salary is Less Than 50000
db.Employee.find(
    {Salary:{$lt:50000}}
)

3. Display Records Whose Names are ABC and PQR
db.Employee.find(
    {EName:{$in:["ABC","PQR"]}}
)

4. Display Records Whose Names are NOT ABC and PQR
db.Employee.find(
    {EName:{$nin:["ABC","PQR"]}}
)

