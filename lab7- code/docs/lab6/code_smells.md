| # | Code Smell | Location | Principle |
----------------------------------------------------------------------------------------------
| 1 | Long if/elif Chain | Inside `make_invoice()` | Open/Closed Principle (OCP) |
| 2 | Magic Numbers | 1200, 2000, 5000, 0.5 | Readability |
| 3 | Multiple Responsibilities | `make_invoice()` | Single Responsibility Principle (SRP) |
| 4 | Manual File Handling | `open()` and `close()` | Resource Management |
| 5 | Repeated Fee Calculation | Inside the course iteration loop | Simplification |

### Explanation of the 5 Main Problems

**1. Long if/elif Chain**

Adding a new invoice type requires modifying the existing function, which violates the Open/Closed Principle.

**2. Magic Numbers**

The numbers used in fee calculations are not defined as named constants, making their meanings unclear and reducing readability.

**3. Multiple Responsibilities**

The function is responsible for several tasks, including fee calculation, invoice formatting, file writing, and printing output.

**4. Manual File Handling**

Using `open()` and `close()` manually instead of a `with open()` statement makes resource management less reliable.

**5. Repeated Fee Calculation**

The function calculates fees inside a loop and uses conditional logic for each course. This makes the calculation logic harder to maintain and extend.