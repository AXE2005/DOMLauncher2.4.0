.class Lorg/chromium/content/browser/ContentVideoView$2;
.super Ljava/lang/Object;
.source "ContentVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentVideoView;->onMediaPlayerError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentVideoView;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentVideoView;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lorg/chromium/content/browser/ContentVideoView$2;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView$2;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentVideoView;->access$800(Lorg/chromium/content/browser/ContentVideoView;)V

    .line 265
    return-void
.end method
