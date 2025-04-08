inherit externalsrc
S = "/home/sam/projects/ds/containers/cot_translator"
B = "/home/sam/projects/yocto-wrk/build/cot_translator"

do_unpack[noexec] = "1"
do_fetch[noexec] = "1"
do_clean[nostamp] = "1"

python do_clean:prepend() {
    bb.warn("Not touching your local source tree (S) : %s" % d.getVar("S"))
}

