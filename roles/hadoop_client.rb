name        'hadoop_client'
description 'A role for creating a hadoop client'

run_list *%w[
  role[hadoop]
  hadoop_cluster::client
]
