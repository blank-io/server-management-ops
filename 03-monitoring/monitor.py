import psutil
import time
from datetime import datetime

# Configuration
LOG_FILE = "server_stats.csv"
INTERVAL = 5  # Seconds

def log_stats():
    with open(LOG_FILE, "a") as f:
        # Write Header if file is empty
        if f.tell() == 0:
            f.write("Timestamp,CPU_Percent,Memory_Percent\n")
        
        while True:
            timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
            # interval=1 blocks for 1 second to calculate CPU usage
            cpu = psutil.cpu_percent(interval=1)
            memory = psutil.virtual_memory().percent
            
            log_entry = f"{timestamp},{cpu},{memory}\n"
            print(f"Logging: {log_entry.strip()}")
            f.write(log_entry)
            f.flush()
            time.sleep(INTERVAL)

if __name__ == "__main__":
    print("Starting Server Monitor...")
    try:
        log_stats()
    except KeyboardInterrupt:
        print("\nMonitor stopped.")
