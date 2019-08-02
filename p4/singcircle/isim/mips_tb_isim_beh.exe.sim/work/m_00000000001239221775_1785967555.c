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
static const char *ng0 = "C:/Users/Mujiangtao/Desktop/computer_science/singcircle/EXT.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {16, 0};
static int ng4[] = {32, 0};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {2U, 0U};
static int ng7[] = {18, 0};
static unsigned int ng8[] = {3U, 0U};
static unsigned int ng9[] = {4U, 0U};



static void Always_31_0(char *t0)
{
    char t7[8];
    char t17[8];
    char t26[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3488);
    *((int *)t2) = 1;
    t3 = (t0 + 3200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(34, ng0);
    t8 = (t0 + 1208U);
    t9 = *((char **)t8);
    t8 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 32, 32, 2U, t8, 16, t9, 16);
    t10 = (t0 + 1928);
    xsi_vlogvar_assign_value(t10, t7, 0, 0, 32);
    goto LAB17;

LAB9:    xsi_set_current_line(36, ng0);

LAB18:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 2088);
    t8 = (t3 + 56U);
    t9 = *((char **)t8);
    xsi_vlogtype_concat(t7, 32, 32, 2U, t9, 16, t4, 16);
    t10 = (t0 + 1928);
    xsi_vlogvar_assign_value(t10, t7, 0, 0, 32);
    xsi_set_current_line(38, ng0);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB19:    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t8 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t4, 32, t8, 32);
    t9 = (t7 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t7);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB20;

LAB21:    goto LAB17;

LAB11:    xsi_set_current_line(43, ng0);

LAB25:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1208U);
    t8 = *((char **)t4);
    xsi_vlogtype_concat(t7, 32, 18, 2U, t8, 16, t3, 2);
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t7, 0, 0, 32);
    xsi_set_current_line(45, ng0);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB26:    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t8 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t4, 32, t8, 32);
    t9 = (t7 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t7);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB27;

LAB28:    goto LAB17;

LAB13:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1208U);
    t8 = *((char **)t4);
    xsi_vlogtype_concat(t7, 32, 32, 2U, t8, 16, t3, 16);
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t7, 0, 0, 32);
    goto LAB17;

LAB15:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1528U);
    t8 = *((char **)t4);
    t4 = (t0 + 1368U);
    t9 = *((char **)t4);
    memset(t17, 0, 8);
    t4 = (t17 + 4);
    t10 = (t9 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (t11 >> 28);
    *((unsigned int *)t17) = t12;
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 28);
    *((unsigned int *)t4) = t14;
    t15 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t15 & 15U);
    t19 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t19 & 15U);
    xsi_vlogtype_concat(t7, 32, 32, 3U, t17, 4, t8, 26, t3, 2);
    t16 = (t0 + 1928);
    xsi_vlogvar_assign_value(t16, t7, 0, 0, 32);
    goto LAB17;

LAB20:    xsi_set_current_line(38, ng0);

LAB22:    xsi_set_current_line(39, ng0);
    t10 = (t0 + 1208U);
    t16 = *((char **)t10);
    memset(t17, 0, 8);
    t10 = (t17 + 4);
    t18 = (t16 + 4);
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 15);
    t21 = (t20 & 1);
    *((unsigned int *)t17) = t21;
    t22 = *((unsigned int *)t18);
    t23 = (t22 >> 15);
    t24 = (t23 & 1);
    *((unsigned int *)t10) = t24;
    t25 = (t0 + 1928);
    t27 = (t0 + 1928);
    t28 = (t27 + 72U);
    t29 = *((char **)t28);
    t30 = (t0 + 2248);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    xsi_vlog_generic_convert_bit_index(t26, t29, 2, t32, 32, 1);
    t33 = (t26 + 4);
    t34 = *((unsigned int *)t33);
    t6 = (!(t34));
    if (t6 == 1)
        goto LAB23;

LAB24:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t8 = ((char*)((ng5)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t8, 32);
    t9 = (t0 + 2248);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 32);
    goto LAB19;

LAB23:    xsi_vlogvar_assign_value(t25, t17, 0, *((unsigned int *)t26), 1);
    goto LAB24;

LAB27:    xsi_set_current_line(45, ng0);

LAB29:    xsi_set_current_line(46, ng0);
    t10 = (t0 + 1208U);
    t16 = *((char **)t10);
    memset(t17, 0, 8);
    t10 = (t17 + 4);
    t18 = (t16 + 4);
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 15);
    t21 = (t20 & 1);
    *((unsigned int *)t17) = t21;
    t22 = *((unsigned int *)t18);
    t23 = (t22 >> 15);
    t24 = (t23 & 1);
    *((unsigned int *)t10) = t24;
    t25 = (t0 + 1928);
    t27 = (t0 + 1928);
    t28 = (t27 + 72U);
    t29 = *((char **)t28);
    t30 = (t0 + 2248);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    xsi_vlog_generic_convert_bit_index(t26, t29, 2, t32, 32, 1);
    t33 = (t26 + 4);
    t34 = *((unsigned int *)t33);
    t6 = (!(t34));
    if (t6 == 1)
        goto LAB30;

LAB31:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t8 = ((char*)((ng5)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t8, 32);
    t9 = (t0 + 2248);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 32);
    goto LAB26;

LAB30:    xsi_vlogvar_assign_value(t25, t17, 0, *((unsigned int *)t26), 1);
    goto LAB31;

}


extern void work_m_00000000001239221775_1785967555_init()
{
	static char *pe[] = {(void *)Always_31_0};
	xsi_register_didat("work_m_00000000001239221775_1785967555", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000001239221775_1785967555.didat");
	xsi_register_executes(pe);
}
