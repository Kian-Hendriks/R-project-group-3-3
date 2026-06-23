# Regional Income Growth and House Price Dynamics in the Netherlands

Group project for *Programming for Economics* (Vrije Universiteit Amsterdam).
We use R to collect, clean, analyse and visualise public CBS data in order to
quantify a social problem: the growing gap between regional house prices and
household income across the twelve Dutch provinces (2015-2023).

The full analysis and write-up live in [`Template_Assignment.Rmd`](Template_Assignment.Rmd),
which knits to `Template_Assignment.pdf`.

## Authors
Vincent van Boven, Joris van Elden, Vincent van Denzen, Thies van der Aar,
Kian Hendriks & Julius Shano.

## How to reproduce

From the project root, run:

```bash
Rscript run_all.R
```

This installs any missing packages and knits the report to PDF. The package
versions we used are listed in `renv.lock`. Alternatively, open
`ProgrForEconom.Rproj` in RStudio, run `renv::restore()`, and knit
`Template_Assignment.Rmd`.

> Note: the map in section 3.4 downloads province boundaries from a public
> GeoJSON URL, so an internet connection is needed for that one figure.
> The `sf` package also requires the system libraries GDAL, GEOS and PROJ.

## Where the data comes from

All raw data is from **CBS StatLine** (Centraal Bureau voor de Statistiek) and is
already included in the `data/` folder, so the report knits without manual
downloads. To re-download the originals:

| Dataset | What it contains | CBS table | Download |
|---|---|---|---|
| Household income | Average disposable household income per province, 2015-2023 | `86004NED` | <https://opendata.cbs.nl/#/CBS/nl/dataset/86004NED/table> |
| House prices | Average sale price of existing owner-occupied homes per province | `85773NED` | <https://opendata.cbs.nl/#/CBS/nl/dataset/85773NED/table> |
| Population density | Inhabitants per km² per province | `70072ned` | <https://opendata.cbs.nl/#/CBS/nl/dataset/70072ned/table> |

**Download steps (per table):** open the link, select the region level
*Provincie (PV)* and the years 2015-2023, export as CSV and save into `data/`
(income files as `data2015.csv` ... `data2023.csv`, density as
`regionale_kerncijfers.csv`).

## Repository structure

```
Template_Assignment.Rmd   # the report (source)
run_all.R                 # restore environment + knit to PDF
renv.lock                 # exact package versions for reproducibility
data/                     # raw CBS input files
goede data/               # cleaned / generated intermediate datasets
```
