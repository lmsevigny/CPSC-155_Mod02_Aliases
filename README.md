# Module 02
# Exercise: Git Aliases

## Step 1
Familiarize yourself with the repository by checking the repository history, file structure, file contents, etc.

## Step 2
Run the following command to see a simple linear view of the history:
```bash
$ git log
```

## Step 3
Run the following command to see an alternative view of the history:
```bash
$ git log --oneline --decorate --graph --all
```
As a side note, the focus of this exercise is not on understand branches, but rather on understanding that the same information can be viewed from different perspectives.

You should see a diverging history starting at `C2-master` where commits were performed in parallel in both the `master` branch and the `sample-topic-branch` branch.

At commit `C7 [...]` the topic branch was merged back into master.

## Step 4
Run the following command which should result in an error, because the `customlog1` alias is not set:
```bash
$ git customlog1
```

## Step 5
Read the contents of the `./chaos_monkey.sh` script to understand what aliases will be set **locally** for the current git repository only.

## Step 6
Run the `./chaos_monkey.sh` script.

## Step 7
Run the following command to see that the two aliases created by the `./chaos_monkey.sh` script were set in the local `.git/config` file:
```bash
$ git config --list --show-origin
```

## Step 8
Run the command specified by the `customlog1` alias, using:
```bash
$ git customlog1
```
You should see a customized view of the history, where the commits are sorted/grouped based on their inclusion to a branch.

In addition, the output provides information about the relative time of the commit and the author.

## Step 9
Run the following command to see another customized view of the history, where the commits are sorted based on the **date** they were created:
```bash
$ git customlog2
```
For example, this output accurately reflects the reality, in which chronologically:
* commit `C3` was created on the branch first
* commit `C4` was created on `master` after `C3`
* commit `C5` was created on the branch after `C4`, and so on

## Step 10
The `git customlog1` command works **only** in the current repository because this is how it was setup by the `./chaos_monkey.sh` script. This means that if you open a different git repository in another terminal and run the `git customlog1` command you will get an error.

You do not need to make the `customlog1` alias available for all your git repositories on your current machine, but think about what `git config` option would allow you to accomplish this.
