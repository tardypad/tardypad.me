# *.tardypad.me

Personal websites

- carl: CardDAV/CalDAV server (reverse proxy)
- check: checklists
- files: files sharing
- main: general website
- pkgs: packages repositories
- social: ActivityPub social network server (reverse proxy)
- status: current work status

We list here info common to all websites, extra details are explained in each website README.

## Web server

Nginx is used as a web server
(version [1.24.0](http://hg.nginx.org/nginx/rev/release-1.24.0)).

Each website specific config is found in its nginx.conf file

## Sites repository structure

The `root` folder contain the files to be put in their respective document root
folder `/srv/http/{website}/` on the server.

## Setup

Dependencies:
- `rsync` (currently using version [3.2.7](https://git.samba.org/?p=rsync.git;a=tag;h=refs/tags/v3.2.7))

```shell
# Deploy files to server
# Warning: Nginx config not included
make deploy
```
