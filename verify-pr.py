import sys
import re

prefixes = ["fix", "feat", "release"]

def main():
    pr_title = sys.argv[1]
    prefix = pr_title.split("(")[0]
    if prefix not in prefixes:
        exit_with_error()
    subject = pr_title.split(prefix)[1]
    if re.match('\(R-(\d+)\):', subject) is None:
        exit_with_error()


def exit_with_error():
    message = "Invalid PR title. Please use correct format.\r\nHere are some examples:\r\n"
    message += "\tfix(R-12345): fix issue\r\n"
    message += "\tfeat(R-42313): implemented feature\r\n"
    message += "\trelease(R-12345): release\r\n"
    sys.exit(message)


if __name__ == "__main__":
    main()
