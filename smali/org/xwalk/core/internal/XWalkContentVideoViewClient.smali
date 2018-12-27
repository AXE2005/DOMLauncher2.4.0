.class Lorg/xwalk/core/internal/XWalkContentVideoViewClient;
.super Ljava/lang/Object;
.source "XWalkContentVideoViewClient.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentVideoViewClient;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

.field private mView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkContentsClient;Landroid/app/Activity;Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkContentsClient;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    .line 25
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;->mActivity:Landroid/app/Activity;

    .line 26
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 27
    return-void
.end method


# virtual methods
.method public enterFullscreenVideo(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setOverlayVideoMode(Z)V

    .line 32
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/xwalk/core/internal/XWalkContentsClient;->onShowCustomView(Landroid/view/View;Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)V

    .line 33
    return-void
.end method

.method public exitFullscreenVideo()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setOverlayVideoMode(Z)V

    .line 38
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClient;->onHideCustomView()V

    .line 39
    return-void
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSystemUiVisibility(Z)V
    .locals 0
    .param p1, "enterFullscreen"    # Z

    .prologue
    .line 47
    return-void
.end method
