# Setting the status remotely

The remote modification of the status on the server is done via SSH commands.

We are using a SSH key without passphrase to be able to have it called by 
scripts in the background without user interaction.

For security reasons we then use a specific SSH key only for this purpose.
We limit its scope on the server to only be able to modify the status.

In the `.ssh/authorized_key` config
```
restrict,command="./bin/set_status" {ssh-key}
```
where {ssh-key} is the public SSH key

The `set_status` script should then be placed within a `bin` directory in the
home directory and made executable.

Setting the status can then be done with the following commands
```shell
# set status as available
ssh {host} available

# set status as busy with ending time information
ssh {host} busy until 14H00
```
