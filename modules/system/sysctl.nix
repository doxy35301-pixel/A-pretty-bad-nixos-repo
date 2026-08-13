{ ... }:

{
  boot.kernel.sysctl = {
    "kernel.dmesg_restrict" = 1;
    "kernel.yama.ptrace_scope" = 1;
    "kernel.sysrq" = 438;
    "kernel.split_lock_mitigate" = 0;

    "vm.swappiness" = 60;
    "vm.page-cluster" = 0;
    "vm.max_map_count" = 2147483642;
    "fs.file-max" = 2097152;

    "net.ipv4.conf.all.rp_filter" = 1;
    "net.ipv4.icmp_echo_ignore_all" = 1;
    "net.core.netdev_max_backlog" = 5000;
    "net.core.rmem_max" = 16777216;
    "net.core.wmem_max" = 16777216;
    "net.ipv4.tcp_congestion_control" = "bbr";
    "net.core.default_qdisc" = "fq";
  };
}
