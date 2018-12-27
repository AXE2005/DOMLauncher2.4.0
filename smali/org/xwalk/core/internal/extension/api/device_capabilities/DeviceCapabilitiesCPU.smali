.class Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;
.super Ljava/lang/Object;
.source "DeviceCapabilitiesCPU.java"


# static fields
.field private static final SYSTEM_INFO_STAT_FILE:Ljava/lang/String; = "/proc/stat"

.field private static final TAG:Ljava/lang/String; = "DeviceCapabilitiesCPU"


# instance fields
.field private mCPUArch:Ljava/lang/String;

.field private mCPULoad:D

.field private mCoreNum:I

.field private mDeviceCapabilities:Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilities;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilities;)V
    .locals 2
    .param p1, "instance"    # Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilities;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mCoreNum:I

    .line 22
    const-string v0, "Unknown"

    iput-object v0, p0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mCPUArch:Ljava/lang/String;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mCPULoad:D

    .line 26
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mDeviceCapabilities:Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilities;

    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mCoreNum:I

    .line 30
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mCPUArch:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private getCPULoad()Z
    .locals 19

    .prologue
    .line 54
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v15, "/proc/stat"

    const-string v16, "r"

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v4, "file":Ljava/io/RandomAccessFile;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "line":Ljava/lang/String;
    const-string v15, "\\s+"

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "arrs":[Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 59
    .local v7, "total1":J
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    array-length v15, v2

    if-ge v5, v15, :cond_0

    .line 60
    aget-object v15, v2, v5

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    add-long/2addr v7, v15

    .line 59
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    :cond_0
    const/4 v15, 0x4

    aget-object v15, v2, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v15

    sub-long v11, v7, v15

    .line 65
    .local v11, "used1":J
    const-wide/16 v15, 0x3e8

    :try_start_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    const-wide/16 v15, 0x0

    :try_start_2
    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 72
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 75
    const-string v15, "\\s+"

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 76
    const-wide/16 v9, 0x0

    .line 77
    .local v9, "total2":J
    const/4 v5, 0x1

    :goto_1
    array-length v15, v2

    if-ge v5, v15, :cond_1

    .line 78
    aget-object v15, v2, v5

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    add-long/2addr v9, v15

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 66
    .end local v9    # "total2":J
    :catch_0
    move-exception v3

    .line 67
    .local v3, "e":Ljava/lang/Exception;
    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mCPULoad:D

    .line 68
    const/4 v15, 0x0

    .line 91
    .end local v2    # "arrs":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/RandomAccessFile;
    .end local v5    # "i":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "total1":J
    .end local v11    # "used1":J
    :goto_2
    return v15

    .line 81
    .restart local v2    # "arrs":[Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/RandomAccessFile;
    .restart local v5    # "i":I
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "total1":J
    .restart local v9    # "total2":J
    .restart local v11    # "used1":J
    :cond_1
    const/4 v15, 0x4

    aget-object v15, v2, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    sub-long v13, v9, v15

    .line 82
    .local v13, "used2":J
    cmp-long v15, v9, v7

    if-nez v15, :cond_2

    .line 83
    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mCPULoad:D

    .line 91
    :goto_3
    const/4 v15, 0x1

    goto :goto_2

    .line 85
    :cond_2
    sub-long v15, v13, v11

    long-to-double v15, v15

    sub-long v17, v9, v7

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mCPULoad:D
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 87
    .end local v2    # "arrs":[Ljava/lang/String;
    .end local v4    # "file":Ljava/io/RandomAccessFile;
    .end local v5    # "i":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "total1":J
    .end local v9    # "total2":J
    .end local v11    # "used1":J
    .end local v13    # "used2":J
    :catch_1
    move-exception v3

    .line 88
    .local v3, "e":Ljava/io/IOException;
    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mCPULoad:D

    .line 89
    const/4 v15, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getInfo()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->getCPULoad()Z

    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v1, "out":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "numOfProcessors"

    iget v3, p0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mCoreNum:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    const-string v2, "archName"

    iget-object v3, p0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mCPUArch:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v2, "load"

    iget-wide v3, p0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mCPULoad:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "out":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 41
    .restart local v1    # "out":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilitiesCPU;->mDeviceCapabilities:Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilities;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/extension/api/device_capabilities/DeviceCapabilities;->setErrorMessage(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0
.end method
