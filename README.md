# vrchat_video_linux.sh
Tiny script for play video from VRChat VideoPlayer in Linux

## FYI: AVPro on Proton

Why can't we see the video when we run VRChat on Proton(Linux)?
It is because VRChat's video player uses AVPro, which relies on WMF(Windows Media Foundation).

And the previous version Proton(and its original Wine) did not properly implement WMF emulation.
This is why we can't see video in VRChat on Proton.

By the way, WMF emulation is now supported in [Wine 6.0](https://www.winehq.org/announce/6.0) / [Proton 6.3](https://github.com/ValveSoftware/Proton/releases/tag/proton-6.3-1).
However, we still can't test the video player because [AVPro is disabled on Proton now](https://docs.vrchat.com/docs/vrchat-202031#changes).

So, I posted a [feature request](https://feedback.vrchat.com/feature-requests/p/add-option-to-enable-avpro-on-protonlinux) to VRChat.
Please check it out and upvote!

https://feedback.vrchat.com/feature-requests/p/add-option-to-enable-avpro-on-protonlinux
