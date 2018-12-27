.class Lorg/chromium/content/browser/webcontents/WebContentsImpl;
.super Ljava/lang/Object;
.source "WebContentsImpl.java"

# interfaces
.implements Lorg/chromium/content_public/browser/WebContents;


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# instance fields
.field private mNativeWebContentsAndroid:J

.field private mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

.field private mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;


# direct methods
.method private constructor <init>(JLorg/chromium/content_public/browser/NavigationController;)V
    .locals 1
    .param p1, "nativeWebContentsAndroid"    # J
    .param p3, "navigationController"    # Lorg/chromium/content_public/browser/NavigationController;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    .line 30
    iput-wide p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    .line 31
    iput-object p3, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 32
    return-void
.end method

.method private addEnteringStylesheetToTransition(Ljava/lang/String;)V
    .locals 1
    .param p1, "stylesheet"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/NavigationTransitionDelegate;->addEnteringStylesheetToTransition(Ljava/lang/String;)V

    .line 268
    :cond_0
    return-void
.end method

.method private addNavigationTransitionElements(Ljava/lang/String;IIII)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content_public/browser/NavigationTransitionDelegate;->addNavigationTransitionElements(Ljava/lang/String;IIII)V

    .line 283
    :cond_0
    return-void
.end method

.method private clearNativePtr()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 44
    return-void
.end method

.method private static create(JLorg/chromium/content_public/browser/NavigationController;)Lorg/chromium/content/browser/webcontents/WebContentsImpl;
    .locals 1
    .param p0, "nativeWebContentsAndroid"    # J
    .param p2, "navigationController"    # Lorg/chromium/content_public/browser/NavigationController;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;-><init>(JLorg/chromium/content_public/browser/NavigationController;)V

    return-object v0
.end method

.method private didDeferAfterResponseStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "markup"    # Ljava/lang/String;
    .param p2, "cssSelector"    # Ljava/lang/String;
    .param p3, "enteringColor"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/content_public/browser/NavigationTransitionDelegate;->didDeferAfterResponseStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    return-void
.end method

.method private didStartNavigationTransitionForFrame(J)V
    .locals 1
    .param p1, "frameId"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content_public/browser/NavigationTransitionDelegate;->didStartNavigationTransitionForFrame(J)V

    .line 275
    :cond_0
    return-void
.end method

.method private getNativePointer()J
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    return-wide v0
.end method

.method private native nativeAddMessageToDevToolsConsole(JILjava/lang/String;)V
.end method

.method private native nativeAddStyleSheetByURL(JLjava/lang/String;)V
.end method

.method private native nativeBeginExitTransition(JLjava/lang/String;Z)V
.end method

.method private native nativeClearNavigationTransitionData(J)V
.end method

.method private static native nativeDestroyWebContents(J)V
.end method

.method private native nativeEvaluateJavaScript(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
.end method

.method private native nativeExitFullscreen(J)V
.end method

.method private native nativeFetchTransitionElements(JLjava/lang/String;)V
.end method

.method private native nativeGetBackgroundColor(J)I
.end method

.method private native nativeGetLastCommittedURL(J)Ljava/lang/String;
.end method

.method private native nativeGetTitle(J)Ljava/lang/String;
.end method

.method private native nativeGetURL(J)Ljava/lang/String;
.end method

.method private native nativeGetVisibleURL(J)Ljava/lang/String;
.end method

.method private native nativeHasAccessedInitialDocument(J)Z
.end method

.method private native nativeHideTransitionElements(JLjava/lang/String;)V
.end method

.method private native nativeInsertCSS(JLjava/lang/String;)V
.end method

.method private native nativeIsIncognito(J)Z
.end method

.method private native nativeIsLoading(J)Z
.end method

.method private native nativeIsLoadingToDifferentDocument(J)Z
.end method

.method private native nativeIsRenderWidgetHostViewReady(J)Z
.end method

.method private native nativeIsShowingInterstitialPage(J)Z
.end method

.method private native nativeOnHide(J)V
.end method

.method private native nativeOnShow(J)V
.end method

.method private native nativeReleaseMediaPlayers(J)V
.end method

.method private native nativeResumeResponseDeferredAtStart(J)V
.end method

.method private native nativeRevertExitTransition(J)V
.end method

.method private native nativeScrollFocusedEditableNodeIntoView(J)V
.end method

.method private native nativeSelectWordAroundCaret(J)V
.end method

.method private native nativeSetHasPendingNavigationTransitionForTesting(J)V
.end method

.method private native nativeSetupTransitionView(JLjava/lang/String;)V
.end method

.method private native nativeShowImeIfNeeded(J)V
.end method

.method private native nativeShowInterstitialPage(JLjava/lang/String;J)V
.end method

.method private native nativeShowTransitionElements(JLjava/lang/String;)V
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeUpdateTopControlsState(JZZZ)V
.end method

.method private static onEvaluateJavaScriptResult(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 0
    .param p0, "jsonResult"    # Ljava/lang/String;
    .param p1, "callback"    # Lorg/chromium/content_public/browser/JavaScriptCallback;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 310
    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/JavaScriptCallback;->handleJavaScriptResult(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method private onTransitionElementsFetched(Ljava/lang/String;)V
    .locals 1
    .param p1, "cssSelector"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/NavigationTransitionDelegate;->onTransitionElementsFetched(Ljava/lang/String;)V

    .line 290
    :cond_0
    return-void
.end method

.method private willHandleDeferAfterResponseStarted()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationTransitionDelegate;->willHandleDeferAfterResponseStarted()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addMessageToDevToolsConsole(ILjava/lang/String;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeAddMessageToDevToolsConsole(JILjava/lang/String;)V

    .line 300
    return-void
.end method

.method public addStyleSheetByURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeAddStyleSheetByURL(JLjava/lang/String;)V

    .line 115
    return-void
.end method

.method public beginExitTransition(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cssSelector"    # Ljava/lang/String;
    .param p2, "exitToNativeApp"    # Z

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeBeginExitTransition(JLjava/lang/String;Z)V

    .line 208
    return-void
.end method

.method public clearNavigationTransitionData()V
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeClearNavigationTransitionData(J)V

    .line 238
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-static {v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeDestroyWebContents(J)V

    .line 54
    :cond_0
    return-void
.end method

.method public evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 2
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/content_public/browser/JavaScriptCallback;

    .prologue
    .line 294
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeEvaluateJavaScript(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    .line 295
    return-void
.end method

.method public exitFullscreen()V
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeExitFullscreen(J)V

    .line 136
    return-void
.end method

.method public fetchTransitionElements(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeFetchTransitionElements(JLjava/lang/String;)V

    .line 246
    return-void
.end method

.method public getBackgroundColor()I
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetBackgroundColor(J)I

    move-result v0

    return v0
.end method

.method public getLastCommittedUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetLastCommittedURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationController()Lorg/chromium/content_public/browser/NavigationController;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetTitle(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetVisibleURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAccessedInitialDocument()Z
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeHasAccessedInitialDocument(J)Z

    move-result v0

    return v0
.end method

.method public hideTransitionElements(Ljava/lang/String;)V
    .locals 2
    .param p1, "cssSelector"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeHideTransitionElements(JLjava/lang/String;)V

    .line 223
    return-void
.end method

.method public insertCSS(Ljava/lang/String;)V
    .locals 4
    .param p1, "css"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeInsertCSS(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public isIncognito()Z
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsIncognito(J)Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsLoading(J)Z

    move-result v0

    return v0
.end method

.method public isLoadingToDifferentDocument()Z
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsLoadingToDifferentDocument(J)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsRenderWidgetHostViewReady(J)Z

    move-result v0

    return v0
.end method

.method public isShowingInterstitialPage()Z
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsShowingInterstitialPage(J)Z

    move-result v0

    return v0
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeOnHide(J)V

    .line 95
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeOnShow(J)V

    .line 100
    return-void
.end method

.method public releaseMediaPlayers()V
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeReleaseMediaPlayers(J)V

    .line 105
    return-void
.end method

.method public resumeResponseDeferredAtStart()V
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeResumeResponseDeferredAtStart(J)V

    .line 181
    return-void
.end method

.method public revertExitTransition()V
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeRevertExitTransition(J)V

    .line 216
    return-void
.end method

.method public scrollFocusedEditableNodeIntoView()V
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeScrollFocusedEditableNodeIntoView(J)V

    .line 156
    return-void
.end method

.method public selectWordAroundCaret()V
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSelectWordAroundCaret(J)V

    .line 161
    return-void
.end method

.method public setHasPendingNavigationTransitionForTesting()V
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSetHasPendingNavigationTransitionForTesting(J)V

    .line 186
    return-void
.end method

.method public setNavigationTransitionDelegate(Lorg/chromium/content_public/browser/NavigationTransitionDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    .line 191
    return-void
.end method

.method public setupTransitionView(Ljava/lang/String;)V
    .locals 2
    .param p1, "markup"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSetupTransitionView(JLjava/lang/String;)V

    .line 199
    return-void
.end method

.method public showImeIfNeeded()V
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeShowImeIfNeeded(J)V

    .line 148
    return-void
.end method

.method public showInterstitialPage(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "interstitialPageDelegateAndroid"    # J

    .prologue
    .line 120
    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeShowInterstitialPage(JLjava/lang/String;J)V

    .line 121
    return-void
.end method

.method public showTransitionElements(Ljava/lang/String;)V
    .locals 2
    .param p1, "cssSelector"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeShowTransitionElements(JLjava/lang/String;)V

    .line 230
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeStop(J)V

    .line 84
    return-void
.end method

.method public updateTopControlsState(ZZZ)V
    .locals 6
    .param p1, "enableHiding"    # Z
    .param p2, "enableShowing"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 141
    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeUpdateTopControlsState(JZZZ)V

    .line 143
    return-void
.end method
