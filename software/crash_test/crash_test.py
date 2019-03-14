#!/usr/bin/env python

import time
import sys

class CrashTest():

    def __init__(self,time_to_crash):
        self.time_to_crash = time_to_crash

    
    def run(self):
        counter=0
        while (counter < int(self.time_to_crash)):
            print("Crash test running.")
            counter=counter+1
            time.sleep(1)
        print("CRASH!")
        sys.exit(1)
        
    

if __name__ == "__main__":
    try:
        ct = CrashTest(sys.argv[1])
        ct.run()
    except IndexError:
        print("Takes one argument (time in seconds)")
        sys.exit(1)