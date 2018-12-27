.class Lorg/chromium/content/browser/input/ImeAdapter$1;
.super Ljava/lang/Object;
.source "ImeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ImeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ImeAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ImeAdapter;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->access$000(Lorg/chromium/content/browser/input/ImeAdapter;Z)V

    .line 98
    return-void
.end method
