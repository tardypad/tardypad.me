# *.tardypad.me

Personal websites

- carl: CardDAV/CalDAV server (reverse proxy)
- check: checklists
- files: files sharing
- main: general website
- pkgs: packages repositories
- status: current work status

We list here info common to all websites, extra details are explained in each website README.

## Web server

Nginx is used as a web server
(version [1.20.2](http://hg.nginx.org/nginx/rev/release-1.20.2)).

Each website specific config is found in its nginx.conf file

## Sites repository structure

The `root` folder contain the files to be put in their respective document root
folder `/srv/http/{website}/` on the server.

## Setup

Dependencies:
- `rsync` (currently using version [3.2.3](https://git.samba.org/?p=rsync.git;a=tag;h=refs/tags/v3.2.3))

```shell
# Deploy files to server
# Warning: Nginx config not included
make deploy
```
