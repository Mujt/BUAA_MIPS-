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
static const char *ng0 = "C:/Users/Mujiangtao/Desktop/pipeline/DM.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1024, 0};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {3U, 0U};
static const char *ng8 = "%d@%h: *%h <= %h";
static unsigned int ng9[] = {4U, 0U};



static void Cont_34_0(char *t0)
{
    char t5[8];
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2888);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 2888);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t13 = (t0 + 1368U);
    t14 = *((char **)t13);
    memset(t12, 0, 8);
    t13 = (t12 + 4);
    t15 = (t14 + 4);
    t16 = *((unsigned int *)t14);
    t17 = (t16 >> 2);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t15);
    t19 = (t18 >> 2);
    *((unsigned int *)t13) = t19;
    t20 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t20 & 1023U);
    t21 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t21 & 1023U);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t12, 10, 2);
    t22 = (t0 + 4896);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t5, 8);
    xsi_driver_vfirst_trans(t22, 0, 31);
    t27 = (t0 + 4784);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Cont_35_1(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng1)));
    t5 = (t0 + 1368U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 2);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 2);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 1073741823U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 1073741823U);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t4, 30, t2, 2);
    t14 = (t0 + 4960);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t3, 8);
    xsi_driver_vfirst_trans(t14, 0, 31);
    t19 = (t0 + 4800);
    *((int *)t19) = 1;

LAB1:    return;
}

static void Always_37_2(char *t0)
{
    char t13[8];
    char t15[8];
    char t16[8];
    char t45[8];
    char t48[8];
    char t57[8];
    char t63[8];
    char t66[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    int t28;
    char *t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t46;
    char *t47;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t64;
    char *t65;

LAB0:    t1 = (t0 + 4464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 4816);
    *((int *)t2) = 1;
    t3 = (t0 + 4496);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(43, ng0);

LAB16:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB33;

LAB34:
LAB35:
LAB19:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);

LAB9:    xsi_set_current_line(39, ng0);
    xsi_set_current_line(39, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 2728);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);

LAB10:    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_signed_less(t13, 32, t4, 32, t5, 32);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:    goto LAB8;

LAB11:    xsi_set_current_line(39, ng0);

LAB13:    xsi_set_current_line(40, ng0);
    t12 = ((char*)((ng2)));
    t14 = (t0 + 2888);
    t17 = (t0 + 2888);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2888);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 2728);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t15, t16, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t16 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_signed_add(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 2728);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 32);
    goto LAB10;

LAB14:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t16);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t14, t12, 0, *((unsigned int *)t16), t36, 0LL);
    goto LAB15;

LAB17:    xsi_set_current_line(44, ng0);

LAB20:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t13 + 4);
    t11 = (t5 + 4);
    t27 = *((unsigned int *)t5);
    t30 = (t27 >> 0);
    *((unsigned int *)t13) = t30;
    t33 = *((unsigned int *)t11);
    t34 = (t33 >> 0);
    *((unsigned int *)t4) = t34;
    t37 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t37 & 3U);
    t38 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t38 & 3U);

LAB21:    t12 = ((char*)((ng1)));
    t28 = xsi_vlog_unsigned_case_compare(t13, 2, t12, 2);
    if (t28 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng5)));
    t28 = xsi_vlog_unsigned_case_compare(t13, 2, t2, 2);
    if (t28 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng6)));
    t28 = xsi_vlog_unsigned_case_compare(t13, 2, t2, 2);
    if (t28 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng7)));
    t28 = xsi_vlog_unsigned_case_compare(t13, 2, t2, 2);
    if (t28 == 1)
        goto LAB28;

LAB29:
LAB30:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2888);
    t11 = (t0 + 2888);
    t12 = (t11 + 72U);
    t14 = *((char **)t12);
    t17 = (t0 + 2888);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = (t0 + 2328U);
    t21 = *((char **)t20);
    xsi_vlog_generic_convert_array_indices(t15, t16, t14, t19, 2, 1, t21, 32, 2);
    t20 = (t15 + 4);
    t6 = *((unsigned int *)t20);
    t28 = (!(t6));
    t22 = (t16 + 4);
    t7 = *((unsigned int *)t22);
    t31 = (!(t7));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(52, ng0);
    t2 = xsi_vlog_time(t66, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng9)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_minus(t15, 32, t4, 32, t3, 32);
    t5 = (t0 + 2328U);
    t11 = *((char **)t5);
    t5 = (t0 + 3048);
    t12 = (t5 + 56U);
    t14 = *((char **)t12);
    xsi_vlogfile_write(1, 0, 0, ng8, 5, t0, (char)118, t66, 64, (char)118, t15, 32, (char)118, t11, 32, (char)118, t14, 32);
    goto LAB19;

LAB22:    xsi_set_current_line(46, ng0);
    t14 = (t0 + 1528U);
    t17 = *((char **)t14);
    memset(t16, 0, 8);
    t14 = (t16 + 4);
    t18 = (t17 + 4);
    t39 = *((unsigned int *)t17);
    t40 = (t39 >> 0);
    *((unsigned int *)t16) = t40;
    t41 = *((unsigned int *)t18);
    t42 = (t41 >> 0);
    *((unsigned int *)t14) = t42;
    t43 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t43 & 65535U);
    t44 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t44 & 65535U);
    t19 = (t0 + 2888);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t0 + 2888);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 2888);
    t26 = (t25 + 64U);
    t29 = *((char **)t26);
    t46 = (t0 + 2328U);
    t47 = *((char **)t46);
    xsi_vlog_generic_get_array_select_value(t45, 32, t21, t24, t29, 2, 1, t47, 32, 2);
    memset(t48, 0, 8);
    t46 = (t48 + 4);
    t49 = (t45 + 4);
    t50 = *((unsigned int *)t45);
    t51 = (t50 >> 16);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t49);
    t53 = (t52 >> 16);
    *((unsigned int *)t46) = t53;
    t54 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t54 & 65535U);
    t55 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t55 & 65535U);
    xsi_vlogtype_concat(t15, 32, 32, 2U, t48, 16, t16, 16);
    t56 = (t0 + 3048);
    xsi_vlogvar_assign_value(t56, t15, 0, 0, 32);
    goto LAB30;

LAB24:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 2888);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t11 = (t0 + 2888);
    t12 = (t11 + 72U);
    t14 = *((char **)t12);
    t17 = (t0 + 2888);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = (t0 + 2328U);
    t21 = *((char **)t20);
    xsi_vlog_generic_get_array_select_value(t16, 32, t5, t14, t19, 2, 1, t21, 32, 2);
    memset(t45, 0, 8);
    t20 = (t45 + 4);
    t22 = (t16 + 4);
    t6 = *((unsigned int *)t16);
    t7 = (t6 >> 0);
    *((unsigned int *)t45) = t7;
    t8 = *((unsigned int *)t22);
    t9 = (t8 >> 0);
    *((unsigned int *)t20) = t9;
    t10 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t10 & 255U);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 255U);
    t23 = (t0 + 1528U);
    t24 = *((char **)t23);
    memset(t48, 0, 8);
    t23 = (t48 + 4);
    t25 = (t24 + 4);
    t30 = *((unsigned int *)t24);
    t33 = (t30 >> 0);
    *((unsigned int *)t48) = t33;
    t34 = *((unsigned int *)t25);
    t37 = (t34 >> 0);
    *((unsigned int *)t23) = t37;
    t38 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t38 & 65535U);
    t39 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t39 & 65535U);
    t26 = (t0 + 2888);
    t29 = (t26 + 56U);
    t46 = *((char **)t29);
    t47 = (t0 + 2888);
    t49 = (t47 + 72U);
    t56 = *((char **)t49);
    t58 = (t0 + 2888);
    t59 = (t58 + 64U);
    t60 = *((char **)t59);
    t61 = (t0 + 2328U);
    t62 = *((char **)t61);
    xsi_vlog_generic_get_array_select_value(t57, 32, t46, t56, t60, 2, 1, t62, 32, 2);
    memset(t63, 0, 8);
    t61 = (t63 + 4);
    t64 = (t57 + 4);
    t40 = *((unsigned int *)t57);
    t41 = (t40 >> 24);
    *((unsigned int *)t63) = t41;
    t42 = *((unsigned int *)t64);
    t43 = (t42 >> 24);
    *((unsigned int *)t61) = t43;
    t44 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t44 & 255U);
    t50 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t50 & 255U);
    xsi_vlogtype_concat(t15, 32, 32, 3U, t63, 8, t48, 16, t45, 8);
    t65 = (t0 + 3048);
    xsi_vlogvar_assign_value(t65, t15, 0, 0, 32);
    goto LAB30;

LAB26:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 2888);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t11 = (t0 + 2888);
    t12 = (t11 + 72U);
    t14 = *((char **)t12);
    t17 = (t0 + 2888);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = (t0 + 2328U);
    t21 = *((char **)t20);
    xsi_vlog_generic_get_array_select_value(t16, 32, t5, t14, t19, 2, 1, t21, 32, 2);
    memset(t45, 0, 8);
    t20 = (t45 + 4);
    t22 = (t16 + 4);
    t6 = *((unsigned int *)t16);
    t7 = (t6 >> 0);
    *((unsigned int *)t45) = t7;
    t8 = *((unsigned int *)t22);
    t9 = (t8 >> 0);
    *((unsigned int *)t20) = t9;
    t10 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t10 & 65535U);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 65535U);
    t23 = (t0 + 1528U);
    t24 = *((char **)t23);
    memset(t48, 0, 8);
    t23 = (t48 + 4);
    t25 = (t24 + 4);
    t30 = *((unsigned int *)t24);
    t33 = (t30 >> 0);
    *((unsigned int *)t48) = t33;
    t34 = *((unsigned int *)t25);
    t37 = (t34 >> 0);
    *((unsigned int *)t23) = t37;
    t38 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t38 & 65535U);
    t39 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t39 & 65535U);
    xsi_vlogtype_concat(t15, 32, 32, 2U, t48, 16, t45, 16);
    t26 = (t0 + 3048);
    xsi_vlogvar_assign_value(t26, t15, 0, 0, 32);
    goto LAB30;

LAB28:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 2888);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t11 = (t0 + 2888);
    t12 = (t11 + 72U);
    t14 = *((char **)t12);
    t17 = (t0 + 2888);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = (t0 + 2328U);
    t21 = *((char **)t20);
    xsi_vlog_generic_get_array_select_value(t16, 32, t5, t14, t19, 2, 1, t21, 32, 2);
    memset(t45, 0, 8);
    t20 = (t45 + 4);
    t22 = (t16 + 4);
    t6 = *((unsigned int *)t16);
    t7 = (t6 >> 0);
    *((unsigned int *)t45) = t7;
    t8 = *((unsigned int *)t22);
    t9 = (t8 >> 0);
    *((unsigned int *)t20) = t9;
    t10 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t10 & 16777215U);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 16777215U);
    t23 = (t0 + 1528U);
    t24 = *((char **)t23);
    memset(t48, 0, 8);
    t23 = (t48 + 4);
    t25 = (t24 + 4);
    t30 = *((unsigned int *)t24);
    t33 = (t30 >> 0);
    *((unsigned int *)t48) = t33;
    t34 = *((unsigned int *)t25);
    t37 = (t34 >> 0);
    *((unsigned int *)t23) = t37;
    t38 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t38 & 255U);
    t39 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t39 & 255U);
    xsi_vlogtype_concat(t15, 32, 32, 2U, t48, 8, t45, 24);
    t26 = (t0 + 3048);
    xsi_vlogvar_assign_value(t26, t15, 0, 0, 32);
    goto LAB30;

LAB31:    t8 = *((unsigned int *)t15);
    t9 = *((unsigned int *)t16);
    t35 = (t8 - t9);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, *((unsigned int *)t16), t36, 0LL);
    goto LAB32;

LAB33:    xsi_set_current_line(54, ng0);

LAB36:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t0 + 2888);
    t11 = (t0 + 2888);
    t12 = (t11 + 72U);
    t14 = *((char **)t12);
    t17 = (t0 + 2888);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = (t0 + 1368U);
    t21 = *((char **)t20);
    memset(t45, 0, 8);
    t20 = (t45 + 4);
    t22 = (t21 + 4);
    t27 = *((unsigned int *)t21);
    t30 = (t27 >> 2);
    *((unsigned int *)t45) = t30;
    t33 = *((unsigned int *)t22);
    t34 = (t33 >> 2);
    *((unsigned int *)t20) = t34;
    t37 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t37 & 1023U);
    t38 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t38 & 1023U);
    xsi_vlog_generic_convert_array_indices(t15, t16, t14, t19, 2, 1, t45, 10, 2);
    t23 = (t15 + 4);
    t39 = *((unsigned int *)t23);
    t28 = (!(t39));
    t24 = (t16 + 4);
    t40 = *((unsigned int *)t24);
    t31 = (!(t40));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB37;

LAB38:    xsi_set_current_line(56, ng0);
    t2 = xsi_vlog_time(t66, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng9)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_minus(t15, 32, t4, 32, t3, 32);
    t5 = (t0 + 1368U);
    t11 = *((char **)t5);
    t5 = (t0 + 1528U);
    t12 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 0, ng8, 5, t0, (char)118, t66, 64, (char)118, t15, 32, (char)118, t11, 32, (char)118, t12, 32);
    goto LAB35;

LAB37:    t41 = *((unsigned int *)t15);
    t42 = *((unsigned int *)t16);
    t35 = (t41 - t42);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, *((unsigned int *)t16), t36, 0LL);
    goto LAB38;

}


extern void work_m_00000000002174186541_2924402094_init()
{
	static char *pe[] = {(void *)Cont_34_0,(void *)Cont_35_1,(void *)Always_37_2};
	xsi_register_didat("work_m_00000000002174186541_2924402094", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000002174186541_2924402094.didat");
	xsi_register_executes(pe);
}
