#include <linux/module.h>

int init_module(void)
{
    pr_info("av_video: loaded\n");
    return 0;
}

void cleanup_module(void)
{
    pr_info("av_video: unloaded\n");
}

MODULE_LICENSE("GPL");
