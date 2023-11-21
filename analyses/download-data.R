# Download project raw data
#
# This script will download the PanTHERIA and WWF WildFinder datasets. The
# four files will be stored in `data/`.
# 
# All functions used in the script have been developed for this project
# and can be found in the folder R/.
#
# Ellis Franklin <ellisfranklin5@gmail.com>
# 2023/20/11

## Download PanTHERIA database ----

fun_2_load_data("pantheria",
                "PanTHERIA_1-0_WR05_Aug2008.txt",
                "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria/",
                overwrite = FALSE)


## Download WWF WildFinder database ----
# ecoregions list

fun_2_load_data("wildfinder",
                "wildfinder-ecoregions_list.csv",
                "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/",
                overwrite = FALSE)

# ecoregions species

fun_2_load_data("wildfinder",
                "wildfinder-ecoregions_species.csv",
                "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/",
                overwrite = FALSE)

# mammals list

fun_2_load_data("wildfinder",
                "wildfinder-mammals_list.csv",
                "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/",
                overwrite = FALSE)

