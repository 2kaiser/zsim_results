#ifndef __ZSIM_HOOKS_H__
#define __ZSIM_HOOKS_H__

#include <stdint.h>
#include <stdio.h>

//Avoid optimizing compilers moving code around this barrier
#define COMPILER_BARRIER() { __asm__ __volatile__("" ::: "memory");}

//These need to be in sync with the simulator
#define ZSIM_MAGIC_OP_ROI_BEGIN         (1025)
#define ZSIM_MAGIC_OP_ROI_END           (1026)
#define ZSIM_MAGIC_OP_REGISTER_THREAD   (1027)
#define ZSIM_MAGIC_OP_HEARTBEAT         (1028)
#define ZSIM_MAGIC_OP_WORK_BEGIN        (1029) //ubik
#define ZSIM_MAGIC_OP_WORK_END          (1030) //ubik
#define ZSIM_MAGIC_OP_ROI_HOOK1_BEGIN	(1031)
#define ZSIM_MAGIC_OP_ROI_HOOK2_BEGIN	(1032)
#define ZSIM_MAGIC_OP_ROI_HOOK3_BEGIN	(1033)
#define ZSIM_MAGIC_OP_ROI_HOOK4_BEGIN	(1034)
#define ZSIM_MAGIC_OP_ROI_HOOK5_BEGIN	(1035)
#define ZSIM_MAGIC_OP_ROI_HOOK6_BEGIN	(1036)
#ifdef __x86_64__
#define HOOKS_STR  "HOOKS"
static inline void zsim_magic_op(uint64_t op) {
    COMPILER_BARRIER();
    __asm__ __volatile__("xchg %%rcx, %%rcx;" : : "c"(op));
    COMPILER_BARRIER();
}
#else
#define HOOKS_STR  "NOP-HOOKS"
static inline void zsim_magic_op(uint64_t op) {
    //NOP
}
#endif

static inline void zsim_roi_begin() {
    printf("[" HOOKS_STR "] ROI begin\n");
    zsim_magic_op(ZSIM_MAGIC_OP_ROI_BEGIN);
}
static inline void zsim_roi_hook1_begin() {
    printf("[" HOOKS_STR "] ROI begin\n");
    zsim_magic_op(ZSIM_MAGIC_OP_ROI_HOOK1_BEGIN);
}
static inline void zsim_roi_hook2_begin() {
    printf("[" HOOKS_STR "] ROI begin\n");
    zsim_magic_op(ZSIM_MAGIC_OP_ROI_HOOK2_BEGIN);
}
static inline void zsim_roi_hook3_begin() {
    printf("[" HOOKS_STR "] ROI begin\n");
    zsim_magic_op(ZSIM_MAGIC_OP_ROI_HOOK3_BEGIN);
}
static inline void zsim_roi_hook4_begin() {
    printf("[" HOOKS_STR "] ROI begin\n");
    zsim_magic_op(ZSIM_MAGIC_OP_ROI_HOOK4_BEGIN);
}
static inline void zsim_roi_hook5_begin() {
    printf("[" HOOKS_STR "] ROI begin\n");
    zsim_magic_op(ZSIM_MAGIC_OP_ROI_HOOK5_BEGIN);
}
static inline void zsim_roi_hook6_begin() {
    printf("[" HOOKS_STR "] ROI begin\n");
    zsim_magic_op(ZSIM_MAGIC_OP_ROI_HOOK6_BEGIN);
}

static inline void zsim_roi_end() {
    zsim_magic_op(ZSIM_MAGIC_OP_ROI_END);
    printf("[" HOOKS_STR  "] ROI end\n");
}

static inline void zsim_heartbeat() {
    zsim_magic_op(ZSIM_MAGIC_OP_HEARTBEAT);
}

static inline void zsim_work_begin() { zsim_magic_op(ZSIM_MAGIC_OP_WORK_BEGIN); }
static inline void zsim_work_end() { zsim_magic_op(ZSIM_MAGIC_OP_WORK_END); }

#endif /*__ZSIM_HOOKS_H__*/
