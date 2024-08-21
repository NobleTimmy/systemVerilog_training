// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb.h for the primary calling header

#include "Vtb__pch.h"
#include "Vtb___024root.h"

VL_ATTR_COLD void Vtb___024root___eval_static(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vtb___024root___eval_initial__TOP(Vtb___024root* vlSelf);

VL_ATTR_COLD void Vtb___024root___eval_initial(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___eval_initial\n"); );
    // Body
    Vtb___024root___eval_initial__TOP(vlSelf);
}

VL_ATTR_COLD void Vtb___024root___eval_initial__TOP(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___eval_initial__TOP\n"); );
    // Init
    VlQueue<CData/*7:0*/> tb__DOT__unnamedblk1__DOT__dynamic_array_1;
    tb__DOT__unnamedblk1__DOT__dynamic_array_1.atDefault() = 0;
    IData/*31:0*/ tb__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__j;
    tb__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__j = 0;
    std::string __Vtemp_2;
    std::string __Vtemp_3;
    std::string __Vtemp_4;
    // Body
    tb__DOT__unnamedblk1__DOT__dynamic_array_1.renew(4U);
    tb__DOT__unnamedblk1__DOT__dynamic_array_1 = VlQueue<CData/*7:0*/>::cons(7U, 
                                                                             VlQueue<CData/*7:0*/>::cons(0xbU, 
                                                                                VlQueue<CData/*7:0*/>::cons(0xaU, 
                                                                                VlQueue<CData/*7:0*/>::cons(0xfU, 
                                                                                VlQueue<CData/*7:0*/>()))));
    tb__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__j = 0U;
    while (VL_LTS_III(32, tb__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__j, tb__DOT__unnamedblk1__DOT__dynamic_array_1.size())) {
        VL_WRITEF("dynamic array_1[%11d]=%x\n",32,tb__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__j,
                  8,tb__DOT__unnamedblk1__DOT__dynamic_array_1.at(tb__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__j));
        tb__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__j 
            = ((IData)(1U) + tb__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__j);
    }
    vlSelf->tb__DOT__unnamedblk1__DOT__dynamic_array_2.renew_copy(2U, tb__DOT__unnamedblk1__DOT__dynamic_array_1);
    __Vtemp_2 = VL_TO_STRING(vlSelf->tb__DOT__unnamedblk1__DOT__dynamic_array_2);
    VL_WRITEF("dynamic array_2 %@\n",-1,&(__Vtemp_2));
    tb__DOT__unnamedblk1__DOT__dynamic_array_1.at(0U) = 0xcU;
    __Vtemp_3 = VL_TO_STRING(tb__DOT__unnamedblk1__DOT__dynamic_array_1);
    __Vtemp_4 = VL_TO_STRING(vlSelf->tb__DOT__unnamedblk1__DOT__dynamic_array_2);
    VL_WRITEF("dynamic array_1 %@ \ndynamic_array_2 %@\n",
              -1,&(__Vtemp_3),-1,&(__Vtemp_4));
    VL_FINISH_MT("/home/ubuntu/systemVerilog/repos/systemVerilog_training/projects/myProjects1/src/tb.sv", 73, "");
}

VL_ATTR_COLD void Vtb___024root___eval_final(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___eval_final\n"); );
}

VL_ATTR_COLD void Vtb___024root___eval_settle(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___eval_settle\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb___024root___dump_triggers__act(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb___024root___dump_triggers__nba(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtb___024root___ctor_var_reset(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->tb__DOT__unnamedblk1__DOT__dynamic_array_2.atDefault() = 0;
}
