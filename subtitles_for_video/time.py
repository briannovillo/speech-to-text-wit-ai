import time
import sys

def makeSubtitleLineTime(fromSeconds, toSeconds):
   # print time start and end with format: 00:00:00 --> 00:00:10
   print(time.strftime('%H:%M:%S', time.gmtime(int(fromSeconds))) + ' --> ' + time.strftime('%H:%M:%S', time.gmtime(int(toSeconds))))

if __name__ == "__main__":
   makeSubtitleLineTime(sys.argv[1], sys.argv[2])
