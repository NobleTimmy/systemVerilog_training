// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtb__Syms.h"


void Vtb___024root__trace_chg_0_sub_0(Vtb___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vtb___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root__trace_chg_0\n"); );
    // Init
    Vtb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb___024root*>(voidSelf);
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vtb___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vtb___024root__trace_chg_0_sub_0(Vtb___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        bufp->chgCData(oldp+0,(vlSelf->tb__DOT__i_flipflop_chain__DOT__ff_chain_reg
                               [3U]),8);
        bufp->chgCData(oldp+1,(vlSelf->tb__DOT__i_flipflop_chain__DOT__ff_chain_reg[0]),8);
        bufp->chgCData(oldp+2,(vlSelf->tb__DOT__i_flipflop_chain__DOT__ff_chain_reg[1]),8);
        bufp->chgCData(oldp+3,(vlSelf->tb__DOT__i_flipflop_chain__DOT__ff_chain_reg[2]),8);
        bufp->chgCData(oldp+4,(vlSelf->tb__DOT__i_flipflop_chain__DOT__ff_chain_reg[3]),8);
        bufp->chgCData(oldp+5,(vlSelf->tb__DOT__i_flipflop_chain__DOT__unnamedblk1__DOT__i),3);
    }
    bufp->chgBit(oldp+6,(vlSelf->tb__DOT__rst_n));
    bufp->chgBit(oldp+7,(vlSelf->tb__DOT__clk));
    bufp->chgCData(oldp+8,(vlSelf->tb__DOT__input_val),8);
}

void Vtb___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root__trace_cleanup\n"); );
    // Init
    Vtb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb___024root*>(voidSelf);
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}
