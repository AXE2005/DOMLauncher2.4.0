.class final Lorg/chromium/ui/UiUtils$1;
.super Ljava/lang/Object;
.source "UiUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/UiUtils;->showKeyboard(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attempt:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/chromium/ui/UiUtils$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lorg/chromium/ui/UiUtils$1;->val$attempt:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lorg/chromium/ui/UiUtils$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 76
    iget-object v2, p0, Lorg/chromium/ui/UiUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 80
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    :try_start_0
    iget-object v2, p0, Lorg/chromium/ui/UiUtils$1;->val$view:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lorg/chromium/ui/UiUtils$1;->val$attempt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    .line 83
    iget-object v2, p0, Lorg/chromium/ui/UiUtils$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 85
    :cond_0
    const-string v2, "UiUtils"

    const-string v3, "Unable to open keyboard.  Giving up."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
