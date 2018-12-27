.class Lorg/chromium/media/VideoCaptureAndroid$BuggyDeviceHack;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuggyDeviceHack"
.end annotation


# static fields
.field private static final COLORSPACE_BUGGY_DEVICE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SAMSUNG-SGH-I747"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ODROID-U2"

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/media/VideoCaptureAndroid$BuggyDeviceHack;->COLORSPACE_BUGGY_DEVICE_LIST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getImageFormat()I
    .locals 7

    .prologue
    const/16 v4, 0x11

    .line 33
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    .line 42
    .local v0, "arr$":[Ljava/lang/String;
    .local v2, "i$":I
    .local v3, "len$":I
    :cond_0
    :goto_0
    return v4

    .line 37
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    sget-object v0, Lorg/chromium/media/VideoCaptureAndroid$BuggyDeviceHack;->COLORSPACE_BUGGY_DEVICE_LIST:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 38
    .local v1, "buggyDevice":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    .end local v1    # "buggyDevice":Ljava/lang/String;
    :cond_2
    const v4, 0x32315659

    goto :goto_0
.end method
