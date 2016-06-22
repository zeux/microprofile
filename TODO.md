## List of changes planned/needed

- Timer sorting in UI
- Refactor/reduce API surface
- Enabling categories in ui should deactivate “ALL”
- Dynamic/pluggable GPU implementation
- Context switch: stop the thread as quickly as possible
- Sync CPU-GPU clocks for web server (naive method results in a race condition)
- Detect and handle query overflow in D3D12
- Make overflow handling more similar between GPU implementations
- Split CPU & GPU flip - GPU flip should store timer index. That way we can keep GPU flip on main thread and CPU flip off main thread.
- Add Vulkan support
- Add support for multiple GPU queues
- Fix issue with GPU markers being cut in web view (upstream 5a99977)
