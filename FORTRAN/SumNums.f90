program SumNums
    implicit none  ! Enforce explicit declaration of variables
    
    ! Declare variables and data type
    integer :: num1, num2, result
    
    ! Assign values to variables
    num1 = 12345
    num2 = 54321
    
    ! Perform addition, assign result to addition of declared variable values
    result = num1 + num2
    
    ! Print the result
    print *, 'The sum of ', num1, ' and ', num2, ' is ', result
    
end program SumNums
