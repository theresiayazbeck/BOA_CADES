# This file is for user convenience only and is not used by the model
# Changes to this file will be ignored and overwritten
# Changes to the environment should be made in env_mach_specific.xml
# Run ./case.setup --reset to regenerate this file
. /usr/share/Modules/init/sh
module purge 
module load PE-gnu perl mkl/2018.1.163 cmake/3.20.3 python/3.6.3 netcdf/4.3.3.1 pnetcdf/1.9.0
export NETCDF_PATH=/software/dev_tools/swtree/cs400/netcdf/4.3.3.1/centos7.2_gnu5.3.0/
export NETCDF_C_PATH=/software/dev_tools/swtree/cs400/netcdf/4.3.3.1/centos7.2_gnu5.3.0/
export NETCDF_FORTRAN_PATH=/software/dev_tools/swtree/cs400/netcdf/4.3.3.1/centos7.2_gnu5.3.0/
export PNETCDF_PATH=/software/dev_tools/swtree/cs400_centos7.2_pe2016-08/pnetcdf/1.9.0/centos7.2_gnu5.3.0
export LAPACK_LIBDIR=/software/dev_tools/swtree/or-condo/mkl/2018.1.163/centos7.5_binary/lib
export PERL5LIB=/software/dev_tools/swtree/cs400_centos7.2_pe2016-08/perl/5.30.1/centos7.2_gnu5.3.0/lib/perl5/