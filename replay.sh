#!/bin/bash

set -e

# Created 2023-07-13 21:36:03

CASEDIR="/home/tyr/E3SM_code/components/elm/tools/OLMT/Cases/US_LA2_Trans"

/home/tyr/E3SM_code/cime/scripts/create_newcase --case "${CASEDIR}" --res ELM_USRDAT --mach cades --compiler gnu --compset I20TRCNPRDCTCBC --project ccsi

cd "${CASEDIR}"

./xmlchange --file env_run.xml --id ELM_BLDNML_OPTS --val "-bgc bgc -nutrient cnp -nutrient_comp_pathway eca -soil_decomp century"

./xmlchange --file env_run.xml --id RUN_STARTDATE --val 1851-01-01

./xmlchange --file env_run.xml --id DATM_CLMNCEP_YR_ALIGN --val 1950

./xmlchange --file env_run.xml --id DATM_CLMNCEP_YR_START --val 1950

./xmlchange --file env_run.xml --id DATM_CLMNCEP_YR_END --val 1970

./xmlchange --file env_run.xml --id ATM_DOMAIN_FILE --val domain_sparse_grids_US_LA2_Veg_C3Gra_c230315.nc

./xmlchange --file env_run.xml --id LND_DOMAIN_FILE --val domain_sparse_grids_US_LA2_Veg_C3Gra_c230315.nc

./xmlchange --file env_run.xml ATM_DOMAIN_PATH=/home/tyr/E3SM_code/components/elm/tools/OLMT/CasesInputData/US_LA2/

./xmlchange --file env_run.xml LND_DOMAIN_PATH=/home/tyr/E3SM_code/components/elm/tools/OLMT/CasesInputData/US_LA2/

./xmlchange --file env_run.xml --id STOP_OPTION --val nyears

./xmlchange --file env_run.xml --id REST_N --val 1

./xmlchange --file env_run.xml --id STOP_N --val 173

./xmlchange --file env_workflow.xml JOB_WALLCLOCK_TIME=00:05:00

./case.setup --reset

./case.build --clean

./case.build

./case.submit

./xmlchange --file env_run.xml --id ELM_BLDNML_OPTS --val "-bgc bgc -nutrient cnp -nutrient_comp_pathway eca -soil_decomp century"

./xmlchange --file env_run.xml --id RUN_STARTDATE --val 1851-01-01

./xmlchange --file env_run.xml --id DATM_CLMNCEP_YR_ALIGN --val 1950

./xmlchange --file env_run.xml --id DATM_CLMNCEP_YR_START --val 1950

./xmlchange --file env_run.xml --id DATM_CLMNCEP_YR_END --val 1970

./xmlchange --file env_run.xml --id ATM_DOMAIN_FILE --val domain_sparse_grids_US_LA2_Veg_C3Gra_c230315.nc

./xmlchange --file env_run.xml --id LND_DOMAIN_FILE --val domain_sparse_grids_US_LA2_Veg_C3Gra_c230315.nc

./xmlchange --file env_run.xml ATM_DOMAIN_PATH=/home/tyr/E3SM_code/components/elm/tools/OLMT/CasesInputData/US_LA2/

./xmlchange --file env_run.xml LND_DOMAIN_PATH=/home/tyr/E3SM_code/components/elm/tools/OLMT/CasesInputData/US_LA2/

./xmlchange --file env_run.xml --id STOP_OPTION --val nyears

./xmlchange --file env_run.xml --id REST_N --val 1

./xmlchange --file env_run.xml --id STOP_N --val 173

./xmlchange --file env_workflow.xml JOB_WALLCLOCK_TIME=10:00:00

./case.submit

