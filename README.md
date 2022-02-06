# *.tardypad.me

Personal websites

- check: checklists
- files: files sharing
- main: general website
- pkgs: packages repository
- status: current work status

We list here info common to all websites, extra details are explained in each website README.

## Web server

Nginx is used as a web server
(version [1.20.2](http://hg.nginx.org/nginx/rev/release-1.20.2)).

The main config is found in the `nginx` folder.

## Sites repository structure

The `root` folder contain the files to be put in their respective document root
folder `/srv/{website}/` on the server.

## Setup

Dependencies:
- `rsync` (currently using version [3.2.3](https://git.samba.org/?p=rsync.git;a=tag;h=refs/tags/v3.2.3))

```shell
# Deploy files to server
# Warning: Nginx config not included
make deploy
```
