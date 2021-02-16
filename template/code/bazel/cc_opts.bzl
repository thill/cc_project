def default_copts(ignored = []):
  opts = [
    "-std=c++20",
    "-Wall",
    "-Werror",
    "-Wextra",
    "-Wno-ignored-qualifiers",
    "-Wvla",
  ]
  ignored_map = {opt: opt for opt in ignored}
  return [opt for opt in opts if ignored_map.get(opt) == None]

