# gap

`gap` is a (very) simple tool that creates a gap in terminal output when you run the command `gap`. 
It's useful for separating the output of different commands in the terminal so that you can easily distinguish between them.
This becomes especially useful when you have a lot of output from different commands and you want to quickly find the output of a specific command.

## Installation

To install `gap`, you first need to clone the repository. Note, throughout this README, `<>` marks the variables you need to replace and `[]` marks optional arguments.

```bash
cd <path/to/parent/directory>
git clone [--depth=1] https://github.com/Noah-Everett/gap.git
```

Then, simply run the `make_gap.sh` script:

```bash
cd <path/to/gap/dir>
source install_gap.sh
```

This will make a shell script called `gap` in the `gap` directory. Then, the script will add the `gap` script to your `PATH` so that you can run it from anywhere.

## Usage

To use `gap`, simply run the command `gap` in your terminal. This will create a gap in the terminal output.

```bash
gap
```

The default gap size is the hight of your terminal window. You can specify a custom gap size by passing an integer argument to the `gap` command:

```bash
gap [size]
```

For example, to create a gap of size 10:

```bash
gap 10
```

## Uninstallation

To uninstall `gap`, simply run the `uninstall_gap.sh` script:

```bash
cd <path/to/gap>
source uninstall_gap.sh
```

This will remove the `gap` script file and remove the `gap` script from your `PATH`.

## Contributing

If you would like to contribute to `gap`, feel free to fork the repository and submit a pull request. 
I would be happy to review it.