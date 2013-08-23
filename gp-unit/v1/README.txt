# To run the gp-unit tests, execute them from the gp-unit dir but with
# this gpunit.properties file

cd ../../../util/gp-unit/
ant -Dgpunit.properties=../../RankNormalize/gp-unit/v1/gpunit.properties gpunit

The gp-unit reports and jobResults will be placed in *this* directory.
