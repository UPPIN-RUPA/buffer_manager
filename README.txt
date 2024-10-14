Buffer Management

Usage Instructions:

Navigate to Project Root: Open your terminal and navigate to the project root directory (assign2).

Confirm Directory: Double-check that you are in the correct directory by using the ls command.

Clean Previous Builds: Execute make clean to remove any previously compiled .o files.

Compile Project Files: Run make to compile all project files, including test_assign2_1.c.

Run Default Test: Execute make run_test1 to run the default test case provided in test_assign2_1.c.

Compile and Run Custom Test: If desired, compile the custom test file test_assign2_2.c using make test2, and run it with make run_test2.

Solution Overview
The buffer manager implements various page replacement strategies (FIFO, LRU, LFU, CLOCK) to optimize memory usage while ensuring proper memory management. It is designed to be thread-safe and memory-efficient.

Team Contributions
Manju: Tested and Developed Buffer Pool Functions and Page Replacement algorithms.
Rupa: Implemented Statistics Functions.
Vanaja: Developed Page Management functions (pinPage and unpinPage).
Mohit: Implemented makeDirty and forcePage.

Thread Safety
The Buffer Pool functions are designed to be thread-safe, ensuring that multiple threads can access the buffer pool concurrently without encountering data corruption or race conditions.

Memory Leak Detection
The project has been tested for memory leaks using Valgrind, a powerful tool for detecting memory management issues.

To check for memory leaks using Valgrind, run the following command:

valgrind --leak-check=full ./your_executable_name
Valgrind will provide detailed information about any memory leaks detected during the execution of your program.
We found no memory leaks in our executable code.

Buffer Pool Functions
initBufferPool(...)

Description: Creates a new buffer pool in memory.
Parameters:
numPages: Number of page frames in the buffer pool.
pageFileName: Name of the page file whose pages are being cached in memory.
strategy: Page replacement strategy (FIFO, LRU, LFU, CLOCK).
stratData: Additional parameters for the page replacement strategy.
Returns: RC_OK if successful, or an error code if an error occurs.
shutdownBufferPool(...)

Description: Destroys the buffer pool, freeing associated resources.
Parameters:
bm: Pointer to the buffer pool.
Returns: RC_OK if successful, or an error code if an error occurs.
forceFlushPool(...)

Description: Writes modified pages back to disk.
Parameters:
bm: Pointer to the buffer pool.
Returns: RC_OK if successful, or an error code if an error occurs.
Page Management Functions
pinPage(...)

Description: Loads a page from disk into the buffer pool.
Parameters:
bm: Pointer to the buffer pool.
page: Pointer to the page frame.
pageNum: Page number.
Returns: RC_OK if successful, or an error code if an error occurs.
unpinPage(...)

Description: Releases a page from client use.
Parameters:
bm: Pointer to the buffer pool.
page: Pointer to the page frame.
Returns: RC_OK if successful, or an error code if an error occurs.
makeDirty(...)

Description: Marks a page frame as modified.
Parameters:
bm: Pointer to the buffer pool.
page: Pointer to the page frame.
Returns: RC_OK if successful, or an error code if an error occurs.
forcePage(...)

Description: Writes a page frame to disk.
Parameters:
bm: Pointer to the buffer pool.
page: Pointer to the page frame.
Returns: RC_OK if successful, or an error code if an error occurs.
Statistics Functions
getFrameContents(...)

Description: Returns an array of page numbers.
Parameters:
bm: Pointer to the buffer pool.
Returns: Array of page numbers.
getDirtyFlags(...)

Description: Returns an array indicating dirty pages.
Parameters:
bm: Pointer to the buffer pool.
Returns: Array of boolean values indicating dirty pages.
getFixCounts(...)

Description: Returns an array of fix counts.
Parameters:
bm: Pointer to the buffer pool.
Returns: Array of fix counts.
getNumReadIO(...)

Description: Returns the count of disk reads.
Parameters:
bm: Pointer to the buffer pool.
Returns: Number of disk reads.
getNumWriteIO(...)

Description: Returns the count of disk writes.
Parameters:
bm: Pointer to the buffer pool.
Returns: Number of disk writes.
Page Replacement Algorithms
FIFO(...)

Description: First In First Out page replacement strategy.
Parameters:
bm: Pointer to the buffer pool.
Returns: Page frame to be replaced.
LFU(...)

Description: Least Frequently Used page replacement strategy.
Parameters:
bm: Pointer to the buffer pool.
Returns: Page frame to be replaced.
LRU(...)

Description: Least Recently Used page replacement strategy.
Parameters:
bm: Pointer to the buffer pool.
Returns: Page frame to be replaced.
CLOCK(...)

Description: CLOCK page replacement strategy.
Parameters:
bm: Pointer to the buffer pool.
Returns: Page frame to be replaced.