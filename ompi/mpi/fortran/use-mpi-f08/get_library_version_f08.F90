! -*- f90 -*-
!
! Copyright (c) 2010-2012 Cisco Systems, Inc.  All rights reserved.
! Copyright (c) 2010-2012 Los Alamos National Security, LLC.
!               All Rights reserved.
! $COPYRIGHT$

subroutine MPI_Get_library_version_f08(name,resultlen,ierror)
   use :: mpi_f08_types, only : MPI_MAX_PROCESSOR_NAME
   use :: mpi_f08, only : ompi_get_library_version_f
   implicit none
   character(len=MPI_MAX_PROCESSOR_NAME), intent(out) :: name
   integer, intent(out) :: resultlen
   integer, optional, intent(out) :: ierror
   integer :: c_ierror

   call ompi_get_library_version_f(name,resultlen,c_ierror,len(name))
   if (present(ierror)) ierror = c_ierror
  
end subroutine MPI_Get_library_version_f08
