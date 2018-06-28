#!/bin/bash

git config alias.customlog1 "log --oneline --graph --all --pretty=format:'%C(yellow)%h%C(auto)%d%C(white) %s%C(green) (%cr) %C(bold blue)%an <%ae>%C(reset)'"

git config alias.customlog2 "log --oneline --graph --all --author-date-order --pretty=format:'%C(yellow)%h%C(auto)%d%C(white) %s%C(green) (%cr) %C(bold blue)%an <%ae>%C(reset)'"

echo "$0 completed!"
