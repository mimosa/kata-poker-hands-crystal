# poker_hands


## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  poker_hands:
    github: mimosa/poker_hands
```


## Usage


```crystal
require "poker_hands"

PokerHands.vs("2H 3D 5S 9C KD", "2C 3H 4S 8C KH")
```

## Development

To run tests:
```
make test
```

## Contributors

- [mimosa](https://github.com/mimosa) Howl王 - creator, maintainer
