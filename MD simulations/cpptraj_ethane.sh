for i in *MD.nc;
do
echo $i
echo "parm 55_holo_p4a.prmtop" >> ${i}_cpptraj2.in
echo "trajin $i" >> ${i}_cpptraj2.in
echo "autoimage" >> ${i}_cpptraj2.in
echo "rmsd ToFirst @CA,C,N out ${i}_rmsd_bb_2.dat" >> ${i}_cpptraj2.in
echo "atomicfluct out ${i}_rmsf_2.dat @C,CA,N byres" >> ${i}_cpptraj2.in
echo "rmsd HEB first :HEB&!@H= out ${i}_rmsd_HEB_2.dat" >> ${i}_cpptraj2.in
echo "atomicfluct out ${i}_rmsf_HEB.dat :HEB&!@H= byres" >> ${i}_cpptraj2.in
echo "run" >> ${i}_cpptraj2.in
done