.class final Lorg/chromium/base/library_loader/LibraryLoaderHelper$1;
.super Ljava/lang/Thread;
.source "LibraryLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/library_loader/LibraryLoaderHelper;->deleteLibrariesAsynchronously(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dirName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/chromium/base/library_loader/LibraryLoaderHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/base/library_loader/LibraryLoaderHelper$1;->val$dirName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoaderHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/base/library_loader/LibraryLoaderHelper$1;->val$dirName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    return-void
.end method
