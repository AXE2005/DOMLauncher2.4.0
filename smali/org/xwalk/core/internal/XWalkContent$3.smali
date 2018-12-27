.class Lorg/xwalk/core/internal/XWalkContent$3;
.super Ljava/lang/Object;
.source "XWalkContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkContent;->setBackgroundColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkContent;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkContent;I)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContent$3;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    iput p2, p0, Lorg/xwalk/core/internal/XWalkContent$3;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$3;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    iget v1, p0, Lorg/xwalk/core/internal/XWalkContent$3;->val$color:I

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->setBackgroundColor(I)V

    .line 438
    return-void
.end method
