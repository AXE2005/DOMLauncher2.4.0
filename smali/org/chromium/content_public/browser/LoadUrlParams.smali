.class public Lorg/chromium/content_public/browser/LoadUrlParams;
.super Ljava/lang/Object;
.source "LoadUrlParams.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# instance fields
.field mBaseUrlForDataUrl:Ljava/lang/String;

.field mCanLoadLocalResources:Z

.field private mExtraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceivedTimestamp:J

.field mIsRendererInitiated:Z

.field mLoadUrlType:I

.field mPostData:[B

.field mReferrer:Lorg/chromium/content_public/common/Referrer;

.field mTransitionType:I

.field mUaOverrideOption:I

.field mUrl:Ljava/lang/String;

.field private mVerbatimHeaders:Ljava/lang/String;

.field mVirtualUrlForDataUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "transitionType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    .line 57
    iput p2, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mTransitionType:I

    .line 61
    iput v1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    .line 62
    iput v1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUaOverrideOption:I

    .line 63
    iput-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mPostData:[B

    .line 64
    iput-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVirtualUrlForDataUrl:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static createLoadDataParams(Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "isBase64Encoded"    # Z

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->createLoadDataParams(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    return-object v0
.end method

.method public static createLoadDataParams(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "isBase64Encoded"    # Z
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "data:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "dataUrl":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_0
    if-eqz p2, :cond_1

    .line 95
    const-string v2, ";base64"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "params":Lorg/chromium/content_public/browser/LoadUrlParams;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setLoadType(I)V

    .line 102
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    .line 103
    return-object v1
.end method

.method public static createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "isBase64Encoded"    # Z
    .param p3, "baseUrl"    # Ljava/lang/String;
    .param p4, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    return-object v0
.end method

.method public static createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "isBase64Encoded"    # Z
    .param p3, "baseUrl"    # Ljava/lang/String;
    .param p4, "historyUrl"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p0, p1, p2, p5}, Lorg/chromium/content_public/browser/LoadUrlParams;->createLoadDataParams(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    .line 150
    .local v0, "params":Lorg/chromium/content_public/browser/LoadUrlParams;
    if-eqz p3, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    :cond_0
    if-eqz p3, :cond_2

    .end local p3    # "baseUrl":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p3}, Lorg/chromium/content_public/browser/LoadUrlParams;->setBaseUrlForDataUrl(Ljava/lang/String;)V

    .line 152
    if-eqz p4, :cond_3

    .end local p4    # "historyUrl":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, p4}, Lorg/chromium/content_public/browser/LoadUrlParams;->setVirtualUrlForDataUrl(Ljava/lang/String;)V

    .line 154
    :cond_1
    return-object v0

    .line 151
    .restart local p3    # "baseUrl":Ljava/lang/String;
    .restart local p4    # "historyUrl":Ljava/lang/String;
    :cond_2
    const-string p3, "about:blank"

    goto :goto_0

    .line 152
    .end local p3    # "baseUrl":Ljava/lang/String;
    :cond_3
    const-string p4, "about:blank"

    goto :goto_1
.end method

.method public static createLoadHttpPostParams(Ljava/lang/String;[B)Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "postData"    # [B

    .prologue
    const/4 v1, 0x1

    .line 164
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, p0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "params":Lorg/chromium/content_public/browser/LoadUrlParams;
    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setLoadType(I)V

    .line 166
    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    .line 167
    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setPostData([B)V

    .line 168
    return-object v0
.end method

.method private getExtraHeadersString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "addTerminator"    # Z

    .prologue
    .line 266
    iget-object v3, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 280
    :goto_0
    return-object v3

    .line 268
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v1, "headerBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 270
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 277
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-eqz p2, :cond_3

    .line 278
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static native nativeIsDataScheme(Ljava/lang/String;)Z
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCanLoadLocalResources()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mCanLoadLocalResources:Z

    return v0
.end method

.method public getExtraHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getExtraHeadersString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    const-string v0, "\n"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getExtraHeadersString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraHttpRequestHeadersString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    const-string v0, "\r\n"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getExtraHeadersString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentReceivedTimestamp()J
    .locals 2

    .prologue
    .line 406
    iget-wide v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIntentReceivedTimestamp:J

    return-wide v0
.end method

.method public getIsRendererInitiated()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIsRendererInitiated:Z

    return v0
.end method

.method public getLoadUrlType()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    return v0
.end method

.method public getPostData()[B
    .locals 1
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mPostData:[B

    return-object v0
.end method

.method public getReferrer()Lorg/chromium/content_public/common/Referrer;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mReferrer:Lorg/chromium/content_public/common/Referrer;

    return-object v0
.end method

.method public getTransitionType()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mTransitionType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentOverrideOption()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUaOverrideOption:I

    return v0
.end method

.method public getVerbatimHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVerbatimHeaders:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualUrlForDataUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVirtualUrlForDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isBaseUrlDataScheme()Z
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 413
    const/4 v0, 0x1

    .line 415
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->nativeIsDataScheme(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBaseUrlForDataUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setCanLoadLocalResources(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mCanLoadLocalResources:Z

    .line 366
    return-void
.end method

.method public setExtraHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    .line 236
    return-void
.end method

.method public setIntentReceivedTimestamp(J)V
    .locals 0
    .param p1, "intentReceivedTimestamp"    # J

    .prologue
    .line 399
    iput-wide p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIntentReceivedTimestamp:J

    .line 400
    return-void
.end method

.method public setIsRendererInitiated(Z)V
    .locals 0
    .param p1, "rendererInitiated"    # Z

    .prologue
    .line 384
    iput-boolean p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIsRendererInitiated:Z

    .line 385
    return-void
.end method

.method public setLoadType(I)V
    .locals 0
    .param p1, "loadType"    # I

    .prologue
    .line 197
    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    .line 198
    return-void
.end method

.method public setOverrideUserAgent(I)V
    .locals 0
    .param p1, "uaOption"    # I

    .prologue
    .line 303
    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUaOverrideOption:I

    .line 304
    return-void
.end method

.method public setPostData([B)V
    .locals 0
    .param p1, "postData"    # [B
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP2"
        }
    .end annotation

    .prologue
    .line 321
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mPostData:[B

    .line 322
    return-void
.end method

.method public setReferrer(Lorg/chromium/content_public/common/Referrer;)V
    .locals 0
    .param p1, "referrer"    # Lorg/chromium/content_public/common/Referrer;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mReferrer:Lorg/chromium/content_public/common/Referrer;

    .line 220
    return-void
.end method

.method public setTransitionType(I)V
    .locals 0
    .param p1, "transitionType"    # I

    .prologue
    .line 205
    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mTransitionType:I

    .line 206
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setVerbatimHeaders(Ljava/lang/String;)V
    .locals 0
    .param p1, "headers"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVerbatimHeaders:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setVirtualUrlForDataUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "virtualUrl"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVirtualUrlForDataUrl:Ljava/lang/String;

    .line 358
    return-void
.end method
