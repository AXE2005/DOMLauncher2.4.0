.class Lorg/chromium/content/browser/ContentViewCore$3;
.super Lorg/chromium/content/browser/WebContentsObserver;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore;->initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/WindowAndroid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0
    .param p2, "x0"    # Lorg/chromium/content_public/browser/WebContents;

    .prologue
    .line 749
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method private determinedProcessVisibility()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getCurrentRenderProcessId()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->determinedVisibility(I)V

    .line 797
    return-void
.end method


# virtual methods
.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isProvisionalLoad"    # Z
    .param p2, "isMainFrame"    # Z
    .param p3, "errorCode"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 766
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$3;->determinedProcessVisibility()V

    .line 767
    :cond_0
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isNavigationToDifferentPage"    # Z
    .param p4, "isFragmentNavigation"    # Z

    .prologue
    .line 772
    if-nez p3, :cond_0

    .line 776
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->access$1402(Lorg/chromium/content/browser/ContentViewCore;Z)Z

    .line 774
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1500(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 775
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1600(Lorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method

.method public didStartLoading(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 752
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1300(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->onPageLoadStarted()V

    .line 753
    return-void
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 757
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1300(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->onPageLoadStopped()V

    .line 758
    return-void
.end method

.method public navigationEntryCommitted()V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$3;->determinedProcessVisibility()V

    .line 789
    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 1
    .param p1, "wasOomProtected"    # Z

    .prologue
    .line 780
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1500(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 781
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1600(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 784
    return-void
.end method
