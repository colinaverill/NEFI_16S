#data paths. 
#The path to the data directory will depend if you are on your local computer, the scc or somewhere else.
#To deal with this Colin has condiitonally setup the path to data based on the hostname of the computer.
#Forst instance, if the hostname is 'pecan2' colin tells the omputer that all the data are in /fs/data3/caverill/NEFI_16S_data/
#You can your local or remote machine to this list, following the instructions below. You just need your hostname.
#To get your hostname open up terminal and type 'hostname'.
#I often save data objects as ".rds" files, which is just an R data storage type.
#.rds files can be loaded with "readRDS()", and saved with "saveRDS(R_object, path/to/file.rds)
host <- system('hostname', intern=T)
#data directory conditional to which computer you are working on.
if(host == 'pecan2'){data.dir <- '/fs/data3/caverill/NEFI_16S_data/'}
if(host == 'scc1'  ){data.dir <- '/projectnb/talbot-lab-data/caverill/NEFI_16S_data/'}
if(host == 'scc2'  ){data.dir <- '/projectnb/talbot-lab-data/caverill/NEFI_16S_data/'}

#raw EMP deblurred ESV table and mapping files.
emp_esv.path <- paste0(data.dir,'emp_deblur_150bp.release1.biom')
emp_map.path <- paste0(data.dir,'emp_qiime_mapping_release1.tsv')

#processed and subsetted emp ESV and mapping files.
emp_map_clean.path <- paste0(data.dir,'emp_map_clean.rds')
emp_esv_clean.path <- paste0(data.dir,'emp_esv_clean.rds')

#example fungal data path.
example_fungal.path <- paste0(data.dir,'ted_all_prior_data.rds')