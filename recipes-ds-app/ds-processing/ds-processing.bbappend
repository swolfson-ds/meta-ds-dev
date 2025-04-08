inherit externalsrc
#S ??= "${WORKDIR}/git/containers/sdr"
S = "/home/sam/projects/ds/containers/processing"
B = "/home/sam/projects/yocto-wrk/build/processing"

do_unpack[noexec] = "1"
do_fetch[noexec] = "1"
do_clean[nostamp] = "1"

python do_clean:prepend() {
    bb.warn("Not touching your local source tree (S) : %s" % d.getVar("S"))
}
