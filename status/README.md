# Status

The website displays whether I'm busy ("Do not disturb") or not ("Available").

## Busy information

In case the status is busy the following information can also be found,
although they are optional:
- the time until which I'm busy (typically when using a pomodoro session)
- the item on which I'm working on

## Reading the status

The following MIME types are supported in the `Accept` HTTP header:
- text/html (default if none set)
- text/plain

### text/plain

The output can take one the following forms.

Available status
```
Available
```

Busy status
```
Do not disturb
```

Busy status with ending time information
```
Do not disturb
until 14H00
```

Busy status with work information (notice the blank line)
```
Do not disturb

working on issue ABC-123
```

Busy status with ending time and work information
```
Do not disturb
until lunch
working on fixing bugs
```

## Setting the status remotely

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

The `set_status` [script](scripts/set_status) should then be placed within a
`bin` directory in the home directory and made executable.

Setting the status can then be done with the following commands
```shell
# set status as available
ssh {host} available

# set status as busy
ssh {host} busy

# set status as busy with ending time information
ssh {host} busy until 14H00

# set status as busy with work information
ssh {host} busy working on issue ABC-123

# set status as busy with ending time and work information (order matters)
ssh {host} busy until lunch working on fixing bugs
```
