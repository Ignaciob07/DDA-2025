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
IKI_DLLESPEC extern void execute_2309(char*, char *);
IKI_DLLESPEC extern void execute_2310(char*, char *);
IKI_DLLESPEC extern void execute_2311(char*, char *);
IKI_DLLESPEC extern void execute_2312(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_6(char*, char *);
IKI_DLLESPEC extern void execute_2275(char*, char *);
IKI_DLLESPEC extern void execute_2276(char*, char *);
IKI_DLLESPEC extern void execute_2281(char*, char *);
IKI_DLLESPEC extern void execute_2282(char*, char *);
IKI_DLLESPEC extern void execute_2283(char*, char *);
IKI_DLLESPEC extern void execute_2284(char*, char *);
IKI_DLLESPEC extern void execute_8(char*, char *);
IKI_DLLESPEC extern void execute_2277(char*, char *);
IKI_DLLESPEC extern void execute_2289(char*, char *);
IKI_DLLESPEC extern void execute_17(char*, char *);
IKI_DLLESPEC extern void execute_18(char*, char *);
IKI_DLLESPEC extern void execute_1130(char*, char *);
IKI_DLLESPEC extern void execute_2245(char*, char *);
IKI_DLLESPEC extern void execute_2246(char*, char *);
IKI_DLLESPEC extern void execute_2290(char*, char *);
IKI_DLLESPEC extern void execute_2291(char*, char *);
IKI_DLLESPEC extern void execute_2292(char*, char *);
IKI_DLLESPEC extern void execute_2293(char*, char *);
IKI_DLLESPEC extern void execute_2296(char*, char *);
IKI_DLLESPEC extern void execute_2297(char*, char *);
IKI_DLLESPEC extern void execute_2248(char*, char *);
IKI_DLLESPEC extern void execute_2294(char*, char *);
IKI_DLLESPEC extern void execute_2252(char*, char *);
IKI_DLLESPEC extern void execute_2253(char*, char *);
IKI_DLLESPEC extern void execute_2298(char*, char *);
IKI_DLLESPEC extern void execute_2255(char*, char *);
IKI_DLLESPEC extern void execute_2300(char*, char *);
IKI_DLLESPEC extern void execute_2301(char*, char *);
IKI_DLLESPEC extern void execute_2305(char*, char *);
IKI_DLLESPEC extern void execute_2257(char*, char *);
IKI_DLLESPEC extern void execute_2258(char*, char *);
IKI_DLLESPEC extern void execute_2304(char*, char *);
IKI_DLLESPEC extern void execute_2260(char*, char *);
IKI_DLLESPEC extern void execute_2261(char*, char *);
IKI_DLLESPEC extern void execute_2269(char*, char *);
IKI_DLLESPEC extern void execute_2270(char*, char *);
IKI_DLLESPEC extern void execute_2271(char*, char *);
IKI_DLLESPEC extern void execute_2272(char*, char *);
IKI_DLLESPEC extern void execute_2313(char*, char *);
IKI_DLLESPEC extern void execute_2314(char*, char *);
IKI_DLLESPEC extern void execute_2315(char*, char *);
IKI_DLLESPEC extern void execute_2316(char*, char *);
IKI_DLLESPEC extern void execute_2317(char*, char *);
IKI_DLLESPEC extern void execute_2318(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[53] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_2309, (funcp)execute_2310, (funcp)execute_2311, (funcp)execute_2312, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_6, (funcp)execute_2275, (funcp)execute_2276, (funcp)execute_2281, (funcp)execute_2282, (funcp)execute_2283, (funcp)execute_2284, (funcp)execute_8, (funcp)execute_2277, (funcp)execute_2289, (funcp)execute_17, (funcp)execute_18, (funcp)execute_1130, (funcp)execute_2245, (funcp)execute_2246, (funcp)execute_2290, (funcp)execute_2291, (funcp)execute_2292, (funcp)execute_2293, (funcp)execute_2296, (funcp)execute_2297, (funcp)execute_2248, (funcp)execute_2294, (funcp)execute_2252, (funcp)execute_2253, (funcp)execute_2298, (funcp)execute_2255, (funcp)execute_2300, (funcp)execute_2301, (funcp)execute_2305, (funcp)execute_2257, (funcp)execute_2258, (funcp)execute_2304, (funcp)execute_2260, (funcp)execute_2261, (funcp)execute_2269, (funcp)execute_2270, (funcp)execute_2271, (funcp)execute_2272, (funcp)execute_2313, (funcp)execute_2314, (funcp)execute_2315, (funcp)execute_2316, (funcp)execute_2317, (funcp)execute_2318, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 53;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/carrier_recovery_tb_behav/xsim.reloc",  (void **)funcTab, 53);

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
