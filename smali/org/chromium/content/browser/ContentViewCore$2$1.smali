.class Lorg/chromium/content/browser/ContentViewCore$2$1;
.super Landroid/os/ResultReceiver;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore$2;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/ContentViewCore$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 679
    const-class v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewCore$2$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore$2;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 679
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$2$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$2;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x2

    .line 682
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$2$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$2;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    if-eq p1, v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/ContentViewClient;->onImeStateChangeRequested(Z)V

    .line 685
    if-ne p1, v2, :cond_3

    .line 691
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$2$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$2;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$2$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$2;

    iget-object v1, v1, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 699
    :cond_1
    :goto_1
    return-void

    .line 682
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 693
    :cond_3
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$2$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$2;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1200(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 696
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore$2$1;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$2$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$2;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1000(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 697
    :cond_4
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$2$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$2;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1000(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->scrollFocusedEditableNodeIntoView()V

    goto :goto_1
.end method
