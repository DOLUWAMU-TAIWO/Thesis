OUTPUT_ARCH("riscv")
ENTRY(_start)

MEMORY {
  memory_mem (rwx) : ORIGIN = 0x80000000, LENGTH = 0x10000000
}

PHDRS {
  text PT_LOAD;
  data PT_LOAD;
}

SECTIONS {
  PROVIDE(_ram = ORIGIN(memory_mem));
  PROVIDE(_ram_end = _ram + LENGTH(memory_mem));

  .text : {
    . += 8; /* Trap vector */
    PROVIDE(_ftext = .);
    *(.text.unlikely .text.unlikely.*)
    *(.text .text.* .gnu.linkonce.t.*)
    . = ALIGN(8);
    PROVIDE(_etext = .);
    *(.eh_frame)
    *(.rodata .rodata.* .gnu.linkonce.r.*)
    *(.srodata .srodata.*)
  } >memory_mem  :text

  .data : {
    *(.data .data.* .gnu.linkonce.d.*)
    *(.sdata .sdata.* .gnu.linkonce.s.*)
    *(.tohost)
  } >memory_mem  :data

  .bss : {
    PROVIDE(_fbss = .);
    PROVIDE(__global_pointer$ = . + 0x7C0);
    *(.sbss .sbss.* .gnu.linkonce.sb.*)
    *(.bss .bss.* .gnu.linkonce.b.*)
    . = ALIGN(8);
    PROVIDE(_ebss = .);
  } >memory_mem
  
    /* Stack section */
  .stack (NOLOAD) : {
    . = ORIGIN(memory_mem) + LENGTH(memory_mem) - 0x800000; /* Stack start (8 MB from top of memory) */
    PROVIDE(_stack = .);
    PROVIDE(_stack_end = _stack - 0x4000);
    . = ALIGN(8);
  } > memory_mem
  

  /* FreeRTOS heap section */
  .freertos_heap (NOLOAD) : {
    . = ALIGN(8);
    PROVIDE(_sheap = .);
    . += 0x0800000; /* Adjusted FreeRTOS heap size (16 MB) */
    PROVIDE(_eheap = .);
    . = ALIGN(8);
  } > memory_mem


  .note (INFO) : {
    *(.note .note.*)
  }
}
