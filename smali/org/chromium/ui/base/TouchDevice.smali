.class public Lorg/chromium/ui/base/TouchDevice;
.super Ljava/lang/Object;
.source "TouchDevice.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "ui"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static availableHoverTypes(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, "hoverTypesVal":I
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_4

    aget v1, v0, v3

    .line 88
    .local v1, "deviceId":I
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    .line 90
    .local v5, "sources":I
    const/16 v6, 0x2002

    invoke-static {v5, v6}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v6

    if-nez v6, :cond_0

    const v6, 0x100008

    invoke-static {v5, v6}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v6

    if-nez v6, :cond_0

    const v6, 0x10004

    invoke-static {v5, v6}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 93
    :cond_0
    or-int/lit8 v2, v2, 0x4

    .line 87
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_2
    const/16 v6, 0x4002

    invoke-static {v5, v6}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v6

    if-nez v6, :cond_3

    const/16 v6, 0x1002

    invoke-static {v5, v6}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 96
    :cond_3
    or-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 102
    .end local v1    # "deviceId":I
    .end local v5    # "sources":I
    :cond_4
    if-nez v2, :cond_5

    .line 103
    const/4 v2, 0x1

    .line 105
    :cond_5
    return v2
.end method

.method private static availablePointerTypes(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 57
    const/4 v4, 0x0

    .line 59
    .local v4, "pointerTypesVal":I
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget v1, v0, v2

    .line 60
    .local v1, "deviceId":I
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    .line 62
    .local v5, "sources":I
    const/16 v6, 0x2002

    invoke-static {v5, v6}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x4002

    invoke-static {v5, v6}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v6

    if-nez v6, :cond_0

    const v6, 0x100008

    invoke-static {v5, v6}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v6

    if-nez v6, :cond_0

    const v6, 0x10004

    invoke-static {v5, v6}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    :cond_0
    or-int/lit8 v4, v4, 0x4

    .line 59
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_2
    const/16 v6, 0x1002

    invoke-static {v5, v6}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    or-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 74
    .end local v1    # "deviceId":I
    .end local v5    # "sources":I
    :cond_3
    if-nez v4, :cond_4

    .line 75
    const/4 v4, 0x1

    .line 77
    :cond_4
    return v4
.end method

.method private static hasSource(II)Z
    .locals 1
    .param p0, "sources"    # I
    .param p1, "inputDeviceSource"    # I

    .prologue
    .line 109
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static maxTouchPoints(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.touchscreen.multitouch.jazzhand"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const/4 v0, 0x5

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
