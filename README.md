# Linux_octel_commands

## Octel 

Linux command line can use octel charaters to represent strings. 

ie: `$'\154\163\40\55\154'` = `ls -l`

Using the script provided in this repo `convert_to_oct.sh` you can get a command to use easily. 

## Usage

```
chmod +x convert_to_octel.sh
./convert_to_octel.sh "cmd" 
```

You can use the old `echo 'octel_string' | bash for execution.
