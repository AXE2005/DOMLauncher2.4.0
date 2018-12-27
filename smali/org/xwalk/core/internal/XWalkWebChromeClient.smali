.class public Lorg/xwalk/core/internal/XWalkWebChromeClient;
.super Ljava/lang/Object;
.source "XWalkWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;
    }
.end annotation


# instance fields
.field private final INVALID_ORIENTATION:I

.field private XWALK_MAX_QUOTA:J

.field private mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

.field private mContext:Landroid/content/Context;

.field private mCustomViewCallback:Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;

.field private mCustomXWalkView:Landroid/view/View;

.field private mPreOrientation:I

.field private mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 3
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    const/4 v2, -0x2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    .line 46
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->XWALK_MAX_QUOTA:J

    .line 47
    iput v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->INVALID_ORIENTATION:I

    .line 48
    iput v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mPreOrientation:I

    .line 51
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mContext:Landroid/content/Context;

    .line 52
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 53
    return-void
.end method

.method private addContentView(Landroid/view/View;Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)Landroid/app/Activity;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;

    .prologue
    const/4 v6, -0x1

    .line 79
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 81
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mCustomXWalkView:Landroid/view/View;

    if-nez v2, :cond_0

    if-nez v0, :cond_2

    .line 82
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 83
    :cond_1
    const/4 v0, 0x0

    .line 100
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v0

    .line 86
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_2
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mCustomXWalkView:Landroid/view/View;

    .line 87
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mCustomViewCallback:Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;

    .line 89
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v2, :cond_3

    .line 90
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkContentsClient;->onToggleFullscreen(Z)V

    .line 94
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 95
    .local v1, "decor":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mCustomXWalkView:Landroid/view/View;

    const/4 v3, 0x0

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 279
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "quota"    # J
    .param p5, "estimatedDatabaseSize"    # J
    .param p7, "totalQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 198
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->XWALK_MAX_QUOTA:J

    invoke-interface {p9, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 199
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkGeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/xwalk/core/internal/XWalkGeolocationPermissions$Callback;

    .prologue
    .line 244
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lorg/xwalk/core/internal/XWalkGeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 245
    return-void
.end method

.method public onHideCustomView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 143
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 144
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mCustomXWalkView:Landroid/view/View;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkContentsClient;->onToggleFullscreen(Z)V

    .line 151
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 152
    .local v1, "decor":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mCustomXWalkView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 153
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mCustomViewCallback:Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mCustomViewCallback:Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;

    invoke-interface {v2}, Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 155
    :cond_3
    iget v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mPreOrientation:I

    if-eq v2, v4, :cond_4

    iget v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mPreOrientation:I

    const/4 v3, -0x1

    if-lt v2, v3, :cond_4

    iget v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mPreOrientation:I

    const/16 v3, 0xe

    if-gt v2, v3, :cond_4

    .line 158
    iget v2, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mPreOrientation:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 159
    iput v4, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mPreOrientation:I

    .line 162
    :cond_4
    iput-object v5, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mCustomXWalkView:Landroid/view/View;

    .line 163
    iput-object v5, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mCustomViewCallback:Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;

    goto :goto_0
.end method

.method public onJsTimeout()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2
    .param p1, "requiredStorage"    # J
    .param p3, "quota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 226
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->XWALK_MAX_QUOTA:J

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 227
    return-void
.end method

.method public onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 64
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;

    .prologue
    .line 125
    invoke-direct {p0, p1, p3}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->addContentView(Landroid/view/View;Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)Landroid/app/Activity;

    move-result-object v0

    .line 126
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 130
    .local v1, "orientation":I
    if-eq p2, v1, :cond_0

    const/4 v2, -0x1

    if-lt p2, v2, :cond_0

    const/16 v2, 0xe

    if-gt p2, v2, :cond_0

    .line 133
    iput v1, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mPreOrientation:I

    .line 134
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->addContentView(Landroid/view/View;Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)Landroid/app/Activity;

    .line 112
    return-void
.end method

.method setContentsClient(Lorg/xwalk/core/internal/XWalkContentsClient;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkContentsClient;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebChromeClient;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    .line 57
    return-void
.end method

.method public setInstallableWebApp()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 314
    return-void
.end method
