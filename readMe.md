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
remote: warning: See https://gh.io/lfs for more information.
remote: warning: File infra/.terraform/providers/registry.opentofu.org/kreuzwerker/docker/3.9.0/windows_amd64/terraform-provider-docker_v3.9.0.exe is 65.23 MB; this is larger than GitHub's recommended maximum file size of 50.00 MB
remote: warning: GH001: Large files detected. You may want to try Git Large File Storage - https://git-lfs.github.com.
To https://github.com/Andre-Mwendwa/orbitkit.git
 * [new tag]         v0.1.0 -> v0.1.0
```