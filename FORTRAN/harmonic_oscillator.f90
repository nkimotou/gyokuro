! This program showcases how Physicists would use Fortran to solve problems. 
! Fortran is a language designed for mathemeticians, scientists, and engineers.

program harmonic_oscillator
    implicit none
    ! Declare variables
    real :: dt, t, x, v, omega
    integer :: i, nSteps

    ! Initialize variables
    omega = 2.0           ! Angular frequency
    dt = 0.01             ! Time step
    nSteps = 1000         ! Number of steps
    x = 1.0               ! Initial position
    v = 0.0               ! Initial velocity
    t = 0.0               ! Initial time

    ! Time integration loop
    do i = 1, nSteps
        call euler_step(x, v, t, dt, omega)
        print *, "Time:", t, " Position:", x, " Velocity:", v
        t = t + dt
    end do

end program harmonic_oscillator

! Subroutine to perform a single step of the Euler method
subroutine euler_step(x, v, t, dt, omega)
    implicit none
    real, intent(inout) :: x, v, t, dt, omega
    real :: dx, dv

    ! Calculate the change in position and velocity
    dx = v * dt
    dv = -omega**2 * x * dt

    ! Update position and velocity
    x = x + dx
    v = v + dv
end subroutine euler_step
