/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_2(char*, char *);
IKI_DLLESPEC extern void execute_3(char*, char *);
IKI_DLLESPEC extern void execute_2542(char*, char *);
IKI_DLLESPEC extern void execute_2543(char*, char *);
IKI_DLLESPEC extern void execute_2544(char*, char *);
IKI_DLLESPEC extern void execute_2545(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_6(char*, char *);
IKI_DLLESPEC extern void execute_2504(char*, char *);
IKI_DLLESPEC extern void execute_2505(char*, char *);
IKI_DLLESPEC extern void execute_2510(char*, char *);
IKI_DLLESPEC extern void execute_2511(char*, char *);
IKI_DLLESPEC extern void execute_2512(char*, char *);
IKI_DLLESPEC extern void execute_2513(char*, char *);
IKI_DLLESPEC extern void execute_8(char*, char *);
IKI_DLLESPEC extern void execute_2506(char*, char *);
IKI_DLLESPEC extern void execute_2244(char*, char *);
IKI_DLLESPEC extern void execute_2245(char*, char *);
IKI_DLLESPEC extern void execute_2359(char*, char *);
IKI_DLLESPEC extern void execute_2360(char*, char *);
IKI_DLLESPEC extern void execute_2474(char*, char *);
IKI_DLLESPEC extern void execute_2521(char*, char *);
IKI_DLLESPEC extern void execute_2522(char*, char *);
IKI_DLLESPEC extern void execute_17(char*, char *);
IKI_DLLESPEC extern void execute_18(char*, char *);
IKI_DLLESPEC extern void execute_1130(char*, char *);
IKI_DLLESPEC extern void execute_2247(char*, char *);
IKI_DLLESPEC extern void execute_2248(char*, char *);
IKI_DLLESPEC extern void execute_2476(char*, char *);
IKI_DLLESPEC extern void execute_2477(char*, char *);
IKI_DLLESPEC extern void execute_2523(char*, char *);
IKI_DLLESPEC extern void execute_2524(char*, char *);
IKI_DLLESPEC extern void execute_2525(char*, char *);
IKI_DLLESPEC extern void execute_2526(char*, char *);
IKI_DLLESPEC extern void execute_2529(char*, char *);
IKI_DLLESPEC extern void execute_2530(char*, char *);
IKI_DLLESPEC extern void execute_2527(char*, char *);
IKI_DLLESPEC extern void execute_2481(char*, char *);
IKI_DLLESPEC extern void execute_2482(char*, char *);
IKI_DLLESPEC extern void execute_2531(char*, char *);
IKI_DLLESPEC extern void execute_2484(char*, char *);
IKI_DLLESPEC extern void execute_2533(char*, char *);
IKI_DLLESPEC extern void execute_2534(char*, char *);
IKI_DLLESPEC extern void execute_2538(char*, char *);
IKI_DLLESPEC extern void execute_2486(char*, char *);
IKI_DLLESPEC extern void execute_2487(char*, char *);
IKI_DLLESPEC extern void execute_2537(char*, char *);
IKI_DLLESPEC extern void execute_2489(char*, char *);
IKI_DLLESPEC extern void execute_2490(char*, char *);
IKI_DLLESPEC extern void execute_2498(char*, char *);
IKI_DLLESPEC extern void execute_2499(char*, char *);
IKI_DLLESPEC extern void execute_2500(char*, char *);
IKI_DLLESPEC extern void execute_2501(char*, char *);
IKI_DLLESPEC extern void execute_2546(char*, char *);
IKI_DLLESPEC extern void execute_2547(char*, char *);
IKI_DLLESPEC extern void execute_2548(char*, char *);
IKI_DLLESPEC extern void execute_2549(char*, char *);
IKI_DLLESPEC extern void execute_2550(char*, char *);
IKI_DLLESPEC extern void execute_2551(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[60] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_2542, (funcp)execute_2543, (funcp)execute_2544, (funcp)execute_2545, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_6, (funcp)execute_2504, (funcp)execute_2505, (funcp)execute_2510, (funcp)execute_2511, (funcp)execute_2512, (funcp)execute_2513, (funcp)execute_8, (funcp)execute_2506, (funcp)execute_2244, (funcp)execute_2245, (funcp)execute_2359, (funcp)execute_2360, (funcp)execute_2474, (funcp)execute_2521, (funcp)execute_2522, (funcp)execute_17, (funcp)execute_18, (funcp)execute_1130, (funcp)execute_2247, (funcp)execute_2248, (funcp)execute_2476, (funcp)execute_2477, (funcp)execute_2523, (funcp)execute_2524, (funcp)execute_2525, (funcp)execute_2526, (funcp)execute_2529, (funcp)execute_2530, (funcp)execute_2527, (funcp)execute_2481, (funcp)execute_2482, (funcp)execute_2531, (funcp)execute_2484, (funcp)execute_2533, (funcp)execute_2534, (funcp)execute_2538, (funcp)execute_2486, (funcp)execute_2487, (funcp)execute_2537, (funcp)execute_2489, (funcp)execute_2490, (funcp)execute_2498, (funcp)execute_2499, (funcp)execute_2500, (funcp)execute_2501, (funcp)execute_2546, (funcp)execute_2547, (funcp)execute_2548, (funcp)execute_2549, (funcp)execute_2550, (funcp)execute_2551, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 60;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/carrier_recovery_tb_behav/xsim.reloc",  (void **)funcTab, 60);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/carrier_recovery_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/carrier_recovery_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_xsimdir_location_if_remapped(argc, argv)  ;
    iki_set_sv_type_file_path_name("xsim.dir/carrier_recovery_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/carrier_recovery_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/carrier_recovery_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
