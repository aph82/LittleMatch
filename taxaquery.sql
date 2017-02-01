
.mode csv
.output plant_names.txt
.separator " "
select distinct genus, species from species;
.output stdout