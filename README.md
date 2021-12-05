# Mkaudit


TODO: Delete this and the text above, and describe your gem

## Installation

clone project
```
git clone 
```

Install dependencies
```
bundle install
```


Package build
```
rake build
```

Package install
```
rake install 
```


# Usage

## Command `new`

Running `mkaudit new [Project]` create a simple structure of files 

```bash
mkaudit new my_target_attack
```
The output will contain all the files that have been created during setup:
```text
Create project: my_target_attack
      create  my_target_attack
      create  my_target_attack/01-discover
      create  my_target_attack/02-content
      create  my_target_attack/03-scripts
      create  my_target_attack/01-discover/nmap
      create  my_target_attack/README.md
happy hack - (good luck)
```
The following files and directories will be generated
```
my_target_attack
├── 01-discover
│   └── nmap
├── 02-content
├── 03-scripts
└── README.md

3 directories, 2 files
```

### flags in New

#### `--target`, `-t`
Add target to files
* 01-discover/nmap
* README.md
#### `--ports`, `-p`
Add ports to files
* 01-discover/nmap
#### `--autor`, `-a`
Add autor to files
* README.md 
#### `--description`, `-d`
Add description to files
* README.md


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/mkaudit. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/mkaudit/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the Mkaudit project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/mkaudit/blob/master/CODE_OF_CONDUCT.md).

## Copyright

Copyright (c) 2021 TODO: Write your name. See [MIT License](LICENSE.txt) for further details.