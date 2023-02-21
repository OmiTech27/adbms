> x = 5.6
> print(class(x))
[1] "numeric"
> print(typeof(x))
[1] "double"
> y =5
> print(class(y))
[1] "numeric"
> print(typeof(y))
[1] "double"
> print(is.integer(y))
[1] FALSE
> x=as.integer(5)
> print(class(x))
[1] "integer"
> print(typeof(x))
[1] "integer"
> y=5L
> print(class(y))
[1] "integer"
> print(typeof(y))
[1] "integer"
> x=4
> y=3
> z=x>y
> print(z)
[1] TRUE
> print(class(z))
[1] "logical"
> print(typeof(z))
[1] "logical"
> x=4+3i
> print(class(x))
[1] "complex"
> print(typeof(x))
[1] "complex"
> char = "Mumbai University"
> print(class(char))
[1] "character"
> print(typeof(char))
[1] "character"
> sqrt(-17)
[1] NaN
Warning message:
In sqrt(-17) : NaNs produced
> sqrt(16)
[1] 4
> sqrt(-16)
[1] NaN
Warning message:
In sqrt(-16) : NaNs produced

> setwd("E:/MCA/FY MCA Resources/ADBMS Practicals/Practical 5 R programming/datasets")
> getwd()
[1] "E:/MCA/FY MCA Resources/ADBMS Practicals/Practical 5 R programming/datasets"

record_data = read.table("E:/MCA/FY MCA Resources/ADBMS Practicals/Practical 5 R programming/datasets/record.txt")
> head(record_data)
  v1       v2     v3
1 id     name salary
2  1  devansh    60K
3  2 abhishek    50K
4  3    mohit    40K
5  4   saurab    30K
6  5     mane    20K

> record_csv_data = read.csv("E:/MCA/FY MCA Resources/ADBMS Practicals/Practical 5 R programming/datasets/record.csv")
> head(record_csv_data)
  id     name salary
1  1  devansh    60K
2  2 abhishek    50K
3  3    mohit    40K
4  4   saurab    30K
5  5     mane    20K


> x = data.frame(name="vinit",salary="70K")
> write.table(x, file="data.csv",sep=",")

name	salary	
1	vinit	70K
		

> y = data.frame(name="Devansh", department="IT")
> write.table(y, file="data.txt",sep = "\t"

"name"	"department"
"1"	"Devansh"	"IT"



> z = data.frame(a=10,b=40,c=pi)
> write.csv(z,file="sample.csv")

	a	b	c
1	10	40	3.141593


.libPaths()
[1] "C:/Users/milan/AppData/Local/R/win-library/4.2"
[2] "C:/Program Files/R/R-4.2.2/library"            
> library()
Warning message:
In library() :
  library ‘C:/Users/milan/AppData/Local/R/win-library/4.2’ contains no packages
> search()
 [1] ".GlobalEnv"        "tools:rstudio"     "package:stats"     "package:graphics" 
 [5] "package:grDevices" "package:utils"     "package:datasets"  "package:methods"  
 [9] "Autoloads"         "package:base"     
> install.packages("XML")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/milan/AppData/Local/R/win-library/4.2’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.2/XML_3.99-0.13.zip'
Content type 'application/zip' length 3053020 bytes (2.9 MB)
downloaded 2.9 MB

package ‘XML’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\milan\AppData\Local\Temp\Rtmp8wcWE8\downloaded_packages

