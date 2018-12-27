.class Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;
.super Ljava/lang/Object;
.source "PopupTouchHandleDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->rescheduleFadeIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$300(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$400(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$502(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)Z

    .line 259
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$600(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    goto :goto_0
.end method
