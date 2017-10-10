program Main
   implicit none


   interface operator (*)
    function MatVecMult(A, v) result (w)
     real, dimension(:,:), INTENT(IN) :: A
     real, dimension(:), INTENT(IN) :: v
     real, dimension( SIZE(A,1) ) :: w
    end function
   end interface 

   real, dimension( 3, 3 ) :: A
   real, dimension( 3 ) :: v1, v2
   integer :: i, j

   CALL random_number( A )
   CALL random_number( v1 )

   v2 = A * v1

   DO i = 1, SIZE(A(:, 1))
      WRITE (6, '("[")', ADVANCE="NO")
      DO j = 1, SIZE(A(1, :))
         WRITE (6, '(2X F6.4)', ADVANCE="NO")   A(i,j)
      END DO
      WRITE (6, '("]")', ADVANCE="NO")

      WRITE (6, '(6X "[" F6.4 "]")', ADVANCE="NO")   v1(i)
      WRITE (6, '(6X "[" F6.4 "]")', ADVANCE="NO")   v2(i)
      print *
   END DO
   print *
   print *

  end program
