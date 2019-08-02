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
static const char *ng0 = "C:/Users/Mujiangtao/Desktop/computer_science/pipeline_cpu/NPC.v";
static unsigned int ng1[] = {4U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {2, 0};



static void Cont_29_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_minus(t4, 32, t3, 32, t2, 32);
    t5 = (t0 + 3672);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 3576);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_30_1(char *t0)
{
    char t7[8];
    char t9[8];
    char t19[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3592);
    *((int *)t2) = 1;
    t3 = (t0 + 3288);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t4, 1);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t2, 1);
    if (t6 == 1)
        goto LAB9;

LAB10:
LAB11:    goto LAB2;

LAB7:    xsi_set_current_line(32, ng0);

LAB12:    xsi_set_current_line(33, ng0);
    t8 = ((char*)((ng2)));
    t10 = (t0 + 1048U);
    t11 = *((char **)t10);
    memset(t9, 0, 8);
    t10 = (t9 + 4);
    t12 = (t11 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (t13 >> 0);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 0);
    *((unsigned int *)t10) = t16;
    t17 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t17 & 67108863U);
    t18 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t18 & 67108863U);
    t20 = (t0 + 1688U);
    t21 = *((char **)t20);
    memset(t19, 0, 8);
    t20 = (t19 + 4);
    t22 = (t21 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (t23 >> 28);
    *((unsigned int *)t19) = t24;
    t25 = *((unsigned int *)t22);
    t26 = (t25 >> 28);
    *((unsigned int *)t20) = t26;
    t27 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t27 & 15U);
    t28 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t28 & 15U);
    xsi_vlogtype_concat(t7, 32, 32, 3U, t19, 4, t9, 26, t8, 2);
    t29 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t29, t7, 0, 0, 32, 0LL);
    goto LAB11;

LAB9:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t8 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_lshift(t7, 32, t8, 32, t3, 32);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t4, 32, t7, 32);
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 32, 0LL);
    goto LAB11;

}


extern void work_m_00000000003763225232_0757879789_init()
{
	static char *pe[] = {(void *)Cont_29_0,(void *)Always_30_1};
	xsi_register_didat("work_m_00000000003763225232_0757879789", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000003763225232_0757879789.didat");
	xsi_register_executes(pe);
}
