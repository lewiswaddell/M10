# M10 Website: Leeann Lewis-Waddell

Quarto portfolio website for IBM 6500, Module 10.

## Pages

- **Home** (`index.qmd`): bio, photo, career aspirations, skills, education
- **RKR Dashboard Portal** (`dashboard.qmd`) and **Dashboard** (`rkr-dashboard.qmd`)
- **Styling with CSS/SCSS** (`styling.qmd`, styles in `custom.scss`)
- **Portfolio Listings** (`listings.qmd`, items in `portfolio/`)

## Deliverables file

`M10_Deliverables.qmd` is not part of the website. Render it on its own with `quarto render M10_Deliverables.qmd --no-clean` or the Render button, then submit the HTML.

## Before publishing

1. If your repo is not named `M10`, replace `M10` in the links in `_quarto.yml` and `M10_Deliverables.qmd`.

## R packages needed

```r
install.packages(c("dplyr", "readr", "tidyr", "purrr", "stringr", "plotly", "rmarkdown", "knitr"))
```

## Publish to GitHub Pages

1. In the RStudio Terminal, run `quarto render`. The site is written to `docs/`.
2. In the Git pane, check all files (including `docs/`), commit, and push.
3. On GitHub, go to **Settings > Pages**, choose **Deploy from a branch**, branch **main**, folder **/docs**, and click **Save**.
4. Wait a minute, refresh, and your site appears at `https://lewiswaddell.github.io/M10/`.

## Data

`data/concierge-canva/` holds the 14 Canva website insights exports for The Collins Concierge, copied from the M06 assignment. The dashboard removes the one byte-identical duplicate, leaving 13 issues.
