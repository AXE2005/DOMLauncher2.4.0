.class public Lorg/apache/cordova/filetransfer/FileProgressResult;
.super Ljava/lang/Object;
.source "FileProgressResult.java"


# instance fields
.field private lengthComputable:Z

.field private loaded:J

.field private total:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/filetransfer/FileProgressResult;->lengthComputable:Z

    .line 30
    iput-wide v1, p0, Lorg/apache/cordova/filetransfer/FileProgressResult;->loaded:J

    .line 31
    iput-wide v1, p0, Lorg/apache/cordova/filetransfer/FileProgressResult;->total:J

    .line 27
    return-void
.end method


# virtual methods
.method public getLengthComputable()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/apache/cordova/filetransfer/FileProgressResult;->lengthComputable:Z

    return v0
.end method

.method public getLoaded()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/apache/cordova/filetransfer/FileProgressResult;->loaded:J

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lorg/apache/cordova/filetransfer/FileProgressResult;->total:J

    return-wide v0
.end method

.method public setLengthComputable(Z)V
    .locals 0
    .param p1, "computable"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lorg/apache/cordova/filetransfer/FileProgressResult;->lengthComputable:Z

    .line 39
    return-void
.end method

.method public setLoaded(J)V
    .locals 0
    .param p1, "bytes"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lorg/apache/cordova/filetransfer/FileProgressResult;->loaded:J

    .line 47
    return-void
.end method

.method public setTotal(J)V
    .locals 0
    .param p1, "bytes"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lorg/apache/cordova/filetransfer/FileProgressResult;->total:J

    .line 55
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Lorg/json/JSONObject;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{loaded:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/apache/cordova/filetransfer/FileProgressResult;->loaded:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    const-string v2, ",total:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/cordova/filetransfer/FileProgressResult;->total:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    const-string v2, ",lengthComputable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lorg/apache/cordova/filetransfer/FileProgressResult;->lengthComputable:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 61
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
