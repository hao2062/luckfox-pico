cmd_/home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/linux_drivers/01_chrdevbase/chrdevbase.mod.o := /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/scripts/gcc-wrapper.py /home/hao/dev/sdk/rv1103/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-gcc -Wp,-MMD,/home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/linux_drivers/01_chrdevbase/.chrdevbase.mod.o.d -nostdinc -isystem /home/hao/dev/sdk/rv1103/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/../lib/gcc/arm-rockchip830-linux-uclibcgnueabihf/8.3.0/include -I/home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include -I./arch/arm/include/generated -I/home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include -I./include -I/home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I/home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi -I./include/generated/uapi -include /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/kconfig.h -include /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -fmacro-prefix-map=/home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/= -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Wno-format-security -std=gnu89 -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mfpu=vfp -funwind-tables -mthumb -Wa,-mimplicit-it=always -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Os --param=allow-store-data-races=0 -Wframe-larger-than=1024 -fstack-protector -Werror -Wimplicit-fallthrough -Wno-unused-but-set-variable -Wno-unused-const-variable -fomit-frame-pointer -g -Wdeclaration-after-statement -Wvla -Wno-pointer-sign -Wno-stringop-truncation -Wno-array-bounds -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -fno-strict-overflow -fno-stack-check -fconserve-stack -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wno-packed-not-aligned -DMODULE -DKBUILD_BASENAME='"chrdevbase.mod"' -DKBUILD_MODNAME='"chrdevbase"' -D__KBUILD_MODNAME=kmod_chrdevbase -c -o /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/linux_drivers/01_chrdevbase/chrdevbase.mod.o /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/linux_drivers/01_chrdevbase/chrdevbase.mod.c

source_/home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/linux_drivers/01_chrdevbase/chrdevbase.mod.o := /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/linux_drivers/01_chrdevbase/chrdevbase.mod.c

deps_/home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/linux_drivers/01_chrdevbase/chrdevbase.mod.o := \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/retpoline.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/kconfig.h \
    $(wildcard include/config/cc/version/text.h) \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/cc/has/asm/inline.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/compiler_attributes.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/compiler-gcc.h \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
    $(wildcard include/config/kcov.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/module.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/modules/tree/lookup.h) \
    $(wildcard include/config/livepatch.h) \
    $(wildcard include/config/cfi/clang.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tree/srcu.h) \
    $(wildcard include/config/bpf/events.h) \
    $(wildcard include/config/jump/label.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/kprobes.h) \
    $(wildcard include/config/have/static/call/inline.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/function/error/injection.h) \
    $(wildcard include/config/module/sig.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/types.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/uapi/asm/types.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/int-ll64.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/uapi/asm/bitsperlong.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitsperlong.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/asm-generic/bitsperlong.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/posix_types.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/stddef.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/stddef.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/compiler_types.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/uapi/asm/posix_types.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/asm-generic/posix_types.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/const.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/vdso/const.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/const.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/preempt/rt.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/panic/timeout.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/limits.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/limits.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/vdso/limits.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/linkage.h \
    $(wildcard include/config/arch/use/sym/annotations.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/stringify.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/export.h \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/have/arch/prel32/relocations.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/linkage.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
  arch/arm/include/generated/asm/rwonce.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/rwonce.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/kasan-checks.h \
    $(wildcard include/config/kasan/generic.h) \
    $(wildcard include/config/kasan/sw/tags.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/kcsan-checks.h \
    $(wildcard include/config/kcsan.h) \
    $(wildcard include/config/kcsan/ignore/atomics.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/bitops.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/bits.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/vdso/bits.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/build_bug.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/bitops.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/typecheck.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/cpu/v7m.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/hwcap.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/uapi/asm/hwcap.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/irqflags.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/percpu.h \
    $(wildcard include/config/cpu/v6.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/percpu.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arm/heavy/mb.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
    $(wildcard include/config/cpu/spectre.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/barrier.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/non-atomic.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/builtin-__fls.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/builtin-__ffs.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/builtin-fls.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/builtin-ffs.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/ffz.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/fls64.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/sched.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/hweight.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/arch_hweight.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/const_hweight.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/lock.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/atomic.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
    $(wildcard include/config/arm/lpae.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/prefetch.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/binfmt/elf/fdpic.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/hw_breakpoint.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/unified.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/vdso/processor.h \
    $(wildcard include/config/arm/errata/754327.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/cmpxchg-local.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/atomic-fallback.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/atomic-long.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/le.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/uapi/asm/byteorder.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/byteorder/little_endian.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/byteorder/little_endian.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/swab.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/swab.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/swab.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/uapi/asm/swab.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/byteorder/generic.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/minmax.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/quiet.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
    $(wildcard include/config/dynamic/debug/core.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
    $(wildcard include/config/lto/clang.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/kern_levels.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/ratelimit_types.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/param.h \
  arch/arm/include/generated/uapi/asm/param.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/asm-generic/param.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/spinlock_types.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/spinlock_types_up.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/lockdep_types.h \
    $(wildcard include/config/prove/raw/lock/nesting.h) \
    $(wildcard include/config/preempt/lock.h) \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/rwlock_types.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/div64.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/compiler.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/div64.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/kernel.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/sysinfo.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/stat.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/uapi/asm/stat.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/stat.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
    $(wildcard include/config/posix/timers.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/vdso/math64.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/time64.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/vdso/time64.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/time.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/time_types.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/time32.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/timex.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/timex.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/timex.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/vdso/time32.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/vdso/time.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/highuid.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/kmod.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/umh.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/gfp.h \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/contig/alloc.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/bug.h \
    $(wildcard include/config/bug/on/data/corruption.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/instrumentation.h \
    $(wildcard include/config/debug/entry.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/shadow/call/stack.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/holes/in/zone.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/spinlock.h \
    $(wildcard include/config/preemption.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/trace/preempt/toggle.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  arch/arm/include/generated/asm/preempt.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/preempt.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/restart_block.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/errno.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/errno.h \
  arch/arm/include/generated/uapi/asm/errno.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/asm-generic/errno.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/asm-generic/errno-base.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/stackprotector/per/task.h) \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/glue.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/pgtable-2level-types.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/xip/kernel.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/xip/phys/addr.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/sizes.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/memory_model.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/pfn.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/getorder.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/bottom_half.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/lockdep.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/bitmap.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/string.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/string.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/smp_types.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  arch/arm/include/generated/asm/mmiowb.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/mmiowb.h \
    $(wildcard include/config/mmiowb.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/spinlock_up.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/rwlock.h \
    $(wildcard include/config/preempt.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/spinlock_api_up.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/wait.h \
  arch/arm/include/generated/asm/current.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/current.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/wait.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
    $(wildcard include/config/numa/keep/meminfo.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/seqlock.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/mutex.h \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/debug/mutexes.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/osq_lock.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/debug_locks.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/android_vendor.h \
    $(wildcard include/config/android/vendor/oem/data.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/ww_mutex.h \
    $(wildcard include/config/debug/ww/mutex/slowpath.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/nodemask.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/page-flags-layout.h \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/kasan/hw/tags.h) \
  include/generated/bounds.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/mm_types.h \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/userfaultfd.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/speculative/page/fault.h) \
    $(wildcard include/config/have/arch/compat/mmap/bases.h) \
    $(wildcard include/config/membarrier.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
    $(wildcard include/config/iommu/support.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/mm_types_task.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/auxvec.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/auxvec.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/auxvec.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/uapi/asm/auxvec.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/rbtree.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/rcupdate.h \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tasks/rcu/generic.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/tasks/rcu.h) \
    $(wildcard include/config/tasks/trace/rcu.h) \
    $(wildcard include/config/tasks/rude/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/arch/weak/release/acquire.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/rcutiny.h \
    $(wildcard include/config/srcu.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/debug/rwsems.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/err.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/completion.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/swait.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/uprobes.h \
    $(wildcard include/config/uprobes.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/wq/watchdog.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/timer.h \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/no/hz/common.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/ktime.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/jiffies.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/vdso/jiffies.h \
  include/generated/timeconst.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/vdso/ktime.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/timekeeping.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/timekeeping32.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/android_kabi.h \
    $(wildcard include/config/android/kabi/reserve.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
    $(wildcard include/config/vdso.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/page-flags.h \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/page/idle/flag.h) \
    $(wildcard include/config/thp/swap.h) \
    $(wildcard include/config/ksm.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/memory_hotplug.h \
    $(wildcard include/config/arch/has/add/pages.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/notifier.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/srcu.h \
    $(wildcard include/config/tiny/srcu.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/rcu_segcblist.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/srcutiny.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/arch_topology.h \
    $(wildcard include/config/generic/arch/topology.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
    $(wildcard include/config/bl/switcher.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/topology.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/sysctl.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/elf.h \
    $(wildcard include/config/arch/use/gnu/property.h) \
    $(wildcard include/config/arch/have/elf/prot.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/elf.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/vdso_datapage.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/vdso/datapage.h \
    $(wildcard include/config/arch/has/vdso/data.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/asm-generic/errno-base.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/vdso/clocksource.h \
    $(wildcard include/config/generic/gettimeofday.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/vdso/processor.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/vdso/gettimeofday.h \
    $(wildcard include/config/arm/arch/timer.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/unistd.h \
    $(wildcard include/config/oabi/compat.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/uapi/asm/unistd.h \
  arch/arm/include/generated/uapi/asm/unistd-eabi.h \
  arch/arm/include/generated/uapi/asm/unistd-common.h \
  arch/arm/include/generated/asm/unistd-nr.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/vdso/cp15.h \
    $(wildcard include/config/cpu/cp15.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/user.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/elf.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/uapi/linux/elf-em.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/kobject.h \
    $(wildcard include/config/uevent/helper.h) \
    $(wildcard include/config/debug/kobject/release.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/sysfs.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/kernfs.h \
    $(wildcard include/config/kernfs.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/idr.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/radix-tree.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/xarray.h \
    $(wildcard include/config/xarray/multi.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/kconfig.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/local_lock.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/local_lock_internal.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/kobject_ns.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/kref.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/refcount.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/jump_label.h \
    $(wildcard include/config/have/arch/jump/label/relative.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/jump_label.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/rbtree_latch.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/error-injection.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/error-injection.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/tracepoint-defs.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/static_key.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/static_call_types.h \
    $(wildcard include/config/have/static/call.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/cfi.h \
    $(wildcard include/config/cfi/clang/shadow.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
    $(wildcard include/config/arm/module/plts.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/build-salt.h \
    $(wildcard include/config/build/salt.h) \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/elfnote.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/include/linux/vermagic.h \
  include/generated/utsrelease.h \
  /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel/arch/arm/include/asm/vermagic.h \

/home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/linux_drivers/01_chrdevbase/chrdevbase.mod.o: $(deps_/home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/linux_drivers/01_chrdevbase/chrdevbase.mod.o)

$(deps_/home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/linux_drivers/01_chrdevbase/chrdevbase.mod.o):
