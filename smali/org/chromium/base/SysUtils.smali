.class public Lorg/chromium/base/SysUtils;
.super Ljava/lang/Object;
.source "SysUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ANDROID_LOW_MEMORY_ANDROID_SDK_THRESHOLD:I = 0x12

.field private static final ANDROID_LOW_MEMORY_DEVICE_THRESHOLD_MB:I = 0x200

.field private static final KBS_IN_MB:I = 0x400

.field private static final TAG:Ljava/lang/String; = "SysUtils"

.field private static sLowEndDevice:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/chromium/base/SysUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/SysUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static amountOfPhysicalMemoryMB()I
    .locals 11

    .prologue
    .line 56
    const-string v8, "^MemTotal:\\s+([0-9]+) kB$"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 58
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 60
    .local v4, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v8, "/proc/meminfo"

    invoke-direct {v1, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 62
    .local v1, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    .local v6, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 68
    const-string v8, "SysUtils"

    const-string v9, "/proc/meminfo lacks a MemTotal entry?"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :goto_0
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 93
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 96
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_1
    const/4 v8, 0x0

    :goto_2
    return v8

    .line 71
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_5
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 72
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 74
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 76
    .local v7, "totalMemoryKB":I
    const/16 v8, 0x400

    if-gt v7, v8, :cond_2

    .line 77
    const-string v8, "SysUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid /proc/meminfo total size in kB: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 85
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v7    # "totalMemoryKB":I
    :catchall_0
    move-exception v8

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 88
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    throw v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 90
    .end local v1    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v8, "SysUtils"

    const-string v9, "Cannot get total physical size from /proc/meminfo"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 93
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "totalMemoryKB":I
    :cond_2
    :try_start_9
    div-int/lit16 v8, v7, 0x400
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 85
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 88
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 93
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "totalMemoryKB":I
    :catchall_2
    move-exception v8

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v8
.end method

.method private static detectLowEndDevice()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 111
    sget-boolean v5, Lorg/chromium/base/SysUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 112
    :cond_0
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v5

    const-string v6, "enable-low-end-device-mode"

    invoke-virtual {v5, v6}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    .local v1, "context":Landroid/content/Context;
    :cond_1
    :goto_0
    return v3

    .line 115
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v5

    const-string v6, "disable-low-end-device-mode"

    invoke-virtual {v5, v6}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 116
    goto :goto_0

    .line 118
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-gt v5, v6, :cond_4

    move v3, v4

    .line 119
    goto :goto_0

    .line 122
    :cond_4
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 123
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_5

    .line 124
    const-string v5, "activity"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 126
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :goto_1
    invoke-static {}, Lorg/chromium/base/SysUtils;->amountOfPhysicalMemoryMB()I

    move-result v2

    .line 134
    .local v2, "ramSizeMB":I
    if-gtz v2, :cond_6

    move v3, v4

    .line 135
    goto :goto_0

    .line 130
    .end local v2    # "ramSizeMB":I
    :cond_5
    const-string v5, "SysUtils"

    const-string v6, "ApplicationContext is null in ApplicationStatus"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 138
    .restart local v2    # "ramSizeMB":I
    :cond_6
    const/16 v5, 0x200

    if-lt v2, v5, :cond_1

    move v3, v4

    goto :goto_0
.end method

.method public static isLowEndDevice()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lorg/chromium/base/SysUtils;->sLowEndDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lorg/chromium/base/SysUtils;->detectLowEndDevice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/SysUtils;->sLowEndDevice:Ljava/lang/Boolean;

    .line 107
    :cond_0
    sget-object v0, Lorg/chromium/base/SysUtils;->sLowEndDevice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
