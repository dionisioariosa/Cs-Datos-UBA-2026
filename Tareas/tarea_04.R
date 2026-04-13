> library(tidyverse)
> library(nycflights13)
Error en library(nycflights13): no hay paquete llamado ‘nycflights13’
> library(tidyverse)
> 
> library(nycflights13)
Error en library(nycflights13): no hay paquete llamado ‘nycflights13’
> install.packages("nycflights13")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/Dionisio/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/nycflights13_1.0.2.zip'
Content type 'application/zip' length 4511546 bytes (4.3 MB)
downloaded 4.3 MB

package ‘nycflights13’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Dionisio\AppData\Local\Temp\Rtmp8IiyY8\downloaded_packages
> library(nycflights13)
> flights2 <- flights |> select(year, time_hour, origin, dest, tailnum, carrier)
> #1) debería aparecer una flecha de weather.origin->airports.faa
> #2) también conectaría con flights$dest
> #3)
> weather |>
+     count(year, month, day, hour, origin) |>
+     filter(n > 1)
# A tibble: 3 × 6
   year month   day  hour origin     n
  <int> <int> <int> <int> <chr>  <int>
1  2013    11     3     1 EWR        2
2  2013    11     3     1 JFK        2
3  2013    11     3     1 LGA        2
> #4)
> special_days <- tribble(
+     ~month, ~day, ~description,
+     12, 24, "Christmas Eve",
+     12, 25, "Christmas Day"
+ )
> #5)
> install.packages("Lahman")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/Dionisio/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/Lahman_14.0-0.zip'
Content type 'application/zip' length 6898008 bytes (6.6 MB)
downloaded 6.6 MB

package ‘Lahman’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Dionisio\AppData\Local\Temp\Rtmp8IiyY8\downloaded_packages
> library(Lahman)
> glimpse(Batting)
Rows: 128,598
Columns: 22
$ playerID <chr> "aardsda01", "aardsda01", "aa…
$ yearID   <int> 2004, 2006, 2007, 2008, 2009,…
$ stint    <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,…
$ teamID   <fct> SFN, CHN, CHA, BOS, SEA, SEA,…
$ lgID     <fct> NL, NL, AL, AL, AL, AL, AL, N…
$ G        <int> 11, 45, 25, 47, 73, 53, 1, 43…
$ AB       <int> 0, 2, 0, 1, 0, 0, 0, 0, 1, 46…
$ R        <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 58…
$ H        <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 13…
$ X2B      <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 27…
$ X3B      <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 6,…
$ HR       <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 13…
$ RBI      <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 69…
$ SB       <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,…
$ CS       <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,…
$ BB       <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 28…
$ SO       <int> 0, 0, 0, 1, 0, 0, 0, 0, 1, 39…
$ IBB      <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, NA…
$ HBP      <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 3,…
$ SH       <int> 0, 1, 0, 0, 0, 0, 0, 0, 0, 6,…
$ SF       <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 4,…
$ GIDP     <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 13…
> glimpse(People)
Rows: 24,270
Columns: 26
$ playerID     <chr> "aardsda01", "aaronha01",…
$ birthYear    <int> 1981, 1934, 1939, 1954, 1…
$ birthMonth   <int> 12, 2, 8, 9, 8, 12, 11, 4…
$ birthDay     <int> 27, 5, 5, 8, 25, 17, 4, 1…
$ birthCity    <chr> "Denver", "Mobile", "Mobi…
$ birthCountry <chr> "USA", "USA", "USA", "USA…
$ birthState   <chr> "CO", "AL", "AL", "CA", "…
$ deathYear    <int> NA, 2021, 1984, NA, NA, N…
$ deathMonth   <int> NA, 1, 8, NA, NA, NA, 5, …
$ deathDay     <int> NA, 22, 16, NA, NA, NA, 1…
$ deathCountry <chr> NA, "USA", "USA", NA, NA,…
$ deathState   <chr> NA, "GA", "GA", NA, NA, N…
$ deathCity    <chr> NA, "Atlanta", "Atlanta",…
$ nameFirst    <chr> "David", "Hank", "Tommie"…
$ nameLast     <chr> "Aardsma", "Aaron", "Aaro…
$ nameGiven    <chr> "David Allan", "Henry Lou…
$ weight       <int> 215, 180, 190, 190, 184, …
$ height       <int> 75, 72, 75, 75, 73, 74, 7…
$ bats         <fct> R, R, R, R, L, L, R, R, R…
$ throws       <fct> R, R, R, R, L, L, R, R, R…
$ debut        <chr> "2004-04-06", "1954-04-13…
$ bbrefID      <chr> "aardsda01", "aaronha01",…
$ finalGame    <chr> "2015-08-23", "1976-10-03…
$ retroID      <chr> "aardd001", "aaroh101", "…
$ deathDate    <date> NA, 2021-01-22, 1984-08-…
$ birthDate    <date> 1981-12-27, 1934-02-05, …
> glimpse(Salaries)
Rows: 26,428
Columns: 5
$ yearID   <int> 2004, 2007, 2008, 2009, 2010,…
$ teamID   <fct> SFN, CHA, BOS, SEA, SEA, SEA,…
$ lgID     <fct> NL, AL, AL, AL, AL, AL, AL, A…
$ playerID <chr> "aardsda01", "aardsda01", "aa…
$ salary   <int> 300000, 387500, 403250, 41900…
> 
> 
> 
> 
> 
> #ejercicios 19.3.4 (Basic Joins)
> #1)worst_hours <- flights |>
>     mutate(hour = sched_dep_time %/% 100) |>
+     group_by(time_hour, origin) |>
+     summarise(dep_delay = mean(dep_delay, na.rm = TRUE)) |>
+     ungroup() |>
+     slice_max(dep_delay, n = 48)
Error: objeto 'sched_dep_time' no encontrado
> #1)
> worst_hours <- flights |>
+     mutate(hour = sched_dep_time %/% 100) |>
+     group_by(time_hour, origin) |>
+     summarise(dep_delay = mean(dep_delay, na.rm = TRUE)) |>
+     ungroup() |>
+     slice_max(dep_delay, n = 48)
`summarise()` has regrouped the output.
ℹ Summaries were computed grouped by time_hour
  and origin.
ℹ Output is grouped by time_hour.
ℹ Use `summarise(.groups = "drop_last")` to
  silence this message.
ℹ Use `summarise(.by = c(time_hour, origin))`
  for per-operation grouping instead.
> 
> worst_hours |> left_join(weather, join_by(time_hour, origin))
# A tibble: 48 × 16
   time_hour           origin dep_delay  year
   <dttm>              <chr>      <dbl> <int>
 1 2013-07-28 21:00:00 LGA         280.  2013
 2 2013-02-09 10:00:00 EWR         269   2013
 3 2013-02-09 09:00:00 EWR         266   2013
 4 2013-09-02 16:00:00 LGA         250.  2013
 5 2013-07-22 18:00:00 LGA         246.  2013
 6 2013-07-28 19:00:00 LGA         240.  2013
 7 2013-04-10 21:00:00 JFK         237   2013
 8 2013-09-12 20:00:00 LGA         226.  2013
 9 2013-03-08 12:00:00 EWR         225.  2013
10 2013-12-05 11:00:00 LGA         221.  2013
# ℹ 38 more rows
# ℹ 12 more variables: month <int>, day <int>,
#   hour <int>, temp <dbl>, dewp <dbl>,
#   humid <dbl>, wind_dir <dbl>,
#   wind_speed <dbl>, wind_gust <dbl>,
#   precip <dbl>, pressure <dbl>, visib <dbl>
# ℹ Use `print(n = ...)` to see more rows
> #2)
> top_dest <- flights2 |>
+     count(dest, sort = TRUE) |>
+     head(10)
> 
> flights2 |> semi_join(top_dest, join_by(dest))
# A tibble: 141,145 × 6
    year time_hour           origin dest 
   <int> <dttm>              <chr>  <chr>
 1  2013 2013-01-01 05:00:00 JFK    MIA  
 2  2013 2013-01-01 06:00:00 LGA    ATL  
 3  2013 2013-01-01 05:00:00 EWR    ORD  
 4  2013 2013-01-01 06:00:00 EWR    FLL  
 5  2013 2013-01-01 06:00:00 JFK    MCO  
 6  2013 2013-01-01 06:00:00 LGA    ORD  
 7  2013 2013-01-01 06:00:00 JFK    LAX  
 8  2013 2013-01-01 06:00:00 EWR    SFO  
 9  2013 2013-01-01 05:00:00 JFK    BOS  
10  2013 2013-01-01 06:00:00 LGA    FLL  
# ℹ 141,135 more rows
# ℹ 2 more variables: tailnum <chr>,
#   carrier <chr>
# ℹ Use `print(n = ...)` to see more rows
> #3)
> flights2 |>
+     anti_join(weather, join_by(origin, time_hour)) |>
+     count()
# A tibble: 1 × 1
      n
  <int>
1  1556
> #4) flights2 |>
> anti_join(planes, join_by(tailnum)) |>
+     count(carrier, sort = TRUE)
Error in `auto_copy()`:
! `x` and `y` must share the same src.
ℹ `x` is a <tbl_df/tbl/data.frame> object.
ℹ `y` is a <dplyr_join_by> object.
ℹ Set `copy = TRUE` if `y` can be copied to the
  same source as `x` (may be slow).
Run `rlang::last_trace()` to see where the error occurred.
> #5)
> planes |>
+     left_join(
+         flights2 |> distinct(tailnum, carrier) |>
+             group_by(tailnum) |>
+             summarise(carriers = paste(carrier, collapse = ", ")),
+         join_by(tailnum)
+     )
# A tibble: 3,322 × 10
   tailnum  year type         manufacturer model
   <chr>   <int> <chr>        <chr>        <chr>
 1 N10156   2004 Fixed wing … EMBRAER      EMB-…
 2 N102UW   1998 Fixed wing … AIRBUS INDU… A320…
 3 N103US   1999 Fixed wing … AIRBUS INDU… A320…
 4 N104UW   1999 Fixed wing … AIRBUS INDU… A320…
 5 N10575   2002 Fixed wing … EMBRAER      EMB-…
 6 N105UW   1999 Fixed wing … AIRBUS INDU… A320…
 7 N107US   1999 Fixed wing … AIRBUS INDU… A320…
 8 N108UW   1999 Fixed wing … AIRBUS INDU… A320…
 9 N109UW   1999 Fixed wing … AIRBUS INDU… A320…
10 N110UW   1999 Fixed wing … AIRBUS INDU… A320…
# ℹ 3,312 more rows
# ℹ 5 more variables: engines <int>,
#   seats <int>, speed <int>, engine <chr>,
#   carriers <chr>
# ℹ Use `print(n = ...)` to see more rows
> #6)
> airports_small <- airports |> select(faa, lat, lon)
> 
> flights |>
+     left_join(airports_small, join_by(origin == faa)) |>
+     rename(lat_origin = lat, lon_origin = lon) |>
+     left_join(airports_small, join_by(dest == faa)) |>
+     rename(lat_dest = lat, lon_dest = lon)
# A tibble: 336,776 × 23
    year month   day dep_time sched_dep_time
   <int> <int> <int>    <int>          <int>
 1  2013     1     1      517            515
 2  2013     1     1      533            529
 3  2013     1     1      542            540
 4  2013     1     1      544            545
 5  2013     1     1      554            600
 6  2013     1     1      554            558
 7  2013     1     1      555            600
 8  2013     1     1      557            600
 9  2013     1     1      557            600
10  2013     1     1      558            600
# ℹ 336,766 more rows
# ℹ 18 more variables: dep_delay <dbl>,
#   arr_time <int>, sched_arr_time <int>,
#   arr_delay <dbl>, carrier <chr>,
#   flight <int>, tailnum <chr>, origin <chr>,
#   dest <chr>, air_time <dbl>, distance <dbl>,
#   hour <dbl>, minute <dbl>, …
# ℹ Use `print(n = ...)` to see more rows
> #7)
> flights |>
+     group_by(dest) |>
+     summarise(avg_delay = mean(arr_delay, na.rm = TRUE)) |>
+     left_join(airports, join_by(dest == faa)) |>
+     ggplot(aes(x = lon, y = lat, color = avg_delay)) +
+     borders("state") +
+     geom_point() +
+     coord_quickmap() +
+     scale_color_gradient(low = "blue", high = "red")
ℹ The package "maps" is required for `map_data()`.
✖ Would you like to install it?

1: Yes
2: No

Selection: 
Enter an item from the menu, or 0 to exit
Selection:
