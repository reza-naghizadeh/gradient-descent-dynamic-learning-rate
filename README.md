# Gradient Descent with Dynamic Learning Rate

This repository demonstrates the implementation of Gradient Descent using dynamic learning rate techniques to optimize a mathematical function. The algorithm minimizes a non-linear, non-convex function by iteratively updating its parameters.

This code was developed as part of our Optimization course project at IASBS, in collaboration with my groupmate, [Erfan Faridi](https://github.com/erfanfaridii/).

---

## Features

- **Function Optimization:** Minimizes the equation  
  \[
  f(x_1, x_2) = -\cos(x_1) \cos(x_2) \exp(-(x_1 - \pi)^2 - (x_2 - \pi)^2)
  \]
- **Dynamic Learning Rate:** Supports different learning rate adjustment methods:
  - Backtracking Line Search (BT)
  - Strong Wolfe Conditions (SWC)
  - Golden Section Search (GOLD)
- **Contour Plot Visualization:** Provides a visual representation of the optimization process.
- **Termination Criteria:** Stops when parameter changes are below a defined threshold.

---

## Prerequisites

- MATLAB (any version supporting symbolic computations)
- Basic understanding of optimization and gradient descent

---

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/gradient-descent-dynamic-learning-rate.git
   cd gradient-descent-dynamic-learning-rate
   ```

2. Open the code in MATLAB.

3. Choose the learning rate method:
   ```matlab
   % Uncomment the desired learning rate method
   % learningRate = SWC(x, f); % Strong Wolfe Conditions
   % learningRate = GOLD(x, f); % Golden Section Search
   learningRate = BT(x, f); % Backtracking Line Search
   ```

4. Run the script to execute the optimization and visualize the process.

---

## Outputs

- **Iteration Count:** Total number of iterations taken to converge.
- **Optimal Point:** The coordinates of the minimum point.
- **Function Value:** The minimum value of the function.
- **Path Visualization:** The optimization path plotted on a contour map.

---

## Example

### Initial Configuration
- Starting Point: \([3.5, 3.5]\)
- Learning Rate: Backtracking Line Search

### Result
- Optimal Point: \([x_1, x_2]\)
- Minimum Value of \(f(x_1, x_2)\): Approx. -1