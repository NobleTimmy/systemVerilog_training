// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb.h for the primary calling header

#include "Vtb__pch.h"
#include "Vtb__Syms.h"
#include "Vtb___024root.h"

VlCoroutine Vtb___024root___eval_initial__TOP__Vtiming__0____Vfork_1__0(Vtb___024root* vlSelf);
VlCoroutine Vtb___024root___eval_initial__TOP__Vtiming__0____Vfork_1__1(Vtb___024root* vlSelf);
VlCoroutine Vtb___024root___eval_initial__TOP__Vtiming__0____Vfork_1__2(Vtb___024root* vlSelf);
VlCoroutine Vtb___024root___eval_initial__TOP__Vtiming__0____Vfork_1__3(Vtb___024root* vlSelf);

VL_INLINE_OPT VlCoroutine Vtb___024root___eval_initial__TOP__Vtiming__0(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___eval_initial__TOP__Vtiming__0\n"); );
    // Body
    vlSymsp->_vm_contextp__->dumpfile(std::string{"tb.vcd"});
    vlSymsp->_traceDumpOpen();
    vlSelf->tb__DOT__input_val = 0xfU;
    co_await vlSelf->__VtrigSched_h8aadc0b9__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb.clk)", 
                                                       "/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 
                                                       25);
    co_await vlSelf->__VtrigSched_h8aadc0b9__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb.clk)", 
                                                       "/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 
                                                       25);
    co_await vlSelf->__VtrigSched_h8aadc0b9__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb.clk)", 
                                                       "/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 
                                                       25);
    co_await vlSelf->__VtrigSched_h8aadc0b9__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb.clk)", 
                                                       "/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 
                                                       25);
    co_await vlSelf->__VtrigSched_h8aadc0b9__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb.clk)", 
                                                       "/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 
                                                       25);
    vlSelf->tb__DOT__rst_n = 0U;
    co_await vlSelf->__VtrigSched_h8aadc0b9__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb.clk)", 
                                                       "/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 
                                                       27);
    co_await vlSelf->__VtrigSched_h8aadc0b9__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb.clk)", 
                                                       "/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 
                                                       27);
    co_await vlSelf->__VdlySched.delay(0x32ULL, nullptr, 
                                       "/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 
                                       28);
    vlSelf->tb__DOT__rst_n = 1U;
    vlSelf->__Vfork_1__sync.init(4U, nullptr);
    Vtb___024root___eval_initial__TOP__Vtiming__0____Vfork_1__0(vlSelf);
    Vtb___024root___eval_initial__TOP__Vtiming__0____Vfork_1__1(vlSelf);
    Vtb___024root___eval_initial__TOP__Vtiming__0____Vfork_1__2(vlSelf);
    Vtb___024root___eval_initial__TOP__Vtiming__0____Vfork_1__3(vlSelf);
    co_await vlSelf->__Vfork_1__sync.join(nullptr, 
                                          "/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 
                                          30);
    co_await vlSelf->__VtrigSched_h8aadc0b9__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb.clk)", 
                                                       "/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 
                                                       48);
    co_await vlSelf->__VtrigSched_h8aadc0b9__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb.clk)", 
                                                       "/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 
                                                       48);
    co_await vlSelf->__VtrigSched_h8aadc0b9__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb.clk)", 
                                                       "/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 
                                                       48);
    co_await vlSelf->__VtrigSched_h8aadc0b9__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb.clk)", 
                                                       "/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 
                                                       48);
    VL_FINISH_MT("/home/ubuntu/systemVerilog/repos/systemVerilog_training/template/src/tb.sv", 49, "");
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb___024root___dump_triggers__act(Vtb___024root* vlSelf);
#endif  // VL_DEBUG

void Vtb___024root___eval_triggers__act(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, (((IData)(vlSelf->tb__DOT__clk) 
                                      & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__tb__DOT__clk__0))) 
                                     | ((~ (IData)(vlSelf->tb__DOT__rst_n)) 
                                        & (IData)(vlSelf->__Vtrigprevexpr___TOP__tb__DOT__rst_n__0))));
    vlSelf->__VactTriggered.set(1U, vlSelf->__VdlySched.awaitingCurrentTime());
    vlSelf->__VactTriggered.set(2U, ((IData)(vlSelf->tb__DOT__clk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__tb__DOT__clk__0))));
    vlSelf->__Vtrigprevexpr___TOP__tb__DOT__clk__0 
        = vlSelf->tb__DOT__clk;
    vlSelf->__Vtrigprevexpr___TOP__tb__DOT__rst_n__0 
        = vlSelf->tb__DOT__rst_n;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtb___024root___dump_triggers__act(vlSelf);
    }
#endif
}
