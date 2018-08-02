#include "../../build_list.inc"

module_type = 'lib-shared'
module_name = 'curl'

include_dir_list = [
  '../../include',
  '../../vendor/lib',
  '${@project_root}/zlib/include',
  '${@project_root}/openssl/include',
]

src_search_dir_list = [
  '../../vendor/lib',
  '../../vendor/lib/vauth',
  '../../vendor/lib/vtls',
]

definitions = [
  'HAVE_CONFIG_H',
  'BUILDING_LIBCURL',
]

lib_list = [
  '${@project_root}/openssl/build/ssl_static',
  '${@project_root}/openssl/build/crypto_static',
  '${@project_root}/zlib',
]

winrc_file = '../../vendor/lib/libcurl.rc'

prebuilt_lib_list_linux = ['dl', 'pthread', 'rt']
prebuilt_lib_list_windows = ['crypt32','ws2_32', 'advapi32', 'user32']
macosx_framework_list = ['CoreFoundation', 'Security']
