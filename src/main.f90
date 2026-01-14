! objective: take outputs from phantom and create radmc3d input files
! Idea is to (minimally) adapt `read_dump` subroutine from `readwrite_dumps.f90`
! from phantom src. 

! Also I want to write *idiomatic* modern Fortran, so the code
! would probably look much different than Phantom's implementation.


program hello

    type :: dump_context
        real    :: time, hfact
        integer :: idisk, iprint, id, nprocs
        logical :: header_only
    end type dump_context

    type :: dump_io_options
        logical :: header_only = .false.
        logical :: dusty_disc  = .false.
    end type

    type :: dump_runtime
       integer :: rank
       integer :: nprocs
       integer :: verbosity
    end type

    type :: dump_result
       real    :: time
       real    :: hfact
       integer :: ierr
    end type


    call read_phantom(1.0, 2.0)

    contains
    
    


    subroutine read_phantom(a1,  a2)
        !! Read phantom dump file and store data in appropriate variables


        real, intent(in) :: a1
        real, intent(in) ::  a2

        print* , "Hello, World!"
    end subroutine read_phantom


end program hello





