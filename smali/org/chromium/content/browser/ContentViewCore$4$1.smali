.class Lorg/chromium/content/browser/ContentViewCore$4$1;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore$4;->onPopupZoomerShown(Lorg/chromium/content/browser/PopupZoomer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/ContentViewCore$4;

.field final synthetic val$zoomer:Lorg/chromium/content/browser/PopupZoomer;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore$4;Lorg/chromium/content/browser/PopupZoomer;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$4$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$4;

    iput-object p2, p0, Lorg/chromium/content/browser/ContentViewCore$4$1;->val$zoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$4$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$4;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore$4;->access$1800(Lorg/chromium/content/browser/ContentViewCore$4;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$4$1;->val$zoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 887
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$4$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$4;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore$4;->access$1800(Lorg/chromium/content/browser/ContentViewCore$4;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$4$1;->val$zoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 889
    :cond_0
    return-void
.end method
