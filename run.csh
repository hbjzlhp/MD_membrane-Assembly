#!/bin/csh
#
gmx grompp -f run.mdp -o run.tpr -c eq.gro -p topol.top -n index.ndx
gmx mdrun -ntmpi 1 -ntomp 6 -v -deffnm run -nb gpu
