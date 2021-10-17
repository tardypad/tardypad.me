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
- application/json

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

### application/json

The output can take one the following forms.

Available status
```json
{
  "busy": false,
  "status": "Available",
  "until": null,
  "working_on": null
}
```

Busy status
```json
{
  "busy": true,
  "status": "Do not disturb",
  "until": null,
  "working_on": null
}
```

Busy status with ending time information
```json
{
  "busy": true,
  "status": "Do not disturb",
  "until": "14H00",
  "working_on": null
}
```

Busy status with work information
```json
{
  "busy": true,
  "status": "Do not disturb",
  "until": null,
  "working_on": "issue ABC-123"
}
```

Busy status with ending time and work information
```json
{
  "busy": true,
  "status": "Do not disturb",
  "until": "lunch",
  "working_on": "fixing bugs"
}
```

## Setting the status remotely

The remote modification of the status on the server is done via SSH commands.

The `set-status` [script](scripts/set-status) should then be placed within a
`bin` directory in the home directory and made executable.

Setting the status can then be done with the following commands
```shell
# set status as available
ssh {host} bin/set-status available

# set status as busy
ssh {host} bin/set-status busy

# set status as busy with ending time information
ssh {host} bin/set-status busy until 14H00

# set status as busy with work information
ssh {host} bin/set-status busy working on issue ABC-123

# set status as busy with ending time and work information (order matters)
ssh {host} bin/set-status busy until lunch working on fixing bugs
```

__WARNING__: The whole setup of the website is meant to be used on a server
belonging to a single person.  
The website makes use of files located in the "/tmp" folder to set and read
the status. Thus if there were multiple users, any of them could modify them.
