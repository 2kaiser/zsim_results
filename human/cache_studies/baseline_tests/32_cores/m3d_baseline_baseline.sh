sys = {
    cores = {
        xeoncore = {
            cores = 32;
            dcache = "l1d";
            icache = "l1i";
            type = "OOO";
        };
    };

    caches = {
        l1d = {
            array = {
                type = "SetAssoc";
                ways = 8;
            };
            caches = 32;
            latency = 8;
            size = 32768; # 32KiB
        };

        l1i = {
            array = {
                type = "SetAssoc";
                ways = 8;
            };
            caches = 32;
            latency = 8;
            size = 32768; # 32KiB
        };

        l2 = {
            type = "Timing";
            array = {
                type = "SetAssoc";
                ways = 8;
            };
            caches = 1;
            banks = 32;
            latency = 11;
            children = "l1i|l1d";  # interleave
            repl = {
                type = "LRU"; 
           };
            size = 33554432; # 64MiB
        };

    };
  
    frequency = 4000; 
    lineSize = 64;
    mem = {
        controllers = 32;
        type = "MD1";
	    latency = 20;
	    wrLatency = 52;
	    bandwidth = 262144;
    };
};

sim = {

    stats = "zsim_results/m3d_baseline";
    #maxTotalInstrs = 1000000000L;
    phaseLength = 1000;
    schedQuantum = 50;
    procStatsFilter = "l1.*|l2.*";
    compactPeriodicStats = true;
    deadlockDetection = false;
    logToFile = true;
    gmMBytes = 4096;
    ffReinstrument = false;
    registerThreads = false;

}


process0 = {
    # Replace command below with your desired program
#    command = "/home/sacheung/minimap2/minimap2 -a MT-human.fa MT-orang.fa > test.sam";
command = "/home/sacheung/minimap2/minimap2_baseline -2 -a -t 32 -K 13900M /home/sacheung/minimap2/test/hg38.fa.gz /home/sacheung/minimap2/test/human_hifi.gz";

#   command = "/home/sacheung/minimap2/minimap2";
#command = "/home/sacheung/zsim/runs/example"; 
     startFastForwarded = true;
    # syncedFastForward = "Never";
};
