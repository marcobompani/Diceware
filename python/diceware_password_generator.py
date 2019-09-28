import argparse
from random import SystemRandom


def extractWord(code):
    with open('word_list/word_list_{}.txt'.format(args.lang), 'r') as f:
        for line in f:
            line = line.strip()
            if line.startswith(code):
                return line.split()[1]


parser = argparse.ArgumentParser()
parser.add_argument('-l', '--lang', default='en', help='set the language of'
                                                       'the list to use ('
                                                       'default en)')
parser.add_argument('-w', '--words', type=int, default=8, help='set the '
                    'password length in words (default 8)')

args = parser.parse_args()

password = ''
cryptogen = SystemRandom()

for i in range(0, args.words):
    num = [cryptogen.randrange(1, 7) for p in range(0, 5)]
    code = ''.join(str(n) for n in num)
    password = password + ' ' + extractWord(code)

print(password.strip())
