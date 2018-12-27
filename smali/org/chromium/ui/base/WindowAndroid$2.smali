.class Lorg/chromium/ui/base/WindowAndroid$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WindowAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/base/WindowAndroid;->startAnimationOverContent(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid$2;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 342
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$2;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v0}, Lorg/chromium/ui/base/WindowAndroid;->access$300(Lorg/chromium/ui/base/WindowAndroid;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$2;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v0}, Lorg/chromium/ui/base/WindowAndroid;->access$300(Lorg/chromium/ui/base/WindowAndroid;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$2;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v0}, Lorg/chromium/ui/base/WindowAndroid;->access$400(Lorg/chromium/ui/base/WindowAndroid;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 347
    :cond_0
    return-void
.end method
