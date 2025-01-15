for i in *MD.nc_cpptraj2.in ;
do
echo $i
cpptraj $i
done
