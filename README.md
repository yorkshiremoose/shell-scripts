# Shell scripts

A collection of useful shell scripts.

To run any shell script, they need to have permissions: `chmod 755 test.sh`

## Initial problem

To convert a Jekyll website to a Hugo website, I want to take one folder structure and file naming scheme and transform it into another.

In Jekyll, there is a _posts folder with hundreds of markdown files in year folders (`_posts/2024/2024-01-07-name.md`), and an assets/images folder with images (mostly) named to match the associated markdown file (`assets/images/2024/name.jpg`).

Hugo has the concept of page bundles, where images and other page resources sit in a directory with an index.md, and the URL comes from the directories beneath the content folder  (`content/notes/name/index.md` and `content/notes/name/name.jpg`).

```md
for every md file
    for every year, for every month
        create a folder from the name without the date
        copy the file into the folder
        convert front matter
        YAML to TOML
        format of lines
for every images file
    copy to folder that matches year and name 
```
