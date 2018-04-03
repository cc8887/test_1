!  test_1.f90 
!
!  FUNCTIONS:
!  test_1 - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: test_1
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

function qq(a) result(b)
implicit none
    integer::a,b;
    a = 10;
    print *,a;
    b = 12;
    return
end function qq
    
program test_1
use fuck 
    implicit none
    integer::i,j
    !real::a(3,3),loads(20,20),c(-1:10),bb(3,3);
    !real,allocatable::a(:,:)
    real:: vf(3),v(2,2);
    real::c,d,e,r,f,b;
    REAL(8),ALLOCATABLE::A(:,:)
    INTEGER(4)::m,n
    character(len = 50)::fileName,fileName_tamp
    ALLOCATE(A(m,n))
    fileName = "bbb.dat"
   open (10 , file = 'aaa.dat' , status = 'replace' ,action ='write');
   write(10,*)fileName;
   close(10);
   open (10 , file = 'aaa.dat' , status = 'replace' ,action ='read');
   
   read(10,unit = 'rewind')fileName_tamp;
   open(11 , file = fileName_tamp , status = 'new' ,action ='read');

   !print *,c,d,e,r,f,b
    !pause

end program test_1

