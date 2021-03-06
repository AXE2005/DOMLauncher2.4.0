.class Lorg/xwalk/core/internal/XWalkViewDelegate;
.super Ljava/lang/Object;
.source "XWalkViewDelegate.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "xwalk"
.end annotation


# static fields
.field private static final COMMAND_LINE_FILE:Ljava/lang/String; = "xwalk-command-line"

.field private static final MANDATORY_LIBRARIES:[Ljava/lang/String;

.field private static final MANDATORY_PAKS:[Ljava/lang/String;

.field private static final PRIVATE_DATA_DIRECTORY_SUFFIX:Ljava/lang/String; = "xwalkcore"

.field private static final TAG:Ljava/lang/String; = "XWalkViewDelegate"

.field private static final XWALK_RESOURCES_LIST_RES_NAME:Ljava/lang/String; = "xwalk_resources_list"

.field private static sInitialized:Z

.field private static sLibraryLoaded:Z

.field private static sRunningOnIA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 37
    sput-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sInitialized:Z

    .line 38
    sput-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLibraryLoaded:Z

    .line 39
    sput-boolean v6, Lorg/xwalk/core/internal/XWalkViewDelegate;->sRunningOnIA:Z

    .line 41
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "xwalk.pak"

    aput-object v8, v7, v5

    const-string v8, "en-US.pak"

    aput-object v8, v7, v6

    const/4 v8, 0x2

    const-string v9, "icudtl.dat"

    aput-object v9, v7, v8

    sput-object v7, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_PAKS:[Ljava/lang/String;

    .line 50
    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "libxwalkcore.so"

    aput-object v8, v7, v5

    sput-object v7, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    .line 252
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v8, "x86"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v8, "x86_64"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v5, v6

    :cond_1
    sput-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sRunningOnIA:Z

    .line 253
    sget-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sRunningOnIA:Z

    if-nez v5, :cond_2

    .line 258
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "getprop ro.product.cpu.abi"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 259
    .local v4, "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 260
    .local v3, "ir":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 261
    .local v2, "input":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "abi":Ljava/lang/String;
    const-string v5, "x86"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sRunningOnIA:Z

    .line 263
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 264
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    :cond_2
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "XWalkViewDelegate"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 8
    .param p0, "xwalkView"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 113
    sget-boolean v3, Lorg/xwalk/core/internal/XWalkViewDelegate;->sInitialized:Z

    if-eqz v3, :cond_0

    .line 210
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/xwalk/core/internal/XWalkViewDelegate;->loadXWalkLibrary(Landroid/content/Context;)V

    .line 121
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/base/ApplicationStatusManager;->init(Landroid/app/Application;)V

    .line 125
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/net/NetworkChangeNotifier;->init(Landroid/content/Context;)Lorg/chromium/net/NetworkChangeNotifier;

    .line 126
    invoke-static {v7}, Lorg/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 130
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/base/ApplicationStatusManager;->informActivityStarted(Landroid/app/Activity;)V

    .line 132
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getViewContext()Landroid/content/Context;

    move-result-object v1

    .line 138
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/xwalk/core/internal/XWalkViewDelegate;->readCommandLine(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    .line 142
    :cond_1
    sget-object v3, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_PAKS:[Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/base/ResourceExtractor;->setMandatoryPaksToExtract([Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "xwalk_resources_list"

    const-string v5, "array"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 145
    .local v2, "resourcesListResId":I
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 146
    .local v0, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_3

    .line 150
    :cond_2
    new-instance v3, Lorg/xwalk/core/internal/XWalkViewDelegate$1;

    invoke-direct {v3, v1, v0, v2}, Lorg/xwalk/core/internal/XWalkViewDelegate$1;-><init>(Landroid/content/Context;Landroid/content/res/AssetManager;I)V

    invoke-static {v3}, Lorg/chromium/base/ResourceExtractor;->setResourceIntercepter(Lorg/chromium/base/ResourceExtractor$ResourceIntercepter;)V

    .line 203
    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/chromium/base/ResourceExtractor;->setExtractImplicitLocaleForTesting(Z)V

    .line 206
    invoke-static {v1}, Lorg/chromium/base/ResourceExtractor;->get(Landroid/content/Context;)Lorg/chromium/base/ResourceExtractor;

    .line 208
    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkViewDelegate;->startBrowserProcess(Landroid/content/Context;)V

    .line 209
    sput-boolean v7, Lorg/xwalk/core/internal/XWalkViewDelegate;->sInitialized:Z

    goto :goto_0
.end method

.method public static isRunningOnIA()Z
    .locals 1

    .prologue
    .line 246
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkViewDelegate;->sRunningOnIA:Z

    return v0
.end method

.method private static loadLibrary(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const-string v2, "xwalkcore"

    invoke-static {v2}, Lorg/chromium/base/PathUtils;->setPrivateDataDirectorySuffix(Ljava/lang/String;)V

    .line 215
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v1

    .line 216
    .local v1, "libraryLoader":Lorg/chromium/base/library_loader/LibraryLoader;
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNow(Landroid/content/Context;Z)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    return-void

    .line 217
    .end local v1    # "libraryLoader":Lorg/chromium/base/library_loader/LibraryLoader;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Lorg/chromium/base/library_loader/ProcessInitException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot load Crosswalk Core"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static loadXWalkLibrary(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    .line 88
    sget-boolean v4, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLibraryLoaded:Z

    if-eqz v4, :cond_0

    .line 110
    :goto_0
    return-void

    .line 98
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v4, v5, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    sget-object v0, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 101
    .local v3, "library":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/lib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "library":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkViewDelegate;->loadLibrary(Landroid/content/Context;)V

    .line 106
    sget-boolean v4, Lorg/xwalk/core/internal/XWalkViewDelegate;->sRunningOnIA:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewDelegate;->nativeIsLibraryBuiltForIA()Z

    move-result v4

    if-nez v4, :cond_2

    .line 107
    new-instance v4, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v4}, Ljava/lang/UnsatisfiedLinkError;-><init>()V

    throw v4

    .line 109
    :cond_2
    const/4 v4, 0x1

    sput-boolean v4, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLibraryLoaded:Z

    goto :goto_0
.end method

.method private static native nativeIsLibraryBuiltForIA()Z
.end method

.method private static readCommandLine(Landroid/content/Context;)[Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v5, 0x0

    .line 62
    .local v5, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "xwalk-command-line"

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 65
    .local v3, "input":Ljava/io/InputStream;
    const/16 v7, 0x400

    .line 66
    .local v7, "size":I
    new-array v0, v7, [C

    .line 67
    .local v0, "buffer":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v6, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .local v6, "reader":Ljava/io/InputStreamReader;
    :goto_0
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v6, v0, v8, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v4

    .local v4, "length":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 71
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 76
    .end local v4    # "length":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 77
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .end local v7    # "size":I
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :goto_1
    const/4 v8, 0x0

    .line 80
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 83
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v8

    .line 74
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "size":I
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v8}, Lorg/chromium/base/CommandLine;->tokenizeQuotedAruments([C)[Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 80
    if-eqz v6, :cond_2

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    move-object v5, v6

    .line 83
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 81
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 82
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "XWalkViewDelegate"

    const-string v10, "Unable to close file reader."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 81
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .end local v7    # "size":I
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v2

    .line 82
    const-string v9, "XWalkViewDelegate"

    const-string v10, "Unable to close file reader."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 79
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 80
    :goto_4
    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 83
    :cond_3
    :goto_5
    throw v8

    .line 81
    :catch_3
    move-exception v2

    .line 82
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "XWalkViewDelegate"

    const-string v10, "Unable to close file reader."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 79
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "size":I
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 76
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v7    # "size":I
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private static startBrowserProcess(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    new-instance v0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkViewDelegate$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method
