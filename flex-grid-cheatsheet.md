# Tailwind CSS Cheat Sheet: Flexbox and Grid Properties

## **Flexbox Properties**

### Flex Container

| Tailwind Class      | CSS Equivalent                    | Description                                |
| ------------------- | --------------------------------- | ------------------------------------------ |
| `flex`              | `display: flex;`                  | Defines a flex container.                  |
| `inline-flex`       | `display: inline-flex;`           | Defines an inline flex container.          |
| `flex-row`          | `flex-direction: row;`            | Items are placed in a row (main axis).     |
| `flex-row-reverse`  | `flex-direction: row-reverse;`    | Items in reverse row order (main axis).    |
| `flex-col`          | `flex-direction: column;`         | Items are placed in a column (main axis).  |
| `flex-col-reverse`  | `flex-direction: column-reverse;` | Items in reverse column order (main axis). |
| `flex-wrap`         | `flex-wrap: wrap;`                | Allows items to wrap.                      |
| `flex-wrap-reverse` | `flex-wrap: wrap-reverse;`        | Wraps items in reverse.                    |
| `flex-nowrap`       | `flex-wrap: nowrap;`              | Prevents wrapping.                         |

### Justify Content

| Tailwind Class    | CSS Equivalent                    | Description                                              |
| ----------------- | --------------------------------- | -------------------------------------------------------- |
| `justify-start`   | `justify-content: flex-start;`    | Align items to the start of the main axis.               |
| `justify-center`  | `justify-content: center;`        | Center items along the main axis.                        |
| `justify-end`     | `justify-content: flex-end;`      | Align items to the end of the main axis.                 |
| `justify-between` | `justify-content: space-between;` | Distribute items with space between along the main axis. |
| `justify-around`  | `justify-content: space-around;`  | Space around items along the main axis.                  |
| `justify-evenly`  | `justify-content: space-evenly;`  | Equal spacing between items along the main axis.         |

### Align Items

| Tailwind Class   | CSS Equivalent             | Description                                               |
| ---------------- | -------------------------- | --------------------------------------------------------- |
| `items-start`    | `align-items: flex-start;` | Align items to the start of the cross axis.               |
| `items-center`   | `align-items: center;`     | Center items along the cross axis.                        |
| `items-end`      | `align-items: flex-end;`   | Align items to the end of the cross axis.                 |
| `items-baseline` | `align-items: baseline;`   | Align items along their baselines (cross axis).           |
| `items-stretch`  | `align-items: stretch;`    | Stretch items to fill the container along the cross axis. |

### Align Content

| Tailwind Class    | CSS Equivalent                  | Description                                         |
| ----------------- | ------------------------------- | --------------------------------------------------- |
| `content-start`   | `align-content: flex-start;`    | Align wrapped lines to the start of the cross axis. |
| `content-center`  | `align-content: center;`        | Center wrapped lines along the cross axis.          |
| `content-end`     | `align-content: flex-end;`      | Align wrapped lines to the end of the cross axis.   |
| `content-between` | `align-content: space-between;` | Space between wrapped lines along the cross axis.   |
| `content-around`  | `align-content: space-around;`  | Space around wrapped lines along the cross axis.    |
| `content-evenly`  | `align-content: space-evenly;`  | Equal spacing between lines along the cross axis.   |

### Flex Items

| Tailwind Class  | CSS Equivalent            | Description                                          |
| --------------- | ------------------------- | ---------------------------------------------------- |
| `flex-1`        | `flex: 1 1 0%;`           | Items grow and shrink as needed.                     |
| `flex-auto`     | `flex: 1 1 auto;`         | Items grow and shrink with content.                  |
| `flex-initial`  | `flex: 0 1 auto;`         | Items shrink but don't grow.                         |
| `flex-none`     | `flex: none;`             | Items don't grow or shrink.                          |
| `order-{value}` | `order: {value};`         | Controls the order of the item.                      |
| `self-auto`     | `align-self: auto;`       | Default alignment for the item along the cross axis. |
| `self-start`    | `align-self: flex-start;` | Align item to start of the cross axis.               |
| `self-center`   | `align-self: center;`     | Center the item along the cross axis.                |
| `self-end`      | `align-self: flex-end;`   | Align item to end of the cross axis.                 |
| `self-stretch`  | `align-self: stretch;`    | Stretch item to fill along the cross axis.           |
| `self-baseline` | `align-self: baseline;`   | Align item to baseline along the cross axis.         |

---

## **Grid Properties**

### Grid Container

| Tailwind Class | CSS Equivalent          | Description                       |
| -------------- | ----------------------- | --------------------------------- |
| `grid`         | `display: grid;`        | Defines a grid container.         |
| `inline-grid`  | `display: inline-grid;` | Defines an inline grid container. |

### Grid Template Columns

| Tailwind Class      | CSS Equivalent                                          | Description                    |
| ------------------- | ------------------------------------------------------- | ------------------------------ |
| `grid-cols-{value}` | `grid-template-columns: repeat(value, minmax(0, 1fr));` | Defines the number of columns. |
| `grid-cols-none`    | `grid-template-columns: none;`                          | Removes column definitions.    |

### Grid Template Rows

| Tailwind Class      | CSS Equivalent                                       | Description                 |
| ------------------- | ---------------------------------------------------- | --------------------------- |
| `grid-rows-{value}` | `grid-template-rows: repeat(value, minmax(0, 1fr));` | Defines the number of rows. |
| `grid-rows-none`    | `grid-template-rows: none;`                          | Removes row definitions.    |

### Gap (Spacing Between Items)

| Tailwind Class  | CSS Equivalent         | Description                            |
| --------------- | ---------------------- | -------------------------------------- |
| `gap-{value}`   | `gap: {value};`        | Sets the gap between rows and columns. |
| `gap-x-{value}` | `column-gap: {value};` | Sets the column gap only.              |
| `gap-y-{value}` | `row-gap: {value};`    | Sets the row gap only.                 |

### Grid Column and Row Span

| Tailwind Class      | CSS Equivalent                | Description                         |
| ------------------- | ----------------------------- | ----------------------------------- |
| `col-span-{value}`  | `grid-column: span {value};`  | Spans the item across columns.      |
| `col-start-{value}` | `grid-column-start: {value};` | Sets the start line for the column. |
| `col-end-{value}`   | `grid-column-end: {value};`   | Sets the end line for the column.   |
| `row-span-{value}`  | `grid-row: span {value};`     | Spans the item across rows.         |
| `row-start-{value}` | `grid-row-start: {value};`    | Sets the start line for the row.    |
| `row-end-{value}`   | `grid-row-end: {value};`      | Sets the end line for the row.      |

### Alignment in Grid

| Tailwind Class          | CSS Equivalent            | Description                                              |
| ----------------------- | ------------------------- | -------------------------------------------------------- |
| `justify-items-start`   | `justify-items: start;`   | Aligns items at the start of cells along the cross axis. |
| `justify-items-center`  | `justify-items: center;`  | Centers items in their cells along the cross axis.       |
| `justify-items-end`     | `justify-items: end;`     | Aligns items at the end of cells along the cross axis.   |
| `justify-items-stretch` | `justify-items: stretch;` | Stretches items to fill cells along the cross axis.      |
| `items-start`           | `align-items: start;`     | Aligns items at the start of cells along the cross axis. |
| `items-center`          | `align-items: center;`    | Centers items in their cells along the cross axis.       |
| `items-end`             | `align-items: end;`       | Aligns items at the end of cells along the cross axis.   |
| `items-stretch`         | `align-items: stretch;`   | Stretches items to fill cells along the cross axis.      |

This cheat sheet covers the essential Tailwind CSS utilities for **Flexbox** and **Grid** layouts.

**_NOTE_** This cheatsheet was generated by ChatGPT
