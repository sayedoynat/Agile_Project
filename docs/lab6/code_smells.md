# Code Smells Analysis

## 1. Code Smells Table

| # | Code Smell | Location | Principle | Refactoring Applied |
|---|---|---|---|---|
| 1 | Long if/elif Chain | `legacy_invoice.py`, inside `make_invoice()` | Open/Closed Principle (OCP) | Replaced conditional logic with separate policy classes. |
| 2 | Magic Numbers | Fee values: 1200, 2000, 5000, and 0.5 | Readability and Maintainability | Extracted values into named constants. |
| 3 | Multiple Responsibilities | `make_invoice()` in the legacy implementation | Single Responsibility Principle (SRP) | Separated fee calculation, invoice formatting, and file writing. |
| 4 | Manual File Handling | `open()` and `close()` in `legacy_invoice.py` | Resource Management | Used `with open()` through the `FileWriter` class. |
| 5 | Repeated Fee Calculation | Inside the course iteration loop in `legacy_invoice.py` | Simplification and Maintainability | Moved fee calculations into separate policy classes. |

## 2. Explanation of the Five Main Problems

### 1. Long if/elif Chain

Adding a new invoice type requires modifying the existing function, which violates the Open/Closed Principle.

### 2. Magic Numbers

The numbers used in fee calculations are not defined as named constants, making their meanings unclear and reducing readability.

### 3. Multiple Responsibilities

The function is responsible for several tasks, including fee calculation, invoice formatting, file writing, and printing output.

### 4. Manual File Handling

Using `open()` and `close()` manually instead of a `with open()` statement makes resource management less reliable.

### 5. Repeated Fee Calculation

The function calculates fees inside a loop and uses conditional logic for each course. This makes the calculation logic harder to maintain and extend.