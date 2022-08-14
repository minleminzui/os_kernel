;---------- loader 和 kernel ------------
; 配置文件，下面是nasm的两个宏 语法 `宏名 equ 值` 
LOADER_BASE_ADDR equ 0x900  ;loader会被MBR加载到0x900处
LOADER_START_SECTOR equ 0x2 ;这是loader在磁盘上的位置