
# This file is auto-generated, do not edit. If you want to change
# sharedlib flags, you can edit the cmake_macros in this case. You
# can change flags for specific sharedlibs only by checking COMP_NAME.

CFLAGS := -mcmodel=medium -O
CPPDEFS := $(CPPDEFS)  -DFORTRANUNDERSCORE -DNO_R16 -DCPRGNU
CXXFLAGS :=  -O
CXX_LIBS :=  -lstdc++
CXX_LINKER := CXX
FC_AUTO_R8 :=  -fdefault-real-8 -fdefault-real-8
FFLAGS := -mcmodel=medium -fconvert=big-endian -ffree-line-length-none -ffixed-line-length-none -O -O -fconvert=big-endian -ffree-line-length-none -ffixed-line-length-none -fno-range-check
FFLAGS_NOOPT :=  -O0
FIXEDFLAGS :=  -ffixed-form -ffixed-form
FREEFLAGS :=  -ffree-form -ffree-form
HAS_F2008_CONTIGUOUS := FALSE
HDF5_PATH := /software/dev_tools/swtree/cs400_centos7.2_pe2016-08/hdf5-parallel/1.8.17/centos7.2_gnu5.3.0
KOKKOS_OPTIONS := -DKokkos_ENABLE_SERIAL=On
LAPACK_LIBDIR := /software/dev_tools/swtree/or-condo/mkl/2018.1.163/centos7.5_binary/lib
MACRO_FILE := 
MPICC := mpicc
MPICXX := mpic++
MPIFC := mpif90
NETCDF_C_PATH := /software/dev_tools/swtree/cs400/netcdf/4.3.3.1/centos7.2_gnu5.3.0/
NETCDF_FORTRAN_PATH := /software/dev_tools/swtree/cs400/netcdf/4.3.3.1/centos7.2_gnu5.3.0/
NETCDF_PATH := /software/dev_tools/swtree/cs400/netcdf/4.3.3.1/centos7.2_gnu5.3.0/
PNETCDF_PATH := /software/dev_tools/swtree/cs400_centos7.2_pe2016-08/pnetcdf/1.9.0/centos7.2_gnu5.3.0
SCC := gcc
SCXX := g++
SFC := gfortran
SLIBS := $(SLIBS)  -L/software/dev_tools/swtree/cs400/netcdf/4.3.3.1/centos7.2_gnu5.3.0//lib -Wl,-rpath=/software/dev_tools/swtree/cs400/netcdf/4.3.3.1/centos7.2_gnu5.3.0//lib -lnetcdff -lnetcdf
SUPPORTS_CXX := TRUE

ifeq "$(COMP_NAME)" "csm_share"
  CFLAGS := -mcmodel=medium -O -std=c99
endif
