source "https://supermarket.chef.io"

group :app_v1 do
  cookbook "sample-app", github: "tknerr/sample-toplevel-cookbook", tag: "v0.2.0"
end

group :app_v2 do
  cookbook "sample-app", github: "tknerr/sample-toplevel-cookbook", tag: "v0.1.2"
end

group :app_local do
  cookbook "sample-app", path: "C:/Repos/_github/_cookbooks/sample-toplevel-cookbook"
end