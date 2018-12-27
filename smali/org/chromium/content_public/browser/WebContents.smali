.class public interface abstract Lorg/chromium/content_public/browser/WebContents;
.super Ljava/lang/Object;
.source "WebContents.java"


# virtual methods
.method public abstract addMessageToDevToolsConsole(ILjava/lang/String;)V
.end method

.method public abstract addStyleSheetByURL(Ljava/lang/String;)V
.end method

.method public abstract beginExitTransition(Ljava/lang/String;Z)V
.end method

.method public abstract clearNavigationTransitionData()V
.end method

.method public abstract destroy()V
.end method

.method public abstract evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
.end method

.method public abstract exitFullscreen()V
.end method

.method public abstract fetchTransitionElements(Ljava/lang/String;)V
.end method

.method public abstract getBackgroundColor()I
.end method

.method public abstract getLastCommittedUrl()Ljava/lang/String;
.end method

.method public abstract getNavigationController()Lorg/chromium/content_public/browser/NavigationController;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getVisibleUrl()Ljava/lang/String;
.end method

.method public abstract hasAccessedInitialDocument()Z
.end method

.method public abstract hideTransitionElements(Ljava/lang/String;)V
.end method

.method public abstract insertCSS(Ljava/lang/String;)V
.end method

.method public abstract isIncognito()Z
.end method

.method public abstract isLoading()Z
.end method

.method public abstract isLoadingToDifferentDocument()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract isShowingInterstitialPage()Z
.end method

.method public abstract onHide()V
.end method

.method public abstract onShow()V
.end method

.method public abstract releaseMediaPlayers()V
.end method

.method public abstract resumeResponseDeferredAtStart()V
.end method

.method public abstract revertExitTransition()V
.end method

.method public abstract scrollFocusedEditableNodeIntoView()V
.end method

.method public abstract selectWordAroundCaret()V
.end method

.method public abstract setHasPendingNavigationTransitionForTesting()V
.end method

.method public abstract setNavigationTransitionDelegate(Lorg/chromium/content_public/browser/NavigationTransitionDelegate;)V
.end method

.method public abstract setupTransitionView(Ljava/lang/String;)V
.end method

.method public abstract showImeIfNeeded()V
.end method

.method public abstract showInterstitialPage(Ljava/lang/String;J)V
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end method

.method public abstract showTransitionElements(Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method

.method public abstract updateTopControlsState(ZZZ)V
.end method
