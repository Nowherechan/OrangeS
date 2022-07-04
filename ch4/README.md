# Ch 4

boot `->` load kernel `->` go into Protect Mode `->` exec kernel

There are only 512 Bytes in the boot sector, may not suitable for doing things like loading a kernel. So a `Loader` is needed, to do tasks like this.
