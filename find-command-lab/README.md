# 🔍 Linux `find` Command Lab – Cloud Support Practice

This repo demonstrates real-world use cases of the `find` command to solve common system and cloud support tasks, such as log cleanup, disk usage management, and security auditing.

## 📌 What You'll Learn
- How to locate large or old files that consume disk space
- How to automatically delete or compress old log files
- How to find files with insecure permissions (e.g. `777`)
- How to automate these tasks with cron-ready scripts

---

## 📁 Scripts

### ✅ `find-old-logs.sh`
Finds `.log` files older than 7 days and lists them:
```bash
find /var/log -type f -name "*.log" -mtime +7

✅ find-large-files.sh
Finds files larger than 100MB:

find / -type f -size +100M

✅ find-insecure-permissions.sh
Finds files with permission 777:

find /var/www -type f -perm 0777

✅ archive-old-files.sh
Moves old .log files to /archive directory:

find ~/logs -type f -name "*.log" -mtime +3 -exec mv {} ~/archive/ \;

✅ auto-clean-temp.sh
Deletes .tmp files in /tmp not accessed in 2+ days:

find /tmp -type f -name "*.tmp" -atime +2 -delete

🚀 How to Use
Make scripts executable:

chmod +x scripts/*.sh
Run each script:

bash scripts/find-old-logs.sh

💼 Real-World Use Cases
These scripts simulate what a cloud support engineer might do during:
    • Emergency disk space issues (df -h)
    • Log file mismanagement
    • Security hardening (finding 777 files)
    • Pre-deployment audits and automation tasks
Add_ON:
On all scripts I used tee command to save output in output_sample.txt. This tee command is useful to save the output and continue the operation(you can view the output as well in a single go).

OUTPUT folder:
I created output and output_sample.txt. You can find all outputs of the scripts which i run locally.
