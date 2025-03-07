# Plotting:

Think of plotting as painting with oil paints. Each function is an additional layer on the painting.

1. `ggplot()`
  - You must define data and mapping parameters.
2. `geom_*`
  - `geom_point()`: For a scatter plot
  - `geom_density()`: For a density plot
  - `geom_col()`: For a column plot (this is where you have the numbers you want to plot.)
  - `geom_histogram()`: For a histogram
  - `geom_bar()`: For a bar plot
    - For a percent plot: `aes(y = 100 * (..count..) / sum(..count..)`
  - `geom_smooth(method = "lm")` Draws a linear regression model on your plot.

Optional Functions (layers)

1. `labs()`: For defining the plot labels
2. `ylim` & `xlim`: For defining the LIMITS of your X & Y axes
3. `coord_flip()`: Flip X and Y
4. `facet_wrap()`: Make a separate plot for every unique value
   - The parameter here MUST be preceded by a ~



# Data Munging:

- `filter()`: Only keep the rows of data that you need for the analysis. For example, we could use this function to drop all rows not made by Chevrolet.
    - Uses boolean tests to determine which rows to keep:
        - `==` Two equals means equals. One equals means assign, which will cause an error.
        - `<`, `<=`, `>`, `>=`
        - `is.na()` Tests for blank cells.
        - `!` Not!
- `mutate()`: Creates NEW columns!
    - For EACH row in the data, you will have an new cell of data.
    - So if you data set has 100 rows, mutate will return 100 new values.
    - There are sooooo many things you can do with this function.
- `summarize()`: Provide summary statistics such as the average value of a column, or the number of lines in the data set.
    - Unless grouped, this returns ONE row of data no matter how many rows of data are in your data set.
    - If grouped, this function returns ONE row of data for EACH UNIQUE value of the column(s) you are grouping by.
    - Relies on helper functions:
        - `min()`, `max()`
        - `mean()`, `sd()`
        - `n()`
- `group_by()`: Group, or stratify our results by a column. 
    - This is similar to `facet_wrap()` we learned about last week, but more flexible.
    - Function: `group_by()`
- `arrange()`: Sort, or arrange, the results by the values in column.
    - Function: `arrange()`
    - By default, returns are sorted in ascending order.
    - `desc()` Returns can be sorted in descending order.
