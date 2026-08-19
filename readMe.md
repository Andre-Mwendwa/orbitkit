echo "# orbitkit" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/Andre-Mwendwa/orbitkit.git
git push -u origin main

```
$ git push origin v0.1.0
Enumerating objects: 34, done.
Counting objects: 100% (34/34), done.
Delta compression using up to 8 threads
Compressing objects: 100% (23/23), done.
Writing objects: 100% (34/34), 19.72 MiB | 914.00 KiB/s, done.
Total 34 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/Andre-Mwendwa/orbitkit.git
 * [new tag]         v0.1.0 -> v0.1.0
```