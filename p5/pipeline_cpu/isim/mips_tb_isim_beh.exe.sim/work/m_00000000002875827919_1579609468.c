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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Mujiangtao/Desktop/computer_science/pipeline_cpu/CMP.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};



static void Always_28_0(char *t0)
{
    char t7[8];
    char t8[8];
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t9;
    char *t10;
    char *t11;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:
LAB9:    goto LAB2;

LAB7:    xsi_set_current_line(30, ng0);
    t9 = (t0 + 1048U);
    t10 = *((char **)t9);
    t9 = (t0 + 1208U);
    t11 = *((char **)t9);
    memset(t12, 0, 8);
    t9 = (t10 + 4);
    t13 = (t11 + 4);
    t14 = *((unsigned int *)t10);
    t15 = *((unsigned int *)t11);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB13;

LAB10:    if (t23 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t12) = 1;

LAB13:    memset(t8, 0, 8);
    t27 = (t12 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t12);
    t31 = (t30 & t29);
    t32 = (t31 & 1U);
    if (t32 != 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t27) != 0)
        goto LAB16;

LAB17:    t34 = (t8 + 4);
    t35 = *((unsigned int *)t8);
    t36 = *((unsigned int *)t34);
    t37 = (t35 || t36);
    if (t37 > 0)
        goto LAB18;

LAB19:    t39 = *((unsigned int *)t8);
    t40 = (~(t39));
    t41 = *((unsigned int *)t34);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t34) > 0)
        goto LAB22;

LAB23:    if (*((unsigned int *)t8) > 0)
        goto LAB24;

LAB25:    memcpy(t7, t43, 8);

LAB26:    t44 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t44, t7, 0, 0, 1, 0LL);
    goto LAB9;

LAB12:    t26 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB13;

LAB14:    *((unsigned int *)t8) = 1;
    goto LAB17;

LAB16:    t33 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB17;

LAB18:    t38 = ((char*)((ng2)));
    goto LAB19;

LAB20:    t43 = ((char*)((ng1)));
    goto LAB21;

LAB22:    xsi_vlog_unsigned_bit_combine(t7, 1, t38, 1, t43, 1);
    goto LAB26;

LAB24:    memcpy(t7, t38, 8);
    goto LAB26;

}


extern void work_m_00000000002875827919_1579609468_init()
{
	static char *pe[] = {(void *)Always_28_0};
	xsi_register_didat("work_m_00000000002875827919_1579609468", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000002875827919_1579609468.didat");
	xsi_register_executes(pe);
}
