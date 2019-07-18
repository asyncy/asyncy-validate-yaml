# _YAML_ OMG Microservice

[![Open Microservice Guide](https://img.shields.io/badge/OMG%20Enabled-👍-green.svg?)](https://microservice.guide)

It is commonly used for configuration files, but could be used in many applications where data is being stored or transmitted.

## Direct usage in [Storyscript](https://storyscript.io/):

##### Parse
```coffee
>>> yaml parse data:'- item'
# ["item", "foo"]
```
##### Format
```coffee
>>> yaml format data: [1, 2]
# "---\n- 1\n- 2\n"
```

Curious to [learn more](https://docs.storyscript.io/)?

✨🍰✨

## Usage with [OMG CLI](https://www.npmjs.com/package/omg)

##### Parse
```shell
$ omg run parse -a data=<DATA>
```
##### Format
```shell
$ omg run format -a data=<DATA>
```

**Note**: The OMG CLI requires [Docker](https://docs.docker.com/install/) to be installed.

## License
[MIT License](https://github.com/omg-services/yaml/blob/master/LICENSE).
