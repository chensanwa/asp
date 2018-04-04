# asp
C#.NET comprehensive training , C# + HTML + CSS + .NET + MySQL + VS2012

### 数据库设计说明

需要在MySQL数据库建立名为"aspdb"的数据库，其中包含account、course、stuinfor、stuscore表

#### 表字段说明

一、account

、、、
  id : char(10) not null   
  password : varchar(20) not null
、、、

二、course

  courseNo : char(10) not null primary key
  courseName : varchar(10) not null
  teacher : varchar(6) not null
  credit : float
  
三、stuinfor

  id : char(10) not null primary key
  name : varchar(6) not null
  age : int
  department : varchar(10)
  address : varchar(20)
  ps : varchar(40)
  gender : varchar(2)
  
四、stuscore

  id : char(10) not null
  courseNo : char(10) not null
  score : float

