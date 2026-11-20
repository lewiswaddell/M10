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

1. Replace `images/headshot.jpg` with your photo (same file name).
2. Find and replace `lewiswaddell` with your GitHub username in `_quarto.yml`, `index.qmd`, and `M10_Deliverables.qmd`.
3. Update the LinkedIn and email links in `index.qmd`.
4. Swap `data/rkr_newsletter.csv` for real data (or Case 31) when you have it. Keep the same column names.

## R packages needed

```r
install.packages(c("dplyr", "plotly", "DT", "rmarkdown", "knitr"))
```

## Publish to GitHub Pages

1. In the RStudio Terminal, run `quarto render`. The site is written to `docs/`.
2. In the Git pane, check all files (including `docs/`), commit, and push.
3. On GitHub, go to **Settings > Pages**, choose **Deploy from a branch**, branch **main**, folder **/docs**, and click **Save**.
4. Wait a minute, refresh, and your site appears at `https://lewiswaddell.github.io/M10/`.

## Sample data

`scripts/make_sample_data.R` builds the illustrative dataset. Rerun it only if you want to regenerate the sample.
