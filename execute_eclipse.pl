#!/usr/bin/perl

# Simple script to start Fishnet

main();

sub main {
    
    $classpath = "./lib/:./jars/plume.jar:./proj/";
    
    $args = join " ", @ARGV;

    system("rm -rf storage");
    exec("java -cp $classpath edu.washington.cs.cse490h.lib.MessageLayer $args");
    # exec("nice java -cp $classpath Fishnet $fishnetArgs");
}

