#include "build_list.inc"

module_type = 'lib-static'
module_name = 'curl_static'

include_dir_list = [
  'include',
  'vendor/lib',
  '${@project_root}/zlib/include',
  '${@project_root}/openssl/include',
]

src_search_dir_list = [
  'vendor/lib',
  'vendor/lib/vauth',
  'vendor/lib/vtls',
 ]

definitions = [
  'HAVE_CONFIG_H',
  'BUILDING_LIBCURL',
  'CURL_STATICLIB',
]
