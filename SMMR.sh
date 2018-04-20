#PBS -l ncpus=5
#PBS -l mem=10GB

# There are several queues e.g. workq, smallq and others
#   workq is the default, limited to 2 jobs at once and
#   smallq allows more jobs at once if you use less than 2 cores.
#PBS -q c3b
#PBS -l host=c3node03

# Send email on abort, begin and end.
# IMPORTANT !!! change email below to your email address!
#PBS -m abe
#PBS -M wenjie.zhang@uts.edu.au
cd /shared/homes/131630/jobs/Wget
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies --keep-session-cookies --no-check-certificate --auth-no-challenge=on -r --reject "index.html*" -np -e robots=off "https://n5eil01u.ecs.nsidc.org/MEASURES/NSIDC-0477.003/" -P /shared/homes/131630/SciData/Freeze_Thaw/SMMR
