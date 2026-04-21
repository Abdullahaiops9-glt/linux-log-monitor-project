# 🚨 Linux Log Monitoring System

## 🎯 Overview
This project monitors Linux system logs and generates alerts automatically.

---

🟢 📁 PROJECT STRUCTURE
linux-log-monitor-project/
│
├── README.md
├── log_monitor.sh
├── screenshots/
│   ├── script.png
│   ├── output.png
│   ├── cron.png
│   ├── alert.png
---

## ⚙️ Step 1: Create Monitoring Script

## nano /log_monitor.sh

## Add:

#!/bin/bash
journalctl -p err -n 20 > /tmp/errors.log

if [ -s /tmp/errors.log ]; then
    echo "ERROR detected on server" >> /tmp/alert.log
fi

---

## Make executable:
chmod +x /log_monitor.sh

## 🧪 Step 2: Manual Testing
./log_monitor.sh
cat /tmp/alert.log

## ⏰ Step 3: Automate with Cron
crontab -e

Add:

*/5 * * * * /log_monitor.sh

👉 Runs every 5 minutes automatically

## 📸 Screenshots
![Script] ==> (screenshots/script.png)
![Output] ==> (screenshots/output.png)
![Cron] ==> (screenshots/cron.png)
![Alert] ==> (screenshots/alert.png)

---

## 🎯 Final Result

✔ System logs monitored
✔ Errors detected automatically
✔ Alerts generated in /tmp/alert.log
✔ Fully automated monitoring system

## 💡 Key Concepts
journalctl → reads system logs
-p err → filters error-level logs
-s → checks if file is not empty
cron → automation scheduler

## ⚠️ Common Issues

❌ No alert generated
✔ No system errors present (normal behavior)

❌ Permission issue
✔ Run script with sudo or root access

---

## 🚀 Result
Automated log monitoring system successfully implemented.

## 🚀 Conclusion
This project demonstrates basic log monitoring automation, a core skill used in DevOps, System Administration, and SOC environments.
