# Diceware
Different implementations of Diceware
## Usage
### Bash and Python
```
./diceware_password_generator.sh [-h] [-l LANG] [-w WORDS]
./diceware_password_generator.py [-h] [-l LANG] [-w WORDS]
```

**-h, --help**	  show this help and exit<br>
**-l, --lang**	  set the language of the list to use (default en)<br>
**-w, --words**   set the password length in words (default 8)<br>

### Go
```
go run diceware_password_generator.go [-help] [-lang LANG] [-words WORDS]
```

**-h, -help**	  show this help and exit<br>
**-lang**	  set the language of the list to use (default en)<br>
**-words**   set the password length in words (default 8)<br>

## Supported Language
* English - en
* German - de
* Italian - it
* Dutch - nl
