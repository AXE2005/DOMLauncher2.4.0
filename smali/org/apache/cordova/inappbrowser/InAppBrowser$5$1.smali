.class Lorg/apache/cordova/inappbrowser/InAppBrowser$5$1;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/inappbrowser/InAppBrowser$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$5;


# direct methods
.method constructor <init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$5$1;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$5;

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 577
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$5$1;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$5;

    invoke-static {v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$5;->access$0(Lorg/apache/cordova/inappbrowser/InAppBrowser$5;)Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->goBack()V

    .line 578
    return-void
.end method
