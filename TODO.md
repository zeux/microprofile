## List of changes from upstream that need to be merged or reworked

- D3D12 / multiqueue:
	- 65f1ad0 dont insert gpu markers when disabled.
	- 2e8a4e6 move all gpu queues to a separate group
	- bce8b01 changed MT code to always have a main context. fixing up samples
	- 4aca53d added MICROPROFILE_GPU_TIMERS_MULTITHREADED define to enable simplified use of gpu markers. currently not supported by dx12 implementation
	- 5a99977 d3d12 multithreading sample. fix issue with gpu markers being cut when they shouldnt
	- 825e2ad dx12 profiler. simple dx12 sample
	- 2f23f43 multiqueue fixes
	- cc67d8f multithreading/multiqueue wip

- Win32 context switch:
	- a2534a6 fix: process iteration is no longer super slow.
	- 0b54a22 extract process names, entry point dlls on win32. fixup ingame ui to group by process. changed all win32 samples to run multibyte characters
	- 54a63f5 win32 context switch trace: now requests to launch elevated process when activated.

## List of changes planned/needed

- Timer sorting in UI
- Refactor/reduce API surface
- Enabling categories in ui should deactivate “ALL”
- Dynamic/pluggable GPU implementation

- Context switch: stop the thread as quickly as possible