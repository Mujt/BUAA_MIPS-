/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002608275010_3224323566_init();
    work_m_00000000003618146362_1621229167_init();
    work_m_00000000002436392424_0886308060_init();
    work_m_00000000001096947731_2924402094_init();
    work_m_00000000002841277471_3240248598_init();
    work_m_00000000001239221775_1785967555_init();
    work_m_00000000000079824399_2841360810_init();
    work_m_00000000003054308530_3782732660_init();
    work_m_00000000004164734838_2021571278_init();
    work_m_00000000002657699243_1800372120_init();
    work_m_00000000000982406000_3877310806_init();
    work_m_00000000002047498008_0258635663_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002047498008_0258635663");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
