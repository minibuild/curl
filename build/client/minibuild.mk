module_type = 'executable'
module_name = 'curl_client'
exe_name = 'curl'

src_search_dir_list = ['../../vendor/src']

definitions = ['HAVE_CONFIG_H']

include_dir_list = [
  '../../include',
  '../../vendor/lib',
  '${@project_root}/zlib/include',
]

lib_list = [
  '${@project_root}/curl',
  '${@project_root}/openssl/build/ssl_static',
  '${@project_root}/openssl/build/crypto_static',
  '${@project_root}/zlib',
]

winrc_file = '../../vendor/src/curl.rc'

prebuilt_lib_list_linux = ['dl', 'pthread', 'rt']
prebuilt_lib_list_windows = ['crypt32','ws2_32', 'advapi32', 'user32']
macosx_framework_list = ['CoreFoundation', 'Security']

build_list = [
  'slist_wc.c',
  'tool_binmode.c',
  'tool_bname.c',
  'tool_cb_dbg.c',
  'tool_cb_hdr.c',
  'tool_cb_prg.c',
  'tool_cb_rea.c',
  'tool_cb_see.c',
  'tool_cb_wrt.c',
  'tool_cfgable.c',
  'tool_convert.c',
  'tool_dirhie.c',
  'tool_doswin.c',
  'tool_easysrc.c',
  'tool_filetime.c',
  'tool_formparse.c',
  'tool_getparam.c',
  'tool_getpass.c',
  'tool_help.c',
  'tool_helpers.c',
  'tool_homedir.c',
  'tool_hugehelp.c',
  'tool_libinfo.c',
  'tool_main.c',
  'tool_metalink.c',
  'tool_msgs.c',
  'tool_operate.c',
  'tool_operhlp.c',
  'tool_panykey.c',
  'tool_paramhlp.c',
  'tool_parsecfg.c',
  'tool_strdup.c',
  'tool_setopt.c',
  'tool_sleep.c',
  'tool_urlglob.c',
  'tool_util.c',
  'tool_vms.c',
  'tool_writeout.c',
  'tool_xattr.c',
]
