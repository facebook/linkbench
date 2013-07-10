# Sample Phoenix LinkBench configuration file.
#
# This file contains settings for the data store, as well as controlling
# benchmark output and behavior.  The workload is defined in a separate
# file.
# 
# At a minimum to use this file, you will need to fill in Phoenix
# connection information.  

##########################
# Workload Configuration #
##########################

# Path for workload properties file.  Properties in this file will override
# those in workload properties file.
# Can be absolute path, or relative path from LinkBench home directory
workload_file = config/PhoenixWorkload.properties

#################################
#                               #
#   Data Source Configuration   #
#                               #
#################################

# Implementation of LinkStore and NodeStore to use 
linkstore = com.facebook.LinkBench.LinkStorePhoenix
nodestore = com.facebook.LinkBench.LinkStorePhoenix

# Phoenix connection information
host = ZKADDRESS_PLACEHOLDER
user = user
password = password
port = ZKPORT_PLACEHOLDER
dbid = notused

# database table names
linktable = linktable
# counttable not required for all databases
counttable = counttable
nodetable = nodetable

###############################
#                             #
#   Logging and Stats Setup   #
#                             #
###############################

# This controls logging output.  Settings are, in order of increasing
# verbosity:
# ERROR: only output serious errors
# WARN: output warnings
# INFO: output additional information such as progress
# DEBUG: output high-level debugging information
# TRACE: output more detailed lower-level debugging information
debuglevel = INFO

# display frequency of per-thread progress in seconds
progressfreq = 300

# display frequency of per-thread stats (latency, etc) in seconds
displayfreq = 1800

# display global load update (% complete, etc) after this many links loaded
load_progress_interval = 100000

# display global update on request phase (% complete, etc) after this many ops
req_progress_interval = 5000

# max number of samples to store for each per-thread statistic
maxsamples = 10000

###############################
#                             #
#  Load Phase Configuration   #
#                             #
###############################

# number of threads to run during load phase
loaders = 10

# whether to generate graph nodes during load process
generate_nodes = true

# partition loading work into chunks of id1s of this size
loader_chunk_size = 1000

# seed for initial data load random number generation (optional)
# load_random_seed = 12345

##################################
#                                #
#  Request Phase Configuration   #
#                                #
##################################

# number of threads to run during request phase
requesters = 100

# read + write requests per thread
requests = 10000

# request rate per thread.  <= 0 means unthrottled requests, > 0 limits
#  the average request rate to that number of requests per second per thread,
#  with the inter-request intervals governed by an exponential distribution
requestrate = 0

# max duration in seconds for request phase of benchmark
maxtime = 10000

# warmup time in seconds.  The benchmark is run for a warmup period
# during which no statistics are recorded. This allows database caches,
# etc to warm up.
warmup_time = 0

# seed for request random number generation (optional)
# request_random_seed = 12345

# maximum number of failures per requester to tolerate before aborting
# negative number means never abort
max_failed_requests = 100

###############################
#                             #
#   Phoenix Tuning            #
#                             #
###############################

# Optional tuning parameters

# # of link inserts to batch together when loading
# Phoenix_bulk_insert_batch = 1024


