.class public Lorg/xwalk/core/internal/XWalkSettings;
.super Ljava/lang/Object;
.source "XWalkSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkSettings$EventHandler;,
        Lorg/xwalk/core/internal/XWalkSettings$LazyDefaultUserAgent;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "xwalk"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAXIMUM_FONT_SIZE:I = 0x48

.field private static final MINIMUM_FONT_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XWalkSettings"

.field private static sAppCachePathIsSet:Z

.field private static final sGlobalContentSettingsLock:Ljava/lang/Object;


# instance fields
.field private mAllowContentUrlAccess:Z

.field private mAllowFileAccessFromFileURLs:Z

.field private mAllowFileUrlAccess:Z

.field private mAllowScriptsToCloseWindows:Z

.field private mAllowUniversalAccessFromFileURLs:Z

.field private mAppCacheEnabled:Z

.field private mBlockNetworkLoads:Z

.field private mCacheMode:I

.field private final mContext:Landroid/content/Context;

.field private mDatabaseEnabled:Z

.field private mDefaultVideoPosterURL:Ljava/lang/String;

.field private mDomStorageEnabled:Z

.field private final mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

.field private mGeolocationEnabled:Z

.field private mImagesEnabled:Z

.field private mIsUpdateWebkitPrefsMessagePending:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLoadsImagesAutomatically:Z

.field private mMediaPlaybackRequiresUserGesture:Z

.field private mNativeXWalkSettings:J

.field private mShouldFocusFirstNode:Z

.field private mSupportMultipleWindows:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private final mXWalkSettingsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const-class v0, Lorg/xwalk/core/internal/XWalkSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkSettings;->$assertionsDisabled:Z

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xwalk/core/internal/XWalkSettings;->sGlobalContentSettingsLock:Ljava/lang/Object;

    .line 66
    sput-boolean v1, Lorg/xwalk/core/internal/XWalkSettings;->sAppCachePathIsSet:Z

    return-void

    :cond_0
    move v0, v1

    .line 23
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webContents"    # Lorg/chromium/content_public/browser/WebContents;
    .param p3, "isAccessFromFileURLsGrantedByDefault"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    .line 37
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowScriptsToCloseWindows:Z

    .line 38
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mLoadsImagesAutomatically:Z

    .line 39
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mImagesEnabled:Z

    .line 40
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptEnabled:Z

    .line 41
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowUniversalAccessFromFileURLs:Z

    .line 42
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileAccessFromFileURLs:Z

    .line 43
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 44
    const/4 v2, -0x1

    iput v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mCacheMode:I

    .line 45
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mSupportMultipleWindows:Z

    .line 46
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAppCacheEnabled:Z

    .line 47
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDomStorageEnabled:Z

    .line 48
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDatabaseEnabled:Z

    .line 49
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUseWideViewport:Z

    .line 50
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mMediaPlaybackRequiresUserGesture:Z

    .line 55
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowContentUrlAccess:Z

    .line 56
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileUrlAccess:Z

    .line 57
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mShouldFocusFirstNode:Z

    .line 58
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mGeolocationEnabled:Z

    .line 69
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    .line 72
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mIsUpdateWebkitPrefsMessagePending:Z

    .line 143
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 144
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mContext:Landroid/content/Context;

    .line 145
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mBlockNetworkLoads:Z

    .line 150
    if-eqz p3, :cond_1

    .line 151
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowUniversalAccessFromFileURLs:Z

    .line 152
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileAccessFromFileURLs:Z

    .line 155
    :cond_1
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettings$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    .line 157
    new-instance v0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;-><init>(Lorg/xwalk/core/internal/XWalkSettings;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    .line 159
    invoke-virtual {p0, p2}, Lorg/xwalk/core/internal/XWalkSettings;->setWebContents(Lorg/chromium/content_public/browser/WebContents;)V

    .line 160
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettings;->nativeGetDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/xwalk/core/internal/XWalkSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/XWalkSettings;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettings;->updateWebkitPreferencesOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lorg/xwalk/core/internal/XWalkSettings;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;

    .prologue
    .line 24
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mIsUpdateWebkitPrefsMessagePending:Z

    return v0
.end method

.method static synthetic access$302(Lorg/xwalk/core/internal/XWalkSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mIsUpdateWebkitPrefsMessagePending:Z

    return p1
.end method

.method static synthetic access$400(Lorg/xwalk/core/internal/XWalkSettings;)J
    .locals 2
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/xwalk/core/internal/XWalkSettings;J)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;
    .param p1, "x1"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettings;->nativeUpdateUserAgent(J)V

    return-void
.end method

.method private getAppCacheEnabled()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 512
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAppCacheEnabled:Z

    return v0
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettings$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserAgentLocked()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private static native nativeGetDefaultUserAgent()Ljava/lang/String;
.end method

.method private native nativeInit(Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method private native nativeUpdateEverythingLocked(J)V
.end method

.method private native nativeUpdateUserAgent(J)V
.end method

.method private native nativeUpdateWebkitPreferences(J)V
.end method

.method private nativeXWalkSettingsGone(J)V
    .locals 4
    .param p1, "nativeXWalkSettings"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 178
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 179
    :cond_1
    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    .line 180
    return-void
.end method

.method private updateEverything()V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 648
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 649
    :try_start_0
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettings;->nativeUpdateEverythingLocked(J)V

    .line 650
    monitor-exit v1

    .line 651
    return-void

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateWebkitPreferencesOnUiThread()V
    .locals 4

    .prologue
    .line 654
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 655
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 656
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkSettings;->nativeUpdateWebkitPreferences(J)V

    .line 658
    :cond_0
    return-void
.end method


# virtual methods
.method public getAllowContentAccess()Z
    .locals 2

    .prologue
    .line 276
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowContentUrlAccess:Z

    monitor-exit v1

    return v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowFileAccess()Z
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileUrlAccess:Z

    monitor-exit v1

    return v0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 2

    .prologue
    .line 401
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileAccessFromFileURLs:Z

    monitor-exit v1

    return v0

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowScriptsToCloseWindows()Z
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowScriptsToCloseWindows:Z

    monitor-exit v1

    return v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 2

    .prologue
    .line 392
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowUniversalAccessFromFileURLs:Z

    monitor-exit v1

    return v0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBlockNetworkLoads()Z
    .locals 2

    .prologue
    .line 236
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mBlockNetworkLoads:Z

    monitor-exit v1

    return v0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCacheMode()I
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mCacheMode:I

    monitor-exit v1

    return v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDatabaseEnabled()Z
    .locals 2

    .prologue
    .line 552
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 553
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDatabaseEnabled:Z

    monitor-exit v1

    return v0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultVideoPosterURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 641
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 642
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDomStorageEnabled()Z
    .locals 2

    .prologue
    .line 531
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDomStorageEnabled:Z

    monitor-exit v1

    return v0

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getGeolocationEnabled()Z
    .locals 2

    .prologue
    .line 296
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mGeolocationEnabled:Z

    monitor-exit v1

    return v0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImagesEnabled()Z
    .locals 2

    .prologue
    .line 374
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mImagesEnabled:Z

    monitor-exit v1

    return v0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 2

    .prologue
    .line 422
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    monitor-exit v1

    return v0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 2

    .prologue
    .line 383
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptEnabled:Z

    monitor-exit v1

    return v0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 2

    .prologue
    .line 353
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mLoadsImagesAutomatically:Z

    monitor-exit v1

    return v0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 2

    .prologue
    .line 573
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 574
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mMediaPlaybackRequiresUserGesture:Z

    monitor-exit v1

    return v0

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUseWideViewPort()Z
    .locals 2

    .prologue
    .line 464
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUseWideViewport:Z

    monitor-exit v1

    return v0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 627
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 628
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 265
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowContentUrlAccess:Z

    if-eq v0, p1, :cond_0

    .line 267
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowContentUrlAccess:Z

    .line 269
    :cond_0
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowFileAccess(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 245
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileUrlAccess:Z

    if-eq v0, p1, :cond_0

    .line 247
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileUrlAccess:Z

    .line 249
    :cond_0
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 329
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 331
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileAccessFromFileURLs:Z

    .line 332
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 334
    :cond_0
    monitor-exit v1

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowScriptsToCloseWindows(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 183
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowScriptsToCloseWindows:Z

    if-eq v0, p1, :cond_0

    .line 185
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowScriptsToCloseWindows:Z

    .line 187
    :cond_0
    monitor-exit v1

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 317
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowUniversalAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 319
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowUniversalAccessFromFileURLs:Z

    .line 320
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 322
    :cond_0
    monitor-exit v1

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCacheEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 473
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 475
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAppCacheEnabled:Z

    .line 476
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 478
    :cond_0
    monitor-exit v1

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "needToSync":Z
    sget-object v2, Lorg/xwalk/core/internal/XWalkSettings;->sGlobalContentSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 488
    :try_start_0
    sget-boolean v1, Lorg/xwalk/core/internal/XWalkSettings;->sAppCachePathIsSet:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    const/4 v1, 0x1

    sput-boolean v1, Lorg/xwalk/core/internal/XWalkSettings;->sAppCachePathIsSet:Z

    .line 490
    const/4 v0, 0x1

    .line 492
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    if-eqz v0, :cond_1

    .line 497
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 498
    :try_start_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 499
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 501
    :cond_1
    return-void

    .line 492
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 499
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public setBlockNetworkLoads(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 220
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 228
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mBlockNetworkLoads:Z

    .line 229
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    return-void
.end method

.method public setCacheMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 200
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mCacheMode:I

    if-eq v0, p1, :cond_0

    .line 202
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mCacheMode:I

    .line 204
    :cond_0
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDatabaseEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 540
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 541
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 542
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDatabaseEnabled:Z

    .line 543
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 545
    :cond_0
    monitor-exit v1

    .line 546
    return-void

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultVideoPosterURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 583
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 585
    :cond_1
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 588
    :cond_2
    monitor-exit v1

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDomStorageEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 519
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 521
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDomStorageEnabled:Z

    .line 522
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 524
    :cond_0
    monitor-exit v1

    .line 525
    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGeolocationEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 285
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 287
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mGeolocationEnabled:Z

    .line 289
    :cond_0
    monitor-exit v1

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setImagesEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 362
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mImagesEnabled:Z

    if-eq v0, p1, :cond_0

    .line 364
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mImagesEnabled:Z

    .line 365
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 367
    :cond_0
    monitor-exit v1

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 410
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 412
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 413
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 415
    :cond_0
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 305
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 306
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 307
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptEnabled:Z

    .line 308
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 310
    :cond_0
    monitor-exit v1

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 341
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 343
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mLoadsImagesAutomatically:Z

    .line 344
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 346
    :cond_0
    monitor-exit v1

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 2
    .param p1, "require"    # Z

    .prologue
    .line 561
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 562
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mMediaPlaybackRequiresUserGesture:Z

    if-eq v0, p1, :cond_0

    .line 563
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mMediaPlaybackRequiresUserGesture:Z

    .line 564
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 566
    :cond_0
    monitor-exit v1

    .line 567
    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 2
    .param p1, "support"    # Z

    .prologue
    .line 431
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 433
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mSupportMultipleWindows:Z

    .line 434
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 436
    :cond_0
    monitor-exit v1

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUseWideViewPort(Z)V
    .locals 2
    .param p1, "use"    # Z

    .prologue
    .line 452
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 454
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUseWideViewport:Z

    .line 455
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 457
    :cond_0
    monitor-exit v1

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 4
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 603
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 604
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    .line 605
    .local v0, "oldUserAgent":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 606
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettings$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    .line 610
    :goto_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 611
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    new-instance v3, Lorg/xwalk/core/internal/XWalkSettings$1;

    invoke-direct {v3, p0}, Lorg/xwalk/core/internal/XWalkSettings$1;-><init>(Lorg/xwalk/core/internal/XWalkSettings;)V

    invoke-virtual {v1, v3}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 620
    :cond_1
    monitor-exit v2

    .line 621
    return-void

    .line 608
    :cond_2
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 620
    .end local v0    # "oldUserAgent":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 6
    .param p1, "webContents"    # Lorg/chromium/content_public/browser/WebContents;

    .prologue
    const-wide/16 v4, 0x0

    .line 163
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 165
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettings;->nativeDestroy(J)V

    .line 166
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 168
    :cond_0
    if-eqz p1, :cond_1

    .line 169
    :try_start_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->bindUiThread()V

    .line 170
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkSettings;->nativeInit(Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    .line 171
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettings;->nativeUpdateEverythingLocked(J)V

    .line 173
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    return-void
.end method

.method public supportMultipleWindows()Z
    .locals 2

    .prologue
    .line 443
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 444
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mSupportMultipleWindows:Z

    monitor-exit v1

    return v0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
