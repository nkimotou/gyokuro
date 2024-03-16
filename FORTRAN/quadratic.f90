! This is a program to calculate the roots of a quadratic equation.

program QuadraticEquation
    implicit none
    
    real :: a, b, c, discriminant, root1, root2

    ! Input coefficients
    print*, "Enter coefficients (a, b, c) of the quadratic equation (ax^2 + bx + c = 0):"
    read*, a, b, c

    ! Calculate discriminant
    discriminant = b**2 - 4*a*c

    ! Check discriminant and compute roots accordingly
    if (discriminant > 0) then
        root1 = (-b + sqrt(discriminant)) / (2*a)
        root2 = (-b - sqrt(discriminant)) / (2*a)
        print*, "Two distinct real roots:"
        print*, "Root 1 = ", root1
        print*, "Root 2 = ", root2
    else if (discriminant == 0) then
        root1 = -b / (2*a)
        print*, "One real root (repeated):"
        print*, "Root = ", root1
    else
        ! Calculate real and imaginary parts for complex roots
        root1 = -b / (2*a)
        root2 = sqrt(abs(discriminant)) / (2*a)
        print*, "Two complex roots:"
        print*, "Root 1 = ", root1, " + ", root2, "i"
        print*, "Root 2 = ", root1, " - ", root2, "i"
    end if

end program QuadraticEquation
